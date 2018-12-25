package rx.internal.operators;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.CompositeException;
import rx.functions.FuncN;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.atomic.SpscLinkedArrayQueue;
import rx.plugins.RxJavaHooks;

public final class OnSubscribeCombineLatest<T, R> implements OnSubscribe<R> {
    final int bufferSize;
    final FuncN<? extends R> combiner;
    final boolean delayError;
    final Observable<? extends T>[] sources;
    final Iterable<? extends Observable<? extends T>> sourcesIterable;

    static final class LatestCoordinator<T, R> extends AtomicInteger implements Producer, Subscription {
        static final Object MISSING = new Object();
        private static final long serialVersionUID = 8567835998786448817L;
        int active;
        final Subscriber<? super R> actual;
        final int bufferSize;
        volatile boolean cancelled;
        final FuncN<? extends R> combiner;
        int complete;
        final boolean delayError;
        volatile boolean done;
        final AtomicReference<Throwable> error = new AtomicReference();
        final Object[] latest;
        final SpscLinkedArrayQueue<Object> queue;
        final AtomicLong requested = new AtomicLong();
        final CombinerSubscriber<T, R>[] subscribers;

        public LatestCoordinator(Subscriber<? super R> subscriber, FuncN<? extends R> funcN, int i, int i2, boolean z) {
            this.actual = subscriber;
            this.combiner = funcN;
            this.bufferSize = i2;
            this.delayError = z;
            this.latest = new Object[i];
            Arrays.fill(this.latest, MISSING);
            this.subscribers = new CombinerSubscriber[i];
            this.queue = new SpscLinkedArrayQueue(i2);
        }

        public final void subscribe(Observable<? extends T>[] observableArr) {
            CombinerSubscriber[] combinerSubscriberArr = this.subscribers;
            int i = 0;
            int length = combinerSubscriberArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                combinerSubscriberArr[i2] = new CombinerSubscriber(this, i2);
            }
            lazySet(0);
            this.actual.add(this);
            this.actual.setProducer(this);
            while (i < length && !this.cancelled) {
                observableArr[i].subscribe(combinerSubscriberArr[i]);
                i++;
            }
        }

        public final void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was ".concat(String.valueOf(j)));
            } else if (j != 0) {
                BackpressureUtils.getAndAddRequest(this.requested, j);
                drain();
            }
        }

        public final void unsubscribe() {
            if (!this.cancelled) {
                this.cancelled = true;
                if (getAndIncrement() == 0) {
                    cancel(this.queue);
                }
            }
        }

        public final boolean isUnsubscribed() {
            return this.cancelled;
        }

        final void cancel(Queue<?> queue) {
            queue.clear();
            for (CombinerSubscriber unsubscribe : this.subscribers) {
                unsubscribe.unsubscribe();
            }
        }

        final void combine(Object obj, int i) {
            CombinerSubscriber combinerSubscriber = this.subscribers[i];
            synchronized (this) {
                int length = this.latest.length;
                Object obj2 = this.latest[i];
                int i2 = this.active;
                if (obj2 == MISSING) {
                    i2++;
                    this.active = i2;
                }
                int i3 = this.complete;
                if (obj == null) {
                    i3++;
                    this.complete = i3;
                } else {
                    this.latest[i] = NotificationLite.getValue(obj);
                }
                i = 0;
                boolean z = i2 == length;
                if (i3 == length || (obj == null && obj2 == MISSING)) {
                    i = 1;
                }
                if (i != 0) {
                    this.done = true;
                } else if (obj != null && z) {
                    this.queue.offer(combinerSubscriber, this.latest.clone());
                } else if (obj == null && this.error.get() != 0 && (obj2 == MISSING || this.delayError == 0)) {
                    this.done = true;
                }
            }
            if (z || obj == null) {
                drain();
            } else {
                combinerSubscriber.requestMore(1);
            }
        }

        final void drain() {
            LatestCoordinator latestCoordinator = this;
            if (getAndIncrement() == 0) {
                Queue queue = latestCoordinator.queue;
                Subscriber subscriber = latestCoordinator.actual;
                boolean z = latestCoordinator.delayError;
                AtomicLong atomicLong = latestCoordinator.requested;
                int i = 1;
                while (!checkTerminated(latestCoordinator.done, queue.isEmpty(), subscriber, queue, z)) {
                    long j;
                    long j2 = atomicLong.get();
                    long j3 = 0;
                    while (j3 != j2) {
                        boolean z2 = latestCoordinator.done;
                        CombinerSubscriber combinerSubscriber = (CombinerSubscriber) queue.peek();
                        boolean z3 = combinerSubscriber == null;
                        CombinerSubscriber combinerSubscriber2 = combinerSubscriber;
                        long j4 = j3;
                        if (!checkTerminated(z2, z3, subscriber, queue, z)) {
                            if (z3) {
                                j = j4;
                                break;
                            }
                            queue.poll();
                            Object[] objArr = (Object[]) queue.poll();
                            if (objArr == null) {
                                latestCoordinator.cancelled = true;
                                cancel(queue);
                                subscriber.onError(new IllegalStateException("Broken queue?! Sender received but not the array."));
                                return;
                            }
                            try {
                                subscriber.onNext(latestCoordinator.combiner.call(objArr));
                                combinerSubscriber2.requestMore(1);
                                j3 = j4 + 1;
                            } catch (Throwable th) {
                                Throwable th2 = th;
                                latestCoordinator.cancelled = true;
                                cancel(queue);
                                subscriber.onError(th2);
                                return;
                            }
                        }
                        return;
                    }
                    j = j3;
                    if (!(j == 0 || j2 == Long.MAX_VALUE)) {
                        BackpressureUtils.produced(atomicLong, j);
                    }
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
        }

        final boolean checkTerminated(boolean z, boolean z2, Subscriber<?> subscriber, Queue<?> queue, boolean z3) {
            if (this.cancelled) {
                cancel(queue);
                return true;
            }
            if (z) {
                Throwable th;
                if (!z3) {
                    th = (Throwable) this.error.get();
                    if (th != null) {
                        cancel(queue);
                        subscriber.onError(th);
                        return true;
                    } else if (z2) {
                        subscriber.onCompleted();
                        return true;
                    }
                } else if (z2) {
                    th = (Throwable) this.error.get();
                    if (th != null) {
                        subscriber.onError(th);
                    } else {
                        subscriber.onCompleted();
                    }
                    return true;
                }
            }
            return false;
        }

        final void onError(Throwable th) {
            AtomicReference atomicReference = this.error;
            Throwable th2;
            Object obj;
            do {
                th2 = (Throwable) atomicReference.get();
                if (th2 == null) {
                    obj = th;
                } else if (th2 instanceof CompositeException) {
                    Collection arrayList = new ArrayList(((CompositeException) th2).getExceptions());
                    arrayList.add(th);
                    obj = new CompositeException(arrayList);
                } else {
                    obj = new CompositeException(Arrays.asList(new Throwable[]{th2, th}));
                }
            } while (!atomicReference.compareAndSet(th2, obj));
        }
    }

    static final class CombinerSubscriber<T, R> extends Subscriber<T> {
        boolean done;
        final int index;
        final LatestCoordinator<T, R> parent;

        public CombinerSubscriber(LatestCoordinator<T, R> latestCoordinator, int i) {
            this.parent = latestCoordinator;
            this.index = i;
            request((long) latestCoordinator.bufferSize);
        }

        public final void onNext(T t) {
            if (!this.done) {
                this.parent.combine(NotificationLite.next(t), this.index);
            }
        }

        public final void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            this.parent.onError(th);
            this.done = true;
            this.parent.combine(null, this.index);
        }

        public final void onCompleted() {
            if (!this.done) {
                this.done = true;
                this.parent.combine(null, this.index);
            }
        }

        public final void requestMore(long j) {
            request(j);
        }
    }

    public OnSubscribeCombineLatest(Iterable<? extends Observable<? extends T>> iterable, FuncN<? extends R> funcN) {
        this(null, iterable, funcN, RxRingBuffer.SIZE, false);
    }

    public OnSubscribeCombineLatest(Observable<? extends T>[] observableArr, Iterable<? extends Observable<? extends T>> iterable, FuncN<? extends R> funcN, int i, boolean z) {
        this.sources = observableArr;
        this.sourcesIterable = iterable;
        this.combiner = funcN;
        this.bufferSize = i;
        this.delayError = z;
    }

    public final void call(Subscriber<? super R> subscriber) {
        int length;
        int i;
        Observable[] observableArr = this.sources;
        if (observableArr != null) {
            length = observableArr.length;
        } else if (this.sourcesIterable instanceof List) {
            List list = (List) this.sourcesIterable;
            observableArr = (Observable[]) list.toArray(new Observable[list.size()]);
            length = observableArr.length;
        } else {
            Object obj = new Observable[8];
            Object obj2 = obj;
            int i2 = 0;
            for (Observable observable : this.sourcesIterable) {
                if (i2 == obj2.length) {
                    Object obj3 = new Observable[((i2 >> 2) + i2)];
                    System.arraycopy(obj2, 0, obj3, 0, i2);
                    obj2 = obj3;
                }
                i = i2 + 1;
                obj2[i2] = observable;
                i2 = i;
            }
            i = i2;
            observableArr = obj2;
            if (i != 0) {
                subscriber.onCompleted();
            }
            new LatestCoordinator(subscriber, this.combiner, i, this.bufferSize, this.delayError).subscribe(observableArr);
            return;
        }
        i = length;
        if (i != 0) {
            new LatestCoordinator(subscriber, this.combiner, i, this.bufferSize, this.delayError).subscribe(observableArr);
            return;
        }
        subscriber.onCompleted();
    }
}
