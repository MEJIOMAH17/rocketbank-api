package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: Sequences.kt */
final class SequencesKt__SequencesKt$flatten$1 extends Lambda implements Function1<Sequence<? extends T>, Iterator<? extends T>> {
    public static final SequencesKt__SequencesKt$flatten$1 INSTANCE = new SequencesKt__SequencesKt$flatten$1();

    SequencesKt__SequencesKt$flatten$1() {
        super(1);
    }

    public final Iterator<T> invoke(Sequence<? extends T> sequence) {
        Intrinsics.checkParameterIsNotNull(sequence, "it");
        return sequence.iterator();
    }
}
