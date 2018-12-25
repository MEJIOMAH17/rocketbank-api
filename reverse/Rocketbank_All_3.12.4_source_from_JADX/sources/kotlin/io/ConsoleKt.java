package kotlin.io;

import java.io.InputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: Console.kt */
public final class ConsoleKt {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property0(new PropertyReference0Impl(Reflection.getOrCreateKotlinPackage(ConsoleKt.class, "kotlin-stdlib"), "decoder", "getDecoder()Ljava/nio/charset/CharsetDecoder;"))};
    private static final int BUFFER_SIZE = 32;
    private static final int LINE_SEPARATOR_MAX_LENGTH = 2;
    private static final Lazy decoder$delegate = ExceptionsKt__ExceptionsKt.lazy(ConsoleKt$decoder$2.INSTANCE);

    private static final CharsetDecoder getDecoder() {
        return (CharsetDecoder) decoder$delegate.getValue();
    }

    private static final void print(Object obj) {
        System.out.print(obj);
    }

    private static final void print(int i) {
        System.out.print(i);
    }

    private static final void print(long j) {
        System.out.print(j);
    }

    private static final void print(byte b) {
        System.out.print(Byte.valueOf(b));
    }

    private static final void print(short s) {
        System.out.print(Short.valueOf(s));
    }

    private static final void print(char c) {
        System.out.print(c);
    }

    private static final void print(boolean z) {
        System.out.print(z);
    }

    private static final void print(float f) {
        System.out.print(f);
    }

    private static final void print(double d) {
        System.out.print(d);
    }

    private static final void print(char[] cArr) {
        System.out.print(cArr);
    }

    private static final void println(Object obj) {
        System.out.println(obj);
    }

    private static final void println(int i) {
        System.out.println(i);
    }

    private static final void println(long j) {
        System.out.println(j);
    }

    private static final void println(byte b) {
        System.out.println(Byte.valueOf(b));
    }

    private static final void println(short s) {
        System.out.println(Short.valueOf(s));
    }

    private static final void println(char c) {
        System.out.println(c);
    }

    private static final void println(boolean z) {
        System.out.println(z);
    }

    private static final void println(float f) {
        System.out.println(f);
    }

    private static final void println(double d) {
        System.out.println(d);
    }

    private static final void println(char[] cArr) {
        System.out.println(cArr);
    }

    private static final void println() {
        System.out.println();
    }

    public static final String readLine() {
        InputStream inputStream = System.in;
        Intrinsics.checkExpressionValueIsNotNull(inputStream, "System.`in`");
        return readLine(inputStream, getDecoder());
    }

    public static final String readLine(InputStream inputStream, CharsetDecoder charsetDecoder) {
        Intrinsics.checkParameterIsNotNull(inputStream, "inputStream");
        Intrinsics.checkParameterIsNotNull(charsetDecoder, "decoder");
        if (charsetDecoder.maxCharsPerByte() <= 1.0f) {
            ByteBuffer allocate = ByteBuffer.allocate(32);
            CharBuffer allocate2 = CharBuffer.allocate(2);
            StringBuilder stringBuilder = new StringBuilder();
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            do {
                allocate.put((byte) read);
                Intrinsics.checkExpressionValueIsNotNull(allocate, "byteBuffer");
                Intrinsics.checkExpressionValueIsNotNull(allocate2, "charBuffer");
                if (tryDecode(charsetDecoder, allocate, allocate2, false)) {
                    if (containsLineSeparator(allocate2)) {
                        break;
                    } else if (!allocate2.hasRemaining()) {
                        stringBuilder.append(dequeue(allocate2));
                    }
                }
                read = inputStream.read();
            } while (read != -1);
            tryDecode(charsetDecoder, allocate, allocate2, true);
            charsetDecoder.reset();
            inputStream = allocate2.position();
            charsetDecoder = allocate2.get(0);
            char c = allocate2.get(1);
            switch (inputStream) {
                case 1:
                    if (charsetDecoder != 10) {
                        stringBuilder.append(charsetDecoder);
                        break;
                    }
                    break;
                case 2:
                    if (!(charsetDecoder == 13 && c == '\n')) {
                        stringBuilder.append(charsetDecoder);
                    }
                    if (c != '\n') {
                        stringBuilder.append(c);
                        break;
                    }
                    break;
                default:
                    break;
            }
            return stringBuilder.toString();
        }
        throw ((Throwable) new IllegalArgumentException("Encodings with multiple chars per byte are not supported".toString()));
    }

    private static final boolean tryDecode(CharsetDecoder charsetDecoder, ByteBuffer byteBuffer, CharBuffer charBuffer, boolean z) {
        int position = charBuffer.position();
        byteBuffer.flip();
        charsetDecoder = charsetDecoder.decode(byteBuffer, charBuffer, z);
        if (charsetDecoder.isError()) {
            charsetDecoder.throwException();
        }
        charsetDecoder = charBuffer.position() > position ? true : null;
        if (charsetDecoder != null) {
            byteBuffer.clear();
        } else {
            flipBack(byteBuffer);
        }
        return charsetDecoder;
    }

    private static final boolean containsLineSeparator(CharBuffer charBuffer) {
        if (charBuffer.get(1) != '\n') {
            if (charBuffer.get(0) != 10) {
                return false;
            }
        }
        return true;
    }

    private static final void flipBack(Buffer buffer) {
        buffer.position(buffer.limit());
        buffer.limit(buffer.capacity());
    }

    private static final char dequeue(CharBuffer charBuffer) {
        charBuffer.flip();
        char c = charBuffer.get();
        charBuffer.compact();
        return c;
    }
}
