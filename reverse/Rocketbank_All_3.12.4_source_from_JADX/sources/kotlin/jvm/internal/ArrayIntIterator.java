package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.IntIterator;

/* compiled from: ArrayIterators.kt */
final class ArrayIntIterator extends IntIterator {
    private final int[] array;
    private int index;

    public ArrayIntIterator(int[] iArr) {
        Intrinsics.checkParameterIsNotNull(iArr, "array");
        this.array = iArr;
    }

    public final boolean hasNext() {
        return this.index < this.array.length;
    }

    public final int nextInt() {
        try {
            int[] iArr = this.array;
            int i = this.index;
            this.index = i + 1;
            return iArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.index--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
