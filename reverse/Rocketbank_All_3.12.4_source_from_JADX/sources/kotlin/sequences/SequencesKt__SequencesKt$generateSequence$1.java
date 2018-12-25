package kotlin.sequences;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: Sequences.kt */
final class SequencesKt__SequencesKt$generateSequence$1 extends Lambda implements Function1<T, T> {
    final /* synthetic */ Function0 $nextFunction;

    SequencesKt__SequencesKt$generateSequence$1(Function0 function0) {
        this.$nextFunction = function0;
        super(1);
    }

    public final T invoke(T t) {
        Intrinsics.checkParameterIsNotNull(t, "it");
        return this.$nextFunction.invoke();
    }
}
