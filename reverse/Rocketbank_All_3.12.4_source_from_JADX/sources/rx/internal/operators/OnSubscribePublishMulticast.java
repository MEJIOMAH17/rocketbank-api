package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.MissingBackpressureException;
import rx.internal.util.atomic.SpscAtomicArrayQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;

public final class OnSubscribePublishMulticast<T> extends AtomicInteger implements OnSubscribe<T>, Observer<T>, Subscription {
    static final PublishProducer<?>[] EMPTY = new PublishProducer[0];
    static final PublishProducer<?>[] TERMINATED = new PublishProducer[0];
    private static final long serialVersionUID = -3741892510772238743L;
    final boolean delayError;
    volatile boolean done;
    Throwable error;
    final ParentSubscriber<T> parent;
    final int prefetch;
    volatile Producer producer;
    final Queue<T> queue;
    volatile PublishProducer<T>[] subscribers;

    static final class PublishProducer<T> extends AtomicLong implements Producer, Subscription {
        private static final long serialVersionUID = 960704844171597367L;
        final Subscriber<? super T> actual;
        final AtomicBoolean once = new AtomicBoolean();
        final OnSubscribePublishMulticast<T> parent;

        public PublishProducer(Subscriber<? super T> subscriber, OnSubscribePublishMulticast<T> onSubscribePublishMulticast) {
            this.actual = subscriber;
            this.parent = onSubscribePublishMulticast;
        }

        public final void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was ".concat(String.valueOf(j)));
            } else if (j != 0) {
                BackpressureUtils.getAndAddRequest(this, j);
                this.parent.drain();
            }
        }

        public final boolean isUnsubscribed() {
            return this.once.get();
        }

        public final void unsubscribe() {
            if (this.once.compareAndSet(false, true)) {
                this.parent.remove(this);
            }
        }
    }

    static final class ParentSubscriber<T> extends Subscriber<T> {
        final OnSubscribePublishMulticast<T> state;

        public ParentSubscriber(OnSubscribePublishMulticast<T> onSubscribePublishMulticast) {
            this.state = onSubscribePublishMulticast;
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

        public final void setProducer(Producer producer) {
            this.state.setProducer(producer);
        }
    }

    public OnSubscribePublishMulticast(int i, boolean z) {
        if (i <= 0) {
            throw new IllegalArgumentException("prefetch > 0 required but it was ".concat(String.valueOf(i)));
        }
        this.prefetch = i;
        this.delayError = z;
        if (UnsafeAccess.isUnsafeAvailable()) {
            this.queue = new SpscArrayQueue(i);
        } else {
            this.queue = new SpscAtomicArrayQueue(i);
        }
        this.subscribers = (PublishProducer[]) EMPTY;
        this.parent = new ParentSubscriber(this);
    }

    public final void call(Subscriber<? super T> subscriber) {
        PublishProducer publishProducer = new PublishProducer(subscriber, this);
        subscriber.add(publishProducer);
        subscriber.setProducer(publishProducer);
        if (!add(publishProducer)) {
            Throwable th = this.error;
            if (th != null) {
                subscriber.onError(th);
            } else {
                subscriber.onCompleted();
            }
        } else if (publishProducer.isUnsubscribed() != null) {
            remove(publishProducer);
        } else {
            drain();
        }
    }

    public final void onNext(T t) {
        if (this.queue.offer(t) == null) {
            this.parent.unsubscribe();
            this.error = new MissingBackpressureException("Queue full?!");
            this.done = true;
        }
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

    final void setProducer(Producer producer) {
        this.producer = producer;
        producer.request((long) this.prefetch);
    }

    final void drain() {
        if (getAndIncrement() == 0) {
            Queue queue = this.queue;
            int i = 0;
            do {
                PublishProducer[] publishProducerArr = this.subscribers;
                int length = publishProducerArr.length;
                long j = Long.MAX_VALUE;
                for (PublishProducer publishProducer : publishProducerArr) {
                    j = Math.min(j, publishProducer.get());
                }
                if (length != 0) {
                    long j2 = 0;
                    while (j2 != j) {
                        boolean z = this.done;
                        Object poll = queue.poll();
                        boolean z2 = poll == null;
                        if (!checkTerminated(z, z2)) {
                            if (z2) {
                                break;
                            }
                            for (PublishProducer publishProducer2 : publishProducerArr) {
                                publishProducer2.actual.onNext(poll);
                            }
                            j2++;
                        } else {
                            return;
                        }
                    }
                    if (j2 != j || !checkTerminated(this.done, queue.isEmpty())) {
                        if (j2 != 0) {
                            Producer producer = this.producer;
                            if (producer != null) {
                                producer.request(j2);
                            }
                            for (AtomicLong produced : publishProducerArr) {
                                BackpressureUtils.produced(produced, j2);
                            }
                        }
                    } else {
                        return;
                    }
                }
                i = addAndGet(-i);
            } while (i != 0);
        }
    }

    final boolean checkTerminated(boolean z, boolean z2) {
        boolean z3 = false;
        if (z) {
            int length;
            int i;
            if (!this.delayError) {
                z = this.error;
                if (z) {
                    this.queue.clear();
                    z2 = terminate();
                    length = z2.length;
                    while (i < length) {
                        z2[i].actual.onError(z);
                        i++;
                    }
                    return true;
                } else if (z2) {
                    z = terminate();
                    z2 = z.length;
                    while (z3 < z2) {
                        z[z3].actual.onCompleted();
                        z3++;
                    }
                    return true;
                }
            } else if (z2) {
                z = terminate();
                z2 = this.error;
                if (z2) {
                    length = z.length;
                    while (i < length) {
                        z[i].actual.onError(z2);
                        i++;
                    }
                } else {
                    z2 = z.length;
                    while (z3 < z2) {
                        z[z3].actual.onCompleted();
                        z3++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    final PublishProducer<T>[] terminate() {
        PublishProducer<T>[] publishProducerArr = this.subscribers;
        if (publishProducerArr != TERMINATED) {
            synchronized (this) {
                publishProducerArr = this.subscribers;
                if (publishProducerArr != TERMINATED) {
                    this.subscribers = TERMINATED;
                }
            }
        }
        return publishProducerArr;
    }

    final boolean add(PublishProducer<T> publishProducer) {
        if (this.subscribers == TERMINATED) {
            return false;
        }
        synchronized (this) {
            Object obj = this.subscribers;
            if (obj == TERMINATED) {
                return false;
            }
            int length = obj.length;
            Object obj2 = new PublishProducer[(length + 1)];
            System.arraycopy(obj, 0, obj2, 0, length);
            obj2[length] = publishProducer;
            this.subscribers = obj2;
            return true;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    final void remove(rx.internal.operators.OnSubscribePublishMulticast.PublishProducer<T> r7) {
        /*
        r6 = this;
        r0 = r6.subscribers;
        r1 = TERMINATED;
        if (r0 == r1) goto L_0x004a;
    L_0x0006:
        r1 = EMPTY;
        if (r0 != r1) goto L_0x000b;
    L_0x000a:
        goto L_0x004a;
    L_0x000b:
        monitor-enter(r6);
        r0 = r6.subscribers;	 Catch:{ all -> 0x0047 }
        r1 = TERMINATED;	 Catch:{ all -> 0x0047 }
        if (r0 == r1) goto L_0x0045;
    L_0x0012:
        r1 = EMPTY;	 Catch:{ all -> 0x0047 }
        if (r0 != r1) goto L_0x0017;
    L_0x0016:
        goto L_0x0045;
    L_0x0017:
        r1 = -1;
        r2 = r0.length;	 Catch:{ all -> 0x0047 }
        r3 = 0;
        r4 = r3;
    L_0x001b:
        if (r4 >= r2) goto L_0x0026;
    L_0x001d:
        r5 = r0[r4];	 Catch:{ all -> 0x0047 }
        if (r5 != r7) goto L_0x0023;
    L_0x0021:
        r1 = r4;
        goto L_0x0026;
    L_0x0023:
        r4 = r4 + 1;
        goto L_0x001b;
    L_0x0026:
        if (r1 >= 0) goto L_0x002a;
    L_0x0028:
        monitor-exit(r6);	 Catch:{ all -> 0x0047 }
        return;
    L_0x002a:
        r7 = 1;
        if (r2 != r7) goto L_0x0032;
    L_0x002d:
        r7 = EMPTY;	 Catch:{ all -> 0x0047 }
        r7 = (rx.internal.operators.OnSubscribePublishMulticast.PublishProducer[]) r7;	 Catch:{ all -> 0x0047 }
        goto L_0x0041;
    L_0x0032:
        r4 = r2 + -1;
        r4 = new rx.internal.operators.OnSubscribePublishMulticast.PublishProducer[r4];	 Catch:{ all -> 0x0047 }
        java.lang.System.arraycopy(r0, r3, r4, r3, r1);	 Catch:{ all -> 0x0047 }
        r3 = r1 + 1;
        r2 = r2 - r1;
        r2 = r2 - r7;
        java.lang.System.arraycopy(r0, r3, r4, r1, r2);	 Catch:{ all -> 0x0047 }
        r7 = r4;
    L_0x0041:
        r6.subscribers = r7;	 Catch:{ all -> 0x0047 }
        monitor-exit(r6);	 Catch:{ all -> 0x0047 }
        return;
    L_0x0045:
        monitor-exit(r6);	 Catch:{ all -> 0x0047 }
        return;
    L_0x0047:
        r7 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0047 }
        throw r7;
    L_0x004a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OnSubscribePublishMulticast.remove(rx.internal.operators.OnSubscribePublishMulticast$PublishProducer):void");
    }

    public final Subscriber<T> subscriber() {
        return this.parent;
    }

    public final void unsubscribe() {
        this.parent.unsubscribe();
    }

    public final boolean isUnsubscribed() {
        return this.parent.isUnsubscribed();
    }
}
