package rx.internal.producers;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.exceptions.MissingBackpressureException;
import rx.internal.operators.BackpressureUtils;
import rx.internal.util.atomic.SpscLinkedAtomicQueue;
import rx.internal.util.unsafe.SpscLinkedQueue;
import rx.internal.util.unsafe.UnsafeAccess;

public final class QueuedProducer<T> extends AtomicLong implements Observer<T>, Producer {
    static final Object NULL_SENTINEL = new Object();
    private static final long serialVersionUID = 7277121710709137047L;
    final Subscriber<? super T> child;
    volatile boolean done;
    Throwable error;
    final Queue<Object> queue;
    final AtomicInteger wip;

    public QueuedProducer(Subscriber<? super T> subscriber) {
        this(subscriber, UnsafeAccess.isUnsafeAvailable() ? new SpscLinkedQueue() : new SpscLinkedAtomicQueue());
    }

    public QueuedProducer(Subscriber<? super T> subscriber, Queue<Object> queue) {
        this.child = subscriber;
        this.queue = queue;
        this.wip = new AtomicInteger();
    }

    public final void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        } else if (j > 0) {
            BackpressureUtils.getAndAddRequest(this, j);
            drain();
        }
    }

    public final boolean offer(T t) {
        if (t == null) {
            if (this.queue.offer(NULL_SENTINEL) == null) {
                return false;
            }
        } else if (this.queue.offer(t) == null) {
            return false;
        }
        drain();
        return true;
    }

    public final void onNext(T t) {
        if (offer(t) == null) {
            onError(new MissingBackpressureException());
        }
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

    private boolean checkTerminated(boolean z, boolean z2) {
        if (this.child.isUnsubscribed()) {
            return true;
        }
        if (z) {
            z = this.error;
            if (z) {
                this.queue.clear();
                this.child.onError(z);
                return true;
            } else if (z2) {
                this.child.onCompleted();
                return true;
            }
        }
        return false;
    }

    private void drain() {
        if (this.wip.getAndIncrement() == 0) {
            Observer observer = this.child;
            Queue queue = this.queue;
            while (!checkTerminated(this.done, queue.isEmpty())) {
                this.wip.lazySet(1);
                long j = get();
                long j2 = 0;
                while (j != 0) {
                    boolean z = this.done;
                    Object poll = queue.poll();
                    if (!checkTerminated(z, poll == null)) {
                        if (poll == null) {
                            break;
                        }
                        Object obj = null;
                        try {
                            if (poll == NULL_SENTINEL) {
                                observer.onNext(null);
                            } else {
                                observer.onNext(poll);
                            }
                            j2++;
                            j--;
                        } catch (Throwable th) {
                            if (poll != NULL_SENTINEL) {
                                obj = poll;
                            }
                            Exceptions.throwOrReport(th, observer, obj);
                            return;
                        }
                    }
                    return;
                }
                if (!(j2 == 0 || get() == Long.MAX_VALUE)) {
                    addAndGet(-j2);
                }
                if (this.wip.decrementAndGet() == 0) {
                }
            }
        }
    }
}
