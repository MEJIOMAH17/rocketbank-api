package kotlin.collections;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: Collections.kt */
public final class EmptyList implements Serializable, List, RandomAccess, KMappedMarker {
    public static final EmptyList INSTANCE = new EmptyList();
    private static final long serialVersionUID = -7390468764508069838L;

    public final /* synthetic */ void add(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void add(int i, Void voidR) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean add(Void voidR) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean contains(Void voidR) {
        Intrinsics.checkParameterIsNotNull(voidR, "element");
        return false;
    }

    public final int getSize() {
        return 0;
    }

    public final int hashCode() {
        return 1;
    }

    public final int indexOf(Void voidR) {
        Intrinsics.checkParameterIsNotNull(voidR, "element");
        return -1;
    }

    public final boolean isEmpty() {
        return true;
    }

    public final int lastIndexOf(Void voidR) {
        Intrinsics.checkParameterIsNotNull(voidR, "element");
        return -1;
    }

    public final /* synthetic */ Object remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: remove */
    public final Void m679remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* synthetic */ Object set(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Void set(int i, Void voidR) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    public final <T> T[] toArray(T[] tArr) {
        return CollectionToArray.toArray(this, tArr);
    }

    public final String toString() {
        return "[]";
    }

    private EmptyList() {
    }

    public final /* bridge */ boolean contains(Object obj) {
        return !(obj instanceof Void) ? null : contains((Void) obj);
    }

    public final /* bridge */ int indexOf(Object obj) {
        return !(obj instanceof Void) ? -1 : indexOf((Void) obj);
    }

    public final /* bridge */ int lastIndexOf(Object obj) {
        return !(obj instanceof Void) ? -1 : lastIndexOf((Void) obj);
    }

    public final /* bridge */ int size() {
        return getSize();
    }

    public final boolean equals(Object obj) {
        return (!(obj instanceof List) || ((List) obj).isEmpty() == null) ? null : true;
    }

    public final boolean containsAll(Collection collection) {
        Intrinsics.checkParameterIsNotNull(collection, "elements");
        return collection.isEmpty();
    }

    public final Void get(int i) {
        StringBuilder stringBuilder = new StringBuilder("Empty list doesn't contain element at index ");
        stringBuilder.append(i);
        stringBuilder.append(46);
        throw new IndexOutOfBoundsException(stringBuilder.toString());
    }

    public final Iterator iterator() {
        return EmptyIterator.INSTANCE;
    }

    public final ListIterator listIterator() {
        return EmptyIterator.INSTANCE;
    }

    public final ListIterator listIterator(int i) {
        if (i == 0) {
            return (ListIterator) EmptyIterator.INSTANCE;
        }
        throw new IndexOutOfBoundsException("Index: ".concat(String.valueOf(i)));
    }

    public final List subList(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return this;
        }
        StringBuilder stringBuilder = new StringBuilder("fromIndex: ");
        stringBuilder.append(i);
        stringBuilder.append(", toIndex: ");
        stringBuilder.append(i2);
        throw new IndexOutOfBoundsException(stringBuilder.toString());
    }

    private final Object readResolve() {
        return INSTANCE;
    }
}
