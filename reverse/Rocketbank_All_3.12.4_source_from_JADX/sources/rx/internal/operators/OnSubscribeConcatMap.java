package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Func1;
import rx.internal.producers.ProducerArbiter;
import rx.internal.util.ExceptionsUtils;
import rx.internal.util.ScalarSynchronousObservable;
import rx.internal.util.atomic.SpscAtomicArrayQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.observers.SerializedSubscriber;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.SerialSubscription;

public final class OnSubscribeConcatMap<T, R> implements OnSubscribe<R> {
    public static final int BOUNDARY = 1;
    public static final int END = 2;
    public static final int IMMEDIATE = 0;
    final int delayErrorMode;
    final Func1<? super T, ? extends Observable<? extends R>> mapper;
    final int prefetch;
    final Observable<? extends T> source;

    static final class ConcatMapInnerScalarProducer<T, R> implements Producer {
        boolean once;
        final ConcatMapSubscriber<T, R> parent;
        final R value;

        public ConcatMapInnerScalarProducer(R r, ConcatMapSubscriber<T, R> concatMapSubscriber) {
            this.value = r;
            this.parent = concatMapSubscriber;
        }

        public final void request(long j) {
            if (!this.once && j > 0) {
                this.once = 1;
                j = this.parent;
                j.innerNext(this.value);
                j.innerCompleted(1);
            }
        }
    }

    static final class ConcatMapInnerSubscriber<T, R> extends Subscriber<R> {
        final ConcatMapSubscriber<T, R> parent;
        long produced;

        public ConcatMapInnerSubscriber(ConcatMapSubscriber<T, R> concatMapSubscriber) {
            this.parent = concatMapSubscriber;
        }

        public final void setProducer(Producer producer) {
            this.parent.arbiter.setProducer(producer);
        }

        public final void onNext(R r) {
            this.produced++;
            this.parent.innerNext(r);
        }

        public final void onError(Throwable th) {
            this.parent.innerError(th, this.produced);
        }

        public final void onCompleted() {
            this.parent.innerCompleted(this.produced);
        }
    }

    static final class ConcatMapSubscriber<T, R> extends Subscriber<T> {
        volatile boolean active;
        final Subscriber<? super R> actual;
        final ProducerArbiter arbiter = new ProducerArbiter();
        final int delayErrorMode;
        volatile boolean done;
        final AtomicReference<Throwable> error = new AtomicReference();
        final SerialSubscription inner;
        final Func1<? super T, ? extends Observable<? extends R>> mapper;
        final Queue<Object> queue;
        final AtomicInteger wip = new AtomicInteger();

        public ConcatMapSubscriber(Subscriber<? super R> subscriber, Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
            this.actual = subscriber;
            this.mapper = func1;
            this.delayErrorMode = i2;
            if (UnsafeAccess.isUnsafeAvailable() != null) {
                subscriber = new SpscArrayQueue(i);
            } else {
                subscriber = new SpscAtomicArrayQueue(i);
            }
            this.queue = subscriber;
            this.inner = new SerialSubscription();
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
                if (this.delayErrorMode == null) {
                    th = ExceptionsUtils.terminate(this.error);
                    if (!ExceptionsUtils.isTerminated(th)) {
                        this.actual.onError(th);
                    }
                    this.inner.unsubscribe();
                    return;
                }
                drain();
                return;
            }
            pluginError(th);
        }

        public final void onCompleted() {
            this.done = true;
            drain();
        }

        final void requestMore(long j) {
            if (j > 0) {
                this.arbiter.request(j);
            } else if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was ".concat(String.valueOf(j)));
            }
        }

        final void innerNext(R r) {
            this.actual.onNext(r);
        }

        final void innerError(Throwable th, long j) {
            if (!ExceptionsUtils.addThrowable(this.error, th)) {
                pluginError(th);
            } else if (this.delayErrorMode == null) {
                th = ExceptionsUtils.terminate(this.error);
                if (ExceptionsUtils.isTerminated(th) == null) {
                    this.actual.onError(th);
                }
                unsubscribe();
            } else {
                if (j != 0) {
                    this.arbiter.produced(j);
                }
                this.active = null;
                drain();
            }
        }

        final void innerCompleted(long j) {
            if (j != 0) {
                this.arbiter.produced(j);
            }
            this.active = 0;
            drain();
        }

        final void pluginError(Throwable th) {
            RxJavaHooks.onError(th);
        }

        final void drain() {
            if (this.wip.getAndIncrement() == 0) {
                int i = this.delayErrorMode;
                while (!this.actual.isUnsubscribed()) {
                    if (!this.active) {
                        Throwable terminate;
                        if (i != 1 || this.error.get() == null) {
                            boolean z = this.done;
                            Object poll = this.queue.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                terminate = ExceptionsUtils.terminate(this.error);
                                if (terminate == null) {
                                    this.actual.onCompleted();
                                    return;
                                }
                                if (!ExceptionsUtils.isTerminated(terminate)) {
                                    this.actual.onError(terminate);
                                }
                                return;
                            } else if (!z2) {
                                try {
                                    Observable observable = (Observable) this.mapper.call(NotificationLite.getValue(poll));
                                    if (observable == null) {
                                        drainError(new NullPointerException("The source returned by the mapper was null"));
                                        return;
                                    } else if (observable != Observable.empty()) {
                                        if (observable instanceof ScalarSynchronousObservable) {
                                            ScalarSynchronousObservable scalarSynchronousObservable = (ScalarSynchronousObservable) observable;
                                            this.active = true;
                                            this.arbiter.setProducer(new ConcatMapInnerScalarProducer(scalarSynchronousObservable.get(), this));
                                        } else {
                                            Subscriber concatMapInnerSubscriber = new ConcatMapInnerSubscriber(this);
                                            this.inner.set(concatMapInnerSubscriber);
                                            if (!concatMapInnerSubscriber.isUnsubscribed()) {
                                                this.active = true;
                                                observable.unsafeSubscribe(concatMapInnerSubscriber);
                                            } else {
                                                return;
                                            }
                                        }
                                        request(1);
                                    } else {
                                        request(1);
                                    }
                                } catch (Throwable terminate2) {
                                    Exceptions.throwIfFatal(terminate2);
                                    drainError(terminate2);
                                    return;
                                }
                            }
                        }
                        terminate2 = ExceptionsUtils.terminate(this.error);
                        if (!ExceptionsUtils.isTerminated(terminate2)) {
                            this.actual.onError(terminate2);
                        }
                        return;
                    }
                    if (this.wip.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        final void drainError(Throwable th) {
            unsubscribe();
            if (ExceptionsUtils.addThrowable(this.error, th)) {
                th = ExceptionsUtils.terminate(this.error);
                if (!ExceptionsUtils.isTerminated(th)) {
                    this.actual.onError(th);
                }
                return;
            }
            pluginError(th);
        }
    }

    public OnSubscribeConcatMap(Observable<? extends T> observable, Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
        this.source = observable;
        this.mapper = func1;
        this.prefetch = i;
        this.delayErrorMode = i2;
    }

    public final void call(Subscriber<? super R> subscriber) {
        final Subscriber concatMapSubscriber = new ConcatMapSubscriber(this.delayErrorMode == 0 ? new SerializedSubscriber(subscriber) : subscriber, this.mapper, this.prefetch, this.delayErrorMode);
        subscriber.add(concatMapSubscriber);
        subscriber.add(concatMapSubscriber.inner);
        subscriber.setProducer(new Producer() {
            public void request(long j) {
                concatMapSubscriber.requestMore(j);
            }
        });
        if (subscriber.isUnsubscribed() == null) {
            this.source.unsafeSubscribe(concatMapSubscriber);
        }
    }
}
