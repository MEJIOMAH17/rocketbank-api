package kotlin.collections;

import java.util.RandomAccess;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: _Arrays.kt */
public final class ArraysKt___ArraysKt$asList$1 extends AbstractList<Byte> implements RandomAccess {
    final /* synthetic */ byte[] receiver$0;

    ArraysKt___ArraysKt$asList$1(byte[] bArr) {
        this.receiver$0 = bArr;
    }

    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof Byte)) {
            return false;
        }
        byte byteValue = ((Number) obj).byteValue();
        byte[] bArr = this.receiver$0;
        Intrinsics.checkParameterIsNotNull(bArr, "$receiver");
        if (ArraysKt___ArraysKt.indexOf(bArr, byteValue) >= null) {
            return true;
        }
        return false;
    }

    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof Byte)) {
            return -1;
        }
        return ArraysKt___ArraysKt.indexOf(this.receiver$0, ((Number) obj).byteValue());
    }

    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof Byte)) {
            return -1;
        }
        obj = ((Number) obj).byteValue();
        Object obj2 = this.receiver$0;
        Intrinsics.checkParameterIsNotNull(obj2, "$receiver");
        Intrinsics.checkParameterIsNotNull(obj2, "$receiver");
        Intrinsics.checkParameterIsNotNull(obj2, "$receiver");
        for (Number intValue : CollectionsKt___CollectionsKt.reversed(new IntRange(0, obj2.length - 1))) {
            int intValue2 = intValue.intValue();
            if (obj == obj2[intValue2]) {
                return intValue2;
            }
        }
        return -1;
    }

    public final int getSize() {
        return this.receiver$0.length;
    }

    public final boolean isEmpty() {
        return this.receiver$0.length == 0;
    }

    public final /* bridge */ /* synthetic */ Object get(int i) {
        return Byte.valueOf(this.receiver$0[i]);
    }
}
