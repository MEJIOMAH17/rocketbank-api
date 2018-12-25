package kotlin.sequences;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref.BooleanRef;

/* compiled from: _Sequences.kt */
final class SequencesKt___SequencesKt$minus$1$iterator$1 extends Lambda implements Function1<T, Boolean> {
    final /* synthetic */ BooleanRef $removed;
    final /* synthetic */ SequencesKt___SequencesKt$minus$1 this$0;

    SequencesKt___SequencesKt$minus$1$iterator$1(SequencesKt___SequencesKt$minus$1 sequencesKt___SequencesKt$minus$1, BooleanRef booleanRef) {
        this.this$0 = sequencesKt___SequencesKt$minus$1;
        this.$removed = booleanRef;
        super(1);
    }

    public final boolean invoke(T t) {
        if (this.$removed.element || Intrinsics.areEqual(t, this.this$0.$element) == null) {
            return true;
        }
        this.$removed.element = true;
        return null;
    }
}
