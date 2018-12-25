package rx.observables;

import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.annotations.Experimental;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Action2;
import rx.functions.Action3;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.functions.Func3;
import rx.internal.operators.BufferUntilSubscriber;
import rx.observers.SerializedObserver;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.CompositeSubscription;

@Experimental
public abstract class AsyncOnSubscribe<S, T> implements OnSubscribe<T> {

    static final class AsyncOuterManager<S, T> implements Observer<Observable<? extends T>>, Producer, Subscription {
        Producer concatProducer;
        boolean emitting;
        long expectedDelivery;
        private boolean hasTerminated;
        final AtomicBoolean isUnsubscribed;
        private final UnicastSubject<Observable<T>> merger;
        private boolean onNextCalled;
        private final AsyncOnSubscribe<S, T> parent;
        List<Long> requests;
        private final SerializedObserver<Observable<? extends T>> serializedSubscriber;
        private S state;
        final CompositeSubscription subscriptions = new CompositeSubscription();

        public AsyncOuterManager(AsyncOnSubscribe<S, T> asyncOnSubscribe, S s, UnicastSubject<Observable<T>> unicastSubject) {
            this.parent = asyncOnSubscribe;
            this.serializedSubscriber = new SerializedObserver(this);
            this.state = s;
            this.merger = unicastSubject;
            this.isUnsubscribed = new AtomicBoolean();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void unsubscribe() {
            /*
            r3 = this;
            r0 = r3.isUnsubscribed;
            r1 = 1;
            r2 = 0;
            r0 = r0.compareAndSet(r2, r1);
            if (r0 == 0) goto L_0x002d;
        L_0x000a:
            monitor-enter(r3);
            r0 = r3.emitting;	 Catch:{ all -> 0x002a }
            if (r0 == 0) goto L_0x0023;
        L_0x000f:
            r0 = new java.util.ArrayList;	 Catch:{ all -> 0x002a }
            r0.<init>();	 Catch:{ all -> 0x002a }
            r3.requests = r0;	 Catch:{ all -> 0x002a }
            r0 = r3.requests;	 Catch:{ all -> 0x002a }
            r1 = 0;
            r1 = java.lang.Long.valueOf(r1);	 Catch:{ all -> 0x002a }
            r0.add(r1);	 Catch:{ all -> 0x002a }
            monitor-exit(r3);	 Catch:{ all -> 0x002a }
            return;
        L_0x0023:
            r3.emitting = r1;	 Catch:{ all -> 0x002a }
            monitor-exit(r3);	 Catch:{ all -> 0x002a }
            r3.cleanup();
            goto L_0x002d;
        L_0x002a:
            r0 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x002a }
            throw r0;
        L_0x002d:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.observables.AsyncOnSubscribe.AsyncOuterManager.unsubscribe():void");
        }

        final void setConcatProducer(Producer producer) {
            if (this.concatProducer != null) {
                throw new IllegalStateException("setConcatProducer may be called at most once!");
            }
            this.concatProducer = producer;
        }

        public final boolean isUnsubscribed() {
            return this.isUnsubscribed.get();
        }

        public final void nextIteration(long j) {
            this.state = this.parent.next(this.state, j, this.serializedSubscriber);
        }

        final void cleanup() {
            this.subscriptions.unsubscribe();
            try {
                this.parent.onUnsubscribe(this.state);
            } catch (Throwable th) {
                handleThrownError(th);
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void request(long r5) {
            /*
            r4 = this;
            r0 = 0;
            r2 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1));
            if (r2 != 0) goto L_0x0007;
        L_0x0006:
            return;
        L_0x0007:
            r2 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1));
            if (r2 >= 0) goto L_0x001b;
        L_0x000b:
            r0 = new java.lang.IllegalStateException;
            r1 = "Request can't be negative! ";
            r5 = java.lang.String.valueOf(r5);
            r5 = r1.concat(r5);
            r0.<init>(r5);
            throw r0;
        L_0x001b:
            monitor-enter(r4);
            r0 = r4.emitting;	 Catch:{ all -> 0x0073 }
            r1 = 1;
            r2 = 0;
            if (r0 == 0) goto L_0x0035;
        L_0x0022:
            r0 = r4.requests;	 Catch:{ all -> 0x0073 }
            if (r0 != 0) goto L_0x002d;
        L_0x0026:
            r0 = new java.util.ArrayList;	 Catch:{ all -> 0x0073 }
            r0.<init>();	 Catch:{ all -> 0x0073 }
            r4.requests = r0;	 Catch:{ all -> 0x0073 }
        L_0x002d:
            r3 = java.lang.Long.valueOf(r5);	 Catch:{ all -> 0x0073 }
            r0.add(r3);	 Catch:{ all -> 0x0073 }
            goto L_0x0038;
        L_0x0035:
            r4.emitting = r1;	 Catch:{ all -> 0x0073 }
            r1 = r2;
        L_0x0038:
            monitor-exit(r4);	 Catch:{ all -> 0x0073 }
            r0 = r4.concatProducer;
            r0.request(r5);
            if (r1 == 0) goto L_0x0041;
        L_0x0040:
            return;
        L_0x0041:
            r5 = r4.tryEmit(r5);
            if (r5 == 0) goto L_0x0048;
        L_0x0047:
            return;
        L_0x0048:
            monitor-enter(r4);
            r5 = r4.requests;	 Catch:{ all -> 0x0070 }
            if (r5 != 0) goto L_0x0051;
        L_0x004d:
            r4.emitting = r2;	 Catch:{ all -> 0x0070 }
            monitor-exit(r4);	 Catch:{ all -> 0x0070 }
            return;
        L_0x0051:
            r6 = 0;
            r4.requests = r6;	 Catch:{ all -> 0x0070 }
            monitor-exit(r4);	 Catch:{ all -> 0x0070 }
            r5 = r5.iterator();
        L_0x0059:
            r6 = r5.hasNext();
            if (r6 == 0) goto L_0x0048;
        L_0x005f:
            r6 = r5.next();
            r6 = (java.lang.Long) r6;
            r0 = r6.longValue();
            r6 = r4.tryEmit(r0);
            if (r6 == 0) goto L_0x0059;
        L_0x006f:
            return;
        L_0x0070:
            r5 = move-exception;
            monitor-exit(r4);	 Catch:{ all -> 0x0070 }
            throw r5;
        L_0x0073:
            r5 = move-exception;
            monitor-exit(r4);	 Catch:{ all -> 0x0073 }
            throw r5;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.observables.AsyncOnSubscribe.AsyncOuterManager.request(long):void");
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void requestRemaining(long r4) {
            /*
            r3 = this;
            r0 = 0;
            r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
            if (r2 != 0) goto L_0x0007;
        L_0x0006:
            return;
        L_0x0007:
            r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
            if (r2 >= 0) goto L_0x001b;
        L_0x000b:
            r0 = new java.lang.IllegalStateException;
            r1 = "Request can't be negative! ";
            r4 = java.lang.String.valueOf(r4);
            r4 = r1.concat(r4);
            r0.<init>(r4);
            throw r0;
        L_0x001b:
            monitor-enter(r3);
            r0 = r3.emitting;	 Catch:{ all -> 0x006b }
            if (r0 == 0) goto L_0x0034;
        L_0x0020:
            r0 = r3.requests;	 Catch:{ all -> 0x006b }
            if (r0 != 0) goto L_0x002b;
        L_0x0024:
            r0 = new java.util.ArrayList;	 Catch:{ all -> 0x006b }
            r0.<init>();	 Catch:{ all -> 0x006b }
            r3.requests = r0;	 Catch:{ all -> 0x006b }
        L_0x002b:
            r4 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x006b }
            r0.add(r4);	 Catch:{ all -> 0x006b }
            monitor-exit(r3);	 Catch:{ all -> 0x006b }
            return;
        L_0x0034:
            r0 = 1;
            r3.emitting = r0;	 Catch:{ all -> 0x006b }
            monitor-exit(r3);	 Catch:{ all -> 0x006b }
            r4 = r3.tryEmit(r4);
            if (r4 == 0) goto L_0x003f;
        L_0x003e:
            return;
        L_0x003f:
            monitor-enter(r3);
            r4 = r3.requests;	 Catch:{ all -> 0x0068 }
            if (r4 != 0) goto L_0x0049;
        L_0x0044:
            r4 = 0;
            r3.emitting = r4;	 Catch:{ all -> 0x0068 }
            monitor-exit(r3);	 Catch:{ all -> 0x0068 }
            return;
        L_0x0049:
            r5 = 0;
            r3.requests = r5;	 Catch:{ all -> 0x0068 }
            monitor-exit(r3);	 Catch:{ all -> 0x0068 }
            r4 = r4.iterator();
        L_0x0051:
            r5 = r4.hasNext();
            if (r5 == 0) goto L_0x003f;
        L_0x0057:
            r5 = r4.next();
            r5 = (java.lang.Long) r5;
            r0 = r5.longValue();
            r5 = r3.tryEmit(r0);
            if (r5 == 0) goto L_0x0051;
        L_0x0067:
            return;
        L_0x0068:
            r4 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x0068 }
            throw r4;
        L_0x006b:
            r4 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x006b }
            throw r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.observables.AsyncOnSubscribe.AsyncOuterManager.requestRemaining(long):void");
        }

        final boolean tryEmit(long j) {
            if (isUnsubscribed()) {
                cleanup();
                return true;
            }
            try {
                this.onNextCalled = false;
                this.expectedDelivery = j;
                nextIteration(j);
                if (this.hasTerminated == null) {
                    if (isUnsubscribed() == null) {
                        if (this.onNextCalled != null) {
                            return false;
                        }
                        handleThrownError(new IllegalStateException("No events emitted!"));
                        return true;
                    }
                }
                cleanup();
                return true;
            } catch (long j2) {
                handleThrownError(j2);
                return true;
            }
        }

        private void handleThrownError(Throwable th) {
            if (this.hasTerminated) {
                RxJavaHooks.onError(th);
                return;
            }
            this.hasTerminated = true;
            this.merger.onError(th);
            cleanup();
        }

        public final void onCompleted() {
            if (this.hasTerminated) {
                throw new IllegalStateException("Terminal event already emitted.");
            }
            this.hasTerminated = true;
            this.merger.onCompleted();
        }

        public final void onError(Throwable th) {
            if (this.hasTerminated) {
                throw new IllegalStateException("Terminal event already emitted.");
            }
            this.hasTerminated = true;
            this.merger.onError(th);
        }

        public final void onNext(Observable<? extends T> observable) {
            if (this.onNextCalled) {
                throw new IllegalStateException("onNext called multiple times!");
            }
            this.onNextCalled = true;
            if (!this.hasTerminated) {
                subscribeBufferToObservable(observable);
            }
        }

        private void subscribeBufferToObservable(Observable<? extends T> observable) {
            final BufferUntilSubscriber create = BufferUntilSubscriber.create();
            final long j = this.expectedDelivery;
            final Subscriber c19731 = new Subscriber<T>() {
                long remaining = j;

                public void onNext(T t) {
                    this.remaining--;
                    create.onNext(t);
                }

                public void onError(Throwable th) {
                    create.onError(th);
                }

                public void onCompleted() {
                    create.onCompleted();
                    long j = this.remaining;
                    if (j > 0) {
                        AsyncOuterManager.this.requestRemaining(j);
                    }
                }
            };
            this.subscriptions.add(c19731);
            observable.doOnTerminate(new Action0() {
                public void call() {
                    AsyncOuterManager.this.subscriptions.remove(c19731);
                }
            }).subscribe(c19731);
            this.merger.onNext(create);
        }
    }

    static final class UnicastSubject<T> extends Observable<T> implements Observer<T> {
        private final State<T> state;

        static final class State<T> implements OnSubscribe<T> {
            Subscriber<? super T> subscriber;

            State() {
            }

            public final void call(Subscriber<? super T> subscriber) {
                synchronized (this) {
                    if (this.subscriber == null) {
                        this.subscriber = subscriber;
                        return;
                    }
                    subscriber.onError(new IllegalStateException("There can be only one subscriber"));
                }
            }
        }

        public static <T> UnicastSubject<T> create() {
            return new UnicastSubject(new State());
        }

        protected UnicastSubject(State<T> state) {
            super(state);
            this.state = state;
        }

        public final void onCompleted() {
            this.state.subscriber.onCompleted();
        }

        public final void onError(Throwable th) {
            this.state.subscriber.onError(th);
        }

        public final void onNext(T t) {
            this.state.subscriber.onNext(t);
        }
    }

    /* renamed from: rx.observables.AsyncOnSubscribe$7 */
    class C19727 implements Func1<Observable<T>, Observable<T>> {
        C19727() {
        }

        public Observable<T> call(Observable<T> observable) {
            return observable.onBackpressureBuffer();
        }
    }

    static final class AsyncOnSubscribeImpl<S, T> extends AsyncOnSubscribe<S, T> {
        private final Func0<? extends S> generator;
        private final Func3<? super S, Long, ? super Observer<Observable<? extends T>>, ? extends S> next;
        private final Action1<? super S> onUnsubscribe;

        public final /* bridge */ /* synthetic */ void call(Object obj) {
            super.call((Subscriber) obj);
        }

        AsyncOnSubscribeImpl(Func0<? extends S> func0, Func3<? super S, Long, ? super Observer<Observable<? extends T>>, ? extends S> func3, Action1<? super S> action1) {
            this.generator = func0;
            this.next = func3;
            this.onUnsubscribe = action1;
        }

        public AsyncOnSubscribeImpl(Func0<? extends S> func0, Func3<? super S, Long, ? super Observer<Observable<? extends T>>, ? extends S> func3) {
            this(func0, func3, null);
        }

        public AsyncOnSubscribeImpl(Func3<S, Long, Observer<Observable<? extends T>>, S> func3, Action1<? super S> action1) {
            this(null, func3, action1);
        }

        public AsyncOnSubscribeImpl(Func3<S, Long, Observer<Observable<? extends T>>, S> func3) {
            this(null, func3, null);
        }

        protected final S generateState() {
            return this.generator == null ? null : this.generator.call();
        }

        protected final S next(S s, long j, Observer<Observable<? extends T>> observer) {
            return this.next.call(s, Long.valueOf(j), observer);
        }

        protected final void onUnsubscribe(S s) {
            if (this.onUnsubscribe != null) {
                this.onUnsubscribe.call(s);
            }
        }
    }

    protected abstract S generateState();

    protected abstract S next(S s, long j, Observer<Observable<? extends T>> observer);

    protected void onUnsubscribe(S s) {
    }

    @Experimental
    public static <S, T> AsyncOnSubscribe<S, T> createSingleState(Func0<? extends S> func0, final Action3<? super S, Long, ? super Observer<Observable<? extends T>>> action3) {
        return new AsyncOnSubscribeImpl((Func0) func0, new Func3<S, Long, Observer<Observable<? extends T>>, S>() {
            public final S call(S s, Long l, Observer<Observable<? extends T>> observer) {
                action3.call(s, l, observer);
                return s;
            }
        });
    }

    @Experimental
    public static <S, T> AsyncOnSubscribe<S, T> createSingleState(Func0<? extends S> func0, final Action3<? super S, Long, ? super Observer<Observable<? extends T>>> action3, Action1<? super S> action1) {
        return new AsyncOnSubscribeImpl(func0, new Func3<S, Long, Observer<Observable<? extends T>>, S>() {
            public final S call(S s, Long l, Observer<Observable<? extends T>> observer) {
                action3.call(s, l, observer);
                return s;
            }
        }, action1);
    }

    @Experimental
    public static <S, T> AsyncOnSubscribe<S, T> createStateful(Func0<? extends S> func0, Func3<? super S, Long, ? super Observer<Observable<? extends T>>, ? extends S> func3, Action1<? super S> action1) {
        return new AsyncOnSubscribeImpl(func0, func3, action1);
    }

    @Experimental
    public static <S, T> AsyncOnSubscribe<S, T> createStateful(Func0<? extends S> func0, Func3<? super S, Long, ? super Observer<Observable<? extends T>>, ? extends S> func3) {
        return new AsyncOnSubscribeImpl((Func0) func0, (Func3) func3);
    }

    @Experimental
    public static <T> AsyncOnSubscribe<Void, T> createStateless(final Action2<Long, ? super Observer<Observable<? extends T>>> action2) {
        return new AsyncOnSubscribeImpl(new Func3<Void, Long, Observer<Observable<? extends T>>, Void>() {
            public final Void call(Void voidR, Long l, Observer<Observable<? extends T>> observer) {
                action2.call(l, observer);
                return voidR;
            }
        });
    }

    @Experimental
    public static <T> AsyncOnSubscribe<Void, T> createStateless(final Action2<Long, ? super Observer<Observable<? extends T>>> action2, final Action0 action0) {
        return new AsyncOnSubscribeImpl(new Func3<Void, Long, Observer<Observable<? extends T>>, Void>() {
            public final Void call(Void voidR, Long l, Observer<Observable<? extends T>> observer) {
                action2.call(l, observer);
                return null;
            }
        }, new Action1<Void>() {
            public final void call(Void voidR) {
                action0.call();
            }
        });
    }

    public final void call(final Subscriber<? super T> subscriber) {
        try {
            Object generateState = generateState();
            UnicastSubject create = UnicastSubject.create();
            final Object asyncOuterManager = new AsyncOuterManager(this, generateState, create);
            Subscription c19716 = new Subscriber<T>() {
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
                    asyncOuterManager.setConcatProducer(producer);
                }
            };
            create.onBackpressureBuffer().concatMap(new C19727()).unsafeSubscribe(c19716);
            subscriber.add(c19716);
            subscriber.add(asyncOuterManager);
            subscriber.setProducer(asyncOuterManager);
        } catch (Throwable th) {
            subscriber.onError(th);
        }
    }
}
