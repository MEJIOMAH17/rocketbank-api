package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.ShortIterator;

/* compiled from: ArrayIterators.kt */
final class ArrayShortIterator extends ShortIterator {
    private final short[] array;
    private int index;

    public ArrayShortIterator(short[] sArr) {
        Intrinsics.checkParameterIsNotNull(sArr, "array");
        this.array = sArr;
    }

    public final boolean hasNext() {
        return this.index < this.array.length;
    }

    public final short nextShort() {
        try {
            short[] sArr = this.array;
            int i = this.index;
            this.index = i + 1;
            return sArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.index--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
