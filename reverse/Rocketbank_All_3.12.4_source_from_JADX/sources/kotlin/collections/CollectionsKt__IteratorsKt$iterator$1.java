package kotlin.collections;

import java.util.Enumeration;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: Iterators.kt */
public final class CollectionsKt__IteratorsKt$iterator$1 implements Iterator<T>, KMappedMarker {
    final /* synthetic */ Enumeration receiver$0;

    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean hasNext() {
        return this.receiver$0.hasMoreElements();
    }

    public final T next() {
        return this.receiver$0.nextElement();
    }
}
