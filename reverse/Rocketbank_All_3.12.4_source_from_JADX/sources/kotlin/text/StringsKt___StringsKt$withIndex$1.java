package kotlin.text;

import kotlin.collections.CharIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: _Strings.kt */
final class StringsKt___StringsKt$withIndex$1 extends Lambda implements Function0<CharIterator> {
    final /* synthetic */ CharSequence receiver$0;

    StringsKt___StringsKt$withIndex$1(CharSequence charSequence) {
        this.receiver$0 = charSequence;
        super(0);
    }

    public final CharIterator invoke() {
        return StringsKt__StringsKt.iterator(this.receiver$0);
    }
}
