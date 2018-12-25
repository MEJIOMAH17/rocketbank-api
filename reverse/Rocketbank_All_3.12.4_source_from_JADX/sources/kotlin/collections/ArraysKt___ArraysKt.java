package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.AbstractList.Companion;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: _Arrays.kt */
public final class ArraysKt___ArraysKt extends Companion {
    public static final boolean contains(int[] iArr, int i) {
        Intrinsics.checkParameterIsNotNull(iArr, "$receiver");
        Intrinsics.checkParameterIsNotNull(iArr, "$receiver");
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            if (i == iArr[i2]) {
                break;
            }
            i2++;
        }
        i2 = -1;
        if (i2 >= 0) {
            return 1;
        }
        return false;
    }

    public static final boolean contains(char[] cArr, char c) {
        Intrinsics.checkParameterIsNotNull(cArr, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "$receiver");
        int length = cArr.length;
        int i = 0;
        while (i < length) {
            if (c == cArr[i]) {
                break;
            }
            i++;
        }
        i = -1;
        if (i >= 0) {
            return 1;
        }
        return false;
    }

    public static final <T> int indexOf(T[] tArr, T t) {
        Intrinsics.checkParameterIsNotNull(tArr, "$receiver");
        int i = 0;
        if (t == null) {
            t = tArr.length;
            T t2;
            while (t2 < t) {
                if (tArr[t2] == null) {
                    return t2;
                }
                t2++;
            }
        } else {
            int length = tArr.length;
            while (i < length) {
                if (Intrinsics.areEqual(t, tArr[i])) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public static final int indexOf(byte[] bArr, byte b) {
        Intrinsics.checkParameterIsNotNull(bArr, "$receiver");
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            if (b == bArr[i]) {
                return i;
            }
        }
        return -1;
    }

    public static final char single(char[] cArr) {
        Intrinsics.checkParameterIsNotNull(cArr, "$receiver");
        switch (cArr.length) {
            case 0:
                throw ((Throwable) new NoSuchElementException("Array is empty."));
            case 1:
                return cArr[0];
            default:
                throw ((Throwable) new IllegalArgumentException("Array has more than one element."));
        }
    }

    public static final List<Byte> slice(byte[] bArr, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(bArr, "$receiver");
        Intrinsics.checkParameterIsNotNull(intRange, "indices");
        if (intRange.isEmpty()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        bArr = Arrays.copyOfRange(bArr, intRange.getFirst(), intRange.getLast() + 1);
        Intrinsics.checkExpressionValueIsNotNull(bArr, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        Intrinsics.checkParameterIsNotNull(bArr, "$receiver");
        return (List) new ArraysKt___ArraysKt$asList$1(bArr);
    }

    public static final byte[] sliceArray(byte[] bArr, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(bArr, "$receiver");
        Intrinsics.checkParameterIsNotNull(intRange, "indices");
        if (intRange.isEmpty()) {
            return new byte[null];
        }
        bArr = Arrays.copyOfRange(bArr, intRange.getFirst(), intRange.getLast() + 1);
        Intrinsics.checkExpressionValueIsNotNull(bArr, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        return bArr;
    }

    public static final <T, C extends Collection<? super T>> C toCollection(T[] tArr, C c) {
        Intrinsics.checkParameterIsNotNull(tArr, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        for (Object add : tArr) {
            c.add(add);
        }
        return c;
    }

    public static final List<Byte> toList(byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "$receiver");
        switch (bArr.length) {
            case 0:
                return CollectionsKt__CollectionsKt.emptyList();
            case 1:
                return CollectionsKt__CollectionsKt.listOf((Object) Byte.valueOf(bArr[0]));
            default:
                return toMutableList(bArr);
        }
    }

    public static final List<Byte> toMutableList(byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "$receiver");
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte valueOf : bArr) {
            arrayList.add(Byte.valueOf(valueOf));
        }
        return arrayList;
    }
}
