package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;

public final class OnSubscribeRange implements OnSubscribe<Integer> {
    private final int endIndex;
    private final int startIndex;

    static final class RangeProducer extends AtomicLong implements Producer {
        private static final long serialVersionUID = 4114392207069098388L;
        private final Subscriber<? super Integer> childSubscriber;
        private long currentIndex;
        private final int endOfRange;

        RangeProducer(Subscriber<? super Integer> subscriber, int i, int i2) {
            this.childSubscriber = subscriber;
            this.currentIndex = (long) i;
            this.endOfRange = i2;
        }

        public final void request(long j) {
            if (get() != Long.MAX_VALUE) {
                if (j == Long.MAX_VALUE && compareAndSet(0, Long.MAX_VALUE)) {
                    fastPath();
                    return;
                }
                if (j > 0 && BackpressureUtils.getAndAddRequest(this, j) == 0) {
                    slowPath(j);
                }
            }
        }

        final void slowPath(long j) {
            long j2 = ((long) this.endOfRange) + 1;
            long j3 = this.currentIndex;
            Subscriber subscriber = this.childSubscriber;
            long j4 = j3;
            j3 = j;
            while (true) {
                j = 0;
                while (true) {
                    if (j == j3 || j4 == j2) {
                        if (!subscriber.isUnsubscribed()) {
                            if (j4 == j2) {
                                subscriber.onCompleted();
                                return;
                            }
                            j3 = get();
                            if (j3 == j) {
                                break;
                            }
                        } else {
                            return;
                        }
                    } else if (!subscriber.isUnsubscribed()) {
                        subscriber.onNext(Integer.valueOf((int) j4));
                        j++;
                        j4++;
                    } else {
                        return;
                    }
                }
                this.currentIndex = j4;
                j3 = addAndGet(-j);
                if (j3 == 0) {
                    return;
                }
            }
        }

        final void fastPath() {
            long j = ((long) this.endOfRange) + 1;
            Subscriber subscriber = this.childSubscriber;
            long j2 = this.currentIndex;
            while (j2 != j) {
                if (!subscriber.isUnsubscribed()) {
                    subscriber.onNext(Integer.valueOf((int) j2));
                    j2++;
                } else {
                    return;
                }
            }
            if (!subscriber.isUnsubscribed()) {
                subscriber.onCompleted();
            }
        }
    }

    public OnSubscribeRange(int i, int i2) {
        this.startIndex = i;
        this.endIndex = i2;
    }

    public final void call(Subscriber<? super Integer> subscriber) {
        subscriber.setProducer(new RangeProducer(subscriber, this.startIndex, this.endIndex));
    }
}
