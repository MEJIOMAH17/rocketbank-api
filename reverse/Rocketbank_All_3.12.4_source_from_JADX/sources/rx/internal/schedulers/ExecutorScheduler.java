package rx.internal.schedulers;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.MultipleAssignmentSubscription;
import rx.subscriptions.Subscriptions;

public final class ExecutorScheduler extends Scheduler {
    final Executor executor;

    static final class ExecutorSchedulerWorker extends Worker implements Runnable {
        final Executor executor;
        final ConcurrentLinkedQueue<ScheduledAction> queue = new ConcurrentLinkedQueue();
        final ScheduledExecutorService service = GenericScheduledExecutorService.getInstance();
        final CompositeSubscription tasks = new CompositeSubscription();
        final AtomicInteger wip = new AtomicInteger();

        public ExecutorSchedulerWorker(Executor executor) {
            this.executor = executor;
        }

        public final Subscription schedule(Action0 action0) {
            if (isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            Subscription scheduledAction = new ScheduledAction(RxJavaHooks.onScheduledAction(action0), this.tasks);
            this.tasks.add(scheduledAction);
            this.queue.offer(scheduledAction);
            if (this.wip.getAndIncrement() == null) {
                try {
                    this.executor.execute(this);
                } catch (Action0 action02) {
                    this.tasks.remove(scheduledAction);
                    this.wip.decrementAndGet();
                    RxJavaHooks.onError(action02);
                    throw action02;
                }
            }
            return scheduledAction;
        }

        public final void run() {
            while (!this.tasks.isUnsubscribed()) {
                ScheduledAction scheduledAction = (ScheduledAction) this.queue.poll();
                if (scheduledAction != null) {
                    if (!scheduledAction.isUnsubscribed()) {
                        if (this.tasks.isUnsubscribed()) {
                            this.queue.clear();
                            return;
                        }
                        scheduledAction.run();
                    }
                    if (this.wip.decrementAndGet() == 0) {
                        return;
                    }
                }
                return;
            }
            this.queue.clear();
        }

        public final Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            if (j <= 0) {
                return schedule(action0);
            }
            if (isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            action0 = RxJavaHooks.onScheduledAction(action0);
            Object multipleAssignmentSubscription = new MultipleAssignmentSubscription();
            final MultipleAssignmentSubscription multipleAssignmentSubscription2 = new MultipleAssignmentSubscription();
            multipleAssignmentSubscription2.set(multipleAssignmentSubscription);
            this.tasks.add(multipleAssignmentSubscription2);
            final Subscription create = Subscriptions.create(new Action0() {
                public void call() {
                    ExecutorSchedulerWorker.this.tasks.remove(multipleAssignmentSubscription2);
                }
            });
            ScheduledAction scheduledAction = new ScheduledAction(new Action0() {
                public void call() {
                    if (!multipleAssignmentSubscription2.isUnsubscribed()) {
                        Subscription schedule = ExecutorSchedulerWorker.this.schedule(action0);
                        multipleAssignmentSubscription2.set(schedule);
                        if (schedule.getClass() == ScheduledAction.class) {
                            ((ScheduledAction) schedule).add(create);
                        }
                    }
                }
            });
            multipleAssignmentSubscription.set(scheduledAction);
            try {
                scheduledAction.add(this.service.schedule(scheduledAction, j, timeUnit));
                return create;
            } catch (Action0 action02) {
                RxJavaHooks.onError(action02);
                throw action02;
            }
        }

        public final boolean isUnsubscribed() {
            return this.tasks.isUnsubscribed();
        }

        public final void unsubscribe() {
            this.tasks.unsubscribe();
            this.queue.clear();
        }
    }

    public ExecutorScheduler(Executor executor) {
        this.executor = executor;
    }

    public final Worker createWorker() {
        return new ExecutorSchedulerWorker(this.executor);
    }
}
