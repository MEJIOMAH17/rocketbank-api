package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: _Arrays.kt */
final class ArraysKt___ArraysKt$withIndex$8 extends Lambda implements Function0<BooleanIterator> {
    final /* synthetic */ boolean[] receiver$0;

    ArraysKt___ArraysKt$withIndex$8(boolean[] zArr) {
        this.receiver$0 = zArr;
        super(0);
    }

    public final BooleanIterator invoke() {
        return Ref.iterator(this.receiver$0);
    }
}
