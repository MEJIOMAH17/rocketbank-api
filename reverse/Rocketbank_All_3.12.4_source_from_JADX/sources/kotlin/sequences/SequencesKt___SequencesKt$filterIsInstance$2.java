package kotlin.sequences;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: _Sequences.kt */
final class SequencesKt___SequencesKt$filterIsInstance$2 extends Lambda implements Function1<Object, Boolean> {
    final /* synthetic */ Class $klass;

    SequencesKt___SequencesKt$filterIsInstance$2(Class cls) {
        this.$klass = cls;
        super(1);
    }

    public final boolean invoke(Object obj) {
        return this.$klass.isInstance(obj);
    }
}
