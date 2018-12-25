package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: _Arrays.kt */
final class ArraysKt___ArraysKt$withIndex$1 extends Lambda implements Function0<Iterator<? extends T>> {
    final /* synthetic */ Object[] receiver$0;

    ArraysKt___ArraysKt$withIndex$1(Object[] objArr) {
        this.receiver$0 = objArr;
        super(0);
    }

    public final Iterator<T> invoke() {
        return Ref.iterator(this.receiver$0);
    }
}
