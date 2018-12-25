package kotlin.sequences;

import java.util.HashSet;
import java.util.Iterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: _Sequences.kt */
public final class SequencesKt___SequencesKt$minus$2 implements Sequence<T> {
    final /* synthetic */ Object[] $elements;
    final /* synthetic */ Sequence receiver$0;

    public final Iterator<T> iterator() {
        Object obj = this.$elements;
        Intrinsics.checkParameterIsNotNull(obj, "$receiver");
        int length = obj.length;
        length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        HashSet hashSet = (HashSet) ArraysKt___ArraysKt.toCollection(obj, new HashSet(length));
        Sequence sequence = this.receiver$0;
        Function1 sequencesKt___SequencesKt$minus$2$iterator$1 = new SequencesKt___SequencesKt$minus$2$iterator$1(hashSet);
        Intrinsics.checkParameterIsNotNull(sequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(sequencesKt___SequencesKt$minus$2$iterator$1, "predicate");
        return new FilteringSequence(sequence, false, sequencesKt___SequencesKt$minus$2$iterator$1).iterator();
    }
}
