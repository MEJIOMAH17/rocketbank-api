package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.DoubleIterator;

/* compiled from: ArrayIterators.kt */
final class ArrayDoubleIterator extends DoubleIterator {
    private final double[] array;
    private int index;

    public ArrayDoubleIterator(double[] dArr) {
        Intrinsics.checkParameterIsNotNull(dArr, "array");
        this.array = dArr;
    }

    public final boolean hasNext() {
        return this.index < this.array.length;
    }

    public final double nextDouble() {
        try {
            double[] dArr = this.array;
            int i = this.index;
            this.index = i + 1;
            return dArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.index--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
