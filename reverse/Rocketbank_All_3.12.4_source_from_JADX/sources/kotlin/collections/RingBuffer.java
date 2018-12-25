package kotlin.collections;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.TypeCastException;
import kotlin.collections.AbstractList.Companion;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SlidingWindow.kt */
final class RingBuffer<T> extends AbstractList<T> implements RandomAccess {
    private final Object[] buffer;
    private final int capacity;
    private int size;
    private int startIndex;

    public RingBuffer(int i) {
        this.capacity = i;
        if ((this.capacity >= 0 ? 1 : 0) == 0) {
            i = new StringBuilder("ring buffer capacity should not be negative but it is ");
            i.append(this.capacity);
            throw new IllegalArgumentException(i.toString().toString());
        }
        this.buffer = new Object[this.capacity];
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public final int getSize() {
        return this.size;
    }

    public final T get(int i) {
        Companion.checkElementIndex$kotlin_stdlib(i, size());
        return this.buffer[(this.startIndex + i) % this.capacity];
    }

    public final boolean isFull() {
        return size() == this.capacity;
    }

    public final Iterator<T> iterator() {
        return new RingBuffer$iterator$1(this);
    }

    public final <T> T[] toArray(T[] tArr) {
        Intrinsics.checkParameterIsNotNull(tArr, "array");
        if (tArr.length < size()) {
            tArr = Arrays.copyOf(tArr, size());
            Intrinsics.checkExpressionValueIsNotNull(tArr, "java.util.Arrays.copyOf(this, newSize)");
        }
        int size = size();
        int i = 0;
        int i2 = this.startIndex;
        int i3 = 0;
        while (i3 < size && i2 < this.capacity) {
            tArr[i3] = this.buffer[i2];
            i3++;
            i2++;
        }
        while (i3 < size) {
            tArr[i3] = this.buffer[i];
            i3++;
            i++;
        }
        if (tArr.length > size()) {
            tArr[size()] = null;
        }
        if (tArr != null) {
            return tArr;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public final Object[] toArray() {
        return toArray(new Object[size()]);
    }

    public final void removeFirst(int i) {
        int i2 = 1;
        if ((i >= 0 ? 1 : 0) == 0) {
            throw new IllegalArgumentException("n shouldn't be negative but it is ".concat(String.valueOf(i)).toString());
        }
        if (i > size()) {
            i2 = 0;
        }
        if (i2 == 0) {
            StringBuilder stringBuilder = new StringBuilder("n shouldn't be greater than the buffer size: n = ");
            stringBuilder.append(i);
            stringBuilder.append(", size = ");
            stringBuilder.append(size());
            throw new IllegalArgumentException(stringBuilder.toString().toString());
        } else if (i > 0) {
            i2 = this.startIndex;
            int i3 = (i2 + i) % this.capacity;
            if (i2 > i3) {
                fill$295d6cd8(this.buffer, i2, this.capacity);
                fill$295d6cd8(this.buffer, 0, i3);
            } else {
                fill$295d6cd8(this.buffer, i2, i3);
            }
            this.startIndex = i3;
            this.size = size() - i;
        }
    }

    private static <T> void fill$295d6cd8(T[] tArr, int i, int i2) {
        while (i < i2) {
            tArr[i] = null;
            i++;
        }
    }

    public final void add(T t) {
        if ((size() == this.capacity ? 1 : 0) != 0) {
            throw ((Throwable) new IllegalStateException("ring buffer is full"));
        }
        this.buffer[(this.startIndex + size()) % this.capacity] = t;
        this.size = size() + 1;
    }
}
