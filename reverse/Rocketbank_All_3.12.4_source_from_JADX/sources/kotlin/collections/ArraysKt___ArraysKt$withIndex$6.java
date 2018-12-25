package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: _Arrays.kt */
final class ArraysKt___ArraysKt$withIndex$6 extends Lambda implements Function0<FloatIterator> {
    final /* synthetic */ float[] receiver$0;

    ArraysKt___ArraysKt$withIndex$6(float[] fArr) {
        this.receiver$0 = fArr;
        super(0);
    }

    public final FloatIterator invoke() {
        return Ref.iterator(this.receiver$0);
    }
}
