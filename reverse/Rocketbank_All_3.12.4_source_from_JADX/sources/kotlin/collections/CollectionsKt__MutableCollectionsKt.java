package kotlin.collections;

import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: MutableCollections.kt */
class CollectionsKt__MutableCollectionsKt extends CollectionsKt__IteratorsKt {
    public static final <T> boolean addAll(Collection<? super T> collection, Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(collection, "$receiver");
        Intrinsics.checkParameterIsNotNull(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z = false;
        for (Object add : iterable) {
            if (collection.add(add)) {
                z = true;
            }
        }
        return z;
    }

    public static final <T> boolean retainAll(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        return filterInPlace$CollectionsKt__MutableCollectionsKt(iterable, function1, false);
    }

    private static final <T> boolean filterInPlace$CollectionsKt__MutableCollectionsKt(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1, boolean z) {
        iterable = iterable.iterator();
        boolean z2 = false;
        while (iterable.hasNext()) {
            if (((Boolean) function1.invoke(iterable.next())).booleanValue() == z) {
                iterable.remove();
                z2 = true;
            }
        }
        return z2;
    }

    public static final <T> boolean removeAll(List<T> list, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(list, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        if (list instanceof RandomAccess) {
            int i;
            Intrinsics.checkParameterIsNotNull(list, "$receiver");
            int size = list.size() - 1;
            if (size >= 0) {
                int i2 = 0;
                i = i2;
                while (true) {
                    Object obj = list.get(i2);
                    if (!((Boolean) function1.invoke(obj)).booleanValue()) {
                        if (i != i2) {
                            list.set(i, obj);
                        }
                        i++;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            } else {
                i = 0;
            }
            if (i >= list.size()) {
                return false;
            }
            Intrinsics.checkParameterIsNotNull(list, "$receiver");
            function1 = list.size() - 1;
            if (function1 >= i) {
                while (true) {
                    list.remove(function1);
                    if (function1 == i) {
                        break;
                    }
                    function1--;
                }
            }
            return true;
        } else if (list != null) {
            return filterInPlace$CollectionsKt__MutableCollectionsKt(TypeIntrinsics.asMutableIterable(list), function1, true);
        } else {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableIterable<T>");
        }
    }
}
