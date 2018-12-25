package kotlin.sequences;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: _Sequences.kt */
final class SequencesKt___SequencesKt$elementAt$1 extends Lambda implements Function1 {
    final /* synthetic */ int $index;

    SequencesKt___SequencesKt$elementAt$1(int i) {
        this.$index = i;
        super(1);
    }

    public final Void invoke(int i) {
        StringBuilder stringBuilder = new StringBuilder("Sequence doesn't contain element at index ");
        stringBuilder.append(this.$index);
        stringBuilder.append('.');
        throw ((Throwable) new IndexOutOfBoundsException(stringBuilder.toString()));
    }
}
