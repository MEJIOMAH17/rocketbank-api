package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.IntRange;

/* compiled from: Strings.kt */
final class StringsKt__StringsKt$splitToSequence$2 extends Lambda implements Function1<IntRange, String> {
    final /* synthetic */ CharSequence receiver$0;

    StringsKt__StringsKt$splitToSequence$2(CharSequence charSequence) {
        this.receiver$0 = charSequence;
        super(1);
    }

    public final String invoke(IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(intRange, "it");
        return StringsKt__StringsKt.substring(this.receiver$0, intRange);
    }
}
