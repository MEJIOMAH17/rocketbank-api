package rx.internal.operators;

import android.support.v7.widget.ActivityChooserView.ActivityChooserViewAdapter;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Func1;
import rx.internal.util.ExceptionsUtils;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.ScalarSynchronousObservable;
import rx.internal.util.atomic.SpscAtomicArrayQueue;
import rx.internal.util.atomic.SpscLinkedArrayQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.plugins.RxJavaHooks;

public final class OnSubscribeFlattenIterable<T, R> implements OnSubscribe<R> {
    final Func1<? super T, ? extends Iterable<? extends R>> mapper;
    final int prefetch;
    final Observable<? extends T> source;

    static final class FlattenIterableSubscriber<T, R> extends Subscriber<T> {
        Iterator<? extends R> active;
        final Subscriber<? super R> actual;
        volatile boolean done;
        final AtomicReference<Throwable> error = new AtomicReference();
        final long limit;
        final Func1<? super T, ? extends Iterable<? extends R>> mapper;
        long produced;
        final Queue<Object> queue;
        final AtomicLong requested = new AtomicLong();
        final AtomicInteger wip = new AtomicInteger();

        public FlattenIterableSubscriber(Subscriber<? super R> subscriber, Func1<? super T, ? extends Iterable<? extends R>> func1, int i) {
            this.actual = subscriber;
            this.mapper = func1;
            if (i == ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                this.limit = -1;
                this.queue = new SpscLinkedArrayQueue(RxRingBuffer.SIZE);
            } else {
                this.limit = (long) (i - (i >> 2));
                if (UnsafeAccess.isUnsafeAvailable() != null) {
                    this.queue = new SpscArrayQueue(i);
                } else {
                    this.queue = new SpscAtomicArrayQueue(i);
                }
            }
            request((long) i);
        }

        public final void onNext(T t) {
            if (this.queue.offer(NotificationLite.next(t)) == null) {
                unsubscribe();
                onError(new MissingBackpressureException());
                return;
            }
            drain();
        }

        public final void onError(Throwable th) {
            if (ExceptionsUtils.addThrowable(this.error, th)) {
                this.done = true;
                drain();
                return;
            }
            RxJavaHooks.onError(th);
        }

        public final void onCompleted() {
            this.done = true;
            drain();
        }

        final void requestMore(long j) {
            if (j > 0) {
                BackpressureUtils.getAndAddRequest(this.requested, j);
                drain();
            } else if (j < 0) {
                throw new IllegalStateException("n >= 0 required but it was ".concat(String.valueOf(j)));
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void drain() {
            /*
            r19 = this;
            r1 = r19;
            r2 = r1.wip;
            r2 = r2.getAndIncrement();
            if (r2 == 0) goto L_0x000b;
        L_0x000a:
            return;
        L_0x000b:
            r2 = r1.actual;
            r3 = r1.queue;
            r5 = 1;
        L_0x0010:
            r6 = r1.active;
            r7 = 1;
            r9 = 0;
            r11 = 0;
            if (r6 != 0) goto L_0x0064;
        L_0x0019:
            r12 = r1.done;
            r13 = r3.poll();
            if (r13 != 0) goto L_0x0023;
        L_0x0021:
            r14 = 1;
            goto L_0x0024;
        L_0x0023:
            r14 = r11;
        L_0x0024:
            r12 = r1.checkTerminated(r12, r14, r2, r3);
            if (r12 == 0) goto L_0x002b;
        L_0x002a:
            return;
        L_0x002b:
            if (r14 != 0) goto L_0x0064;
        L_0x002d:
            r14 = r1.produced;
            r16 = r5;
            r4 = r14 + r7;
            r14 = r1.limit;
            r6 = (r4 > r14 ? 1 : (r4 == r14 ? 0 : -1));
            if (r6 != 0) goto L_0x003f;
        L_0x0039:
            r1.produced = r9;
            r1.request(r4);
            goto L_0x0041;
        L_0x003f:
            r1.produced = r4;
        L_0x0041:
            r4 = r1.mapper;	 Catch:{ Throwable -> 0x005a }
            r5 = rx.internal.operators.NotificationLite.getValue(r13);	 Catch:{ Throwable -> 0x005a }
            r4 = r4.call(r5);	 Catch:{ Throwable -> 0x005a }
            r4 = (java.lang.Iterable) r4;	 Catch:{ Throwable -> 0x005a }
            r6 = r4.iterator();	 Catch:{ Throwable -> 0x005a }
            r4 = r6.hasNext();	 Catch:{ Throwable -> 0x005a }
            if (r4 == 0) goto L_0x00d4;
        L_0x0057:
            r1.active = r6;
            goto L_0x0066;
        L_0x005a:
            r0 = move-exception;
            r4 = r0;
            rx.exceptions.Exceptions.throwIfFatal(r4);
            r1.onError(r4);
            goto L_0x00d4;
        L_0x0064:
            r16 = r5;
        L_0x0066:
            if (r6 == 0) goto L_0x00d8;
        L_0x0068:
            r4 = r1.requested;
            r4 = r4.get();
            r12 = r9;
        L_0x006f:
            r14 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1));
            r15 = 0;
            if (r14 == 0) goto L_0x00b1;
        L_0x0074:
            r14 = r1.done;
            r14 = r1.checkTerminated(r14, r11, r2, r3);
            if (r14 == 0) goto L_0x007d;
        L_0x007c:
            return;
        L_0x007d:
            r14 = r6.next();	 Catch:{ Throwable -> 0x00a7 }
            r2.onNext(r14);
            r14 = r1.done;
            r14 = r1.checkTerminated(r14, r11, r2, r3);
            if (r14 == 0) goto L_0x008d;
        L_0x008c:
            return;
        L_0x008d:
            r17 = r12 + r7;
            r12 = r6.hasNext();	 Catch:{ Throwable -> 0x009b }
            if (r12 != 0) goto L_0x0098;
        L_0x0095:
            r1.active = r15;
            goto L_0x00a4;
        L_0x0098:
            r12 = r17;
            goto L_0x006f;
        L_0x009b:
            r0 = move-exception;
            rx.exceptions.Exceptions.throwIfFatal(r0);
            r1.active = r15;
            r1.onError(r0);
        L_0x00a4:
            r12 = r17;
            goto L_0x00b2;
        L_0x00a7:
            r0 = move-exception;
            rx.exceptions.Exceptions.throwIfFatal(r0);
            r1.active = r15;
            r1.onError(r0);
            goto L_0x00b2;
        L_0x00b1:
            r15 = r6;
        L_0x00b2:
            r6 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1));
            if (r6 != 0) goto L_0x00c8;
        L_0x00b6:
            r4 = r1.done;
            r5 = r3.isEmpty();
            if (r5 == 0) goto L_0x00c1;
        L_0x00be:
            if (r15 != 0) goto L_0x00c1;
        L_0x00c0:
            r11 = 1;
        L_0x00c1:
            r4 = r1.checkTerminated(r4, r11, r2, r3);
            if (r4 == 0) goto L_0x00c8;
        L_0x00c7:
            return;
        L_0x00c8:
            r4 = (r12 > r9 ? 1 : (r12 == r9 ? 0 : -1));
            if (r4 == 0) goto L_0x00d1;
        L_0x00cc:
            r4 = r1.requested;
            rx.internal.operators.BackpressureUtils.produced(r4, r12);
        L_0x00d1:
            if (r15 == 0) goto L_0x00d4;
        L_0x00d3:
            goto L_0x00d8;
        L_0x00d4:
            r5 = r16;
            goto L_0x0010;
        L_0x00d8:
            r4 = r1.wip;
            r5 = r16;
            r5 = -r5;
            r5 = r4.addAndGet(r5);
            if (r5 != 0) goto L_0x0010;
        L_0x00e3:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OnSubscribeFlattenIterable.FlattenIterableSubscriber.drain():void");
        }

        final boolean checkTerminated(boolean z, boolean z2, Subscriber<?> subscriber, Queue<?> queue) {
            if (subscriber.isUnsubscribed()) {
                queue.clear();
                this.active = null;
                return true;
            }
            if (z) {
                if (((Throwable) this.error.get()) != null) {
                    z = ExceptionsUtils.terminate(this.error);
                    unsubscribe();
                    queue.clear();
                    this.active = null;
                    subscriber.onError(z);
                    return true;
                } else if (z2) {
                    subscriber.onCompleted();
                    return true;
                }
            }
            return false;
        }
    }

    static final class OnSubscribeScalarFlattenIterable<T, R> implements OnSubscribe<R> {
        final Func1<? super T, ? extends Iterable<? extends R>> mapper;
        final T value;

        public OnSubscribeScalarFlattenIterable(T t, Func1<? super T, ? extends Iterable<? extends R>> func1) {
            this.value = t;
            this.mapper = func1;
        }

        public final void call(Subscriber<? super R> subscriber) {
            try {
                Iterator it = ((Iterable) this.mapper.call(this.value)).iterator();
                if (it.hasNext()) {
                    subscriber.setProducer(new IterableProducer(subscriber, it));
                } else {
                    subscriber.onCompleted();
                }
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, (Observer) subscriber, this.value);
            }
        }
    }

    protected OnSubscribeFlattenIterable(Observable<? extends T> observable, Func1<? super T, ? extends Iterable<? extends R>> func1, int i) {
        this.source = observable;
        this.mapper = func1;
        this.prefetch = i;
    }

    public final void call(Subscriber<? super R> subscriber) {
        final Subscriber flattenIterableSubscriber = new FlattenIterableSubscriber(subscriber, this.mapper, this.prefetch);
        subscriber.add(flattenIterableSubscriber);
        subscriber.setProducer(new Producer() {
            public void request(long j) {
                flattenIterableSubscriber.requestMore(j);
            }
        });
        this.source.unsafeSubscribe(flattenIterableSubscriber);
    }

    public static <T, R> Observable<R> createFrom(Observable<? extends T> observable, Func1<? super T, ? extends Iterable<? extends R>> func1, int i) {
        if (observable instanceof ScalarSynchronousObservable) {
            return Observable.create(new OnSubscribeScalarFlattenIterable(((ScalarSynchronousObservable) observable).get(), func1));
        }
        return Observable.create(new OnSubscribeFlattenIterable(observable, func1, i));
    }
}
