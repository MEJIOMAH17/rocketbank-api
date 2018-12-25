package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.internal.util.LinkedArrayList;
import rx.subscriptions.SerialSubscription;

public final class CachedObservable<T> extends Observable<T> {
    private final CacheState<T> state;

    static final class CacheState<T> extends LinkedArrayList implements Observer<T> {
        static final ReplayProducer<?>[] EMPTY = new ReplayProducer[0];
        final SerialSubscription connection = new SerialSubscription();
        volatile boolean isConnected;
        volatile ReplayProducer<?>[] producers = EMPTY;
        final Observable<? extends T> source;
        boolean sourceDone;

        /* renamed from: rx.internal.operators.CachedObservable$CacheState$1 */
        class C18741 extends Subscriber<T> {
            C18741() {
            }

            public void onNext(T t) {
                CacheState.this.onNext(t);
            }

            public void onError(Throwable th) {
                CacheState.this.onError(th);
            }

            public void onCompleted() {
                CacheState.this.onCompleted();
            }
        }

        public CacheState(Observable<? extends T> observable, int i) {
            super(i);
            this.source = observable;
        }

        public final void addProducer(ReplayProducer<T> replayProducer) {
            synchronized (this.connection) {
                Object obj = this.producers;
                int length = obj.length;
                Object obj2 = new ReplayProducer[(length + 1)];
                System.arraycopy(obj, 0, obj2, 0, length);
                obj2[length] = replayProducer;
                this.producers = obj2;
            }
        }

        public final void removeProducer(ReplayProducer<T> replayProducer) {
            synchronized (this.connection) {
                Object obj = this.producers;
                int length = obj.length;
                int i = -1;
                for (int i2 = 0; i2 < length; i2++) {
                    if (obj[i2].equals(replayProducer)) {
                        i = i2;
                        break;
                    }
                }
                if (i < 0) {
                } else if (length == 1) {
                    this.producers = EMPTY;
                } else {
                    Object obj2 = new ReplayProducer[(length - 1)];
                    System.arraycopy(obj, 0, obj2, 0, i);
                    System.arraycopy(obj, i + 1, obj2, i, (length - i) - 1);
                    this.producers = obj2;
                }
            }
        }

        public final void connect() {
            Object c18741 = new C18741();
            this.connection.set(c18741);
            this.source.unsafeSubscribe(c18741);
            this.isConnected = true;
        }

        public final void onNext(T t) {
            if (!this.sourceDone) {
                add(NotificationLite.next(t));
                dispatch();
            }
        }

        public final void onError(Throwable th) {
            if (!this.sourceDone) {
                this.sourceDone = true;
                add(NotificationLite.error(th));
                this.connection.unsubscribe();
                dispatch();
            }
        }

        public final void onCompleted() {
            if (!this.sourceDone) {
                this.sourceDone = true;
                add(NotificationLite.completed());
                this.connection.unsubscribe();
                dispatch();
            }
        }

        final void dispatch() {
            for (ReplayProducer replay : this.producers) {
                replay.replay();
            }
        }
    }

    static final class ReplayProducer<T> extends AtomicLong implements Producer, Subscription {
        private static final long serialVersionUID = -2557562030197141021L;
        final Subscriber<? super T> child;
        Object[] currentBuffer;
        int currentIndexInBuffer;
        boolean emitting;
        int index;
        boolean missed;
        final CacheState<T> state;

        public ReplayProducer(Subscriber<? super T> subscriber, CacheState<T> cacheState) {
            this.child = subscriber;
            this.state = cacheState;
        }

        public final void request(long j) {
            long j2;
            long j3;
            do {
                j2 = get();
                if (j2 >= 0) {
                    j3 = j2 + j;
                    if (j3 < 0) {
                        j3 = Long.MAX_VALUE;
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(j2, j3));
            replay();
        }

        public final long produced(long j) {
            return addAndGet(-j);
        }

        public final boolean isUnsubscribed() {
            return get() < 0;
        }

        public final void unsubscribe() {
            if (get() >= 0 && getAndSet(-1) >= 0) {
                this.state.removeProducer(this);
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void replay() {
            /*
            r19 = this;
            r1 = r19;
            monitor-enter(r19);
            r2 = r1.emitting;	 Catch:{ all -> 0x00f6 }
            r3 = 1;
            if (r2 == 0) goto L_0x000c;
        L_0x0008:
            r1.missed = r3;	 Catch:{ all -> 0x00f6 }
            monitor-exit(r19);	 Catch:{ all -> 0x00f6 }
            return;
        L_0x000c:
            r1.emitting = r3;	 Catch:{ all -> 0x00f6 }
            monitor-exit(r19);	 Catch:{ all -> 0x00f6 }
            r2 = 0;
            r4 = r1.child;	 Catch:{ all -> 0x00e7 }
        L_0x0012:
            r5 = r19.get();	 Catch:{ all -> 0x00e7 }
            r7 = 0;
            r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
            if (r9 >= 0) goto L_0x001d;
        L_0x001c:
            return;
        L_0x001d:
            r9 = r1.state;	 Catch:{ all -> 0x00e7 }
            r9 = r9.size();	 Catch:{ all -> 0x00e7 }
            if (r9 == 0) goto L_0x00cb;
        L_0x0025:
            r10 = r1.currentBuffer;	 Catch:{ all -> 0x00e7 }
            if (r10 != 0) goto L_0x0031;
        L_0x0029:
            r10 = r1.state;	 Catch:{ all -> 0x00e7 }
            r10 = r10.head();	 Catch:{ all -> 0x00e7 }
            r1.currentBuffer = r10;	 Catch:{ all -> 0x00e7 }
        L_0x0031:
            r11 = r10.length;	 Catch:{ all -> 0x00e7 }
            r11 = r11 - r3;
            r12 = r1.index;	 Catch:{ all -> 0x00e7 }
            r13 = r1.currentIndexInBuffer;	 Catch:{ all -> 0x00e7 }
            r14 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
            if (r14 != 0) goto L_0x005f;
        L_0x003b:
            r5 = r10[r13];	 Catch:{ all -> 0x00e7 }
            r6 = rx.internal.operators.NotificationLite.isCompleted(r5);	 Catch:{ all -> 0x00e7 }
            if (r6 == 0) goto L_0x004e;
        L_0x0043:
            r4.onCompleted();	 Catch:{ all -> 0x00e7 }
            r19.unsubscribe();	 Catch:{ all -> 0x004a }
            return;
        L_0x004a:
            r0 = move-exception;
            r4 = r3;
            goto L_0x00e2;
        L_0x004e:
            r6 = rx.internal.operators.NotificationLite.isError(r5);	 Catch:{ all -> 0x00e7 }
            if (r6 == 0) goto L_0x00cb;
        L_0x0054:
            r5 = rx.internal.operators.NotificationLite.getError(r5);	 Catch:{ all -> 0x00e7 }
            r4.onError(r5);	 Catch:{ all -> 0x00e7 }
            r19.unsubscribe();	 Catch:{ all -> 0x004a }
            return;
        L_0x005f:
            r14 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
            if (r14 <= 0) goto L_0x00cb;
        L_0x0063:
            r14 = r2;
        L_0x0064:
            if (r12 >= r9) goto L_0x00ba;
        L_0x0066:
            r15 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
            if (r15 <= 0) goto L_0x00ba;
        L_0x006a:
            r15 = r4.isUnsubscribed();	 Catch:{ all -> 0x00e7 }
            if (r15 == 0) goto L_0x0071;
        L_0x0070:
            return;
        L_0x0071:
            if (r13 != r11) goto L_0x0078;
        L_0x0073:
            r10 = r10[r11];	 Catch:{ all -> 0x00e7 }
            r10 = (java.lang.Object[]) r10;	 Catch:{ all -> 0x00e7 }
            r13 = r2;
        L_0x0078:
            r15 = r10[r13];	 Catch:{ all -> 0x00e7 }
            r16 = rx.internal.operators.NotificationLite.accept(r4, r15);	 Catch:{ Throwable -> 0x0095 }
            if (r16 == 0) goto L_0x0088;
        L_0x0080:
            r19.unsubscribe();	 Catch:{ Throwable -> 0x0084 }
            return;
        L_0x0084:
            r0 = move-exception;
            r5 = r0;
            r6 = r3;
            goto L_0x0098;
        L_0x0088:
            r13 = r13 + 1;
            r12 = r12 + 1;
            r15 = 1;
            r17 = r5 - r15;
            r14 = r14 + 1;
            r5 = r17;
            goto L_0x0064;
        L_0x0095:
            r0 = move-exception;
            r5 = r0;
            r6 = r2;
        L_0x0098:
            rx.exceptions.Exceptions.throwIfFatal(r5);	 Catch:{ all -> 0x00b6 }
            r19.unsubscribe();	 Catch:{ all -> 0x004a }
            r6 = rx.internal.operators.NotificationLite.isError(r15);	 Catch:{ all -> 0x004a }
            if (r6 != 0) goto L_0x00b5;
        L_0x00a4:
            r6 = rx.internal.operators.NotificationLite.isCompleted(r15);	 Catch:{ all -> 0x004a }
            if (r6 != 0) goto L_0x00b5;
        L_0x00aa:
            r6 = rx.internal.operators.NotificationLite.getValue(r15);	 Catch:{ all -> 0x004a }
            r5 = rx.exceptions.OnErrorThrowable.addValueAsLastCause(r5, r6);	 Catch:{ all -> 0x004a }
            r4.onError(r5);	 Catch:{ all -> 0x004a }
        L_0x00b5:
            return;
        L_0x00b6:
            r0 = move-exception;
            r3 = r0;
            r4 = r6;
            goto L_0x00ea;
        L_0x00ba:
            r5 = r4.isUnsubscribed();	 Catch:{ all -> 0x00e7 }
            if (r5 == 0) goto L_0x00c1;
        L_0x00c0:
            return;
        L_0x00c1:
            r1.index = r12;	 Catch:{ all -> 0x00e7 }
            r1.currentIndexInBuffer = r13;	 Catch:{ all -> 0x00e7 }
            r1.currentBuffer = r10;	 Catch:{ all -> 0x00e7 }
            r5 = (long) r14;	 Catch:{ all -> 0x00e7 }
            r1.produced(r5);	 Catch:{ all -> 0x00e7 }
        L_0x00cb:
            monitor-enter(r19);	 Catch:{ all -> 0x00e7 }
            r5 = r1.missed;	 Catch:{ all -> 0x00dc }
            if (r5 != 0) goto L_0x00d7;
        L_0x00d0:
            r1.emitting = r2;	 Catch:{ all -> 0x00dc }
            monitor-exit(r19);	 Catch:{ all -> 0x00d4 }
            return;
        L_0x00d4:
            r0 = move-exception;
            r4 = r3;
            goto L_0x00e5;
        L_0x00d7:
            r1.missed = r2;	 Catch:{ all -> 0x00dc }
            monitor-exit(r19);	 Catch:{ all -> 0x00dc }
            goto L_0x0012;
        L_0x00dc:
            r0 = move-exception;
            r3 = r0;
            r4 = r2;
        L_0x00df:
            monitor-exit(r19);	 Catch:{ all -> 0x00e4 }
            throw r3;	 Catch:{ all -> 0x00e1 }
        L_0x00e1:
            r0 = move-exception;
        L_0x00e2:
            r3 = r0;
            goto L_0x00ea;
        L_0x00e4:
            r0 = move-exception;
        L_0x00e5:
            r3 = r0;
            goto L_0x00df;
        L_0x00e7:
            r0 = move-exception;
            r3 = r0;
            r4 = r2;
        L_0x00ea:
            if (r4 != 0) goto L_0x00f5;
        L_0x00ec:
            monitor-enter(r19);
            r1.emitting = r2;	 Catch:{ all -> 0x00f1 }
            monitor-exit(r19);	 Catch:{ all -> 0x00f1 }
            goto L_0x00f5;
        L_0x00f1:
            r0 = move-exception;
            r2 = r0;
            monitor-exit(r19);	 Catch:{ all -> 0x00f1 }
            throw r2;
        L_0x00f5:
            throw r3;
        L_0x00f6:
            r0 = move-exception;
            r2 = r0;
            monitor-exit(r19);	 Catch:{ all -> 0x00f6 }
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.CachedObservable.ReplayProducer.replay():void");
        }
    }

    static final class CachedSubscribe<T> extends AtomicBoolean implements OnSubscribe<T> {
        private static final long serialVersionUID = -2817751667698696782L;
        final CacheState<T> state;

        public CachedSubscribe(CacheState<T> cacheState) {
            this.state = cacheState;
        }

        public final void call(Subscriber<? super T> subscriber) {
            Object replayProducer = new ReplayProducer(subscriber, this.state);
            this.state.addProducer(replayProducer);
            subscriber.add(replayProducer);
            subscriber.setProducer(replayProducer);
            if (get() == null && compareAndSet(null, true) != null) {
                this.state.connect();
            }
        }
    }

    public static <T> CachedObservable<T> from(Observable<? extends T> observable) {
        return from(observable, 16);
    }

    public static <T> CachedObservable<T> from(Observable<? extends T> observable, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("capacityHint > 0 required");
        }
        CacheState cacheState = new CacheState(observable, i);
        return new CachedObservable(new CachedSubscribe(cacheState), cacheState);
    }

    private CachedObservable(OnSubscribe<T> onSubscribe, CacheState<T> cacheState) {
        super(onSubscribe);
        this.state = cacheState;
    }

    final boolean isConnected() {
        return this.state.isConnected;
    }

    final boolean hasObservers() {
        return this.state.producers.length != 0;
    }
}
