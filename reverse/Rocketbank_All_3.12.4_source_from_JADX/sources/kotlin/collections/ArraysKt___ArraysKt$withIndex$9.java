package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: _Arrays.kt */
final class ArraysKt___ArraysKt$withIndex$9 extends Lambda implements Function0<CharIterator> {
    final /* synthetic */ char[] receiver$0;

    ArraysKt___ArraysKt$withIndex$9(char[] cArr) {
        this.receiver$0 = cArr;
        super(0);
    }

    public final CharIterator invoke() {
        return Ref.iterator(this.receiver$0);
    }
}
