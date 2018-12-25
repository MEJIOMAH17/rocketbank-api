package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.FloatIterator;

/* compiled from: ArrayIterators.kt */
final class ArrayFloatIterator extends FloatIterator {
    private final float[] array;
    private int index;

    public ArrayFloatIterator(float[] fArr) {
        Intrinsics.checkParameterIsNotNull(fArr, "array");
        this.array = fArr;
    }

    public final boolean hasNext() {
        return this.index < this.array.length;
    }

    public final float nextFloat() {
        try {
            float[] fArr = this.array;
            int i = this.index;
            this.index = i + 1;
            return fArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.index--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
