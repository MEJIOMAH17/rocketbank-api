package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref.BooleanRef;

/* compiled from: _Sequences.kt */
public final class SequencesKt___SequencesKt$minus$1 implements Sequence<T> {
    final /* synthetic */ Object $element;
    final /* synthetic */ Sequence receiver$0;

    public final Iterator<T> iterator() {
        BooleanRef booleanRef = new BooleanRef();
        booleanRef.element = false;
        Sequence sequence = this.receiver$0;
        Function1 sequencesKt___SequencesKt$minus$1$iterator$1 = new SequencesKt___SequencesKt$minus$1$iterator$1(this, booleanRef);
        Intrinsics.checkParameterIsNotNull(sequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(sequencesKt___SequencesKt$minus$1$iterator$1, "predicate");
        return new FilteringSequence(sequence, true, sequencesKt___SequencesKt$minus$1$iterator$1).iterator();
    }
}
