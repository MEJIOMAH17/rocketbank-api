package rx.internal.operators;

import android.support.v7.widget.ActivityChooserView.ActivityChooserViewAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.CompositeException;
import rx.exceptions.MissingBackpressureException;
import rx.exceptions.OnErrorThrowable;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.ScalarSynchronousObservable;
import rx.internal.util.atomic.SpscAtomicArrayQueue;
import rx.internal.util.atomic.SpscExactAtomicArrayQueue;
import rx.internal.util.atomic.SpscUnboundedAtomicArrayQueue;
import rx.internal.util.unsafe.Pow2;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.subscriptions.CompositeSubscription;

public final class OperatorMerge<T> implements Operator<T, Observable<? extends T>> {
    final boolean delayErrors;
    final int maxConcurrent;

    static final class HolderDelayErrors {
        static final OperatorMerge<Object> INSTANCE = new OperatorMerge(true, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);

        HolderDelayErrors() {
        }
    }

    static final class HolderNoDelay {
        static final OperatorMerge<Object> INSTANCE = new OperatorMerge(false, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);

        HolderNoDelay() {
        }
    }

    static final class MergeProducer<T> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -1214379189873595503L;
        final MergeSubscriber<T> subscriber;

        public MergeProducer(MergeSubscriber<T> mergeSubscriber) {
            this.subscriber = mergeSubscriber;
        }

        public final void request(long j) {
            if (j > 0) {
                if (get() != Long.MAX_VALUE) {
                    BackpressureUtils.getAndAddRequest(this, j);
                    this.subscriber.emit();
                }
            } else if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            }
        }

        public final long produced(int i) {
            return addAndGet((long) (-i));
        }
    }

    static final class InnerSubscriber<T> extends Subscriber<T> {
        static final int LIMIT = (RxRingBuffer.SIZE / 4);
        volatile boolean done;
        final long id;
        int outstanding;
        final MergeSubscriber<T> parent;
        volatile RxRingBuffer queue;

        public InnerSubscriber(MergeSubscriber<T> mergeSubscriber, long j) {
            this.parent = mergeSubscriber;
            this.id = j;
        }

        public final void onStart() {
            this.outstanding = RxRingBuffer.SIZE;
            request((long) RxRingBuffer.SIZE);
        }

        public final void onNext(T t) {
            this.parent.tryEmit(this, t);
        }

        public final void onError(Throwable th) {
            this.done = true;
            this.parent.getOrCreateErrorQueue().offer(th);
            this.parent.emit();
        }

        public final void onCompleted() {
            this.done = true;
            this.parent.emit();
        }

        public final void requestMore(long j) {
            int i = this.outstanding - ((int) j);
            if (i > LIMIT) {
                this.outstanding = i;
                return;
            }
            this.outstanding = RxRingBuffer.SIZE;
            j = RxRingBuffer.SIZE - i;
            if (j > null) {
                request((long) j);
            }
        }
    }

    static final class MergeSubscriber<T> extends Subscriber<Observable<? extends T>> {
        static final InnerSubscriber<?>[] EMPTY = new InnerSubscriber[0];
        final Subscriber<? super T> child;
        final boolean delayErrors;
        volatile boolean done;
        boolean emitting;
        volatile ConcurrentLinkedQueue<Throwable> errors;
        final Object innerGuard = new Object();
        volatile InnerSubscriber<?>[] innerSubscribers = EMPTY;
        long lastId;
        int lastIndex;
        final int maxConcurrent;
        boolean missed;
        MergeProducer<T> producer;
        volatile Queue<Object> queue;
        int scalarEmissionCount;
        final int scalarEmissionLimit;
        volatile CompositeSubscription subscriptions;
        long uniqueId;

        public MergeSubscriber(Subscriber<? super T> subscriber, boolean z, int i) {
            this.child = subscriber;
            this.delayErrors = z;
            this.maxConcurrent = i;
            if (i == ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                this.scalarEmissionLimit = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                request(-1);
                return;
            }
            this.scalarEmissionLimit = Math.max(true, i >> 1);
            request((long) i);
        }

        final Queue<Throwable> getOrCreateErrorQueue() {
            Queue<Throwable> queue = this.errors;
            if (queue == null) {
                synchronized (this) {
                    queue = this.errors;
                    if (queue == null) {
                        queue = new ConcurrentLinkedQueue();
                        this.errors = queue;
                    }
                }
            }
            return queue;
        }

        final CompositeSubscription getOrCreateComposite() {
            CompositeSubscription compositeSubscription = this.subscriptions;
            if (compositeSubscription != null) {
                return compositeSubscription;
            }
            Subscription subscription;
            Object obj = null;
            synchronized (this) {
                subscription = this.subscriptions;
                if (subscription == null) {
                    compositeSubscription = new CompositeSubscription();
                    this.subscriptions = compositeSubscription;
                    subscription = compositeSubscription;
                    obj = 1;
                }
            }
            if (obj != null) {
                add(subscription);
            }
            return subscription;
        }

        public final void onNext(Observable<? extends T> observable) {
            if (observable != null) {
                if (observable == Observable.empty()) {
                    emitEmpty();
                } else if (observable instanceof ScalarSynchronousObservable) {
                    tryEmit(((ScalarSynchronousObservable) observable).get());
                } else {
                    long j = this.uniqueId;
                    this.uniqueId = j + 1;
                    Subscriber innerSubscriber = new InnerSubscriber(this, j);
                    addInner(innerSubscriber);
                    observable.unsafeSubscribe(innerSubscriber);
                    emit();
                }
            }
        }

        final void emitEmpty() {
            int i = this.scalarEmissionCount + 1;
            if (i == this.scalarEmissionLimit) {
                this.scalarEmissionCount = 0;
                requestMore((long) i);
                return;
            }
            this.scalarEmissionCount = i;
        }

        private void reportError() {
            Collection arrayList = new ArrayList(this.errors);
            if (arrayList.size() == 1) {
                this.child.onError((Throwable) arrayList.get(0));
            } else {
                this.child.onError(new CompositeException(arrayList));
            }
        }

        public final void onError(Throwable th) {
            getOrCreateErrorQueue().offer(th);
            this.done = true;
            emit();
        }

        public final void onCompleted() {
            this.done = true;
            emit();
        }

        final void addInner(InnerSubscriber<T> innerSubscriber) {
            getOrCreateComposite().add(innerSubscriber);
            synchronized (this.innerGuard) {
                Object obj = this.innerSubscribers;
                int length = obj.length;
                Object obj2 = new InnerSubscriber[(length + 1)];
                System.arraycopy(obj, 0, obj2, 0, length);
                obj2[length] = innerSubscriber;
                this.innerSubscribers = obj2;
            }
        }

        final void removeInner(InnerSubscriber<T> innerSubscriber) {
            RxRingBuffer rxRingBuffer = innerSubscriber.queue;
            if (rxRingBuffer != null) {
                rxRingBuffer.release();
            }
            this.subscriptions.remove(innerSubscriber);
            synchronized (this.innerGuard) {
                Object obj = this.innerSubscribers;
                int length = obj.length;
                int i = -1;
                for (int i2 = 0; i2 < length; i2++) {
                    if (innerSubscriber.equals(obj[i2])) {
                        i = i2;
                        break;
                    }
                }
                if (i < 0) {
                } else if (length == 1) {
                    this.innerSubscribers = EMPTY;
                } else {
                    Object obj2 = new InnerSubscriber[(length - 1)];
                    System.arraycopy(obj, 0, obj2, 0, i);
                    System.arraycopy(obj, i + 1, obj2, i, (length - i) - 1);
                    this.innerSubscribers = obj2;
                }
            }
        }

        final void tryEmit(InnerSubscriber<T> innerSubscriber, T t) {
            long j = 0;
            boolean z = false;
            if (this.producer.get() != 0) {
                long j2;
                synchronized (this) {
                    j2 = this.producer.get();
                    if (!(this.emitting || j2 == 0)) {
                        this.emitting = true;
                        z = true;
                    }
                }
                j = j2;
            }
            if (z) {
                RxRingBuffer rxRingBuffer = innerSubscriber.queue;
                if (rxRingBuffer != null) {
                    if (!rxRingBuffer.isEmpty()) {
                        queueScalar(innerSubscriber, t);
                        emitLoop();
                        return;
                    }
                }
                emitScalar(innerSubscriber, t, j);
                return;
            }
            queueScalar(innerSubscriber, t);
            emit();
        }

        protected final void queueScalar(InnerSubscriber<T> innerSubscriber, T t) {
            RxRingBuffer rxRingBuffer = innerSubscriber.queue;
            if (rxRingBuffer == null) {
                rxRingBuffer = RxRingBuffer.getSpscInstance();
                innerSubscriber.add(rxRingBuffer);
                innerSubscriber.queue = rxRingBuffer;
            }
            try {
                rxRingBuffer.onNext(NotificationLite.next(t));
            } catch (T t2) {
                innerSubscriber.unsubscribe();
                innerSubscriber.onError(t2);
            } catch (T t22) {
                if (!innerSubscriber.isUnsubscribed()) {
                    innerSubscriber.unsubscribe();
                    innerSubscriber.onError(t22);
                }
            }
        }

        protected final void emitScalar(InnerSubscriber<T> innerSubscriber, T t, long j) {
            int i = 1;
            try {
                this.child.onNext(t);
            } catch (Throwable th) {
                innerSubscriber = th;
            }
            if (j != Long.MAX_VALUE) {
                this.producer.produced(1);
            }
            innerSubscriber.requestMore(1);
            synchronized (this) {
                if (this.missed == null) {
                    this.emitting = false;
                    return;
                }
                this.missed = false;
                emitLoop();
                return;
            }
            if (i == 0) {
                synchronized (this) {
                    this.emitting = false;
                }
            }
            throw innerSubscriber;
        }

        public final void requestMore(long j) {
            request(j);
        }

        final void tryEmit(T t) {
            long j = 0;
            boolean z = false;
            if (this.producer.get() != 0) {
                long j2;
                synchronized (this) {
                    j2 = this.producer.get();
                    if (!(this.emitting || j2 == 0)) {
                        this.emitting = true;
                        z = true;
                    }
                }
                j = j2;
            }
            if (z) {
                Queue queue = this.queue;
                if (queue != null) {
                    if (!queue.isEmpty()) {
                        queueScalar(t);
                        emitLoop();
                        return;
                    }
                }
                emitScalar(t, j);
                return;
            }
            queueScalar(t);
            emit();
        }

        protected final void queueScalar(T t) {
            Queue queue = this.queue;
            if (queue == null) {
                int i = this.maxConcurrent;
                if (i == ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                    queue = new SpscUnboundedAtomicArrayQueue(RxRingBuffer.SIZE);
                } else {
                    SpscArrayQueue spscExactAtomicArrayQueue;
                    if (!Pow2.isPowerOfTwo(i)) {
                        spscExactAtomicArrayQueue = new SpscExactAtomicArrayQueue(i);
                    } else if (UnsafeAccess.isUnsafeAvailable()) {
                        spscExactAtomicArrayQueue = new SpscArrayQueue(i);
                    } else {
                        spscExactAtomicArrayQueue = new SpscAtomicArrayQueue(i);
                    }
                    queue = spscExactAtomicArrayQueue;
                }
                this.queue = queue;
            }
            if (!queue.offer(NotificationLite.next(t))) {
                unsubscribe();
                onError(OnErrorThrowable.addValueAsLastCause(new MissingBackpressureException(), t));
            }
        }

        protected final void emitScalar(T t, long j) {
            int i = 1;
            try {
                this.child.onNext(t);
            } catch (Throwable th) {
                t = th;
            }
            if (j != Long.MAX_VALUE) {
                this.producer.produced(1);
            }
            t = this.scalarEmissionCount + 1;
            if (t == this.scalarEmissionLimit) {
                this.scalarEmissionCount = 0;
                requestMore((long) t);
            } else {
                this.scalarEmissionCount = t;
            }
            synchronized (this) {
                if (this.missed == null) {
                    this.emitting = false;
                    return;
                }
                this.missed = false;
                emitLoop();
                return;
            }
            if (i == 0) {
                synchronized (this) {
                    this.emitting = false;
                }
            }
            throw t;
        }

        final void emit() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                emitLoop();
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void emitLoop() {
            /*
            r26 = this;
            r1 = r26;
            r4 = r1.child;	 Catch:{ all -> 0x01db }
        L_0x0004:
            r5 = r26.checkTerminate();	 Catch:{ all -> 0x01db }
            if (r5 == 0) goto L_0x000b;
        L_0x000a:
            return;
        L_0x000b:
            r5 = r1.queue;	 Catch:{ all -> 0x01db }
            r6 = r1.producer;	 Catch:{ all -> 0x01db }
            r6 = r6.get();	 Catch:{ all -> 0x01db }
            r8 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
            if (r10 != 0) goto L_0x001e;
        L_0x001c:
            r10 = 1;
            goto L_0x001f;
        L_0x001e:
            r10 = 0;
        L_0x001f:
            r11 = 1;
            r14 = 0;
            if (r5 == 0) goto L_0x0091;
        L_0x0025:
            r16 = 0;
        L_0x0027:
            r18 = r16;
            r2 = 0;
            r16 = 0;
        L_0x002c:
            r19 = (r6 > r14 ? 1 : (r6 == r14 ? 0 : -1));
            if (r19 <= 0) goto L_0x0072;
        L_0x0030:
            r8 = r5.poll();	 Catch:{ all -> 0x01db }
            r9 = r26.checkTerminate();	 Catch:{ all -> 0x01db }
            if (r9 == 0) goto L_0x003b;
        L_0x003a:
            return;
        L_0x003b:
            if (r8 == 0) goto L_0x0070;
        L_0x003d:
            r9 = rx.internal.operators.NotificationLite.getValue(r8);	 Catch:{ all -> 0x01db }
            r4.onNext(r9);	 Catch:{ Throwable -> 0x0045 }
            goto L_0x0060;
        L_0x0045:
            r0 = move-exception;
            r9 = r1.delayErrors;	 Catch:{ all -> 0x01db }
            if (r9 != 0) goto L_0x0059;
        L_0x004a:
            rx.exceptions.Exceptions.throwIfFatal(r0);	 Catch:{ all -> 0x01db }
            r26.unsubscribe();	 Catch:{ all -> 0x0054 }
            r4.onError(r0);	 Catch:{ all -> 0x0054 }
            return;
        L_0x0054:
            r0 = move-exception;
            r2 = r0;
            r3 = 1;
            goto L_0x01de;
        L_0x0059:
            r9 = r26.getOrCreateErrorQueue();	 Catch:{ all -> 0x01db }
            r9.offer(r0);	 Catch:{ all -> 0x01db }
        L_0x0060:
            r18 = r18 + 1;
            r2 = r2 + 1;
            r20 = r6 - r11;
            r16 = r8;
            r6 = r20;
            r8 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            goto L_0x002c;
        L_0x0070:
            r16 = r8;
        L_0x0072:
            if (r2 <= 0) goto L_0x0082;
        L_0x0074:
            if (r10 == 0) goto L_0x007c;
        L_0x0076:
            r6 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            goto L_0x0082;
        L_0x007c:
            r6 = r1.producer;	 Catch:{ all -> 0x01db }
            r6 = r6.produced(r2);	 Catch:{ all -> 0x01db }
        L_0x0082:
            r2 = (r6 > r14 ? 1 : (r6 == r14 ? 0 : -1));
            if (r2 == 0) goto L_0x0093;
        L_0x0086:
            if (r16 != 0) goto L_0x0089;
        L_0x0088:
            goto L_0x0093;
        L_0x0089:
            r16 = r18;
            r8 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            goto L_0x0027;
        L_0x0091:
            r18 = 0;
        L_0x0093:
            r2 = r1.done;	 Catch:{ all -> 0x01db }
            r5 = r1.queue;	 Catch:{ all -> 0x01db }
            r8 = r1.innerSubscribers;	 Catch:{ all -> 0x01db }
            r9 = r8.length;	 Catch:{ all -> 0x01db }
            if (r2 == 0) goto L_0x00b9;
        L_0x009c:
            if (r5 == 0) goto L_0x00a4;
        L_0x009e:
            r2 = r5.isEmpty();	 Catch:{ all -> 0x01db }
            if (r2 == 0) goto L_0x00b9;
        L_0x00a4:
            if (r9 != 0) goto L_0x00b9;
        L_0x00a6:
            r2 = r1.errors;	 Catch:{ all -> 0x01db }
            if (r2 == 0) goto L_0x00b5;
        L_0x00aa:
            r2 = r2.isEmpty();	 Catch:{ all -> 0x01db }
            if (r2 == 0) goto L_0x00b1;
        L_0x00b0:
            goto L_0x00b5;
        L_0x00b1:
            r26.reportError();	 Catch:{ all -> 0x01db }
            return;
        L_0x00b5:
            r4.onCompleted();	 Catch:{ all -> 0x01db }
            return;
        L_0x00b9:
            if (r9 <= 0) goto L_0x01aa;
        L_0x00bb:
            r11 = r1.lastId;	 Catch:{ all -> 0x01db }
            r2 = r1.lastIndex;	 Catch:{ all -> 0x01db }
            if (r9 <= r2) goto L_0x00cc;
        L_0x00c1:
            r5 = r8[r2];	 Catch:{ all -> 0x01db }
            r22 = r4;
            r3 = r5.id;	 Catch:{ all -> 0x01db }
            r5 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1));
            if (r5 == 0) goto L_0x00ee;
        L_0x00cb:
            goto L_0x00ce;
        L_0x00cc:
            r22 = r4;
        L_0x00ce:
            if (r9 > r2) goto L_0x00d1;
        L_0x00d0:
            r2 = 0;
        L_0x00d1:
            r3 = r2;
            r2 = 0;
        L_0x00d3:
            if (r2 >= r9) goto L_0x00e5;
        L_0x00d5:
            r4 = r8[r3];	 Catch:{ all -> 0x01db }
            r4 = r4.id;	 Catch:{ all -> 0x01db }
            r16 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1));
            if (r16 == 0) goto L_0x00e5;
        L_0x00dd:
            r3 = r3 + 1;
            if (r3 != r9) goto L_0x00e2;
        L_0x00e1:
            r3 = 0;
        L_0x00e2:
            r2 = r2 + 1;
            goto L_0x00d3;
        L_0x00e5:
            r1.lastIndex = r3;	 Catch:{ all -> 0x01db }
            r2 = r8[r3];	 Catch:{ all -> 0x01db }
            r4 = r2.id;	 Catch:{ all -> 0x01db }
            r1.lastId = r4;	 Catch:{ all -> 0x01db }
            r2 = r3;
        L_0x00ee:
            r3 = r2;
            r2 = 0;
            r4 = 0;
        L_0x00f1:
            if (r2 >= r9) goto L_0x019d;
        L_0x00f3:
            r5 = r26.checkTerminate();	 Catch:{ all -> 0x01db }
            if (r5 == 0) goto L_0x00fa;
        L_0x00f9:
            return;
        L_0x00fa:
            r5 = r8[r3];	 Catch:{ all -> 0x01db }
            r11 = r6;
            r6 = 0;
        L_0x00fe:
            r7 = 0;
        L_0x00ff:
            r16 = (r11 > r14 ? 1 : (r11 == r14 ? 0 : -1));
            if (r16 <= 0) goto L_0x013a;
        L_0x0103:
            r16 = r26.checkTerminate();	 Catch:{ all -> 0x01db }
            if (r16 == 0) goto L_0x010a;
        L_0x0109:
            return;
        L_0x010a:
            r13 = r5.queue;	 Catch:{ all -> 0x01db }
            if (r13 == 0) goto L_0x013a;
        L_0x010e:
            r6 = r13.poll();	 Catch:{ all -> 0x01db }
            if (r6 == 0) goto L_0x013a;
        L_0x0114:
            r13 = rx.internal.operators.NotificationLite.getValue(r6);	 Catch:{ all -> 0x01db }
            r14 = r22;
            r14.onNext(r13);	 Catch:{ Throwable -> 0x012a }
            r15 = 1;
            r20 = r11 - r15;
            r7 = r7 + 1;
            r22 = r14;
            r11 = r20;
            r14 = 0;
            goto L_0x00ff;
        L_0x012a:
            r0 = move-exception;
            rx.exceptions.Exceptions.throwIfFatal(r0);	 Catch:{ all -> 0x0054 }
            r14.onError(r0);	 Catch:{ all -> 0x0135 }
            r26.unsubscribe();	 Catch:{ all -> 0x0054 }
            return;
        L_0x0135:
            r0 = move-exception;
            r26.unsubscribe();	 Catch:{ all -> 0x0054 }
            throw r0;	 Catch:{ all -> 0x0054 }
        L_0x013a:
            r14 = r22;
            r15 = 1;
            if (r7 <= 0) goto L_0x015b;
        L_0x0140:
            if (r10 != 0) goto L_0x014d;
        L_0x0142:
            r11 = r1.producer;	 Catch:{ all -> 0x01db }
            r11 = r11.produced(r7);	 Catch:{ all -> 0x01db }
            r23 = r10;
            r24 = r11;
            goto L_0x0154;
        L_0x014d:
            r23 = r10;
            r24 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        L_0x0154:
            r10 = (long) r7;	 Catch:{ all -> 0x01db }
            r5.requestMore(r10);	 Catch:{ all -> 0x01db }
            r11 = r24;
            goto L_0x015d;
        L_0x015b:
            r23 = r10;
        L_0x015d:
            r20 = 0;
            r7 = (r11 > r20 ? 1 : (r11 == r20 ? 0 : -1));
            if (r7 == 0) goto L_0x016d;
        L_0x0163:
            if (r6 != 0) goto L_0x0166;
        L_0x0165:
            goto L_0x016d;
        L_0x0166:
            r22 = r14;
            r10 = r23;
            r14 = 0;
            goto L_0x00fe;
        L_0x016d:
            r6 = r5.done;	 Catch:{ all -> 0x01db }
            r7 = r5.queue;	 Catch:{ all -> 0x01db }
            if (r6 == 0) goto L_0x0188;
        L_0x0173:
            if (r7 == 0) goto L_0x017b;
        L_0x0175:
            r6 = r7.isEmpty();	 Catch:{ all -> 0x01db }
            if (r6 == 0) goto L_0x0188;
        L_0x017b:
            r1.removeInner(r5);	 Catch:{ all -> 0x01db }
            r4 = r26.checkTerminate();	 Catch:{ all -> 0x01db }
            if (r4 == 0) goto L_0x0185;
        L_0x0184:
            return;
        L_0x0185:
            r18 = r18 + 1;
            r4 = 1;
        L_0x0188:
            r5 = 0;
            r7 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1));
            if (r7 == 0) goto L_0x019f;
        L_0x018e:
            r3 = r3 + 1;
            if (r3 != r9) goto L_0x0193;
        L_0x0192:
            r3 = 0;
        L_0x0193:
            r2 = r2 + 1;
            r22 = r14;
            r10 = r23;
            r14 = r5;
            r6 = r11;
            goto L_0x00f1;
        L_0x019d:
            r14 = r22;
        L_0x019f:
            r1.lastIndex = r3;	 Catch:{ all -> 0x01db }
            r2 = r8[r3];	 Catch:{ all -> 0x01db }
            r2 = r2.id;	 Catch:{ all -> 0x01db }
            r1.lastId = r2;	 Catch:{ all -> 0x01db }
            r2 = r18;
            goto L_0x01ae;
        L_0x01aa:
            r14 = r4;
            r2 = r18;
            r4 = 0;
        L_0x01ae:
            if (r2 <= 0) goto L_0x01b4;
        L_0x01b0:
            r2 = (long) r2;	 Catch:{ all -> 0x01db }
            r1.request(r2);	 Catch:{ all -> 0x01db }
        L_0x01b4:
            if (r4 != 0) goto L_0x01d8;
        L_0x01b6:
            monitor-enter(r26);	 Catch:{ all -> 0x01db }
            r2 = r1.missed;	 Catch:{ all -> 0x01ca }
            if (r2 != 0) goto L_0x01c5;
        L_0x01bb:
            r2 = 0;
            r1.emitting = r2;	 Catch:{ all -> 0x01c0 }
            monitor-exit(r26);	 Catch:{ all -> 0x01c0 }
            return;
        L_0x01c0:
            r0 = move-exception;
            r2 = r0;
            r17 = 1;
            goto L_0x01ce;
        L_0x01c5:
            r2 = 0;
            r1.missed = r2;	 Catch:{ all -> 0x01ca }
            monitor-exit(r26);	 Catch:{ all -> 0x01ca }
            goto L_0x01d8;
        L_0x01ca:
            r0 = move-exception;
            r2 = r0;
            r17 = 0;
        L_0x01ce:
            monitor-exit(r26);	 Catch:{ all -> 0x01d5 }
            throw r2;	 Catch:{ all -> 0x01d0 }
        L_0x01d0:
            r0 = move-exception;
            r2 = r0;
            r3 = r17;
            goto L_0x01de;
        L_0x01d5:
            r0 = move-exception;
            r2 = r0;
            goto L_0x01ce;
        L_0x01d8:
            r4 = r14;
            goto L_0x0004;
        L_0x01db:
            r0 = move-exception;
            r2 = r0;
            r3 = 0;
        L_0x01de:
            if (r3 != 0) goto L_0x01ea;
        L_0x01e0:
            monitor-enter(r26);
            r3 = 0;
            r1.emitting = r3;	 Catch:{ all -> 0x01e6 }
            monitor-exit(r26);	 Catch:{ all -> 0x01e6 }
            goto L_0x01ea;
        L_0x01e6:
            r0 = move-exception;
            r2 = r0;
            monitor-exit(r26);	 Catch:{ all -> 0x01e6 }
            throw r2;
        L_0x01ea:
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorMerge.MergeSubscriber.emitLoop():void");
        }

        final boolean checkTerminate() {
            if (this.child.isUnsubscribed()) {
                return true;
            }
            Queue queue = this.errors;
            if (this.delayErrors || queue == null || queue.isEmpty()) {
                return false;
            }
            try {
                reportError();
                return true;
            } finally {
                unsubscribe();
            }
        }
    }

    public static <T> OperatorMerge<T> instance(boolean z) {
        if (z) {
            return HolderDelayErrors.INSTANCE;
        }
        return HolderNoDelay.INSTANCE;
    }

    public static <T> OperatorMerge<T> instance(boolean z, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxConcurrent > 0 required but it was ".concat(String.valueOf(i)));
        } else if (i == ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
            return instance(z);
        } else {
            return new OperatorMerge(z, i);
        }
    }

    OperatorMerge(boolean z, int i) {
        this.delayErrors = z;
        this.maxConcurrent = i;
    }

    public final Subscriber<Observable<? extends T>> call(Subscriber<? super T> subscriber) {
        Object mergeSubscriber = new MergeSubscriber(subscriber, this.delayErrors, this.maxConcurrent);
        Producer mergeProducer = new MergeProducer(mergeSubscriber);
        mergeSubscriber.producer = mergeProducer;
        subscriber.add(mergeSubscriber);
        subscriber.setProducer(mergeProducer);
        return mergeSubscriber;
    }
}
