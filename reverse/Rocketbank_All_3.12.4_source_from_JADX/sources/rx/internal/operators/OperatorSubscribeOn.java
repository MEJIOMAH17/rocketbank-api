package rx.internal.operators;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.functions.Action0;

public final class OperatorSubscribeOn<T> implements OnSubscribe<T> {
    final Scheduler scheduler;
    final Observable<T> source;

    public OperatorSubscribeOn(Observable<T> observable, Scheduler scheduler) {
        this.scheduler = scheduler;
        this.source = observable;
    }

    public final void call(final Subscriber<? super T> subscriber) {
        final Worker createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        createWorker.schedule(new Action0() {
            public void call() {
                final Thread currentThread = Thread.currentThread();
                OperatorSubscribeOn.this.source.unsafeSubscribe(new Subscriber<T>(subscriber) {
                    public void onNext(T t) {
                        subscriber.onNext(t);
                    }

                    public void onError(Throwable th) {
                        try {
                            subscriber.onError(th);
                        } finally {
                            createWorker.unsubscribe();
                        }
                    }

                    public void onCompleted() {
                        try {
                            subscriber.onCompleted();
                        } finally {
                            createWorker.unsubscribe();
                        }
                    }

                    public void setProducer(final Producer producer) {
                        subscriber.setProducer(new Producer() {
                            public void request(final long j) {
                                if (currentThread == Thread.currentThread()) {
                                    producer.request(j);
                                } else {
                                    createWorker.schedule(new Action0() {
                                        public void call() {
                                            producer.request(j);
                                        }
                                    });
                                }
                            }
                        });
                    }
                });
            }
        });
    }
}
