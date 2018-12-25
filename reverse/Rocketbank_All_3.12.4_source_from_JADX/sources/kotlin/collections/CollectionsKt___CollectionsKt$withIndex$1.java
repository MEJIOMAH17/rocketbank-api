package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: _Collections.kt */
final class CollectionsKt___CollectionsKt$withIndex$1 extends Lambda implements Function0<Iterator<? extends T>> {
    final /* synthetic */ Iterable receiver$0;

    CollectionsKt___CollectionsKt$withIndex$1(Iterable iterable) {
        this.receiver$0 = iterable;
        super(0);
    }

    public final Iterator<T> invoke() {
        return this.receiver$0.iterator();
    }
}
