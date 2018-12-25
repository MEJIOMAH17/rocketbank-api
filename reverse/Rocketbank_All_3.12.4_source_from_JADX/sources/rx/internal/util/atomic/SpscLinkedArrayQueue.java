package rx.internal.util.atomic;

import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.internal.util.unsafe.Pow2;

public final class SpscLinkedArrayQueue<T> implements Queue<T> {
    private static final Object HAS_NEXT = new Object();
    static final int MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    AtomicReferenceArray<Object> consumerBuffer;
    final AtomicLong consumerIndex = new AtomicLong();
    int consumerMask;
    AtomicReferenceArray<Object> producerBuffer;
    final AtomicLong producerIndex = new AtomicLong();
    long producerLookAhead;
    int producerLookAheadStep;
    int producerMask;

    private static int calcDirectOffset(int i) {
        return i;
    }

    public SpscLinkedArrayQueue(int i) {
        i = Pow2.roundToPowerOfTwo(i);
        int i2 = i - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(i + 1);
        this.producerBuffer = atomicReferenceArray;
        this.producerMask = i2;
        adjustLookAheadStep(i);
        this.consumerBuffer = atomicReferenceArray;
        this.consumerMask = i2;
        this.producerLookAhead = (long) (i2 - 1);
    }

    public final boolean offer(T t) {
        AtomicReferenceArray atomicReferenceArray = this.producerBuffer;
        long lpProducerIndex = lpProducerIndex();
        int i = this.producerMask;
        int calcWrappedOffset = calcWrappedOffset(lpProducerIndex, i);
        if (lpProducerIndex < this.producerLookAhead) {
            return writeToQueue(atomicReferenceArray, t, lpProducerIndex, calcWrappedOffset);
        }
        long j = lpProducerIndex + ((long) this.producerLookAheadStep);
        if (lvElement(atomicReferenceArray, calcWrappedOffset(j, i)) == null) {
            this.producerLookAhead = j - 1;
            return writeToQueue(atomicReferenceArray, t, lpProducerIndex, calcWrappedOffset);
        } else if (lvElement(atomicReferenceArray, calcWrappedOffset(lpProducerIndex + 1, i)) == null) {
            return writeToQueue(atomicReferenceArray, t, lpProducerIndex, calcWrappedOffset);
        } else {
            resize(atomicReferenceArray, lpProducerIndex, calcWrappedOffset, t, (long) i);
            return true;
        }
    }

    private boolean writeToQueue(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j, int i) {
        soElement(atomicReferenceArray, i, t);
        soProducerIndex(j + 1);
        return true;
    }

    private void resize(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i, T t, long j2) {
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
        this.producerBuffer = atomicReferenceArray2;
        this.producerLookAhead = (j + j2) - 1;
        soElement(atomicReferenceArray2, i, t);
        soNext(atomicReferenceArray, atomicReferenceArray2);
        soElement(atomicReferenceArray, i, HAS_NEXT);
        soProducerIndex(j + 1);
    }

    private void soNext(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        soElement(atomicReferenceArray, calcDirectOffset(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    private AtomicReferenceArray<Object> lvNext(AtomicReferenceArray<Object> atomicReferenceArray) {
        return (AtomicReferenceArray) lvElement(atomicReferenceArray, calcDirectOffset(atomicReferenceArray.length() - 1));
    }

    public final T poll() {
        AtomicReferenceArray atomicReferenceArray = this.consumerBuffer;
        long lpConsumerIndex = lpConsumerIndex();
        int i = this.consumerMask;
        int calcWrappedOffset = calcWrappedOffset(lpConsumerIndex, i);
        T lvElement = lvElement(atomicReferenceArray, calcWrappedOffset);
        Object obj = lvElement == HAS_NEXT ? 1 : null;
        if (lvElement != null && obj == null) {
            soElement(atomicReferenceArray, calcWrappedOffset, null);
            soConsumerIndex(lpConsumerIndex + 1);
            return lvElement;
        } else if (obj != null) {
            return newBufferPoll(lvNext(atomicReferenceArray), lpConsumerIndex, i);
        } else {
            return null;
        }
    }

    private T newBufferPoll(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.consumerBuffer = atomicReferenceArray;
        i = calcWrappedOffset(j, i);
        T lvElement = lvElement(atomicReferenceArray, i);
        if (lvElement == null) {
            return null;
        }
        soElement(atomicReferenceArray, i, null);
        soConsumerIndex(j + 1);
        return lvElement;
    }

    public final T peek() {
        AtomicReferenceArray atomicReferenceArray = this.consumerBuffer;
        long lpConsumerIndex = lpConsumerIndex();
        int i = this.consumerMask;
        T lvElement = lvElement(atomicReferenceArray, calcWrappedOffset(lpConsumerIndex, i));
        return lvElement == HAS_NEXT ? newBufferPeek(lvNext(atomicReferenceArray), lpConsumerIndex, i) : lvElement;
    }

    public final void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    private T newBufferPeek(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.consumerBuffer = atomicReferenceArray;
        return lvElement(atomicReferenceArray, calcWrappedOffset(j, i));
    }

    public final int size() {
        long lvConsumerIndex = lvConsumerIndex();
        while (true) {
            long lvProducerIndex = lvProducerIndex();
            long lvConsumerIndex2 = lvConsumerIndex();
            if (lvConsumerIndex == lvConsumerIndex2) {
                return (int) (lvProducerIndex - lvConsumerIndex2);
            }
            lvConsumerIndex = lvConsumerIndex2;
        }
    }

    public final boolean isEmpty() {
        return lvProducerIndex() == lvConsumerIndex();
    }

    private void adjustLookAheadStep(int i) {
        this.producerLookAheadStep = Math.min(i / 4, MAX_LOOK_AHEAD_STEP);
    }

    private long lvProducerIndex() {
        return this.producerIndex.get();
    }

    private long lvConsumerIndex() {
        return this.consumerIndex.get();
    }

    private long lpProducerIndex() {
        return this.producerIndex.get();
    }

    private long lpConsumerIndex() {
        return this.consumerIndex.get();
    }

    private void soProducerIndex(long j) {
        this.producerIndex.lazySet(j);
    }

    private void soConsumerIndex(long j) {
        this.consumerIndex.lazySet(j);
    }

    private static int calcWrappedOffset(long j, int i) {
        return calcDirectOffset(((int) j) & i);
    }

    private static void soElement(AtomicReferenceArray<Object> atomicReferenceArray, int i, Object obj) {
        atomicReferenceArray.lazySet(i, obj);
    }

    private static <E> Object lvElement(AtomicReferenceArray<Object> atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    public final Iterator<T> iterator() {
        throw new UnsupportedOperationException();
    }

    public final boolean contains(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final Object[] toArray() {
        throw new UnsupportedOperationException();
    }

    public final <E> E[] toArray(E[] eArr) {
        throw new UnsupportedOperationException();
    }

    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final boolean containsAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    public final boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    public final boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    public final T remove() {
        throw new UnsupportedOperationException();
    }

    public final T element() {
        throw new UnsupportedOperationException();
    }

    public final boolean offer(T t, T t2) {
        AtomicReferenceArray atomicReferenceArray = this.producerBuffer;
        long lvProducerIndex = lvProducerIndex();
        int i = this.producerMask;
        long j = lvProducerIndex + 2;
        int calcWrappedOffset;
        if (lvElement(atomicReferenceArray, calcWrappedOffset(j, i)) == null) {
            calcWrappedOffset = calcWrappedOffset(lvProducerIndex, i);
            soElement(atomicReferenceArray, calcWrappedOffset + 1, t2);
            soElement(atomicReferenceArray, calcWrappedOffset, t);
            soProducerIndex(j);
        } else {
            AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
            this.producerBuffer = atomicReferenceArray2;
            calcWrappedOffset = calcWrappedOffset(lvProducerIndex, i);
            soElement(atomicReferenceArray2, calcWrappedOffset + 1, t2);
            soElement(atomicReferenceArray2, calcWrappedOffset, t);
            soNext(atomicReferenceArray, atomicReferenceArray2);
            soElement(atomicReferenceArray, calcWrappedOffset, HAS_NEXT);
            soProducerIndex(j);
        }
        return true;
    }
}
