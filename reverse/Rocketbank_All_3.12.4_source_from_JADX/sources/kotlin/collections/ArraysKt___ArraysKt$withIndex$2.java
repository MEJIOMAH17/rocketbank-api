package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: _Arrays.kt */
final class ArraysKt___ArraysKt$withIndex$2 extends Lambda implements Function0<ByteIterator> {
    final /* synthetic */ byte[] receiver$0;

    ArraysKt___ArraysKt$withIndex$2(byte[] bArr) {
        this.receiver$0 = bArr;
        super(0);
    }

    public final ByteIterator invoke() {
        return Ref.iterator(this.receiver$0);
    }
}
