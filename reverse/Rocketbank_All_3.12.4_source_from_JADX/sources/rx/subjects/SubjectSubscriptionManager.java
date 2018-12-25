package rx.subjects;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Subscriber;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Actions;
import rx.internal.operators.NotificationLite;
import rx.subscriptions.Subscriptions;

final class SubjectSubscriptionManager<T> extends AtomicReference<State<T>> implements OnSubscribe<T> {
    private static final long serialVersionUID = 6035251036011671568L;
    boolean active = true;
    volatile Object latest;
    Action1<SubjectObserver<T>> onAdded = Actions.empty();
    Action1<SubjectObserver<T>> onStart = Actions.empty();
    Action1<SubjectObserver<T>> onTerminated = Actions.empty();

    protected static final class State<T> {
        static final State EMPTY = new State(false, NO_OBSERVERS);
        static final SubjectObserver[] NO_OBSERVERS = new SubjectObserver[0];
        static final State TERMINATED = new State(true, NO_OBSERVERS);
        final SubjectObserver[] observers;
        final boolean terminated;

        public State(boolean z, SubjectObserver[] subjectObserverArr) {
            this.terminated = z;
            this.observers = subjectObserverArr;
        }

        public final State add(SubjectObserver subjectObserver) {
            int length = this.observers.length;
            Object obj = new SubjectObserver[(length + 1)];
            System.arraycopy(this.observers, 0, obj, 0, length);
            obj[length] = subjectObserver;
            return new State(this.terminated, obj);
        }

        public final State remove(SubjectObserver subjectObserver) {
            SubjectObserver[] subjectObserverArr = this.observers;
            int length = subjectObserverArr.length;
            if (length == 1 && subjectObserverArr[0] == subjectObserver) {
                return EMPTY;
            }
            if (length == 0) {
                return this;
            }
            int i = length - 1;
            SubjectObserver subjectObserver2 = new SubjectObserver[i];
            int i2 = 0;
            int i3 = i2;
            while (i2 < length) {
                SubjectObserver subjectObserver3 = subjectObserverArr[i2];
                if (subjectObserver3 != subjectObserver) {
                    if (i3 == i) {
                        return this;
                    }
                    int i4 = i3 + 1;
                    subjectObserver2[i3] = subjectObserver3;
                    i3 = i4;
                }
                i2++;
            }
            if (i3 == 0) {
                return EMPTY;
            }
            if (i3 < i) {
                subjectObserver = new SubjectObserver[i3];
                System.arraycopy(subjectObserver2, 0, subjectObserver, 0, i3);
            } else {
                subjectObserver = subjectObserver2;
            }
            return new State(this.terminated, subjectObserver);
        }
    }

    protected static final class SubjectObserver<T> implements Observer<T> {
        final Subscriber<? super T> actual;
        volatile boolean caughtUp;
        boolean emitting;
        boolean fastPath;
        boolean first = true;
        private volatile Object index;
        List<Object> queue;

        public SubjectObserver(Subscriber<? super T> subscriber) {
            this.actual = subscriber;
        }

        public final void onNext(T t) {
            this.actual.onNext(t);
        }

        public final void onError(Throwable th) {
            this.actual.onError(th);
        }

        public final void onCompleted() {
            this.actual.onCompleted();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void emitNext(java.lang.Object r2) {
            /*
            r1 = this;
            r0 = r1.fastPath;
            if (r0 != 0) goto L_0x0026;
        L_0x0004:
            monitor-enter(r1);
            r0 = 0;
            r1.first = r0;	 Catch:{ all -> 0x0023 }
            r0 = r1.emitting;	 Catch:{ all -> 0x0023 }
            if (r0 == 0) goto L_0x001e;
        L_0x000c:
            r0 = r1.queue;	 Catch:{ all -> 0x0023 }
            if (r0 != 0) goto L_0x0017;
        L_0x0010:
            r0 = new java.util.ArrayList;	 Catch:{ all -> 0x0023 }
            r0.<init>();	 Catch:{ all -> 0x0023 }
            r1.queue = r0;	 Catch:{ all -> 0x0023 }
        L_0x0017:
            r0 = r1.queue;	 Catch:{ all -> 0x0023 }
            r0.add(r2);	 Catch:{ all -> 0x0023 }
            monitor-exit(r1);	 Catch:{ all -> 0x0023 }
            return;
        L_0x001e:
            monitor-exit(r1);	 Catch:{ all -> 0x0023 }
            r0 = 1;
            r1.fastPath = r0;
            goto L_0x0026;
        L_0x0023:
            r2 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x0023 }
            throw r2;
        L_0x0026:
            r0 = r1.actual;
            rx.internal.operators.NotificationLite.accept(r0, r2);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.subjects.SubjectSubscriptionManager.SubjectObserver.emitNext(java.lang.Object):void");
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void emitFirst(java.lang.Object r2) {
            /*
            r1 = this;
            monitor-enter(r1);
            r0 = r1.first;	 Catch:{ all -> 0x001c }
            if (r0 == 0) goto L_0x001a;
        L_0x0005:
            r0 = r1.emitting;	 Catch:{ all -> 0x001c }
            if (r0 == 0) goto L_0x000a;
        L_0x0009:
            goto L_0x001a;
        L_0x000a:
            r0 = 0;
            r1.first = r0;	 Catch:{ all -> 0x001c }
            if (r2 == 0) goto L_0x0010;
        L_0x000f:
            r0 = 1;
        L_0x0010:
            r1.emitting = r0;	 Catch:{ all -> 0x001c }
            monitor-exit(r1);	 Catch:{ all -> 0x001c }
            if (r2 == 0) goto L_0x0019;
        L_0x0015:
            r0 = 0;
            r1.emitLoop(r0, r2);
        L_0x0019:
            return;
        L_0x001a:
            monitor-exit(r1);	 Catch:{ all -> 0x001c }
            return;
        L_0x001c:
            r2 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x001c }
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.subjects.SubjectSubscriptionManager.SubjectObserver.emitFirst(java.lang.Object):void");
        }

        final void emitLoop(List<Object> list, Object obj) {
            boolean z = true;
            boolean z2 = true;
            while (true) {
                if (list != null) {
                    try {
                        for (Object accept : list) {
                            accept(accept);
                        }
                    } catch (Throwable th) {
                        list = th;
                        z = false;
                    }
                }
                if (z2) {
                    accept(obj);
                    z2 = false;
                }
                synchronized (this) {
                    try {
                        list = this.queue;
                        this.queue = null;
                        if (list == null) {
                            this.emitting = false;
                            try {
                                return;
                            } catch (Throwable th2) {
                                list = th2;
                                try {
                                    throw list;
                                } catch (Throwable th3) {
                                    list = th3;
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        list = th4;
                        z = false;
                    }
                }
            }
            if (!z) {
                synchronized (this) {
                    this.emitting = false;
                }
            }
            throw list;
        }

        final void accept(Object obj) {
            if (obj != null) {
                NotificationLite.accept(this.actual, obj);
            }
        }

        final Observer<? super T> getActual() {
            return this.actual;
        }

        public final <I> I index() {
            return this.index;
        }

        public final void index(Object obj) {
            this.index = obj;
        }
    }

    public SubjectSubscriptionManager() {
        super(State.EMPTY);
    }

    public final void call(Subscriber<? super T> subscriber) {
        SubjectObserver subjectObserver = new SubjectObserver(subscriber);
        addUnsubscriber(subscriber, subjectObserver);
        this.onStart.call(subjectObserver);
        if (!subscriber.isUnsubscribed() && add(subjectObserver) && subscriber.isUnsubscribed() != null) {
            remove(subjectObserver);
        }
    }

    final void addUnsubscriber(Subscriber<? super T> subscriber, final SubjectObserver<T> subjectObserver) {
        subscriber.add(Subscriptions.create(new Action0() {
            public void call() {
                SubjectSubscriptionManager.this.remove(subjectObserver);
            }
        }));
    }

    final void setLatest(Object obj) {
        this.latest = obj;
    }

    final Object getLatest() {
        return this.latest;
    }

    final SubjectObserver<T>[] observers() {
        return ((State) get()).observers;
    }

    final boolean add(SubjectObserver<T> subjectObserver) {
        State state;
        do {
            state = (State) get();
            if (state.terminated) {
                this.onTerminated.call(subjectObserver);
                return null;
            }
        } while (!compareAndSet(state, state.add(subjectObserver)));
        this.onAdded.call(subjectObserver);
        return true;
    }

    final void remove(SubjectObserver<T> subjectObserver) {
        State state;
        State remove;
        do {
            state = (State) get();
            if (!state.terminated) {
                remove = state.remove(subjectObserver);
                if (remove == state) {
                    break;
                }
            } else {
                return;
            }
        } while (!compareAndSet(state, remove));
    }

    final SubjectObserver<T>[] next(Object obj) {
        setLatest(obj);
        return ((State) get()).observers;
    }

    final SubjectObserver<T>[] terminate(Object obj) {
        setLatest(obj);
        this.active = null;
        if (((State) get()).terminated != null) {
            return State.NO_OBSERVERS;
        }
        return ((State) getAndSet(State.TERMINATED)).observers;
    }
}
