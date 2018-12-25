package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;

public final class OperatorTake<T> implements Operator<T, T> {
    final int limit;

    public OperatorTake(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("limit >= 0 required but it was ".concat(String.valueOf(i)));
        }
        this.limit = i;
    }

    public final Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        Object c19341 = new Subscriber<T>() {
            boolean completed;
            int count;

            public void onCompleted() {
                if (!this.completed) {
                    this.completed = true;
                    subscriber.onCompleted();
                }
            }

            public void onError(Throwable th) {
                if (!this.completed) {
                    this.completed = true;
                    try {
                        subscriber.onError(th);
                    } finally {
                        unsubscribe();
                    }
                }
            }

            public void onNext(T t) {
                if (!isUnsubscribed()) {
                    int i = this.count;
                    this.count = i + 1;
                    if (i < OperatorTake.this.limit) {
                        boolean z = this.count == OperatorTake.this.limit;
                        subscriber.onNext(t);
                        if (z && this.completed == null) {
                            this.completed = true;
                            try {
                                subscriber.onCompleted();
                            } finally {
                                unsubscribe();
                            }
                        }
                    }
                }
            }

            public void setProducer(final Producer producer) {
                subscriber.setProducer(new Producer() {
                    final AtomicLong requested = new AtomicLong(0);

                    public void request(long j) {
                        if (j > 0 && !C19341.this.completed) {
                            long min;
                            long j2;
                            do {
                                j2 = this.requested.get();
                                min = Math.min(j, ((long) OperatorTake.this.limit) - j2);
                                if (min != 0) {
                                }
                            } while (!this.requested.compareAndSet(j2, j2 + min));
                            producer.request(min);
                        }
                    }
                });
            }
        };
        if (this.limit == 0) {
            subscriber.onCompleted();
            c19341.unsubscribe();
        }
        subscriber.add(c19341);
        return c19341;
    }
}
