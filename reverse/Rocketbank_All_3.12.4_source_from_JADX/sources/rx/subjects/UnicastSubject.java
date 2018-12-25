package rx.subjects;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.annotations.Experimental;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.internal.operators.BackpressureUtils;
import rx.internal.operators.NotificationLite;
import rx.internal.util.atomic.SpscLinkedAtomicQueue;
import rx.internal.util.atomic.SpscUnboundedAtomicArrayQueue;
import rx.internal.util.unsafe.SpscLinkedQueue;
import rx.internal.util.unsafe.SpscUnboundedArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;

@Experimental
public final class UnicastSubject<T> extends Subject<T, T> {
    final State<T> state;

    static final class State<T> extends AtomicLong implements OnSubscribe<T>, Observer<T>, Producer, Subscription {
        private static final long serialVersionUID = -9044104859202255786L;
        volatile boolean caughtUp;
        volatile boolean done;
        boolean emitting;
        Throwable error;
        boolean missed;
        final Queue<Object> queue;
        final AtomicReference<Subscriber<? super T>> subscriber = new AtomicReference();
        final AtomicReference<Action0> terminateOnce;

        public State(int i, Action0 action0) {
            this.terminateOnce = action0 != null ? new AtomicReference(action0) : null;
            if (i > 1) {
                action0 = UnsafeAccess.isUnsafeAvailable() != null ? new SpscUnboundedArrayQueue(i) : new SpscUnboundedAtomicArrayQueue(i);
            } else {
                action0 = UnsafeAccess.isUnsafeAvailable() != 0 ? new SpscLinkedQueue() : new SpscLinkedAtomicQueue();
            }
            this.queue = action0;
        }

        public final void onNext(T t) {
            if (!this.done) {
                if (!this.caughtUp) {
                    Object obj = null;
                    synchronized (this) {
                        if (!this.caughtUp) {
                            this.queue.offer(NotificationLite.next(t));
                            obj = 1;
                        }
                    }
                    if (obj != null) {
                        replay();
                        return;
                    }
                }
                Observer observer = (Subscriber) this.subscriber.get();
                try {
                    observer.onNext(t);
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, observer, (Object) t);
                }
            }
        }

        public final void onError(Throwable th) {
            if (!this.done) {
                doTerminate();
                this.error = th;
                this.done = true;
                if (!this.caughtUp) {
                    int i;
                    synchronized (this) {
                        i = 1 ^ this.caughtUp;
                    }
                    if (i != 0) {
                        replay();
                        return;
                    }
                }
                ((Subscriber) this.subscriber.get()).onError(th);
            }
        }

        public final void onCompleted() {
            if (!this.done) {
                doTerminate();
                this.done = true;
                if (!this.caughtUp) {
                    int i;
                    synchronized (this) {
                        i = 1 ^ this.caughtUp;
                    }
                    if (i != 0) {
                        replay();
                        return;
                    }
                }
                ((Subscriber) this.subscriber.get()).onCompleted();
            }
        }

        public final void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            } else if (j > 0) {
                BackpressureUtils.getAndAddRequest(this, j);
                replay();
            } else {
                if (this.done != null) {
                    replay();
                }
            }
        }

        public final void call(Subscriber<? super T> subscriber) {
            if (this.subscriber.compareAndSet(null, subscriber)) {
                subscriber.add(this);
                subscriber.setProducer(this);
                return;
            }
            subscriber.onError(new IllegalStateException("Only a single subscriber is allowed"));
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void replay() {
            /*
            r15 = this;
            monitor-enter(r15);
            r0 = r15.emitting;	 Catch:{ all -> 0x0098 }
            r1 = 1;
            if (r0 == 0) goto L_0x000a;
        L_0x0006:
            r15.missed = r1;	 Catch:{ all -> 0x0098 }
            monitor-exit(r15);	 Catch:{ all -> 0x0098 }
            return;
        L_0x000a:
            r15.emitting = r1;	 Catch:{ all -> 0x0098 }
            monitor-exit(r15);	 Catch:{ all -> 0x0098 }
            r0 = r15.queue;
        L_0x000f:
            r2 = r15.subscriber;
            r2 = r2.get();
            r2 = (rx.Subscriber) r2;
            r3 = 0;
            if (r2 == 0) goto L_0x007c;
        L_0x001a:
            r4 = r15.done;
            r5 = r0.isEmpty();
            r4 = r15.checkTerminated(r4, r5, r2);
            if (r4 == 0) goto L_0x0027;
        L_0x0026:
            return;
        L_0x0027:
            r4 = r15.get();
            r6 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
            if (r8 != 0) goto L_0x0036;
        L_0x0034:
            r6 = r1;
            goto L_0x0037;
        L_0x0036:
            r6 = r3;
        L_0x0037:
            r7 = 0;
            r9 = r7;
        L_0x003a:
            r11 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1));
            if (r11 == 0) goto L_0x0071;
        L_0x003e:
            r11 = r15.done;
            r12 = r0.poll();
            if (r12 != 0) goto L_0x0048;
        L_0x0046:
            r13 = r1;
            goto L_0x0049;
        L_0x0048:
            r13 = r3;
        L_0x0049:
            r11 = r15.checkTerminated(r11, r13, r2);
            if (r11 == 0) goto L_0x0050;
        L_0x004f:
            return;
        L_0x0050:
            if (r13 != 0) goto L_0x0071;
        L_0x0052:
            r11 = rx.internal.operators.NotificationLite.getValue(r12);
            r2.onNext(r11);	 Catch:{ Throwable -> 0x0062 }
            r11 = 1;
            r13 = r4 - r11;
            r4 = r9 + r11;
            r9 = r4;
            r4 = r13;
            goto L_0x003a;
        L_0x0062:
            r1 = move-exception;
            r0.clear();
            rx.exceptions.Exceptions.throwIfFatal(r1);
            r0 = rx.exceptions.OnErrorThrowable.addValueAsLastCause(r1, r11);
            r2.onError(r0);
            return;
        L_0x0071:
            if (r6 != 0) goto L_0x007d;
        L_0x0073:
            r2 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1));
            if (r2 == 0) goto L_0x007d;
        L_0x0077:
            r4 = -r9;
            r15.addAndGet(r4);
            goto L_0x007d;
        L_0x007c:
            r6 = r3;
        L_0x007d:
            monitor-enter(r15);
            r2 = r15.missed;	 Catch:{ all -> 0x0095 }
            if (r2 != 0) goto L_0x0090;
        L_0x0082:
            if (r6 == 0) goto L_0x008c;
        L_0x0084:
            r0 = r0.isEmpty();	 Catch:{ all -> 0x0095 }
            if (r0 == 0) goto L_0x008c;
        L_0x008a:
            r15.caughtUp = r1;	 Catch:{ all -> 0x0095 }
        L_0x008c:
            r15.emitting = r3;	 Catch:{ all -> 0x0095 }
            monitor-exit(r15);	 Catch:{ all -> 0x0095 }
            return;
        L_0x0090:
            r15.missed = r3;	 Catch:{ all -> 0x0095 }
            monitor-exit(r15);	 Catch:{ all -> 0x0095 }
            goto L_0x000f;
        L_0x0095:
            r0 = move-exception;
            monitor-exit(r15);	 Catch:{ all -> 0x0095 }
            throw r0;
        L_0x0098:
            r0 = move-exception;
            monitor-exit(r15);	 Catch:{ all -> 0x0098 }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.subjects.UnicastSubject.State.replay():void");
        }

        public final void unsubscribe() {
            doTerminate();
            this.done = true;
            synchronized (this) {
                if (this.emitting) {
                    return;
                }
                this.emitting = true;
                this.queue.clear();
            }
        }

        public final boolean isUnsubscribed() {
            return this.done;
        }

        final boolean checkTerminated(boolean z, boolean z2, Subscriber<? super T> subscriber) {
            if (subscriber.isUnsubscribed()) {
                this.queue.clear();
                return true;
            }
            if (z) {
                z = this.error;
                if (z) {
                    this.queue.clear();
                    subscriber.onError(z);
                    return true;
                } else if (z2) {
                    subscriber.onCompleted();
                    return true;
                }
            }
            return false;
        }

        final void doTerminate() {
            AtomicReference atomicReference = this.terminateOnce;
            if (atomicReference != null) {
                Action0 action0 = (Action0) atomicReference.get();
                if (action0 != null && atomicReference.compareAndSet(action0, null)) {
                    action0.call();
                }
            }
        }
    }

    public static <T> UnicastSubject<T> create() {
        return create(16);
    }

    public static <T> UnicastSubject<T> create(int i) {
        return new UnicastSubject(new State(i, null));
    }

    public static <T> UnicastSubject<T> create(int i, Action0 action0) {
        return new UnicastSubject(new State(i, action0));
    }

    private UnicastSubject(State<T> state) {
        super(state);
        this.state = state;
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
        return this.state.subscriber.get() != null;
    }
}
