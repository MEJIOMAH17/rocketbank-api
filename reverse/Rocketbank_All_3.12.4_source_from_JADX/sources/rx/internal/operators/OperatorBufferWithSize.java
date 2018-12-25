package rx.internal.operators;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.MissingBackpressureException;

public final class OperatorBufferWithSize<T> implements Operator<List<T>, T> {
    final int count;
    final int skip;

    static final class BufferExact<T> extends Subscriber<T> {
        final Subscriber<? super List<T>> actual;
        List<T> buffer;
        final int count;

        /* renamed from: rx.internal.operators.OperatorBufferWithSize$BufferExact$1 */
        class C17141 implements Producer {
            C17141() {
            }

            public void request(long j) {
                if (j < 0) {
                    throw new IllegalArgumentException("n >= required but it was ".concat(String.valueOf(j)));
                } else if (j != 0) {
                    BufferExact.this.request(BackpressureUtils.multiplyCap(j, (long) BufferExact.this.count));
                }
            }
        }

        public BufferExact(Subscriber<? super List<T>> subscriber, int i) {
            this.actual = subscriber;
            this.count = i;
            request(null);
        }

        public final void onNext(T t) {
            List list = this.buffer;
            if (list == null) {
                list = new ArrayList(this.count);
                this.buffer = list;
            }
            list.add(t);
            if (list.size() == this.count) {
                this.buffer = null;
                this.actual.onNext(list);
            }
        }

        public final void onError(Throwable th) {
            this.buffer = null;
            this.actual.onError(th);
        }

        public final void onCompleted() {
            List list = this.buffer;
            if (list != null) {
                this.actual.onNext(list);
            }
            this.actual.onCompleted();
        }

        final Producer createProducer() {
            return new C17141();
        }
    }

    static final class BufferOverlap<T> extends Subscriber<T> {
        final Subscriber<? super List<T>> actual;
        final int count;
        long index;
        long produced;
        final ArrayDeque<List<T>> queue = new ArrayDeque();
        final AtomicLong requested = new AtomicLong();
        final int skip;

        final class BufferOverlapProducer extends AtomicBoolean implements Producer {
            private static final long serialVersionUID = -4015894850868853147L;

            BufferOverlapProducer() {
            }

            public final void request(long j) {
                BufferOverlap bufferOverlap = BufferOverlap.this;
                if (BackpressureUtils.postCompleteRequest(bufferOverlap.requested, j, bufferOverlap.queue, bufferOverlap.actual) && j != 0) {
                    if (get() || !compareAndSet(false, true)) {
                        bufferOverlap.request(BackpressureUtils.multiplyCap((long) bufferOverlap.skip, j));
                    } else {
                        bufferOverlap.request(BackpressureUtils.addCap(BackpressureUtils.multiplyCap((long) bufferOverlap.skip, j - 1), (long) bufferOverlap.count));
                    }
                }
            }
        }

        public BufferOverlap(Subscriber<? super List<T>> subscriber, int i, int i2) {
            this.actual = subscriber;
            this.count = i;
            this.skip = i2;
            request(null);
        }

        public final void onNext(T t) {
            long j = this.index;
            if (j == 0) {
                this.queue.offer(new ArrayList(this.count));
            }
            long j2 = j + 1;
            if (j2 == ((long) this.skip)) {
                this.index = 0;
            } else {
                this.index = j2;
            }
            Iterator it = this.queue.iterator();
            while (it.hasNext()) {
                ((List) it.next()).add(t);
            }
            List list = (List) this.queue.peek();
            if (list != null && list.size() == this.count) {
                this.queue.poll();
                this.produced++;
                this.actual.onNext(list);
            }
        }

        public final void onError(Throwable th) {
            this.queue.clear();
            this.actual.onError(th);
        }

        public final void onCompleted() {
            long j = this.produced;
            if (j != 0) {
                if (j > this.requested.get()) {
                    this.actual.onError(new MissingBackpressureException("More produced than requested? ".concat(String.valueOf(j))));
                    return;
                }
                this.requested.addAndGet(-j);
            }
            BackpressureUtils.postCompleteDone(this.requested, this.queue, this.actual);
        }

        final Producer createProducer() {
            return new BufferOverlapProducer();
        }
    }

    static final class BufferSkip<T> extends Subscriber<T> {
        final Subscriber<? super List<T>> actual;
        List<T> buffer;
        final int count;
        long index;
        final int skip;

        final class BufferSkipProducer extends AtomicBoolean implements Producer {
            private static final long serialVersionUID = 3428177408082367154L;

            BufferSkipProducer() {
            }

            public final void request(long j) {
                if (j < 0) {
                    throw new IllegalArgumentException("n >= 0 required but it was ".concat(String.valueOf(j)));
                }
                if (j != 0) {
                    BufferSkip bufferSkip = BufferSkip.this;
                    if (get() || !compareAndSet(false, true)) {
                        bufferSkip.request(BackpressureUtils.multiplyCap(j, (long) bufferSkip.skip));
                    } else {
                        bufferSkip.request(BackpressureUtils.addCap(BackpressureUtils.multiplyCap(j, (long) bufferSkip.count), BackpressureUtils.multiplyCap((long) (bufferSkip.skip - bufferSkip.count), j - 1)));
                    }
                }
            }
        }

        public BufferSkip(Subscriber<? super List<T>> subscriber, int i, int i2) {
            this.actual = subscriber;
            this.count = i;
            this.skip = i2;
            request(null);
        }

        public final void onNext(T t) {
            long j = this.index;
            List list = this.buffer;
            if (j == 0) {
                list = new ArrayList(this.count);
                this.buffer = list;
            }
            long j2 = j + 1;
            if (j2 == ((long) this.skip)) {
                this.index = 0;
            } else {
                this.index = j2;
            }
            if (list != null) {
                list.add(t);
                if (list.size() == this.count) {
                    this.buffer = null;
                    this.actual.onNext(list);
                }
            }
        }

        public final void onError(Throwable th) {
            this.buffer = null;
            this.actual.onError(th);
        }

        public final void onCompleted() {
            List list = this.buffer;
            if (list != null) {
                this.buffer = null;
                this.actual.onNext(list);
            }
            this.actual.onCompleted();
        }

        final Producer createProducer() {
            return new BufferSkipProducer();
        }
    }

    public OperatorBufferWithSize(int i, int i2) {
        if (i <= 0) {
            throw new IllegalArgumentException("count must be greater than 0");
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("skip must be greater than 0");
        } else {
            this.count = i;
            this.skip = i2;
        }
    }

    public final Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        Subscriber<? super T> bufferExact;
        if (this.skip == this.count) {
            bufferExact = new BufferExact(subscriber, this.count);
            subscriber.add(bufferExact);
            subscriber.setProducer(bufferExact.createProducer());
            return bufferExact;
        } else if (this.skip > this.count) {
            bufferExact = new BufferSkip(subscriber, this.count, this.skip);
            subscriber.add(bufferExact);
            subscriber.setProducer(bufferExact.createProducer());
            return bufferExact;
        } else {
            bufferExact = new BufferOverlap(subscriber, this.count, this.skip);
            subscriber.add(bufferExact);
            subscriber.setProducer(bufferExact.createProducer());
            return bufferExact;
        }
    }
}
