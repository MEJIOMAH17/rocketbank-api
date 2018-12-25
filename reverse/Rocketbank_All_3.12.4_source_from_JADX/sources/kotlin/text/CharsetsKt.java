package kotlin.text;

import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Charsets.kt */
public final class CharsetsKt {
    private static final Charset charset(String str) {
        str = Charset.forName(str);
        Intrinsics.checkExpressionValueIsNotNull(str, "Charset.forName(charsetName)");
        return str;
    }
}
