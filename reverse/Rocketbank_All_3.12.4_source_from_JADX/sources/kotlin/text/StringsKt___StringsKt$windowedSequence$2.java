package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: _Strings.kt */
final class StringsKt___StringsKt$windowedSequence$2 extends Lambda implements Function1<Integer, R> {
    final /* synthetic */ int $size;
    final /* synthetic */ Function1 $transform;
    final /* synthetic */ CharSequence receiver$0;

    StringsKt___StringsKt$windowedSequence$2(CharSequence charSequence, Function1 function1, int i) {
        this.receiver$0 = charSequence;
        this.$transform = function1;
        this.$size = i;
        super(1);
    }

    public final R invoke(int i) {
        Function1 function1 = this.$transform;
        CharSequence charSequence = this.receiver$0;
        int i2 = this.$size + i;
        int length = this.receiver$0.length();
        if (i2 > length) {
            i2 = length;
        }
        return function1.invoke(charSequence.subSequence(i, i2));
    }
}
