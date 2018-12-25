package rx.subjects;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.exceptions.MissingBackpressureException;
import rx.internal.operators.BackpressureUtils;

public final class PublishSubject<T> extends Subject<T, T> {
    final PublishSubjectState<T> state;

    static final class PublishSubjectProducer<T> extends AtomicLong implements Observer<T>, Producer, Subscription {
        private static final long serialVersionUID = 6451806817170721536L;
        final Subscriber<? super T> actual;
        final PublishSubjectState<T> parent;
        long produced;

        public PublishSubjectProducer(PublishSubjectState<T> publishSubjectState, Subscriber<? super T> subscriber) {
            this.parent = publishSubjectState;
            this.actual = subscriber;
        }

        public final void request(long j) {
            if (BackpressureUtils.validate(j)) {
                long j2;
                do {
                    j2 = get();
                    if (j2 == Long.MIN_VALUE) {
                        return;
                    }
                } while (!compareAndSet(j2, BackpressureUtils.addCap(j2, j)));
            }
        }

        public final boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        public final void unsubscribe() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.remove(this);
            }
        }

        public final void onNext(T t) {
            long j = get();
            if (j != Long.MIN_VALUE) {
                long j2 = this.produced;
                if (j != j2) {
                    this.produced = j2 + 1;
                    this.actual.onNext(t);
                    return;
                }
                unsubscribe();
                this.actual.onError(new MissingBackpressureException("PublishSubject: could not emit value due to lack of requests"));
            }
        }

        public final void onError(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.actual.onError(th);
            }
        }

        public final void onCompleted() {
            if (get() != Long.MIN_VALUE) {
                this.actual.onCompleted();
            }
        }
    }

    static final class PublishSubjectState<T> extends AtomicReference<PublishSubjectProducer<T>[]> implements OnSubscribe<T>, Observer<T> {
        static final PublishSubjectProducer[] EMPTY = new PublishSubjectProducer[0];
        static final PublishSubjectProducer[] TERMINATED = new PublishSubjectProducer[0];
        private static final long serialVersionUID = -7568940796666027140L;
        Throwable error;

        public PublishSubjectState() {
            lazySet(EMPTY);
        }

        public final void call(Subscriber<? super T> subscriber) {
            PublishSubjectProducer publishSubjectProducer = new PublishSubjectProducer(this, subscriber);
            subscriber.add(publishSubjectProducer);
            subscriber.setProducer(publishSubjectProducer);
            if (!add(publishSubjectProducer)) {
                Throwable th = this.error;
                if (th != null) {
                    subscriber.onError(th);
                    return;
                }
                subscriber.onCompleted();
            } else if (publishSubjectProducer.isUnsubscribed() != null) {
                remove(publishSubjectProducer);
            }
        }

        final boolean add(PublishSubjectProducer<T> publishSubjectProducer) {
            PublishSubjectProducer[] publishSubjectProducerArr;
            Object obj;
            do {
                publishSubjectProducerArr = (PublishSubjectProducer[]) get();
                if (publishSubjectProducerArr == TERMINATED) {
                    return false;
                }
                int length = publishSubjectProducerArr.length;
                obj = new PublishSubjectProducer[(length + 1)];
                System.arraycopy(publishSubjectProducerArr, 0, obj, 0, length);
                obj[length] = publishSubjectProducer;
            } while (!compareAndSet(publishSubjectProducerArr, obj));
            return true;
        }

        final void remove(PublishSubjectProducer<T> publishSubjectProducer) {
            PublishSubjectProducer[] publishSubjectProducerArr;
            Object obj;
            do {
                publishSubjectProducerArr = (PublishSubjectProducer[]) get();
                if (publishSubjectProducerArr != TERMINATED) {
                    if (publishSubjectProducerArr != EMPTY) {
                        int length = publishSubjectProducerArr.length;
                        int i = -1;
                        for (int i2 = 0; i2 < length; i2++) {
                            if (publishSubjectProducerArr[i2] == publishSubjectProducer) {
                                i = i2;
                                break;
                            }
                        }
                        if (i >= 0) {
                            if (length == 1) {
                                obj = EMPTY;
                            } else {
                                Object obj2 = new PublishSubjectProducer[(length - 1)];
                                System.arraycopy(publishSubjectProducerArr, 0, obj2, 0, i);
                                System.arraycopy(publishSubjectProducerArr, i + 1, obj2, i, (length - i) - 1);
                                obj = obj2;
                            }
                        } else {
                            return;
                        }
                    }
                }
                return;
            } while (!compareAndSet(publishSubjectProducerArr, obj));
        }

        public final void onNext(T t) {
            for (PublishSubjectProducer onNext : (PublishSubjectProducer[]) get()) {
                onNext.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            this.error = th;
            List list = null;
            for (PublishSubjectProducer onError : (PublishSubjectProducer[]) getAndSet(TERMINATED)) {
                try {
                    onError.onError(th);
                } catch (Throwable th2) {
                    if (list == null) {
                        list = new ArrayList(1);
                    }
                    list.add(th2);
                }
            }
            Exceptions.throwIfAny(list);
        }

        public final void onCompleted() {
            for (PublishSubjectProducer onCompleted : (PublishSubjectProducer[]) getAndSet(TERMINATED)) {
                onCompleted.onCompleted();
            }
        }
    }

    public static <T> PublishSubject<T> create() {
        return new PublishSubject(new PublishSubjectState());
    }

    protected PublishSubject(PublishSubjectState<T> publishSubjectState) {
        super(publishSubjectState);
        this.state = publishSubjectState;
    }

    public final void onNext(T t) {
        this.state.onNext(t);
    }

    public final void onError(Throwable th) {
        this.state.onError(th);
    }

    public final void onCompleted() {
        this.state.onCompleted();
    }

    public final boolean hasObservers() {
        return ((PublishSubjectProducer[]) this.state.get()).length != 0;
    }

    public final boolean hasThrowable() {
        return this.state.get() == PublishSubjectState.TERMINATED && this.state.error != null;
    }

    public final boolean hasCompleted() {
        return this.state.get() == PublishSubjectState.TERMINATED && this.state.error == null;
    }

    public final Throwable getThrowable() {
        return this.state.get() == PublishSubjectState.TERMINATED ? this.state.error : null;
    }
}
