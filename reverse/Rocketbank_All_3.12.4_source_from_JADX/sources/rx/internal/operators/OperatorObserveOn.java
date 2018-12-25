package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.Operator;
import rx.Producer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Action0;
import rx.internal.schedulers.ImmediateScheduler;
import rx.internal.schedulers.TrampolineScheduler;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.atomic.SpscAtomicArrayQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.plugins.RxJavaHooks;
import rx.schedulers.Schedulers;

public final class OperatorObserveOn<T> implements Operator<T, T> {
    private final int bufferSize;
    private final boolean delayError;
    private final Scheduler scheduler;

    static final class ObserveOnSubscriber<T> extends Subscriber<T> implements Action0 {
        final Subscriber<? super T> child;
        final AtomicLong counter = new AtomicLong();
        final boolean delayError;
        long emitted;
        Throwable error;
        volatile boolean finished;
        final int limit;
        final Queue<Object> queue;
        final Worker recursiveScheduler;
        final AtomicLong requested = new AtomicLong();

        /* renamed from: rx.internal.operators.OperatorObserveOn$ObserveOnSubscriber$1 */
        class C17181 implements Producer {
            C17181() {
            }

            public void request(long j) {
                if (j > 0) {
                    BackpressureUtils.getAndAddRequest(ObserveOnSubscriber.this.requested, j);
                    ObserveOnSubscriber.this.schedule();
                }
            }
        }

        public ObserveOnSubscriber(Scheduler scheduler, Subscriber<? super T> subscriber, boolean z, int i) {
            this.child = subscriber;
            this.recursiveScheduler = scheduler.createWorker();
            this.delayError = z;
            if (i <= 0) {
                i = RxRingBuffer.SIZE;
            }
            this.limit = i - (i >> 2);
            if (UnsafeAccess.isUnsafeAvailable() != null) {
                this.queue = new SpscArrayQueue(i);
            } else {
                this.queue = new SpscAtomicArrayQueue(i);
            }
            request((long) i);
        }

        final void init() {
            Subscriber subscriber = this.child;
            subscriber.setProducer(new C17181());
            subscriber.add(this.recursiveScheduler);
            subscriber.add(this);
        }

        public final void onNext(T t) {
            if (!isUnsubscribed()) {
                if (!this.finished) {
                    if (this.queue.offer(NotificationLite.next(t)) == null) {
                        onError(new MissingBackpressureException());
                    } else {
                        schedule();
                    }
                }
            }
        }

        public final void onCompleted() {
            if (!isUnsubscribed()) {
                if (!this.finished) {
                    this.finished = true;
                    schedule();
                }
            }
        }

        public final void onError(Throwable th) {
            if (!isUnsubscribed()) {
                if (!this.finished) {
                    this.error = th;
                    this.finished = true;
                    schedule();
                    return;
                }
            }
            RxJavaHooks.onError(th);
        }

        protected final void schedule() {
            if (this.counter.getAndIncrement() == 0) {
                this.recursiveScheduler.schedule(this);
            }
        }

        public final void call() {
            long j = this.emitted;
            Queue queue = this.queue;
            Subscriber subscriber = this.child;
            long j2 = j;
            j = 1;
            do {
                long j3 = this.requested.get();
                while (j3 != j2) {
                    boolean z = this.finished;
                    Object poll = queue.poll();
                    boolean z2 = poll == null;
                    if (!checkTerminated(z, z2, subscriber, queue)) {
                        if (z2) {
                            break;
                        }
                        subscriber.onNext(NotificationLite.getValue(poll));
                        long j4 = j2 + 1;
                        if (j4 == ((long) this.limit)) {
                            j2 = BackpressureUtils.produced(this.requested, j4);
                            request(j4);
                            j3 = j2;
                            j2 = 0;
                        } else {
                            j2 = j4;
                        }
                    } else {
                        return;
                    }
                }
                if (j3 != j2 || !checkTerminated(this.finished, queue.isEmpty(), subscriber, queue)) {
                    this.emitted = j2;
                    j = this.counter.addAndGet(-j);
                } else {
                    return;
                }
            } while (j != 0);
        }

        final boolean checkTerminated(boolean z, boolean z2, Subscriber<? super T> subscriber, Queue<Object> queue) {
            if (subscriber.isUnsubscribed()) {
                queue.clear();
                return true;
            }
            if (z) {
                if (!this.delayError) {
                    z = this.error;
                    if (z) {
                        queue.clear();
                        try {
                            subscriber.onError(z);
                            return true;
                        } finally {
                            this.recursiveScheduler.unsubscribe();
                        }
                    } else if (z2) {
                        try {
                            subscriber.onCompleted();
                            return true;
                        } finally {
                            this.recursiveScheduler.unsubscribe();
                        }
                    }
                } else if (z2) {
                    z = this.error;
                    if (z) {
                        try {
                            subscriber.onError(z);
                        } catch (Throwable th) {
                            this.recursiveScheduler.unsubscribe();
                        }
                    } else {
                        subscriber.onCompleted();
                    }
                    this.recursiveScheduler.unsubscribe();
                }
            }
            return false;
        }
    }

    public OperatorObserveOn(Scheduler scheduler, boolean z) {
        this(scheduler, z, RxRingBuffer.SIZE);
    }

    public OperatorObserveOn(Scheduler scheduler, boolean z, int i) {
        this.scheduler = scheduler;
        this.delayError = z;
        if (i <= 0) {
            i = RxRingBuffer.SIZE;
        }
        this.bufferSize = i;
    }

    public final Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        if ((this.scheduler instanceof ImmediateScheduler) || (this.scheduler instanceof TrampolineScheduler)) {
            return subscriber;
        }
        Subscriber observeOnSubscriber = new ObserveOnSubscriber(this.scheduler, subscriber, this.delayError, this.bufferSize);
        observeOnSubscriber.init();
        return observeOnSubscriber;
    }

    public static <T> Operator<T, T> rebatch(final int i) {
        return new Operator<T, T>() {
            public final Subscriber<? super T> call(Subscriber<? super T> subscriber) {
                Subscriber observeOnSubscriber = new ObserveOnSubscriber(Schedulers.immediate(), subscriber, false, i);
                observeOnSubscriber.init();
                return observeOnSubscriber;
            }
        };
    }
}
