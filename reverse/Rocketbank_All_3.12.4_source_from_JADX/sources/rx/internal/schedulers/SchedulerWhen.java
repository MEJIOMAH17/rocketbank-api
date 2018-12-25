package rx.internal.schedulers;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.Completable;
import rx.Completable.OnSubscribe;
import rx.CompletableSubscriber;
import rx.Observable;
import rx.Observer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.annotations.Experimental;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.internal.operators.BufferUntilSubscriber;
import rx.observers.SerializedObserver;
import rx.subjects.PublishSubject;
import rx.subscriptions.Subscriptions;

@Experimental
public class SchedulerWhen extends Scheduler implements Subscription {
    static final Subscription SUBSCRIBED = new C17293();
    static final Subscription UNSUBSCRIBED = Subscriptions.unsubscribed();
    private final Scheduler actualScheduler;
    private final Subscription subscription;
    private final Observer<Observable<Completable>> workerObserver;

    /* renamed from: rx.internal.schedulers.SchedulerWhen$3 */
    static class C17293 implements Subscription {
        public final boolean isUnsubscribed() {
            return false;
        }

        public final void unsubscribe() {
        }

        C17293() {
        }
    }

    private static abstract class ScheduledAction extends AtomicReference<Subscription> implements Subscription {
        protected abstract Subscription callActual(Worker worker);

        public ScheduledAction() {
            super(SchedulerWhen.SUBSCRIBED);
        }

        private void call(Worker worker) {
            Subscription subscription = (Subscription) get();
            if (subscription != SchedulerWhen.UNSUBSCRIBED && subscription == SchedulerWhen.SUBSCRIBED) {
                worker = callActual(worker);
                if (!compareAndSet(SchedulerWhen.SUBSCRIBED, worker)) {
                    worker.unsubscribe();
                }
            }
        }

        public boolean isUnsubscribed() {
            return ((Subscription) get()).isUnsubscribed();
        }

        public void unsubscribe() {
            Subscription subscription = SchedulerWhen.UNSUBSCRIBED;
            Subscription subscription2;
            do {
                subscription2 = (Subscription) get();
                if (subscription2 == SchedulerWhen.UNSUBSCRIBED) {
                    return;
                }
            } while (!compareAndSet(subscription2, subscription));
            if (subscription2 != SchedulerWhen.SUBSCRIBED) {
                subscription2.unsubscribe();
            }
        }
    }

    private static class DelayedAction extends ScheduledAction {
        private final Action0 action;
        private final long delayTime;
        private final TimeUnit unit;

        public DelayedAction(Action0 action0, long j, TimeUnit timeUnit) {
            this.action = action0;
            this.delayTime = j;
            this.unit = timeUnit;
        }

        protected Subscription callActual(Worker worker) {
            return worker.schedule(this.action, this.delayTime, this.unit);
        }
    }

    private static class ImmediateAction extends ScheduledAction {
        private final Action0 action;

        public ImmediateAction(Action0 action0) {
            this.action = action0;
        }

        protected Subscription callActual(Worker worker) {
            return worker.schedule(this.action);
        }
    }

    public SchedulerWhen(Func1<Observable<Observable<Completable>>, Completable> func1, Scheduler scheduler) {
        this.actualScheduler = scheduler;
        scheduler = PublishSubject.create();
        this.workerObserver = new SerializedObserver(scheduler);
        this.subscription = ((Completable) func1.call(scheduler.onBackpressureBuffer())).subscribe();
    }

    public void unsubscribe() {
        this.subscription.unsubscribe();
    }

    public boolean isUnsubscribed() {
        return this.subscription.isUnsubscribed();
    }

    public Worker createWorker() {
        final Worker createWorker = this.actualScheduler.createWorker();
        Object create = BufferUntilSubscriber.create();
        final Observer serializedObserver = new SerializedObserver(create);
        Observable map = create.map(new Func1<ScheduledAction, Completable>() {
            public Completable call(final ScheduledAction scheduledAction) {
                return Completable.create(new OnSubscribe() {
                    public void call(CompletableSubscriber completableSubscriber) {
                        completableSubscriber.onSubscribe(scheduledAction);
                        scheduledAction.call(createWorker);
                        completableSubscriber.onCompleted();
                    }
                });
            }
        });
        Worker c19602 = new Worker() {
            private final AtomicBoolean unsubscribed = new AtomicBoolean();

            public void unsubscribe() {
                if (this.unsubscribed.compareAndSet(false, true)) {
                    createWorker.unsubscribe();
                    serializedObserver.onCompleted();
                }
            }

            public boolean isUnsubscribed() {
                return this.unsubscribed.get();
            }

            public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
                Subscription delayedAction = new DelayedAction(action0, j, timeUnit);
                serializedObserver.onNext(delayedAction);
                return delayedAction;
            }

            public Subscription schedule(Action0 action0) {
                Subscription immediateAction = new ImmediateAction(action0);
                serializedObserver.onNext(immediateAction);
                return immediateAction;
            }
        };
        this.workerObserver.onNext(map);
        return c19602;
    }
}
