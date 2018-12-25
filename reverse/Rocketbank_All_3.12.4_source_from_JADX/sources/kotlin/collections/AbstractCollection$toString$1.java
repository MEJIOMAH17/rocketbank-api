package kotlin.collections;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: AbstractCollection.kt */
final class AbstractCollection$toString$1 extends Lambda implements Function1<E, CharSequence> {
    final /* synthetic */ AbstractCollection this$0;

    AbstractCollection$toString$1(AbstractCollection abstractCollection) {
        this.this$0 = abstractCollection;
        super(1);
    }

    public final CharSequence invoke(E e) {
        return (CharSequence) (e == this.this$0 ? "(this Collection)" : String.valueOf(e));
    }
}
