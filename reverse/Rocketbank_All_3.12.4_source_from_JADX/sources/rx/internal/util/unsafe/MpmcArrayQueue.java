package rx.internal.util.unsafe;

import rx.internal.util.SuppressAnimalSniffer;

@SuppressAnimalSniffer
public class MpmcArrayQueue<E> extends MpmcArrayQueueConsumerField<E> {
    long p30;
    long p31;
    long p32;
    long p33;
    long p34;
    long p35;
    long p36;
    long p37;
    long p40;
    long p41;
    long p42;
    long p43;
    long p44;
    long p45;
    long p46;

    public MpmcArrayQueue(int i) {
        super(Math.max(2, i));
    }

    public boolean offer(E e) {
        MpmcArrayQueue mpmcArrayQueue = this;
        E e2 = e;
        if (e2 == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        long j = mpmcArrayQueue.mask + 1;
        long[] jArr = mpmcArrayQueue.sequenceBuffer;
        long j2 = Long.MAX_VALUE;
        while (true) {
            long j3;
            long lvProducerIndex = lvProducerIndex();
            long calcSequenceOffset = calcSequenceOffset(lvProducerIndex);
            long lvSequence = lvSequence(jArr, calcSequenceOffset) - lvProducerIndex;
            if (lvSequence == 0) {
                j3 = j2;
                j2 = lvProducerIndex + 1;
                if (casProducerIndex(lvProducerIndex, j2)) {
                    spElement(calcElementOffset(lvProducerIndex), e2);
                    soSequence(jArr, calcSequenceOffset, j2);
                    return true;
                }
            }
            j3 = j2;
            if (lvSequence < 0) {
                j2 = lvProducerIndex - j;
                if (j2 <= j3) {
                    lvProducerIndex = lvConsumerIndex();
                    if (j2 <= lvProducerIndex) {
                        return false;
                    }
                    j2 = lvProducerIndex;
                }
            }
            j2 = j3;
        }
    }

    public E poll() {
        long[] jArr = this.sequenceBuffer;
        long j = -1;
        while (true) {
            long lvConsumerIndex = lvConsumerIndex();
            long calcSequenceOffset = calcSequenceOffset(lvConsumerIndex);
            long j2 = lvConsumerIndex + 1;
            long lvSequence = lvSequence(jArr, calcSequenceOffset) - j2;
            if (lvSequence == 0) {
                if (casConsumerIndex(lvConsumerIndex, j2)) {
                    j = calcElementOffset(lvConsumerIndex);
                    E lpElement = lpElement(j);
                    spElement(j, null);
                    soSequence(jArr, calcSequenceOffset, (lvConsumerIndex + r6.mask) + 1);
                    return lpElement;
                }
            } else if (lvSequence < 0 && lvConsumerIndex >= r2) {
                j = lvProducerIndex();
                if (lvConsumerIndex == j) {
                    return null;
                }
            }
        }
    }

    public E peek() {
        E lpElement;
        long lvConsumerIndex;
        do {
            lvConsumerIndex = lvConsumerIndex();
            lpElement = lpElement(calcElementOffset(lvConsumerIndex));
            if (lpElement != null) {
                break;
            }
        } while (lvConsumerIndex != lvProducerIndex());
        return lpElement;
    }

    public int size() {
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

    public boolean isEmpty() {
        return lvConsumerIndex() == lvProducerIndex();
    }
}
