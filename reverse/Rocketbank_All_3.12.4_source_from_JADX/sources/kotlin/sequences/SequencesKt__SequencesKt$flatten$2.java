package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: Sequences.kt */
final class SequencesKt__SequencesKt$flatten$2 extends Lambda implements Function1<Iterable<? extends T>, Iterator<? extends T>> {
    public static final SequencesKt__SequencesKt$flatten$2 INSTANCE = new SequencesKt__SequencesKt$flatten$2();

    SequencesKt__SequencesKt$flatten$2() {
        super(1);
    }

    public final Iterator<T> invoke(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "it");
        return iterable.iterator();
    }
}
