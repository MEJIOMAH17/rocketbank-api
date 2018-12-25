package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: _Arrays.kt */
final class ArraysKt___ArraysKt$withIndex$7 extends Lambda implements Function0<DoubleIterator> {
    final /* synthetic */ double[] receiver$0;

    ArraysKt___ArraysKt$withIndex$7(double[] dArr) {
        this.receiver$0 = dArr;
        super(0);
    }

    public final DoubleIterator invoke() {
        return Ref.iterator(this.receiver$0);
    }
}
