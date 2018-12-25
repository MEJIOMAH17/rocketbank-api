package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: Iterators.kt */
public abstract class ByteIterator implements Iterator<Byte>, KMappedMarker {
    public abstract byte nextByte();

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Byte next() {
        return Byte.valueOf(nextByte());
    }
}
