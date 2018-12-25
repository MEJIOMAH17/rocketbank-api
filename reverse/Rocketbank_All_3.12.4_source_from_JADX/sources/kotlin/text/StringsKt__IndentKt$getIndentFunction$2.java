package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: Indent.kt */
final class StringsKt__IndentKt$getIndentFunction$2 extends Lambda implements Function1<String, String> {
    final /* synthetic */ String $indent;

    StringsKt__IndentKt$getIndentFunction$2(String str) {
        this.$indent = str;
        super(1);
    }

    public final String invoke(String str) {
        Intrinsics.checkParameterIsNotNull(str, "line");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.$indent);
        stringBuilder.append(str);
        return stringBuilder.toString();
    }
}
