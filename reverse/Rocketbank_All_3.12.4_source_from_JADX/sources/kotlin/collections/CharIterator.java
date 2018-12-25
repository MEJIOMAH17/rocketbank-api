package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: Iterators.kt */
public abstract class CharIterator implements Iterator<Character>, KMappedMarker {
    public abstract char nextChar();

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Character next() {
        return Character.valueOf(nextChar());
    }
}
