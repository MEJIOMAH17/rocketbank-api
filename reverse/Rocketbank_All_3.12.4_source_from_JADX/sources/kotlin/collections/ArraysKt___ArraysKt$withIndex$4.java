package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: _Arrays.kt */
final class ArraysKt___ArraysKt$withIndex$4 extends Lambda implements Function0<IntIterator> {
    final /* synthetic */ int[] receiver$0;

    ArraysKt___ArraysKt$withIndex$4(int[] iArr) {
        this.receiver$0 = iArr;
        super(0);
    }

    public final IntIterator invoke() {
        return Ref.iterator(this.receiver$0);
    }
}
