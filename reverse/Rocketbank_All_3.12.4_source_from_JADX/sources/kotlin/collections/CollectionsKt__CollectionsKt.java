package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: Collections.kt */
class CollectionsKt__CollectionsKt {
    public static final <T> List<T> emptyList() {
        return EmptyList.INSTANCE;
    }

    public static final <T> List<T> listOf(T... tArr) {
        Intrinsics.checkParameterIsNotNull(tArr, "elements");
        if (tArr.length <= 0) {
            return (List) EmptyList.INSTANCE;
        }
        Intrinsics.checkParameterIsNotNull(tArr, "$receiver");
        tArr = Arrays.asList(tArr);
        Intrinsics.checkExpressionValueIsNotNull(tArr, "ArraysUtilJVM.asList(this)");
        return tArr;
    }

    public static final <T> List<T> listOf(T t) {
        t = Collections.singletonList(t);
        Intrinsics.checkExpressionValueIsNotNull(t, "java.util.Collections.singletonList(element)");
        return t;
    }

    public static final <T> List<T> mutableListOf(T... tArr) {
        Intrinsics.checkParameterIsNotNull(tArr, "elements");
        return tArr.length == 0 ? (List) new ArrayList() : new ArrayList(new ArrayAsCollection(tArr));
    }

    public static final <T> ArrayList<T> arrayListOf(T... tArr) {
        Intrinsics.checkParameterIsNotNull(tArr, "elements");
        return tArr.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(tArr));
    }

    public static final IntRange getIndices(Collection<?> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "$receiver");
        return new IntRange(0, collection.size() - 1);
    }

    public static final <T> int getLastIndex(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "$receiver");
        return list.size() - 1;
    }

    public static final <T> List<T> optimizeReadOnlyList(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "$receiver");
        switch (list.size()) {
            case 0:
                return EmptyList.INSTANCE;
            case 1:
                list = Collections.singletonList(list.get(0));
                Intrinsics.checkExpressionValueIsNotNull(list, "java.util.Collections.singletonList(element)");
                return list;
            default:
                return list;
        }
    }

    public static final /* synthetic */ Object[] access$copyToArrayOfAny$137a6ae7(Object[] objArr) {
        if (!Intrinsics.areEqual(objArr.getClass(), Object[].class)) {
            objArr = Arrays.copyOf(objArr, objArr.length, Object[].class);
            Intrinsics.checkExpressionValueIsNotNull(objArr, "java.util.Arrays.copyOf(… Array<Any?>::class.java)");
            return objArr;
        } else if (objArr != null) {
            return objArr;
        } else {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        }
    }
}
