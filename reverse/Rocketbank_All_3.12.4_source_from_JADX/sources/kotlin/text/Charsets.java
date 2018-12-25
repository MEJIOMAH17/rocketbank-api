package kotlin.text;

import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Charsets.kt */
public final class Charsets {
    public static final Charsets INSTANCE = new Charsets();
    public static final Charset ISO_8859_1;
    public static final Charset US_ASCII;
    public static final Charset UTF_16;
    public static final Charset UTF_16BE;
    public static final Charset UTF_16LE;
    public static final Charset UTF_8;
    private static Charset utf_32;
    private static Charset utf_32be;
    private static Charset utf_32le;

    static {
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(\"UTF-8\")");
        UTF_8 = forName;
        forName = Charset.forName("UTF-16");
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(\"UTF-16\")");
        UTF_16 = forName;
        forName = Charset.forName("UTF-16BE");
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(\"UTF-16BE\")");
        UTF_16BE = forName;
        forName = Charset.forName("UTF-16LE");
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(\"UTF-16LE\")");
        UTF_16LE = forName;
        forName = Charset.forName("US-ASCII");
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(\"US-ASCII\")");
        US_ASCII = forName;
        forName = Charset.forName("ISO-8859-1");
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(\"ISO-8859-1\")");
        ISO_8859_1 = forName;
    }

    private Charsets() {
    }

    public final Charset UTF32() {
        Charset charset = utf_32;
        if (charset != null) {
            return charset;
        }
        charset = Charset.forName("UTF-32");
        Intrinsics.checkExpressionValueIsNotNull(charset, "Charset.forName(\"UTF-32\")");
        utf_32 = charset;
        return charset;
    }

    public final Charset UTF32_LE() {
        Charset charset = utf_32le;
        if (charset != null) {
            return charset;
        }
        charset = Charset.forName("UTF-32LE");
        Intrinsics.checkExpressionValueIsNotNull(charset, "Charset.forName(\"UTF-32LE\")");
        utf_32le = charset;
        return charset;
    }

    public final Charset UTF32_BE() {
        Charset charset = utf_32be;
        if (charset != null) {
            return charset;
        }
        charset = Charset.forName("UTF-32BE");
        Intrinsics.checkExpressionValueIsNotNull(charset, "Charset.forName(\"UTF-32BE\")");
        utf_32be = charset;
        return charset;
    }
}
