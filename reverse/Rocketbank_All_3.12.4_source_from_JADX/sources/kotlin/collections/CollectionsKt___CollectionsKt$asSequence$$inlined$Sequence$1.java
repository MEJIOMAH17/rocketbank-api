package kotlin.collections;

import java.util.Iterator;
import kotlin.sequences.Sequence;

/* compiled from: Sequences.kt */
public final class CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 implements Sequence<T> {
    final /* synthetic */ Iterable receiver$0$inlined;

    public CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(Iterable iterable) {
        this.receiver$0$inlined = iterable;
    }

    public final Iterator<T> iterator() {
        return this.receiver$0$inlined.iterator();
    }
}
