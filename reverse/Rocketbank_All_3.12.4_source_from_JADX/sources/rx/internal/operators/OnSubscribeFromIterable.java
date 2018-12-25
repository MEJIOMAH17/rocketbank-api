package rx.internal.operators;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;

public final class OnSubscribeFromIterable<T> implements OnSubscribe<T> {
    final Iterable<? extends T> is;

    static final class IterableProducer<T> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -8730475647105475802L;
        private final Iterator<? extends T> it;
        /* renamed from: o */
        private final Subscriber<? super T> f759o;

        IterableProducer(Subscriber<? super T> subscriber, Iterator<? extends T> it) {
            this.f759o = subscriber;
            this.it = it;
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
            Observer observer = this.f759o;
            Iterator it = this.it;
            long j2 = j;
            loop0:
            while (true) {
                j = 0;
                while (true) {
                    if (j == j2) {
                        j2 = get();
                        if (j == j2) {
                            break;
                        }
                    } else if (!observer.isUnsubscribed()) {
                        try {
                            observer.onNext(it.next());
                            if (!observer.isUnsubscribed()) {
                                try {
                                    if (!it.hasNext()) {
                                        break loop0;
                                    }
                                    j++;
                                } catch (Throwable th) {
                                    Exceptions.throwOrReport(th, observer);
                                    return;
                                }
                            }
                            return;
                        } catch (Throwable th2) {
                            Exceptions.throwOrReport(th2, observer);
                            return;
                        }
                    } else {
                        return;
                    }
                }
                j2 = BackpressureUtils.produced(this, j);
                if (j2 == 0) {
                    return;
                }
            }
            if (observer.isUnsubscribed() == null) {
                observer.onCompleted();
            }
        }

        final void fastPath() {
            Observer observer = this.f759o;
            Iterator it = this.it;
            while (!observer.isUnsubscribed()) {
                try {
                    observer.onNext(it.next());
                    if (!observer.isUnsubscribed()) {
                        try {
                            if (!it.hasNext()) {
                                if (!observer.isUnsubscribed()) {
                                    observer.onCompleted();
                                }
                                return;
                            }
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, observer);
                            return;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    Exceptions.throwOrReport(th2, observer);
                    return;
                }
            }
        }
    }

    public OnSubscribeFromIterable(Iterable<? extends T> iterable) {
        if (iterable == null) {
            throw new NullPointerException("iterable must not be null");
        }
        this.is = iterable;
    }

    public final void call(Subscriber<? super T> subscriber) {
        try {
            Iterator it = this.is.iterator();
            boolean hasNext = it.hasNext();
            if (!subscriber.isUnsubscribed()) {
                if (hasNext) {
                    subscriber.setProducer(new IterableProducer(subscriber, it));
                } else {
                    subscriber.onCompleted();
                }
            }
        } catch (Throwable th) {
            Exceptions.throwOrReport(th, (Observer) subscriber);
        }
    }
}
