package rx.schedulers;

import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;
import rx.subscriptions.BooleanSubscription;
import rx.subscriptions.Subscriptions;

public class TestScheduler extends Scheduler {
    static long counter;
    final Queue<TimedAction> queue = new PriorityQueue(11, new CompareActionsByTime());
    long time;

    static final class CompareActionsByTime implements Comparator<TimedAction> {
        CompareActionsByTime() {
        }

        public final int compare(TimedAction timedAction, TimedAction timedAction2) {
            if (timedAction.time == timedAction2.time) {
                if (timedAction.count < timedAction2.count) {
                    return -1;
                }
                return timedAction.count > timedAction2.count ? 1 : 0;
            } else if (timedAction.time < timedAction2.time) {
                return -1;
            } else {
                return timedAction.time > timedAction2.time ? 1 : 0;
            }
        }
    }

    static final class TimedAction {
        final Action0 action;
        private final long count;
        final Worker scheduler;
        final long time;

        TimedAction(Worker worker, long j, Action0 action0) {
            long j2 = TestScheduler.counter;
            TestScheduler.counter = j2 + 1;
            this.count = j2;
            this.time = j;
            this.action = action0;
            this.scheduler = worker;
        }

        public final String toString() {
            return String.format("TimedAction(time = %d, action = %s)", new Object[]{Long.valueOf(this.time), this.action.toString()});
        }
    }

    final class InnerTestScheduler extends Worker {
        /* renamed from: s */
        private final BooleanSubscription f768s = new BooleanSubscription();

        InnerTestScheduler() {
        }

        public final void unsubscribe() {
            this.f768s.unsubscribe();
        }

        public final boolean isUnsubscribed() {
            return this.f768s.isUnsubscribed();
        }

        public final Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            final TimedAction timedAction = new TimedAction(this, TestScheduler.this.time + timeUnit.toNanos(j), action0);
            TestScheduler.this.queue.add(timedAction);
            return Subscriptions.create(new Action0() {
                public void call() {
                    TestScheduler.this.queue.remove(timedAction);
                }
            });
        }

        public final Subscription schedule(Action0 action0) {
            final TimedAction timedAction = new TimedAction(this, 0, action0);
            TestScheduler.this.queue.add(timedAction);
            return Subscriptions.create(new Action0() {
                public void call() {
                    TestScheduler.this.queue.remove(timedAction);
                }
            });
        }

        public final long now() {
            return TestScheduler.this.now();
        }
    }

    public long now() {
        return TimeUnit.NANOSECONDS.toMillis(this.time);
    }

    public void advanceTimeBy(long j, TimeUnit timeUnit) {
        advanceTimeTo(this.time + timeUnit.toNanos(j), TimeUnit.NANOSECONDS);
    }

    public void advanceTimeTo(long j, TimeUnit timeUnit) {
        triggerActions(timeUnit.toNanos(j));
    }

    public void triggerActions() {
        triggerActions(this.time);
    }

    private void triggerActions(long j) {
        while (!this.queue.isEmpty()) {
            TimedAction timedAction = (TimedAction) this.queue.peek();
            if (timedAction.time > j) {
                break;
            }
            this.time = timedAction.time == 0 ? this.time : timedAction.time;
            this.queue.remove();
            if (!timedAction.scheduler.isUnsubscribed()) {
                timedAction.action.call();
            }
        }
        this.time = j;
    }

    public Worker createWorker() {
        return new InnerTestScheduler();
    }
}
