package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: Iterators.kt */
public final class IndexingIterator<T> implements Iterator<IndexedValue<? extends T>>, KMappedMarker {
    private int index;
    private final Iterator<T> iterator;

    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public IndexingIterator(Iterator<? extends T> it) {
        Intrinsics.checkParameterIsNotNull(it, "iterator");
        this.iterator = it;
    }

    public final boolean hasNext() {
        return this.iterator.hasNext();
    }

    public final /* bridge */ /* synthetic */ Object next() {
        int i = this.index;
        this.index = i + 1;
        return new IndexedValue(i, this.iterator.next());
    }
}
