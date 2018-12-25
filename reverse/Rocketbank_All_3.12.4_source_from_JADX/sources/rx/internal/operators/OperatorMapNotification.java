package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func0;
import rx.functions.Func1;

public final class OperatorMapNotification<T, R> implements Operator<R, T> {
    final Func0<? extends R> onCompleted;
    final Func1<? super Throwable, ? extends R> onError;
    final Func1<? super T, ? extends R> onNext;

    static final class MapNotificationSubscriber<T, R> extends Subscriber<T> {
        static final long COMPLETED_FLAG = Long.MIN_VALUE;
        static final long REQUESTED_MASK = Long.MAX_VALUE;
        final Subscriber<? super R> actual;
        final AtomicLong missedRequested = new AtomicLong();
        final Func0<? extends R> onCompleted;
        final Func1<? super Throwable, ? extends R> onError;
        final Func1<? super T, ? extends R> onNext;
        long produced;
        final AtomicReference<Producer> producer = new AtomicReference();
        final AtomicLong requested = new AtomicLong();
        R value;

        public MapNotificationSubscriber(Subscriber<? super R> subscriber, Func1<? super T, ? extends R> func1, Func1<? super Throwable, ? extends R> func12, Func0<? extends R> func0) {
            this.actual = subscriber;
            this.onNext = func1;
            this.onError = func12;
            this.onCompleted = func0;
        }

        public final void onNext(T t) {
            try {
                this.produced++;
                this.actual.onNext(this.onNext.call(t));
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, this.actual, (Object) t);
            }
        }

        public final void onError(Throwable th) {
            accountProduced();
            try {
                this.value = this.onError.call(th);
            } catch (Throwable th2) {
                Exceptions.throwOrReport(th2, this.actual, (Object) th);
            }
            tryEmit();
        }

        public final void onCompleted() {
            accountProduced();
            try {
                this.value = this.onCompleted.call();
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, this.actual);
            }
            tryEmit();
        }

        final void accountProduced() {
            long j = this.produced;
            if (j != 0 && this.producer.get() != null) {
                BackpressureUtils.produced(this.requested, j);
            }
        }

        public final void setProducer(Producer producer) {
            if (this.producer.compareAndSet(null, producer)) {
                long andSet = this.missedRequested.getAndSet(0);
                if (andSet != 0) {
                    producer.request(andSet);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Producer already set!");
        }

        final void tryEmit() {
            long j;
            do {
                j = this.requested.get();
                if ((j & COMPLETED_FLAG) != 0) {
                    return;
                }
            } while (!this.requested.compareAndSet(j, j | COMPLETED_FLAG));
            if (j != 0 || this.producer.get() == null) {
                if (!this.actual.isUnsubscribed()) {
                    this.actual.onNext(this.value);
                }
                if (!this.actual.isUnsubscribed()) {
                    this.actual.onCompleted();
                }
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void requestInner(long r13) {
            /*
            r12 = this;
            r0 = 0;
            r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1));
            if (r2 >= 0) goto L_0x0016;
        L_0x0006:
            r0 = new java.lang.IllegalArgumentException;
            r1 = "n >= 0 required but it was ";
            r13 = java.lang.String.valueOf(r13);
            r13 = r1.concat(r13);
            r0.<init>(r13);
            throw r0;
        L_0x0016:
            r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1));
            if (r2 != 0) goto L_0x001b;
        L_0x001a:
            return;
        L_0x001b:
            r2 = r12.requested;
            r2 = r2.get();
            r4 = -9223372036854775808;
            r6 = r2 & r4;
            r8 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1));
            if (r8 == 0) goto L_0x005f;
        L_0x0029:
            r6 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r8 = r2 & r6;
            r6 = rx.internal.operators.BackpressureUtils.addCap(r8, r13);
            r10 = r6 | r4;
            r4 = r12.requested;
            r2 = r4.compareAndSet(r2, r10);
            if (r2 == 0) goto L_0x001b;
        L_0x003e:
            r13 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1));
            if (r13 != 0) goto L_0x005e;
        L_0x0042:
            r13 = r12.actual;
            r13 = r13.isUnsubscribed();
            if (r13 != 0) goto L_0x0051;
        L_0x004a:
            r13 = r12.actual;
            r14 = r12.value;
            r13.onNext(r14);
        L_0x0051:
            r13 = r12.actual;
            r13 = r13.isUnsubscribed();
            if (r13 != 0) goto L_0x005e;
        L_0x0059:
            r13 = r12.actual;
            r13.onCompleted();
        L_0x005e:
            return;
        L_0x005f:
            r4 = rx.internal.operators.BackpressureUtils.addCap(r2, r13);
            r6 = r12.requested;
            r2 = r6.compareAndSet(r2, r4);
            if (r2 == 0) goto L_0x001b;
        L_0x006b:
            r2 = r12.producer;
            r3 = r2.get();
            r3 = (rx.Producer) r3;
            if (r3 == 0) goto L_0x0079;
        L_0x0075:
            r3.request(r13);
            return;
        L_0x0079:
            r3 = r12.missedRequested;
            rx.internal.operators.BackpressureUtils.getAndAddRequest(r3, r13);
            r13 = r2.get();
            r13 = (rx.Producer) r13;
            if (r13 == 0) goto L_0x0093;
        L_0x0086:
            r14 = r12.missedRequested;
            r2 = r14.getAndSet(r0);
            r14 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1));
            if (r14 == 0) goto L_0x0093;
        L_0x0090:
            r13.request(r2);
        L_0x0093:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorMapNotification.MapNotificationSubscriber.requestInner(long):void");
        }
    }

    public OperatorMapNotification(Func1<? super T, ? extends R> func1, Func1<? super Throwable, ? extends R> func12, Func0<? extends R> func0) {
        this.onNext = func1;
        this.onError = func12;
        this.onCompleted = func0;
    }

    public final Subscriber<? super T> call(Subscriber<? super R> subscriber) {
        final Subscriber<? super T> mapNotificationSubscriber = new MapNotificationSubscriber(subscriber, this.onNext, this.onError, this.onCompleted);
        subscriber.add(mapNotificationSubscriber);
        subscriber.setProducer(new Producer() {
            public void request(long j) {
                mapNotificationSubscriber.requestInner(j);
            }
        });
        return mapNotificationSubscriber;
    }
}
