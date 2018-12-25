package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.SynchronizedQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.observables.ConnectableObservable;
import rx.subscriptions.Subscriptions;

public final class OperatorPublish<T> extends ConnectableObservable<T> {
    final AtomicReference<PublishSubscriber<T>> current;
    final Observable<? extends T> source;

    static final class InnerProducer<T> extends AtomicLong implements Producer, Subscription {
        static final long NOT_REQUESTED = -4611686018427387904L;
        static final long UNSUBSCRIBED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        final Subscriber<? super T> child;
        final PublishSubscriber<T> parent;

        public InnerProducer(PublishSubscriber<T> publishSubscriber, Subscriber<? super T> subscriber) {
            this.parent = publishSubscriber;
            this.child = subscriber;
            lazySet(0);
        }

        public final void request(long j) {
            if (j >= 0) {
                long j2;
                long j3;
                do {
                    j2 = get();
                    if (j2 != UNSUBSCRIBED) {
                        if (j2 >= 0 && j == 0) {
                            return;
                        }
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
                this.parent.dispatch();
            }
        }

        public final long produced(long j) {
            if (j <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            long j2;
            long j3;
            do {
                j3 = get();
                if (j3 == NOT_REQUESTED) {
                    throw new IllegalStateException("Produced without request");
                } else if (j3 == UNSUBSCRIBED) {
                    return UNSUBSCRIBED;
                } else {
                    j2 = j3 - j;
                    if (j2 < 0) {
                        StringBuilder stringBuilder = new StringBuilder("More produced (");
                        stringBuilder.append(j);
                        stringBuilder.append(") than requested (");
                        stringBuilder.append(j3);
                        stringBuilder.append(")");
                        throw new IllegalStateException(stringBuilder.toString());
                    }
                }
            } while (!compareAndSet(j3, j2));
            return j2;
        }

        public final boolean isUnsubscribed() {
            return get() == UNSUBSCRIBED;
        }

        public final void unsubscribe() {
            if (get() != UNSUBSCRIBED && getAndSet(UNSUBSCRIBED) != UNSUBSCRIBED) {
                this.parent.remove(this);
                this.parent.dispatch();
            }
        }
    }

    static final class PublishSubscriber<T> extends Subscriber<T> implements Subscription {
        static final InnerProducer[] EMPTY = new InnerProducer[0];
        static final InnerProducer[] TERMINATED = new InnerProducer[0];
        final AtomicReference<PublishSubscriber<T>> current;
        boolean emitting;
        boolean missed;
        final AtomicReference<InnerProducer[]> producers;
        final Queue<Object> queue;
        final AtomicBoolean shouldConnect;
        volatile Object terminalEvent;

        /* renamed from: rx.internal.operators.OperatorPublish$PublishSubscriber$1 */
        class C20921 implements Action0 {
            C20921() {
            }

            public void call() {
                PublishSubscriber.this.producers.getAndSet(PublishSubscriber.TERMINATED);
                PublishSubscriber.this.current.compareAndSet(PublishSubscriber.this, null);
            }
        }

        public PublishSubscriber(AtomicReference<PublishSubscriber<T>> atomicReference) {
            this.queue = UnsafeAccess.isUnsafeAvailable() ? new SpscArrayQueue(RxRingBuffer.SIZE) : new SynchronizedQueue(RxRingBuffer.SIZE);
            this.producers = new AtomicReference(EMPTY);
            this.current = atomicReference;
            this.shouldConnect = new AtomicBoolean();
        }

        final void init() {
            add(Subscriptions.create(new C20921()));
        }

        public final void onStart() {
            request((long) RxRingBuffer.SIZE);
        }

        public final void onNext(T t) {
            if (this.queue.offer(NotificationLite.next(t)) == null) {
                onError(new MissingBackpressureException());
            } else {
                dispatch();
            }
        }

        public final void onError(Throwable th) {
            if (this.terminalEvent == null) {
                this.terminalEvent = NotificationLite.error(th);
                dispatch();
            }
        }

        public final void onCompleted() {
            if (this.terminalEvent == null) {
                this.terminalEvent = NotificationLite.completed();
                dispatch();
            }
        }

        final boolean add(InnerProducer<T> innerProducer) {
            if (innerProducer == null) {
                throw new NullPointerException();
            }
            InnerProducer[] innerProducerArr;
            Object obj;
            do {
                innerProducerArr = (InnerProducer[]) this.producers.get();
                if (innerProducerArr == TERMINATED) {
                    return false;
                }
                int length = innerProducerArr.length;
                obj = new InnerProducer[(length + 1)];
                System.arraycopy(innerProducerArr, 0, obj, 0, length);
                obj[length] = innerProducer;
            } while (!this.producers.compareAndSet(innerProducerArr, obj));
            return true;
        }

        final void remove(InnerProducer<T> innerProducer) {
            InnerProducer[] innerProducerArr;
            Object obj;
            do {
                innerProducerArr = (InnerProducer[]) this.producers.get();
                if (innerProducerArr != EMPTY) {
                    if (innerProducerArr != TERMINATED) {
                        int i = -1;
                        int length = innerProducerArr.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            if (innerProducerArr[i2].equals(innerProducer)) {
                                i = i2;
                                break;
                            }
                        }
                        if (i >= 0) {
                            if (length == 1) {
                                obj = EMPTY;
                            } else {
                                Object obj2 = new InnerProducer[(length - 1)];
                                System.arraycopy(innerProducerArr, 0, obj2, 0, i);
                                System.arraycopy(innerProducerArr, i + 1, obj2, i, (length - i) - 1);
                                obj = obj2;
                            }
                        } else {
                            return;
                        }
                    }
                }
                return;
            } while (!this.producers.compareAndSet(innerProducerArr, obj));
        }

        final boolean checkTerminated(Object obj, boolean z) {
            int i = 0;
            if (obj != null) {
                if (!NotificationLite.isCompleted(obj)) {
                    obj = NotificationLite.getError(obj);
                    this.current.compareAndSet(this, null);
                    try {
                        InnerProducer[] innerProducerArr = (InnerProducer[]) this.producers.getAndSet(TERMINATED);
                        int length = innerProducerArr.length;
                        while (i < length) {
                            innerProducerArr[i].child.onError(obj);
                            i++;
                        }
                        return true;
                    } finally {
                        unsubscribe();
                    }
                } else if (z) {
                    this.current.compareAndSet(this, null);
                    try {
                        InnerProducer[] innerProducerArr2 = (InnerProducer[]) this.producers.getAndSet(TERMINATED);
                        z = innerProducerArr2.length;
                        boolean z2;
                        while (z2 < z) {
                            innerProducerArr2[z2].child.onCompleted();
                            z2++;
                        }
                        return true;
                    } finally {
                        unsubscribe();
                    }
                }
            }
            return false;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void dispatch() {
            /*
            r20 = this;
            r1 = r20;
            monitor-enter(r20);
            r2 = r1.emitting;	 Catch:{ all -> 0x00fe }
            r3 = 1;
            if (r2 == 0) goto L_0x000c;
        L_0x0008:
            r1.missed = r3;	 Catch:{ all -> 0x00fe }
            monitor-exit(r20);	 Catch:{ all -> 0x00fe }
            return;
        L_0x000c:
            r1.emitting = r3;	 Catch:{ all -> 0x00fe }
            r2 = 0;
            r1.missed = r2;	 Catch:{ all -> 0x00fe }
            monitor-exit(r20);	 Catch:{ all -> 0x00fe }
        L_0x0012:
            r4 = r1.terminalEvent;	 Catch:{ all -> 0x00ee }
            r5 = r1.queue;	 Catch:{ all -> 0x00ee }
            r5 = r5.isEmpty();	 Catch:{ all -> 0x00ee }
            r4 = r1.checkTerminated(r4, r5);	 Catch:{ all -> 0x00ee }
            if (r4 == 0) goto L_0x0021;
        L_0x0020:
            return;
        L_0x0021:
            if (r5 != 0) goto L_0x00ca;
        L_0x0023:
            r4 = r1.producers;	 Catch:{ all -> 0x00ee }
            r4 = r4.get();	 Catch:{ all -> 0x00ee }
            r4 = (rx.internal.operators.OperatorPublish.InnerProducer[]) r4;	 Catch:{ all -> 0x00ee }
            r6 = r4.length;	 Catch:{ all -> 0x00ee }
            r7 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r9 = r4.length;	 Catch:{ all -> 0x00ee }
            r10 = r7;
            r7 = r2;
            r8 = r7;
        L_0x0035:
            r12 = 0;
            if (r7 >= r9) goto L_0x0057;
        L_0x0039:
            r14 = r4[r7];	 Catch:{ all -> 0x0053 }
            r14 = r14.get();	 Catch:{ all -> 0x0053 }
            r16 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1));
            if (r16 < 0) goto L_0x0048;
        L_0x0043:
            r10 = java.lang.Math.min(r10, r14);	 Catch:{ all -> 0x0053 }
            goto L_0x0050;
        L_0x0048:
            r12 = -9223372036854775808;
            r16 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1));
            if (r16 != 0) goto L_0x0050;
        L_0x004e:
            r8 = r8 + 1;
        L_0x0050:
            r7 = r7 + 1;
            goto L_0x0035;
        L_0x0053:
            r0 = move-exception;
            r3 = r2;
            goto L_0x00e9;
        L_0x0057:
            r14 = 1;
            if (r6 != r8) goto L_0x0073;
        L_0x005b:
            r4 = r1.terminalEvent;	 Catch:{ all -> 0x0053 }
            r5 = r1.queue;	 Catch:{ all -> 0x0053 }
            r5 = r5.poll();	 Catch:{ all -> 0x0053 }
            if (r5 != 0) goto L_0x0067;
        L_0x0065:
            r5 = r3;
            goto L_0x0068;
        L_0x0067:
            r5 = r2;
        L_0x0068:
            r4 = r1.checkTerminated(r4, r5);	 Catch:{ all -> 0x0053 }
            if (r4 == 0) goto L_0x006f;
        L_0x006e:
            return;
        L_0x006f:
            r1.request(r14);	 Catch:{ all -> 0x0053 }
            goto L_0x0012;
        L_0x0073:
            r6 = r5;
            r5 = r2;
        L_0x0075:
            r7 = (long) r5;
            r9 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1));
            if (r9 >= 0) goto L_0x00be;
        L_0x007a:
            r6 = r1.terminalEvent;	 Catch:{ all -> 0x00ee }
            r9 = r1.queue;	 Catch:{ all -> 0x00ee }
            r9 = r9.poll();	 Catch:{ all -> 0x00ee }
            if (r9 != 0) goto L_0x0085;
        L_0x0084:
            goto L_0x0086;
        L_0x0085:
            r3 = r2;
        L_0x0086:
            r6 = r1.checkTerminated(r6, r3);	 Catch:{ all -> 0x00ee }
            if (r6 == 0) goto L_0x008d;
        L_0x008c:
            return;
        L_0x008d:
            if (r3 != 0) goto L_0x00bf;
        L_0x008f:
            r6 = rx.internal.operators.NotificationLite.getValue(r9);	 Catch:{ all -> 0x00ee }
            r7 = r4.length;	 Catch:{ all -> 0x00ee }
            r8 = r2;
        L_0x0095:
            if (r8 >= r7) goto L_0x00b8;
        L_0x0097:
            r9 = r4[r8];	 Catch:{ all -> 0x00ee }
            r17 = r9.get();	 Catch:{ all -> 0x00ee }
            r16 = (r17 > r12 ? 1 : (r17 == r12 ? 0 : -1));
            if (r16 <= 0) goto L_0x00b4;
        L_0x00a1:
            r2 = r9.child;	 Catch:{ Throwable -> 0x00aa }
            r2.onNext(r6);	 Catch:{ Throwable -> 0x00aa }
            r9.produced(r14);	 Catch:{ all -> 0x00ee }
            goto L_0x00b4;
        L_0x00aa:
            r0 = move-exception;
            r2 = r0;
            r9.unsubscribe();	 Catch:{ all -> 0x00ee }
            r9 = r9.child;	 Catch:{ all -> 0x00ee }
            rx.exceptions.Exceptions.throwOrReport(r2, r9, r6);	 Catch:{ all -> 0x00ee }
        L_0x00b4:
            r8 = r8 + 1;
            r2 = 0;
            goto L_0x0095;
        L_0x00b8:
            r5 = r5 + 1;
            r6 = r3;
            r2 = 0;
            r3 = 1;
            goto L_0x0075;
        L_0x00be:
            r3 = r6;
        L_0x00bf:
            if (r5 <= 0) goto L_0x00c4;
        L_0x00c1:
            r1.request(r7);	 Catch:{ all -> 0x00ee }
        L_0x00c4:
            r2 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
            if (r2 == 0) goto L_0x00ca;
        L_0x00c8:
            if (r3 == 0) goto L_0x00df;
        L_0x00ca:
            monitor-enter(r20);	 Catch:{ all -> 0x00ee }
            r2 = r1.missed;	 Catch:{ all -> 0x00e3 }
            if (r2 != 0) goto L_0x00db;
        L_0x00cf:
            r2 = 0;
            r1.emitting = r2;	 Catch:{ all -> 0x00d8 }
            monitor-exit(r20);	 Catch:{ all -> 0x00d4 }
            return;
        L_0x00d4:
            r0 = move-exception;
            r2 = r0;
            r3 = 1;
            goto L_0x00e6;
        L_0x00d8:
            r0 = move-exception;
            r3 = r2;
            goto L_0x00ec;
        L_0x00db:
            r2 = 0;
            r1.missed = r2;	 Catch:{ all -> 0x00e3 }
            monitor-exit(r20);	 Catch:{ all -> 0x00e3 }
        L_0x00df:
            r2 = 0;
            r3 = 1;
            goto L_0x0012;
        L_0x00e3:
            r0 = move-exception;
            r2 = r0;
            r3 = 0;
        L_0x00e6:
            monitor-exit(r20);	 Catch:{ all -> 0x00eb }
            throw r2;	 Catch:{ all -> 0x00e8 }
        L_0x00e8:
            r0 = move-exception;
        L_0x00e9:
            r2 = r0;
            goto L_0x00f1;
        L_0x00eb:
            r0 = move-exception;
        L_0x00ec:
            r2 = r0;
            goto L_0x00e6;
        L_0x00ee:
            r0 = move-exception;
            r2 = r0;
            r3 = 0;
        L_0x00f1:
            if (r3 != 0) goto L_0x00fd;
        L_0x00f3:
            monitor-enter(r20);
            r3 = 0;
            r1.emitting = r3;	 Catch:{ all -> 0x00f9 }
            monitor-exit(r20);	 Catch:{ all -> 0x00f9 }
            goto L_0x00fd;
        L_0x00f9:
            r0 = move-exception;
            r2 = r0;
            monitor-exit(r20);	 Catch:{ all -> 0x00f9 }
            throw r2;
        L_0x00fd:
            throw r2;
        L_0x00fe:
            r0 = move-exception;
            r2 = r0;
            monitor-exit(r20);	 Catch:{ all -> 0x00fe }
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorPublish.PublishSubscriber.dispatch():void");
        }
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable) {
        final AtomicReference atomicReference = new AtomicReference();
        return new OperatorPublish(new OnSubscribe<T>() {
            public final void call(Subscriber<? super T> subscriber) {
                while (true) {
                    PublishSubscriber publishSubscriber = (PublishSubscriber) atomicReference.get();
                    if (publishSubscriber == null || publishSubscriber.isUnsubscribed()) {
                        PublishSubscriber publishSubscriber2 = new PublishSubscriber(atomicReference);
                        publishSubscriber2.init();
                        if (atomicReference.compareAndSet(publishSubscriber, publishSubscriber2)) {
                            publishSubscriber = publishSubscriber2;
                        } else {
                            continue;
                        }
                    }
                    Object innerProducer = new InnerProducer(publishSubscriber, subscriber);
                    if (publishSubscriber.add(innerProducer)) {
                        subscriber.add(innerProducer);
                        subscriber.setProducer(innerProducer);
                        return;
                    }
                }
            }
        }, observable, atomicReference);
    }

    public static <T, R> Observable<R> create(Observable<? extends T> observable, Func1<? super Observable<T>, ? extends Observable<R>> func1) {
        return create(observable, func1, false);
    }

    public static <T, R> Observable<R> create(final Observable<? extends T> observable, final Func1<? super Observable<T>, ? extends Observable<R>> func1, final boolean z) {
        return Observable.create(new OnSubscribe<R>() {
            public final void call(final Subscriber<? super R> subscriber) {
                final OnSubscribe onSubscribePublishMulticast = new OnSubscribePublishMulticast(RxRingBuffer.SIZE, z);
                Object c19121 = new Subscriber<R>() {
                    public void onNext(R r) {
                        subscriber.onNext(r);
                    }

                    public void onError(Throwable th) {
                        onSubscribePublishMulticast.unsubscribe();
                        subscriber.onError(th);
                    }

                    public void onCompleted() {
                        onSubscribePublishMulticast.unsubscribe();
                        subscriber.onCompleted();
                    }

                    public void setProducer(Producer producer) {
                        subscriber.setProducer(producer);
                    }
                };
                subscriber.add(onSubscribePublishMulticast);
                subscriber.add(c19121);
                ((Observable) func1.call(Observable.create(onSubscribePublishMulticast))).unsafeSubscribe(c19121);
                observable.unsafeSubscribe(onSubscribePublishMulticast.subscriber());
            }
        });
    }

    private OperatorPublish(OnSubscribe<T> onSubscribe, Observable<? extends T> observable, AtomicReference<PublishSubscriber<T>> atomicReference) {
        super(onSubscribe);
        this.source = observable;
        this.current = atomicReference;
    }

    public final void connect(Action1<? super Subscription> action1) {
        Subscriber subscriber;
        Subscriber publishSubscriber;
        do {
            subscriber = (PublishSubscriber) this.current.get();
            if (subscriber != null && !subscriber.isUnsubscribed()) {
                break;
            }
            publishSubscriber = new PublishSubscriber(this.current);
            publishSubscriber.init();
        } while (!this.current.compareAndSet(subscriber, publishSubscriber));
        subscriber = publishSubscriber;
        boolean z = true;
        if (subscriber.shouldConnect.get() || !subscriber.shouldConnect.compareAndSet(false, true)) {
            z = false;
        }
        action1.call(subscriber);
        if (z) {
            this.source.unsafeSubscribe(subscriber);
        }
    }
}
