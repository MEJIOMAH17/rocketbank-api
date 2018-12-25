package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Emitter;
import rx.Emitter.BackpressureMode;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Action1;
import rx.functions.Cancellable;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.atomic.SpscUnboundedAtomicArrayQueue;
import rx.internal.util.unsafe.SpscUnboundedArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.SerialSubscription;

public final class OnSubscribeFromEmitter<T> implements OnSubscribe<T> {
    final Action1<Emitter<T>> Emitter;
    final BackpressureMode backpressure;

    static final class CancellableSubscription extends AtomicReference<Cancellable> implements Subscription {
        private static final long serialVersionUID = 5718521705281392066L;

        public CancellableSubscription(Cancellable cancellable) {
            super(cancellable);
        }

        public final boolean isUnsubscribed() {
            return get() == null;
        }

        public final void unsubscribe() {
            if (get() != null) {
                Cancellable cancellable = (Cancellable) getAndSet(null);
                if (cancellable != null) {
                    try {
                        cancellable.cancel();
                    } catch (Throwable e) {
                        Exceptions.throwIfFatal(e);
                        RxJavaHooks.onError(e);
                    }
                }
            }
        }
    }

    static abstract class BaseEmitter<T> extends AtomicLong implements Emitter<T>, Producer, Subscription {
        private static final long serialVersionUID = 7326289992464377023L;
        final Subscriber<? super T> actual;
        final SerialSubscription serial = new SerialSubscription();

        void onRequested() {
        }

        void onUnsubscribed() {
        }

        public BaseEmitter(Subscriber<? super T> subscriber) {
            this.actual = subscriber;
        }

        public void onCompleted() {
            if (!this.actual.isUnsubscribed()) {
                try {
                    this.actual.onCompleted();
                } finally {
                    this.serial.unsubscribe();
                }
            }
        }

        public void onError(Throwable th) {
            if (!this.actual.isUnsubscribed()) {
                try {
                    this.actual.onError(th);
                } finally {
                    this.serial.unsubscribe();
                }
            }
        }

        public final void unsubscribe() {
            this.serial.unsubscribe();
            onUnsubscribed();
        }

        public final boolean isUnsubscribed() {
            return this.serial.isUnsubscribed();
        }

        public final void request(long j) {
            if (BackpressureUtils.validate(j)) {
                BackpressureUtils.getAndAddRequest(this, j);
                onRequested();
            }
        }

        public final void setSubscription(Subscription subscription) {
            this.serial.set(subscription);
        }

        public final void setCancellation(Cancellable cancellable) {
            setSubscription(new CancellableSubscription(cancellable));
        }

        public final long requested() {
            return get();
        }
    }

    static final class BufferEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 2427151001689639875L;
        volatile boolean done;
        Throwable error;
        final Queue<Object> queue;
        final AtomicInteger wip;

        public BufferEmitter(Subscriber<? super T> subscriber, int i) {
            super(subscriber);
            this.queue = UnsafeAccess.isUnsafeAvailable() != null ? new SpscUnboundedArrayQueue(i) : new SpscUnboundedAtomicArrayQueue(i);
            this.wip = new AtomicInteger();
        }

        public final void onNext(T t) {
            this.queue.offer(NotificationLite.next(t));
            drain();
        }

        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        public final void onCompleted() {
            this.done = true;
            drain();
        }

        final void onRequested() {
            drain();
        }

        final void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        final void drain() {
            if (this.wip.getAndIncrement() == 0) {
                Subscriber subscriber = this.actual;
                Queue queue = this.queue;
                int i = 1;
                do {
                    Throwable th;
                    long j = get();
                    long j2 = 0;
                    while (j2 != j) {
                        if (subscriber.isUnsubscribed()) {
                            queue.clear();
                            return;
                        }
                        boolean z = this.done;
                        Object poll = queue.poll();
                        Object obj = poll == null ? 1 : null;
                        if (!z || obj == null) {
                            if (obj != null) {
                                break;
                            }
                            subscriber.onNext(NotificationLite.getValue(poll));
                            j2++;
                        } else {
                            th = this.error;
                            if (th != null) {
                                super.onError(th);
                                return;
                            } else {
                                super.onCompleted();
                                return;
                            }
                        }
                    }
                    if (j2 == j) {
                        if (subscriber.isUnsubscribed()) {
                            queue.clear();
                            return;
                        }
                        boolean z2 = this.done;
                        boolean isEmpty = queue.isEmpty();
                        if (z2 && isEmpty) {
                            th = this.error;
                            if (th != null) {
                                super.onError(th);
                                return;
                            } else {
                                super.onCompleted();
                                return;
                            }
                        }
                    }
                    if (j2 != 0) {
                        BackpressureUtils.produced(this, j2);
                    }
                    i = this.wip.addAndGet(-i);
                } while (i != 0);
            }
        }
    }

    static final class LatestEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 4023437720691792495L;
        volatile boolean done;
        Throwable error;
        final AtomicReference<Object> queue = new AtomicReference();
        final AtomicInteger wip = new AtomicInteger();

        public LatestEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        public final void onNext(T t) {
            this.queue.set(NotificationLite.next(t));
            drain();
        }

        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        public final void onCompleted() {
            this.done = true;
            drain();
        }

        final void onRequested() {
            drain();
        }

        final void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.lazySet(null);
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void drain() {
            /*
            r15 = this;
            r0 = r15.wip;
            r0 = r0.getAndIncrement();
            if (r0 == 0) goto L_0x0009;
        L_0x0008:
            return;
        L_0x0009:
            r0 = r15.actual;
            r1 = r15.queue;
            r2 = 1;
            r3 = r2;
        L_0x000f:
            r4 = r15.get();
            r6 = 0;
            r8 = r6;
        L_0x0016:
            r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1));
            r11 = 0;
            r12 = 0;
            if (r10 == 0) goto L_0x0050;
        L_0x001c:
            r10 = r0.isUnsubscribed();
            if (r10 == 0) goto L_0x0026;
        L_0x0022:
            r1.lazySet(r12);
            return;
        L_0x0026:
            r10 = r15.done;
            r13 = r1.getAndSet(r12);
            if (r13 != 0) goto L_0x0030;
        L_0x002e:
            r14 = r2;
            goto L_0x0031;
        L_0x0030:
            r14 = r11;
        L_0x0031:
            if (r10 == 0) goto L_0x0041;
        L_0x0033:
            if (r14 == 0) goto L_0x0041;
        L_0x0035:
            r0 = r15.error;
            if (r0 == 0) goto L_0x003d;
        L_0x0039:
            super.onError(r0);
            return;
        L_0x003d:
            super.onCompleted();
            return;
        L_0x0041:
            if (r14 != 0) goto L_0x0050;
        L_0x0043:
            r10 = rx.internal.operators.NotificationLite.getValue(r13);
            r0.onNext(r10);
            r10 = 1;
            r12 = r8 + r10;
            r8 = r12;
            goto L_0x0016;
        L_0x0050:
            r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1));
            if (r10 != 0) goto L_0x0077;
        L_0x0054:
            r4 = r0.isUnsubscribed();
            if (r4 == 0) goto L_0x005e;
        L_0x005a:
            r1.lazySet(r12);
            return;
        L_0x005e:
            r4 = r15.done;
            r5 = r1.get();
            if (r5 != 0) goto L_0x0067;
        L_0x0066:
            r11 = r2;
        L_0x0067:
            if (r4 == 0) goto L_0x0077;
        L_0x0069:
            if (r11 == 0) goto L_0x0077;
        L_0x006b:
            r0 = r15.error;
            if (r0 == 0) goto L_0x0073;
        L_0x006f:
            super.onError(r0);
            return;
        L_0x0073:
            super.onCompleted();
            return;
        L_0x0077:
            r4 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1));
            if (r4 == 0) goto L_0x007e;
        L_0x007b:
            rx.internal.operators.BackpressureUtils.produced(r15, r8);
        L_0x007e:
            r4 = r15.wip;
            r3 = -r3;
            r3 = r4.addAndGet(r3);
            if (r3 != 0) goto L_0x000f;
        L_0x0087:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OnSubscribeFromEmitter.LatestEmitter.drain():void");
        }
    }

    static abstract class NoOverflowBaseEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 4127754106204442833L;

        abstract void onOverflow();

        public NoOverflowBaseEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        public void onNext(T t) {
            if (!this.actual.isUnsubscribed()) {
                if (get() != 0) {
                    this.actual.onNext(t);
                    BackpressureUtils.produced(this, 1);
                    return;
                }
                onOverflow();
            }
        }
    }

    static final class NoneEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 3776720187248809713L;

        public NoneEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        public final void onNext(T t) {
            if (!this.actual.isUnsubscribed()) {
                this.actual.onNext(t);
                long j;
                do {
                    j = get();
                    if (j == 0) {
                        break;
                    }
                } while (compareAndSet(j, j - 1) == null);
            }
        }
    }

    static final class DropEmitter<T> extends NoOverflowBaseEmitter<T> {
        private static final long serialVersionUID = 8360058422307496563L;

        final void onOverflow() {
        }

        public DropEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }
    }

    static final class ErrorEmitter<T> extends NoOverflowBaseEmitter<T> {
        private static final long serialVersionUID = 338953216916120960L;
        private boolean done;

        public ErrorEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        public final void onNext(T t) {
            if (!this.done) {
                super.onNext(t);
            }
        }

        public final void onCompleted() {
            if (!this.done) {
                this.done = true;
                super.onCompleted();
            }
        }

        public final void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            this.done = true;
            super.onError(th);
        }

        final void onOverflow() {
            onError(new MissingBackpressureException("fromEmitter: could not emit value due to lack of requests"));
        }
    }

    public OnSubscribeFromEmitter(Action1<Emitter<T>> action1, BackpressureMode backpressureMode) {
        this.Emitter = action1;
        this.backpressure = backpressureMode;
    }

    public final void call(Subscriber<? super T> subscriber) {
        Object noneEmitter;
        switch (this.backpressure) {
            case NONE:
                noneEmitter = new NoneEmitter(subscriber);
                break;
            case ERROR:
                noneEmitter = new ErrorEmitter(subscriber);
                break;
            case DROP:
                noneEmitter = new DropEmitter(subscriber);
                break;
            case LATEST:
                noneEmitter = new LatestEmitter(subscriber);
                break;
            default:
                noneEmitter = new BufferEmitter(subscriber, RxRingBuffer.SIZE);
                break;
        }
        subscriber.add(noneEmitter);
        subscriber.setProducer(noneEmitter);
        this.Emitter.call(noneEmitter);
    }
}
