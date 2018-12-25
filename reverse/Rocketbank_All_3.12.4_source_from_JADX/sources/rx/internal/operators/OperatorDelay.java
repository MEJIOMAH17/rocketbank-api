package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Subscriber;
import rx.functions.Action0;

public final class OperatorDelay<T> implements Operator<T, T> {
    final long delay;
    final Scheduler scheduler;
    final TimeUnit unit;

    public OperatorDelay(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.delay = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public final Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        final Object createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        return new Subscriber<T>(subscriber) {
            boolean done;

            /* renamed from: rx.internal.operators.OperatorDelay$1$1 */
            class C20851 implements Action0 {
                C20851() {
                }

                public void call() {
                    if (!C18951.this.done) {
                        C18951.this.done = true;
                        subscriber.onCompleted();
                    }
                }
            }

            public void onCompleted() {
                createWorker.schedule(new C20851(), OperatorDelay.this.delay, OperatorDelay.this.unit);
            }

            public void onError(final Throwable th) {
                createWorker.schedule(new Action0() {
                    public void call() {
                        if (!C18951.this.done) {
                            C18951.this.done = true;
                            subscriber.onError(th);
                            createWorker.unsubscribe();
                        }
                    }
                });
            }

            public void onNext(final T t) {
                createWorker.schedule(new Action0() {
                    public void call() {
                        if (!C18951.this.done) {
                            subscriber.onNext(t);
                        }
                    }
                }, OperatorDelay.this.delay, OperatorDelay.this.unit);
            }
        };
    }
}
