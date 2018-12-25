package rx.internal.util.unsafe;

import java.util.Iterator;
import rx.internal.util.SuppressAnimalSniffer;

@SuppressAnimalSniffer
public class SpscUnboundedArrayQueue<E> extends SpscUnboundedArrayQueueConsumerField<E> implements QueueProgressIndicators {
    private static final long C_INDEX_OFFSET;
    private static final Object HAS_NEXT = new Object();
    static final int MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    private static final long P_INDEX_OFFSET;
    private static final long REF_ARRAY_BASE = ((long) UnsafeAccess.UNSAFE.arrayBaseOffset(Object[].class));
    private static final int REF_ELEMENT_SHIFT;

    static {
        InternalError internalError;
        int arrayIndexScale = UnsafeAccess.UNSAFE.arrayIndexScale(Object[].class);
        if (4 == arrayIndexScale) {
            REF_ELEMENT_SHIFT = 2;
        } else if (8 == arrayIndexScale) {
            REF_ELEMENT_SHIFT = 3;
        } else {
            throw new IllegalStateException("Unknown pointer size");
        }
        try {
            P_INDEX_OFFSET = UnsafeAccess.UNSAFE.objectFieldOffset(SpscUnboundedArrayQueueProducerFields.class.getDeclaredField("producerIndex"));
            try {
                C_INDEX_OFFSET = UnsafeAccess.UNSAFE.objectFieldOffset(SpscUnboundedArrayQueueConsumerField.class.getDeclaredField("consumerIndex"));
            } catch (Throwable e) {
                internalError = new InternalError();
                internalError.initCause(e);
                throw internalError;
            }
        } catch (Throwable e2) {
            internalError = new InternalError();
            internalError.initCause(e2);
            throw internalError;
        }
    }

    public SpscUnboundedArrayQueue(int i) {
        i = Pow2.roundToPowerOfTwo(i);
        long j = (long) (i - 1);
        Object[] objArr = new Object[(i + 1)];
        this.producerBuffer = objArr;
        this.producerMask = j;
        adjustLookAheadStep(i);
        this.consumerBuffer = objArr;
        this.consumerMask = j;
        this.producerLookAhead = j - 1;
        soProducerIndex(0);
    }

    public final Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    public final boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        Object[] objArr = this.producerBuffer;
        long j = this.producerIndex;
        long j2 = this.producerMask;
        long calcWrappedOffset = calcWrappedOffset(j, j2);
        if (j < this.producerLookAhead) {
            return writeToQueue(objArr, e, j, calcWrappedOffset);
        }
        long j3 = j + ((long) this.producerLookAheadStep);
        if (lvElement(objArr, calcWrappedOffset(j3, j2)) == null) {
            this.producerLookAhead = j3 - 1;
            return writeToQueue(objArr, e, j, calcWrappedOffset);
        } else if (lvElement(objArr, calcWrappedOffset(j + 1, j2)) != null) {
            return writeToQueue(objArr, e, j, calcWrappedOffset);
        } else {
            resize(objArr, j, calcWrappedOffset, e, j2);
            return true;
        }
    }

    private boolean writeToQueue(E[] eArr, E e, long j, long j2) {
        soElement(eArr, j2, e);
        soProducerIndex(j + 1);
        return 1;
    }

    private void resize(E[] eArr, long j, long j2, E e, long j3) {
        Object[] objArr = new Object[eArr.length];
        this.producerBuffer = objArr;
        this.producerLookAhead = (j + j3) - 1;
        soElement(objArr, j2, e);
        soNext(eArr, objArr);
        soElement(eArr, j2, HAS_NEXT);
        soProducerIndex(j + 1);
    }

    private void soNext(E[] eArr, E[] eArr2) {
        soElement(eArr, calcDirectOffset((long) (eArr.length - 1)), eArr2);
    }

    private E[] lvNext(E[] eArr) {
        return (Object[]) lvElement(eArr, calcDirectOffset((long) (eArr.length - 1)));
    }

    public final E poll() {
        Object[] objArr = this.consumerBuffer;
        long j = this.consumerIndex;
        long j2 = this.consumerMask;
        long calcWrappedOffset = calcWrappedOffset(j, j2);
        E lvElement = lvElement(objArr, calcWrappedOffset);
        Object obj = lvElement == HAS_NEXT ? 1 : null;
        if (lvElement != null && obj == null) {
            soElement(objArr, calcWrappedOffset, null);
            soConsumerIndex(j + 1);
            return lvElement;
        } else if (obj != null) {
            return newBufferPoll(lvNext(objArr), j, j2);
        } else {
            return null;
        }
    }

    private E newBufferPoll(E[] eArr, long j, long j2) {
        this.consumerBuffer = eArr;
        j2 = calcWrappedOffset(j, j2);
        E lvElement = lvElement(eArr, j2);
        if (lvElement == null) {
            return null;
        }
        soElement(eArr, j2, null);
        soConsumerIndex(j + 1);
        return lvElement;
    }

    public final E peek() {
        Object[] objArr = this.consumerBuffer;
        long j = this.consumerIndex;
        long j2 = this.consumerMask;
        E lvElement = lvElement(objArr, calcWrappedOffset(j, j2));
        return lvElement == HAS_NEXT ? newBufferPeek(lvNext(objArr), j, j2) : lvElement;
    }

    private E newBufferPeek(E[] eArr, long j, long j2) {
        this.consumerBuffer = eArr;
        return lvElement(eArr, calcWrappedOffset(j, j2));
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

    private void adjustLookAheadStep(int i) {
        this.producerLookAheadStep = Math.min(i / 4, MAX_LOOK_AHEAD_STEP);
    }

    private long lvProducerIndex() {
        return UnsafeAccess.UNSAFE.getLongVolatile(this, P_INDEX_OFFSET);
    }

    private long lvConsumerIndex() {
        return UnsafeAccess.UNSAFE.getLongVolatile(this, C_INDEX_OFFSET);
    }

    private void soProducerIndex(long j) {
        UnsafeAccess.UNSAFE.putOrderedLong(this, P_INDEX_OFFSET, j);
    }

    private void soConsumerIndex(long j) {
        UnsafeAccess.UNSAFE.putOrderedLong(this, C_INDEX_OFFSET, j);
    }

    private static long calcWrappedOffset(long j, long j2) {
        return calcDirectOffset(j & j2);
    }

    private static long calcDirectOffset(long j) {
        return REF_ARRAY_BASE + (j << REF_ELEMENT_SHIFT);
    }

    private static void soElement(Object[] objArr, long j, Object obj) {
        UnsafeAccess.UNSAFE.putOrderedObject(objArr, j, obj);
    }

    private static <E> Object lvElement(E[] eArr, long j) {
        return UnsafeAccess.UNSAFE.getObjectVolatile(eArr, j);
    }

    public long currentProducerIndex() {
        return lvProducerIndex();
    }

    public long currentConsumerIndex() {
        return lvConsumerIndex();
    }
}
