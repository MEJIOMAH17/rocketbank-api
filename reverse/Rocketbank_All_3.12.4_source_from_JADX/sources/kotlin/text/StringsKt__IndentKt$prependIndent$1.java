package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: Indent.kt */
final class StringsKt__IndentKt$prependIndent$1 extends Lambda implements Function1<String, String> {
    final /* synthetic */ String $indent;

    StringsKt__IndentKt$prependIndent$1(String str) {
        this.$indent = str;
        super(1);
    }

    public final String invoke(String str) {
        Intrinsics.checkParameterIsNotNull(str, "it");
        if (StringsKt__StringsJVMKt.isBlank(str)) {
            return str.length() < this.$indent.length() ? this.$indent : str;
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.$indent);
            stringBuilder.append(str);
            return stringBuilder.toString();
        }
    }
}
