package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.LongIterator;

/* compiled from: ArrayIterators.kt */
final class ArrayLongIterator extends LongIterator {
    private final long[] array;
    private int index;

    public ArrayLongIterator(long[] jArr) {
        Intrinsics.checkParameterIsNotNull(jArr, "array");
        this.array = jArr;
    }

    public final boolean hasNext() {
        return this.index < this.array.length;
    }

    public final long nextLong() {
        try {
            long[] jArr = this.array;
            int i = this.index;
            this.index = i + 1;
            return jArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.index--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
