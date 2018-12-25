package kotlin.text;

import kotlin.collections.CharIterator;

/* compiled from: Strings.kt */
public final class StringsKt__StringsKt$iterator$1 extends CharIterator {
    private int index;
    final /* synthetic */ CharSequence receiver$0;

    StringsKt__StringsKt$iterator$1(CharSequence charSequence) {
        this.receiver$0 = charSequence;
    }

    public final char nextChar() {
        CharSequence charSequence = this.receiver$0;
        int i = this.index;
        this.index = i + 1;
        return charSequence.charAt(i);
    }

    public final boolean hasNext() {
        return this.index < this.receiver$0.length();
    }
}
