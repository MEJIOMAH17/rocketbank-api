package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.CharIterator;

/* compiled from: ArrayIterators.kt */
final class ArrayCharIterator extends CharIterator {
    private final char[] array;
    private int index;

    public ArrayCharIterator(char[] cArr) {
        Intrinsics.checkParameterIsNotNull(cArr, "array");
        this.array = cArr;
    }

    public final boolean hasNext() {
        return this.index < this.array.length;
    }

    public final char nextChar() {
        try {
            char[] cArr = this.array;
            int i = this.index;
            this.index = i + 1;
            return cArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.index--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
