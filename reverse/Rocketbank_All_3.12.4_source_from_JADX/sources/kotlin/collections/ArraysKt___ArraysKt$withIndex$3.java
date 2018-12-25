package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: _Arrays.kt */
final class ArraysKt___ArraysKt$withIndex$3 extends Lambda implements Function0<ShortIterator> {
    final /* synthetic */ short[] receiver$0;

    ArraysKt___ArraysKt$withIndex$3(short[] sArr) {
        this.receiver$0 = sArr;
        super(0);
    }

    public final ShortIterator invoke() {
        return Ref.iterator(this.receiver$0);
    }
}
