package kotlin.sequences;

import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: _Sequences.kt */
public final class SequencesKt___SequencesKt$minus$4 implements Sequence<T> {
    final /* synthetic */ Sequence $elements;
    final /* synthetic */ Sequence receiver$0;

    public final Iterator<T> iterator() {
        Sequence sequence = this.$elements;
        Intrinsics.checkParameterIsNotNull(sequence, "$receiver");
        HashSet hashSet = (HashSet) SequencesKt___SequencesKt.toCollection(sequence, new HashSet());
        if (hashSet.isEmpty()) {
            return this.receiver$0.iterator();
        }
        Sequence sequence2 = this.receiver$0;
        Function1 sequencesKt___SequencesKt$minus$4$iterator$1 = new SequencesKt___SequencesKt$minus$4$iterator$1(hashSet);
        Intrinsics.checkParameterIsNotNull(sequence2, "$receiver");
        Intrinsics.checkParameterIsNotNull(sequencesKt___SequencesKt$minus$4$iterator$1, "predicate");
        return new FilteringSequence(sequence2, false, sequencesKt___SequencesKt$minus$4$iterator$1).iterator();
    }
}
