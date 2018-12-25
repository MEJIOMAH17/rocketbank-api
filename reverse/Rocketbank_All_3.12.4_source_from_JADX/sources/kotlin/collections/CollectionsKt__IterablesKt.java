package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Iterables.kt */
class CollectionsKt__IterablesKt extends CollectionsKt__CollectionsKt {
    public static final <T> int collectionSizeOrDefault$251b5948(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        return iterable instanceof Collection ? ((Collection) iterable).size() : 10;
    }

    public static final <T> Collection<T> convertToSetForSetOperation(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        if (iterable instanceof Set) {
            return (Collection) iterable;
        }
        if (iterable instanceof Collection) {
            Collection<T> collection = (Collection) iterable;
            Object obj = (collection.size() <= 2 || !(collection instanceof ArrayList)) ? null : 1;
            if (obj == null) {
                return collection;
            }
        }
        return CollectionsKt___CollectionsKt.toHashSet(iterable);
    }
}
