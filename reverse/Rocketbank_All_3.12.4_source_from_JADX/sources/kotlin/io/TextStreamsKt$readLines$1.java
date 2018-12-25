package kotlin.io;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: ReadWrite.kt */
final class TextStreamsKt$readLines$1 extends Lambda implements Function1<String, Unit> {
    final /* synthetic */ ArrayList $result;

    TextStreamsKt$readLines$1(ArrayList arrayList) {
        this.$result = arrayList;
        super(1);
    }

    public final void invoke(String str) {
        Intrinsics.checkParameterIsNotNull(str, "it");
        this.$result.add(str);
    }
}
