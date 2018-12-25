package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Func1;
import rx.internal.producers.ProducerArbiter;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.SerialSubscription;

public final class OperatorOnErrorResumeNextViaFunction<T> implements Operator<T, T> {
    final Func1<? super Throwable, ? extends Observable<? extends T>> resumeFunction;

    public static <T> OperatorOnErrorResumeNextViaFunction<T> withSingle(final Func1<? super Throwable, ? extends T> func1) {
        return new OperatorOnErrorResumeNextViaFunction(new Func1<Throwable, Observable<? extends T>>() {
            public final Observable<? extends T> call(Throwable th) {
                return Observable.just(func1.call(th));
            }
        });
    }

    public static <T> OperatorOnErrorResumeNextViaFunction<T> withOther(final Observable<? extends T> observable) {
        return new OperatorOnErrorResumeNextViaFunction(new Func1<Throwable, Observable<? extends T>>() {
            public final Observable<? extends T> call(Throwable th) {
                return observable;
            }
        });
    }

    public static <T> OperatorOnErrorResumeNextViaFunction<T> withException(final Observable<? extends T> observable) {
        return new OperatorOnErrorResumeNextViaFunction(new Func1<Throwable, Observable<? extends T>>() {
            public final Observable<? extends T> call(Throwable th) {
                if (th instanceof Exception) {
                    return observable;
                }
                return Observable.error(th);
            }
        });
    }

    public OperatorOnErrorResumeNextViaFunction(Func1<? super Throwable, ? extends Observable<? extends T>> func1) {
        this.resumeFunction = func1;
    }

    public final Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        final Producer producerArbiter = new ProducerArbiter();
        final Subscription serialSubscription = new SerialSubscription();
        Object c19114 = new Subscriber<T>() {
            private boolean done;
            long produced;

            /* renamed from: rx.internal.operators.OperatorOnErrorResumeNextViaFunction$4$1 */
            class C19101 extends Subscriber<T> {
                C19101() {
                }

                public void onNext(T t) {
                    subscriber.onNext(t);
                }

                public void onError(Throwable th) {
                    subscriber.onError(th);
                }

                public void onCompleted() {
                    subscriber.onCompleted();
                }

                public void setProducer(Producer producer) {
                    producerArbiter.setProducer(producer);
                }
            }

            public void onCompleted() {
                if (!this.done) {
                    this.done = true;
                    subscriber.onCompleted();
                }
            }

            public void onError(Throwable th) {
                if (this.done) {
                    Exceptions.throwIfFatal(th);
                    RxJavaHooks.onError(th);
                    return;
                }
                this.done = true;
                try {
                    unsubscribe();
                    Object c19101 = new C19101();
                    serialSubscription.set(c19101);
                    long j = this.produced;
                    if (j != 0) {
                        producerArbiter.produced(j);
                    }
                    ((Observable) OperatorOnErrorResumeNextViaFunction.this.resumeFunction.call(th)).unsafeSubscribe(c19101);
                } catch (Throwable th2) {
                    Exceptions.throwOrReport(th2, subscriber);
                }
            }

            public void onNext(T t) {
                if (!this.done) {
                    this.produced++;
                    subscriber.onNext(t);
                }
            }

            public void setProducer(Producer producer) {
                producerArbiter.setProducer(producer);
            }
        };
        serialSubscription.set(c19114);
        subscriber.add(serialSubscription);
        subscriber.setProducer(producerArbiter);
        return c19114;
    }
}
