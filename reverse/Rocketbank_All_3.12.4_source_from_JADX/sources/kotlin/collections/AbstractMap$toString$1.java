package kotlin.collections;

import java.util.Map.Entry;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: AbstractMap.kt */
final class AbstractMap$toString$1 extends Lambda implements Function1<Entry<? extends K, ? extends V>, String> {
    final /* synthetic */ AbstractMap this$0;

    AbstractMap$toString$1(AbstractMap abstractMap) {
        this.this$0 = abstractMap;
        super(1);
    }

    public final String invoke(Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkParameterIsNotNull(entry, "it");
        return AbstractMap.access$toString(this.this$0, entry);
    }
}
