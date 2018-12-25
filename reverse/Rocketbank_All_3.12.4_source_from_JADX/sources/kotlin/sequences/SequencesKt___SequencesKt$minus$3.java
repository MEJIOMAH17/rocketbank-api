package kotlin.sequences;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: _Sequences.kt */
public final class SequencesKt___SequencesKt$minus$3 implements Sequence<T> {
    final /* synthetic */ Iterable $elements;
    final /* synthetic */ Sequence receiver$0;

    public final Iterator<T> iterator() {
        Collection convertToSetForSetOperation = CollectionsKt__IterablesKt.convertToSetForSetOperation(this.$elements);
        if (convertToSetForSetOperation.isEmpty()) {
            return this.receiver$0.iterator();
        }
        Sequence sequence = this.receiver$0;
        Function1 sequencesKt___SequencesKt$minus$3$iterator$1 = new SequencesKt___SequencesKt$minus$3$iterator$1(convertToSetForSetOperation);
        Intrinsics.checkParameterIsNotNull(sequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(sequencesKt___SequencesKt$minus$3$iterator$1, "predicate");
        return new FilteringSequence(sequence, false, sequencesKt___SequencesKt$minus$3$iterator$1).iterator();
    }
}
