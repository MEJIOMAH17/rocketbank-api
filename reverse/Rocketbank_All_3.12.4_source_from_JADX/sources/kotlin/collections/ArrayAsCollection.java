package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: Collections.kt */
final class ArrayAsCollection<T> implements Collection<T>, KMappedMarker {
    private final boolean isVarargs = 1;
    private final T[] values;

    public final boolean add(T t) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final <T> T[] toArray(T[] tArr) {
        return CollectionToArray.toArray(this, tArr);
    }

    public ArrayAsCollection(T[] tArr) {
        Intrinsics.checkParameterIsNotNull(tArr, "values");
        this.values = tArr;
    }

    public final boolean isEmpty() {
        return this.values.length == 0;
    }

    public final boolean contains(Object obj) {
        Object[] objArr = this.values;
        Intrinsics.checkParameterIsNotNull(objArr, "$receiver");
        return ArraysKt___ArraysKt.indexOf(objArr, obj) >= null ? true : null;
    }

    public final boolean containsAll(Collection<? extends Object> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "elements");
        Iterable<Object> iterable = collection;
        if (!((Collection) iterable).isEmpty()) {
            for (Object contains : iterable) {
                if (!contains(contains)) {
                    return null;
                }
            }
        }
        return true;
    }

    public final Iterator<T> iterator() {
        return Ref.iterator(this.values);
    }

    public final Object[] toArray() {
        return CollectionsKt__CollectionsKt.access$copyToArrayOfAny$137a6ae7(this.values);
    }

    public final /* bridge */ int size() {
        return this.values.length;
    }
}
