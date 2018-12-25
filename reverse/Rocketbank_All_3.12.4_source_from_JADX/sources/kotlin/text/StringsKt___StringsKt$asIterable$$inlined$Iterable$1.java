package kotlin.text;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: Iterables.kt */
public final class StringsKt___StringsKt$asIterable$$inlined$Iterable$1 implements Iterable<Character>, KMappedMarker {
    final /* synthetic */ CharSequence receiver$0$inlined;

    public StringsKt___StringsKt$asIterable$$inlined$Iterable$1(CharSequence charSequence) {
        this.receiver$0$inlined = charSequence;
    }

    public final Iterator<Character> iterator() {
        return StringsKt__StringsKt.iterator(this.receiver$0$inlined);
    }
}
