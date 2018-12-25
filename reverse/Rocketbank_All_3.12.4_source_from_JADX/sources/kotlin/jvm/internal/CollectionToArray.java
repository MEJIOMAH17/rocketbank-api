package kotlin.jvm.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import kotlin.TypeCastException;

/* compiled from: CollectionToArray.kt */
public final class CollectionToArray {
    private static final Object[] EMPTY = new Object[0];

    public static final Object[] toArray(Collection<?> collection, Object[] objArr) {
        Intrinsics.checkParameterIsNotNull(collection, "collection");
        if (objArr == null) {
            throw ((Throwable) new NullPointerException());
        }
        int size = collection.size();
        int i = 0;
        if (size == 0) {
            if (objArr.length > null) {
                objArr[0] = null;
            }
            return objArr;
        }
        collection = collection.iterator();
        if (collection.hasNext()) {
            Object[] objArr2;
            int i2;
            if (size <= objArr.length) {
                objArr2 = objArr;
            } else {
                Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                if (newInstance == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                }
                objArr2 = (Object[]) newInstance;
            }
            while (true) {
                i2 = i + 1;
                objArr2[i] = collection.next();
                if (i2 >= objArr2.length) {
                    if (!collection.hasNext()) {
                        return objArr2;
                    }
                    i = ((i2 * 3) + 1) >>> 1;
                    if (i <= i2) {
                        if (i2 >= 2147483645) {
                            throw ((Throwable) new OutOfMemoryError());
                        }
                        i = 2147483645;
                    }
                    objArr2 = Arrays.copyOf(objArr2, i);
                    Intrinsics.checkExpressionValueIsNotNull(objArr2, "Arrays.copyOf(result, newSize)");
                } else if (!collection.hasNext()) {
                    break;
                }
                i = i2;
            }
            if (objArr2 == objArr) {
                objArr[i2] = null;
                return objArr;
            }
            collection = Arrays.copyOf(objArr2, i2);
            Intrinsics.checkExpressionValueIsNotNull(collection, "Arrays.copyOf(result, size)");
            return collection;
        }
        if (objArr.length > null) {
            objArr[0] = null;
        }
        return objArr;
    }

    public static final Object[] toArray(Collection<?> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "collection");
        int size = collection.size();
        if (size == 0) {
            return EMPTY;
        }
        collection = collection.iterator();
        if (!collection.hasNext()) {
            return EMPTY;
        }
        Object[] objArr = new Object[size];
        int i = 0;
        while (true) {
            int i2 = i + 1;
            objArr[i] = collection.next();
            if (i2 >= objArr.length) {
                if (!collection.hasNext()) {
                    return objArr;
                }
                i = ((i2 * 3) + 1) >>> 1;
                if (i <= i2) {
                    if (i2 >= 2147483645) {
                        throw ((Throwable) new OutOfMemoryError());
                    }
                    i = 2147483645;
                }
                objArr = Arrays.copyOf(objArr, i);
                Intrinsics.checkExpressionValueIsNotNull(objArr, "Arrays.copyOf(result, newSize)");
            } else if (!collection.hasNext()) {
                collection = Arrays.copyOf(objArr, i2);
                Intrinsics.checkExpressionValueIsNotNull(collection, "Arrays.copyOf(result, size)");
                return collection;
            }
            i = i2;
        }
    }
}
