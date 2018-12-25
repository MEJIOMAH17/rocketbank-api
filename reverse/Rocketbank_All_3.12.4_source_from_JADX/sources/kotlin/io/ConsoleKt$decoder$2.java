package kotlin.io;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: Console.kt */
final class ConsoleKt$decoder$2 extends Lambda implements Function0<CharsetDecoder> {
    public static final ConsoleKt$decoder$2 INSTANCE = new ConsoleKt$decoder$2();

    ConsoleKt$decoder$2() {
        super(0);
    }

    public final CharsetDecoder invoke() {
        return Charset.defaultCharset().newDecoder();
    }
}
