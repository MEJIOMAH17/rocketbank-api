package kotlin.collections;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: _Collections.kt */
final class CollectionsKt___CollectionsKt$elementAt$1 extends Lambda implements Function1 {
    final /* synthetic */ int $index;

    CollectionsKt___CollectionsKt$elementAt$1(int i) {
        this.$index = i;
        super(1);
    }

    public final Void invoke(int i) {
        StringBuilder stringBuilder = new StringBuilder("Collection doesn't contain element at index ");
        stringBuilder.append(this.$index);
        stringBuilder.append('.');
        throw ((Throwable) new IndexOutOfBoundsException(stringBuilder.toString()));
    }
}
