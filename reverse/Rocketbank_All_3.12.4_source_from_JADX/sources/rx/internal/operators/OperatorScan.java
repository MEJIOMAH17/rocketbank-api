package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.Operator;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func0;
import rx.functions.Func2;
import rx.internal.util.atomic.SpscLinkedAtomicQueue;
import rx.internal.util.unsafe.SpscLinkedQueue;
import rx.internal.util.unsafe.UnsafeAccess;

public final class OperatorScan<R, T> implements Operator<R, T> {
    private static final Object NO_INITIAL_VALUE = new Object();
    final Func2<R, ? super T, R> accumulator;
    private final Func0<R> initialValueFactory;

    static final class InitialProducer<R> implements Observer<R>, Producer {
        final Subscriber<? super R> child;
        volatile boolean done;
        boolean emitting;
        Throwable error;
        boolean missed;
        long missedRequested;
        volatile Producer producer;
        final Queue<Object> queue;
        final AtomicLong requested;

        public InitialProducer(R r, Subscriber<? super R> subscriber) {
            this.child = subscriber;
            if (UnsafeAccess.isUnsafeAvailable() != null) {
                subscriber = new SpscLinkedQueue();
            } else {
                subscriber = new SpscLinkedAtomicQueue();
            }
            this.queue = subscriber;
            subscriber.offer(NotificationLite.next(r));
            this.requested = new AtomicLong();
        }

        public final void onNext(R r) {
            this.queue.offer(NotificationLite.next(r));
            emit();
        }

        final boolean checkTerminated(boolean z, boolean z2, Subscriber<? super R> subscriber) {
            if (subscriber.isUnsubscribed()) {
                return true;
            }
            if (z) {
                z = this.error;
                if (z) {
                    subscriber.onError(z);
                    return true;
                } else if (z2) {
                    subscriber.onCompleted();
                    return true;
                }
            }
            return false;
        }

        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            emit();
        }

        public final void onCompleted() {
            this.done = true;
            emit();
        }

        public final void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was ".concat(String.valueOf(j)));
            } else if (j != 0) {
                BackpressureUtils.getAndAddRequest(this.requested, j);
                Producer producer = this.producer;
                if (producer == null) {
                    synchronized (this.requested) {
                        producer = this.producer;
                        if (producer == null) {
                            this.missedRequested = BackpressureUtils.addCap(this.missedRequested, j);
                        }
                    }
                }
                if (producer != null) {
                    producer.request(j);
                }
                emit();
            }
        }

        public final void setProducer(Producer producer) {
            if (producer == null) {
                throw new NullPointerException();
            }
            synchronized (this.requested) {
                if (this.producer != null) {
                    throw new IllegalStateException("Can't set more than one Producer!");
                }
                long j = this.missedRequested;
                if (j != Long.MAX_VALUE) {
                    j--;
                }
                this.missedRequested = 0;
                this.producer = producer;
            }
            if (j > 0) {
                producer.request(j);
            }
            emit();
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

        final void emitLoop() {
            Observer observer = this.child;
            Queue queue = this.queue;
            AtomicLong atomicLong = this.requested;
            long j = atomicLong.get();
            while (!checkTerminated(this.done, queue.isEmpty(), observer)) {
                long j2 = 0;
                while (j2 != j) {
                    boolean z = this.done;
                    Object poll = queue.poll();
                    boolean z2 = poll == null;
                    if (!checkTerminated(z, z2, observer)) {
                        if (z2) {
                            break;
                        }
                        Object value = NotificationLite.getValue(poll);
                        try {
                            observer.onNext(value);
                            j2++;
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, observer, value);
                            return;
                        }
                    }
                    return;
                }
                if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                    j = BackpressureUtils.produced(atomicLong, j2);
                }
                synchronized (this) {
                    if (this.missed) {
                        this.missed = false;
                    } else {
                        this.emitting = false;
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorScan$1 */
    class C19211 implements Func0<R> {
        final /* synthetic */ Object val$initialValue;

        C19211(Object obj) {
            this.val$initialValue = obj;
        }

        public R call() {
            return this.val$initialValue;
        }
    }

    public OperatorScan(R r, Func2<R, ? super T, R> func2) {
        this(new C19211(r), (Func2) func2);
    }

    public OperatorScan(Func0<R> func0, Func2<R, ? super T, R> func2) {
        this.initialValueFactory = func0;
        this.accumulator = func2;
    }

    public OperatorScan(Func2<R, ? super T, R> func2) {
        this(NO_INITIAL_VALUE, (Func2) func2);
    }

    public final Subscriber<? super T> call(final Subscriber<? super R> subscriber) {
        final Object call = this.initialValueFactory.call();
        if (call == NO_INITIAL_VALUE) {
            return new Subscriber<T>(subscriber) {
                boolean once;
                R value;

                public void onNext(T t) {
                    if (this.once) {
                        try {
                            t = OperatorScan.this.accumulator.call(this.value, t);
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, subscriber, (Object) t);
                            return;
                        }
                    }
                    this.once = true;
                    this.value = t;
                    subscriber.onNext(t);
                }

                public void onError(Throwable th) {
                    subscriber.onError(th);
                }

                public void onCompleted() {
                    subscriber.onCompleted();
                }
            };
        }
        final Producer initialProducer = new InitialProducer(call, subscriber);
        Object c19233 = new Subscriber<T>() {
            private R value = call;

            public void onNext(T t) {
                try {
                    Object call = OperatorScan.this.accumulator.call(this.value, t);
                    this.value = call;
                    initialProducer.onNext(call);
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, (Observer) this, (Object) t);
                }
            }

            public void onError(Throwable th) {
                initialProducer.onError(th);
            }

            public void onCompleted() {
                initialProducer.onCompleted();
            }

            public void setProducer(Producer producer) {
                initialProducer.setProducer(producer);
            }
        };
        subscriber.add(c19233);
        subscriber.setProducer(initialProducer);
        return c19233;
    }
}
