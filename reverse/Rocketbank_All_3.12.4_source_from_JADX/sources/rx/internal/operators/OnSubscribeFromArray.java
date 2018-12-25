package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;

public final class OnSubscribeFromArray<T> implements OnSubscribe<T> {
    final T[] array;

    static final class FromArrayProducer<T> extends AtomicLong implements Producer {
        private static final long serialVersionUID = 3534218984725836979L;
        final T[] array;
        final Subscriber<? super T> child;
        int index;

        public FromArrayProducer(Subscriber<? super T> subscriber, T[] tArr) {
            this.child = subscriber;
            this.array = tArr;
        }

        public final void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was ".concat(String.valueOf(j)));
            }
            if (j == Long.MAX_VALUE) {
                if (BackpressureUtils.getAndAddRequest(this, j) == 0) {
                    fastPath();
                }
            } else if (j != 0 && BackpressureUtils.getAndAddRequest(this, j) == 0) {
                slowPath(j);
            }
        }

        final void fastPath() {
            Subscriber subscriber = this.child;
            Object[] objArr = this.array;
            int i = 0;
            int length = objArr.length;
            while (i < length) {
                Object obj = objArr[i];
                if (!subscriber.isUnsubscribed()) {
                    subscriber.onNext(obj);
                    i++;
                } else {
                    return;
                }
            }
            if (!subscriber.isUnsubscribed()) {
                subscriber.onCompleted();
            }
        }

        final void slowPath(long j) {
            Subscriber subscriber = this.child;
            Object[] objArr = this.array;
            int length = objArr.length;
            int i = this.index;
            loop0:
            do {
                long j2 = 0;
                while (true) {
                    if (j == 0 || i == length) {
                        long j3 = get() + j2;
                        if (j3 == 0) {
                            this.index = i;
                            j = addAndGet(j2);
                        } else {
                            j = j3;
                        }
                    } else if (!subscriber.isUnsubscribed()) {
                        subscriber.onNext(objArr[i]);
                        i++;
                        if (i == length) {
                            break loop0;
                        }
                        j2--;
                        j--;
                    } else {
                        return;
                    }
                }
                if (subscriber.isUnsubscribed() == null) {
                    subscriber.onCompleted();
                }
                return;
            } while (j != 0);
        }
    }

    public OnSubscribeFromArray(T[] tArr) {
        this.array = tArr;
    }

    public final void call(Subscriber<? super T> subscriber) {
        subscriber.setProducer(new FromArrayProducer(subscriber, this.array));
    }
}
