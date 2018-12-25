package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable.Operator;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;

public final class OperatorOnBackpressureLatest<T> implements Operator<T, T> {

    static final class Holder {
        static final OperatorOnBackpressureLatest<Object> INSTANCE = new OperatorOnBackpressureLatest();

        Holder() {
        }
    }

    static final class LatestEmitter<T> extends AtomicLong implements Observer<T>, Producer, Subscription {
        static final Object EMPTY = new Object();
        static final long NOT_REQUESTED = -4611686018427387904L;
        private static final long serialVersionUID = -1364393685005146274L;
        final Subscriber<? super T> child;
        volatile boolean done;
        boolean emitting;
        boolean missed;
        LatestSubscriber<? super T> parent;
        Throwable terminal;
        final AtomicReference<Object> value = new AtomicReference(EMPTY);

        public LatestEmitter(Subscriber<? super T> subscriber) {
            this.child = subscriber;
            lazySet(NOT_REQUESTED);
        }

        public final void request(long j) {
            if (j >= 0) {
                long j2;
                long j3;
                do {
                    j2 = get();
                    if (j2 != Long.MIN_VALUE) {
                        if (j2 == NOT_REQUESTED) {
                            j3 = j;
                        } else {
                            j3 = j2 + j;
                            if (j3 < 0) {
                                j3 = Long.MAX_VALUE;
                            }
                        }
                    } else {
                        return;
                    }
                } while (!compareAndSet(j2, j3));
                if (j2 == NOT_REQUESTED) {
                    this.parent.requestMore(Long.MAX_VALUE);
                }
                emit();
            }
        }

        final long produced(long j) {
            long j2;
            long j3;
            do {
                j3 = get();
                if (j3 < 0) {
                    return j3;
                }
                j2 = j3 - j;
            } while (!compareAndSet(j3, j2));
            return j2;
        }

        public final boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        public final void unsubscribe() {
            if (get() >= 0) {
                getAndSet(Long.MIN_VALUE);
            }
        }

        public final void onNext(T t) {
            this.value.lazySet(t);
            emit();
        }

        public final void onError(Throwable th) {
            this.terminal = th;
            this.done = true;
            emit();
        }

        public final void onCompleted() {
            this.done = true;
            emit();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void emit() {
            /*
            r9 = this;
            monitor-enter(r9);
            r0 = r9.emitting;	 Catch:{ all -> 0x007a }
            r1 = 1;
            if (r0 == 0) goto L_0x000a;
        L_0x0006:
            r9.missed = r1;	 Catch:{ all -> 0x007a }
            monitor-exit(r9);	 Catch:{ all -> 0x007a }
            return;
        L_0x000a:
            r9.emitting = r1;	 Catch:{ all -> 0x007a }
            r0 = 0;
            r9.missed = r0;	 Catch:{ all -> 0x007a }
            monitor-exit(r9);	 Catch:{ all -> 0x007a }
        L_0x0010:
            r2 = r9.get();	 Catch:{ all -> 0x006d }
            r4 = -9223372036854775808;
            r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
            if (r6 != 0) goto L_0x001b;
        L_0x001a:
            return;
        L_0x001b:
            r4 = r9.value;	 Catch:{ all -> 0x006d }
            r4 = r4.get();	 Catch:{ all -> 0x006d }
            r5 = 0;
            r7 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1));
            if (r7 <= 0) goto L_0x003e;
        L_0x0027:
            r2 = EMPTY;	 Catch:{ all -> 0x006d }
            if (r4 == r2) goto L_0x003e;
        L_0x002b:
            r2 = r9.child;	 Catch:{ all -> 0x006d }
            r2.onNext(r4);	 Catch:{ all -> 0x006d }
            r2 = r9.value;	 Catch:{ all -> 0x006d }
            r3 = EMPTY;	 Catch:{ all -> 0x006d }
            r2.compareAndSet(r4, r3);	 Catch:{ all -> 0x006d }
            r2 = 1;
            r9.produced(r2);	 Catch:{ all -> 0x006d }
            r4 = EMPTY;	 Catch:{ all -> 0x006d }
        L_0x003e:
            r2 = EMPTY;	 Catch:{ all -> 0x006d }
            if (r4 != r2) goto L_0x0055;
        L_0x0042:
            r2 = r9.done;	 Catch:{ all -> 0x006d }
            if (r2 == 0) goto L_0x0055;
        L_0x0046:
            r2 = r9.terminal;	 Catch:{ all -> 0x006d }
            if (r2 == 0) goto L_0x0050;
        L_0x004a:
            r3 = r9.child;	 Catch:{ all -> 0x006d }
            r3.onError(r2);	 Catch:{ all -> 0x006d }
            goto L_0x0055;
        L_0x0050:
            r2 = r9.child;	 Catch:{ all -> 0x006d }
            r2.onCompleted();	 Catch:{ all -> 0x006d }
        L_0x0055:
            monitor-enter(r9);	 Catch:{ all -> 0x006d }
            r2 = r9.missed;	 Catch:{ all -> 0x0062 }
            if (r2 != 0) goto L_0x005e;
        L_0x005a:
            r9.emitting = r0;	 Catch:{ all -> 0x0062 }
            monitor-exit(r9);	 Catch:{ all -> 0x006b }
            return;
        L_0x005e:
            r9.missed = r0;	 Catch:{ all -> 0x0062 }
            monitor-exit(r9);	 Catch:{ all -> 0x0062 }
            goto L_0x0010;
        L_0x0062:
            r2 = move-exception;
            r1 = r0;
        L_0x0064:
            monitor-exit(r9);	 Catch:{ all -> 0x006b }
            throw r2;	 Catch:{ all -> 0x0066 }
        L_0x0066:
            r2 = move-exception;
            r8 = r2;
            r2 = r1;
            r1 = r8;
            goto L_0x006f;
        L_0x006b:
            r2 = move-exception;
            goto L_0x0064;
        L_0x006d:
            r1 = move-exception;
            r2 = r0;
        L_0x006f:
            if (r2 != 0) goto L_0x0079;
        L_0x0071:
            monitor-enter(r9);
            r9.emitting = r0;	 Catch:{ all -> 0x0076 }
            monitor-exit(r9);	 Catch:{ all -> 0x0076 }
            goto L_0x0079;
        L_0x0076:
            r0 = move-exception;
            monitor-exit(r9);	 Catch:{ all -> 0x0076 }
            throw r0;
        L_0x0079:
            throw r1;
        L_0x007a:
            r0 = move-exception;
            monitor-exit(r9);	 Catch:{ all -> 0x007a }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorOnBackpressureLatest.LatestEmitter.emit():void");
        }
    }

    static final class LatestSubscriber<T> extends Subscriber<T> {
        private final LatestEmitter<T> producer;

        LatestSubscriber(LatestEmitter<T> latestEmitter) {
            this.producer = latestEmitter;
        }

        public final void onStart() {
            request(0);
        }

        public final void onNext(T t) {
            this.producer.onNext(t);
        }

        public final void onError(Throwable th) {
            this.producer.onError(th);
        }

        public final void onCompleted() {
            this.producer.onCompleted();
        }

        final void requestMore(long j) {
            request(j);
        }
    }

    public static <T> OperatorOnBackpressureLatest<T> instance() {
        return Holder.INSTANCE;
    }

    public final Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object latestEmitter = new LatestEmitter(subscriber);
        Object latestSubscriber = new LatestSubscriber(latestEmitter);
        latestEmitter.parent = latestSubscriber;
        subscriber.add(latestSubscriber);
        subscriber.add(latestEmitter);
        subscriber.setProducer(latestEmitter);
        return latestSubscriber;
    }
}
