package kotlin.sequences;

import java.util.Iterator;
import kotlin.collections.EmptyIterator;

/* compiled from: Sequences.kt */
final class EmptySequence implements Sequence {
    public static final EmptySequence INSTANCE = new EmptySequence();

    private EmptySequence() {
    }

    public final Iterator iterator() {
        return EmptyIterator.INSTANCE;
    }
}
