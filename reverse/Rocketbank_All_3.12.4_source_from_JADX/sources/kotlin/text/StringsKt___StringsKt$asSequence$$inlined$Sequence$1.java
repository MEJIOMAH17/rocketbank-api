package kotlin.text;

import java.util.Iterator;
import kotlin.sequences.Sequence;

/* compiled from: Sequences.kt */
public final class StringsKt___StringsKt$asSequence$$inlined$Sequence$1 implements Sequence<Character> {
    final /* synthetic */ CharSequence receiver$0$inlined;

    public StringsKt___StringsKt$asSequence$$inlined$Sequence$1(CharSequence charSequence) {
        this.receiver$0$inlined = charSequence;
    }

    public final Iterator<Character> iterator() {
        return StringsKt__StringsKt.iterator(this.receiver$0$inlined);
    }
}
