package rx.observables;

import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.annotations.Beta;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Action2;
import rx.functions.Func0;
import rx.functions.Func2;
import rx.internal.operators.BackpressureUtils;
import rx.plugins.RxJavaHooks;

public abstract class SyncOnSubscribe<S, T> implements OnSubscribe<T> {

    static final class SubscriptionProducer<S, T> extends AtomicLong implements Observer<T>, Producer, Subscription {
        private static final long serialVersionUID = -3736864024352728072L;
        private final Subscriber<? super T> actualSubscriber;
        private boolean hasTerminated;
        private boolean onNextCalled;
        private final SyncOnSubscribe<S, T> parent;
        private S state;

        SubscriptionProducer(Subscriber<? super T> subscriber, SyncOnSubscribe<S, T> syncOnSubscribe, S s) {
            this.actualSubscriber = subscriber;
            this.parent = syncOnSubscribe;
            this.state = s;
        }

        public final boolean isUnsubscribed() {
            return get() < 0;
        }

        public final void unsubscribe() {
            long j;
            do {
                j = get();
                if (compareAndSet(0, -1)) {
                    doUnsubscribe();
                    return;
                }
            } while (!compareAndSet(j, -2));
        }

        private boolean tryUnsubscribe() {
            if (!this.hasTerminated) {
                if (get() >= -1) {
                    return false;
                }
            }
            set(-1);
            doUnsubscribe();
            return true;
        }

        private void doUnsubscribe() {
            try {
                this.parent.onUnsubscribe(this.state);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaHooks.onError(th);
            }
        }

        public final void request(long j) {
            if (j > 0 && BackpressureUtils.getAndAddRequest(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    fastPath();
                    return;
                }
                slowPath(j);
            }
        }

        private void fastPath() {
            SyncOnSubscribe syncOnSubscribe = this.parent;
            Subscriber subscriber = this.actualSubscriber;
            do {
                try {
                    this.onNextCalled = false;
                    nextIteration(syncOnSubscribe);
                } catch (Throwable th) {
                    handleThrownError(subscriber, th);
                    return;
                }
            } while (!tryUnsubscribe());
        }

        private void handleThrownError(Subscriber<? super T> subscriber, Throwable th) {
            if (this.hasTerminated) {
                RxJavaHooks.onError(th);
                return;
            }
            this.hasTerminated = true;
            subscriber.onError(th);
            unsubscribe();
        }

        private void slowPath(long j) {
            SyncOnSubscribe syncOnSubscribe = this.parent;
            Subscriber subscriber = this.actualSubscriber;
            do {
                long j2 = j;
                do {
                    try {
                        this.onNextCalled = false;
                        nextIteration(syncOnSubscribe);
                        if (!tryUnsubscribe()) {
                            if (this.onNextCalled) {
                                j2--;
                            }
                        } else {
                            return;
                        }
                    } catch (long j3) {
                        handleThrownError(subscriber, j3);
                        return;
                    }
                } while (j2 != 0);
                j3 = addAndGet(-j3);
            } while (j3 > 0);
            tryUnsubscribe();
        }

        private void nextIteration(SyncOnSubscribe<S, T> syncOnSubscribe) {
            this.state = syncOnSubscribe.next(this.state, this);
        }

        public final void onCompleted() {
            if (this.hasTerminated) {
                throw new IllegalStateException("Terminal event already emitted.");
            }
            this.hasTerminated = true;
            if (!this.actualSubscriber.isUnsubscribed()) {
                this.actualSubscriber.onCompleted();
            }
        }

        public final void onError(Throwable th) {
            if (this.hasTerminated) {
                throw new IllegalStateException("Terminal event already emitted.");
            }
            this.hasTerminated = true;
            if (!this.actualSubscriber.isUnsubscribed()) {
                this.actualSubscriber.onError(th);
            }
        }

        public final void onNext(T t) {
            if (this.onNextCalled) {
                throw new IllegalStateException("onNext called multiple times!");
            }
            this.onNextCalled = true;
            this.actualSubscriber.onNext(t);
        }
    }

    static final class SyncOnSubscribeImpl<S, T> extends SyncOnSubscribe<S, T> {
        private final Func0<? extends S> generator;
        private final Func2<? super S, ? super Observer<? super T>, ? extends S> next;
        private final Action1<? super S> onUnsubscribe;

        public final /* bridge */ /* synthetic */ void call(Object obj) {
            super.call((Subscriber) obj);
        }

        SyncOnSubscribeImpl(Func0<? extends S> func0, Func2<? super S, ? super Observer<? super T>, ? extends S> func2, Action1<? super S> action1) {
            this.generator = func0;
            this.next = func2;
            this.onUnsubscribe = action1;
        }

        public SyncOnSubscribeImpl(Func0<? extends S> func0, Func2<? super S, ? super Observer<? super T>, ? extends S> func2) {
            this(func0, func2, null);
        }

        public SyncOnSubscribeImpl(Func2<S, Observer<? super T>, S> func2, Action1<? super S> action1) {
            this(null, func2, action1);
        }

        public SyncOnSubscribeImpl(Func2<S, Observer<? super T>, S> func2) {
            this(null, func2, null);
        }

        protected final S generateState() {
            return this.generator == null ? null : this.generator.call();
        }

        protected final S next(S s, Observer<? super T> observer) {
            return this.next.call(s, observer);
        }

        protected final void onUnsubscribe(S s) {
            if (this.onUnsubscribe != null) {
                this.onUnsubscribe.call(s);
            }
        }
    }

    protected abstract S generateState();

    protected abstract S next(S s, Observer<? super T> observer);

    protected void onUnsubscribe(S s) {
    }

    public final void call(Subscriber<? super T> subscriber) {
        try {
            Object subscriptionProducer = new SubscriptionProducer(subscriber, this, generateState());
            subscriber.add(subscriptionProducer);
            subscriber.setProducer(subscriptionProducer);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            subscriber.onError(th);
        }
    }

    @Beta
    public static <S, T> SyncOnSubscribe<S, T> createSingleState(Func0<? extends S> func0, final Action2<? super S, ? super Observer<? super T>> action2) {
        return new SyncOnSubscribeImpl((Func0) func0, new Func2<S, Observer<? super T>, S>() {
            public final S call(S s, Observer<? super T> observer) {
                action2.call(s, observer);
                return s;
            }
        });
    }

    @Beta
    public static <S, T> SyncOnSubscribe<S, T> createSingleState(Func0<? extends S> func0, final Action2<? super S, ? super Observer<? super T>> action2, Action1<? super S> action1) {
        return new SyncOnSubscribeImpl(func0, new Func2<S, Observer<? super T>, S>() {
            public final S call(S s, Observer<? super T> observer) {
                action2.call(s, observer);
                return s;
            }
        }, action1);
    }

    @Beta
    public static <S, T> SyncOnSubscribe<S, T> createStateful(Func0<? extends S> func0, Func2<? super S, ? super Observer<? super T>, ? extends S> func2, Action1<? super S> action1) {
        return new SyncOnSubscribeImpl(func0, func2, action1);
    }

    @Beta
    public static <S, T> SyncOnSubscribe<S, T> createStateful(Func0<? extends S> func0, Func2<? super S, ? super Observer<? super T>, ? extends S> func2) {
        return new SyncOnSubscribeImpl((Func0) func0, (Func2) func2);
    }

    @Beta
    public static <T> SyncOnSubscribe<Void, T> createStateless(final Action1<? super Observer<? super T>> action1) {
        return new SyncOnSubscribeImpl(new Func2<Void, Observer<? super T>, Void>() {
            public final Void call(Void voidR, Observer<? super T> observer) {
                action1.call(observer);
                return voidR;
            }
        });
    }

    @Beta
    public static <T> SyncOnSubscribe<Void, T> createStateless(final Action1<? super Observer<? super T>> action1, final Action0 action0) {
        return new SyncOnSubscribeImpl(new Func2<Void, Observer<? super T>, Void>() {
            public final Void call(Void voidR, Observer<? super T> observer) {
                action1.call(observer);
                return null;
            }
        }, new Action1<Void>() {
            public final void call(Void voidR) {
                action0.call();
            }
        });
    }
}
