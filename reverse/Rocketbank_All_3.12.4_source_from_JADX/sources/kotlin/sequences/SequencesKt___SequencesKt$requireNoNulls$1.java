package kotlin.sequences;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: _Sequences.kt */
final class SequencesKt___SequencesKt$requireNoNulls$1 extends Lambda implements Function1<T, T> {
    final /* synthetic */ Sequence receiver$0;

    SequencesKt___SequencesKt$requireNoNulls$1(Sequence sequence) {
        this.receiver$0 = sequence;
        super(1);
    }

    public final T invoke(T t) {
        if (t != null) {
            return t;
        }
        StringBuilder stringBuilder = new StringBuilder("null element found in ");
        stringBuilder.append(this.receiver$0);
        stringBuilder.append('.');
        throw ((Throwable) new IllegalArgumentException(stringBuilder.toString()));
    }
}
