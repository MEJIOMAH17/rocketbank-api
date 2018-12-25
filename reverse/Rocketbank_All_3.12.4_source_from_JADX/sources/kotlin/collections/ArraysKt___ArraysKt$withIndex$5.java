package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: _Arrays.kt */
final class ArraysKt___ArraysKt$withIndex$5 extends Lambda implements Function0<LongIterator> {
    final /* synthetic */ long[] receiver$0;

    ArraysKt___ArraysKt$withIndex$5(long[] jArr) {
        this.receiver$0 = jArr;
        super(0);
    }

    public final LongIterator invoke() {
        return Ref.iterator(this.receiver$0);
    }
}
