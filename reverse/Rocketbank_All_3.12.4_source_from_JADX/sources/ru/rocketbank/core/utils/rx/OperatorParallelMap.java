package ru.rocketbank.core.utils.rx;

import rx.Observable.Operator;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.functions.Func1;

public final class OperatorParallelMap<T, R> implements Operator<R, T> {
    private final Scheduler scheduler;
    private final Func1<? super T, ? extends R> transformer;

    public OperatorParallelMap(Func1<? super T, ? extends R> func1, Scheduler scheduler) {
        this.transformer = func1;
        this.scheduler = scheduler;
    }

    public final Subscriber<? super T> call(final Subscriber<? super R> subscriber) {
        final Worker createWorker = this.scheduler.createWorker();
        return new Subscriber<T>(subscriber) {

            /* renamed from: ru.rocketbank.core.utils.rx.OperatorParallelMap$1$1 */
            class C14691 implements Action0 {
                C14691() {
                }

                public void call() {
                    subscriber.onCompleted();
                }
            }

            public void onCompleted() {
                createWorker.schedule(new C14691());
            }

            public void onError(final Throwable th) {
                createWorker.schedule(new Action0() {
                    public void call() {
                        subscriber.onError(th);
                    }
                });
            }

            public void onNext(final T t) {
                createWorker.schedule(new Action0() {
                    public void call() {
                        try {
                            subscriber.onNext(OperatorParallelMap.this.transformer.call(t));
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, this, t);
                        }
                    }
                });
            }
        };
    }
}
