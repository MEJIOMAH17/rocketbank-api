package kotlin.io;

import com.facebook.internal.NativeProtocol;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.text.Charsets;

/* compiled from: ReadWrite.kt */
public final class TextStreamsKt {
    private static final BufferedReader buffered(Reader reader, int i) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    private static final BufferedWriter buffered(Writer writer, int i) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    public static final List<String> readLines(Reader reader) {
        Intrinsics.checkParameterIsNotNull(reader, "$receiver");
        ArrayList arrayList = new ArrayList();
        forEachLine(reader, new TextStreamsKt$readLines$1(arrayList));
        return arrayList;
    }

    public static final <T> T useLines(Reader reader, Function1<? super Sequence<String>, ? extends T> function1) {
        Function1<? super Sequence<String>, ? extends T> function12;
        Intrinsics.checkParameterIsNotNull(reader, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "block");
        Closeable bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, 8192);
        try {
            function1 = function1.invoke(lineSequence((BufferedReader) bufferedReader));
            PlatformImplementationsKt.apiVersionIsAtLeast$4868d312();
            CloseableKt.closeFinally(bufferedReader, null);
            return function1;
        } catch (Throwable th) {
            PlatformImplementationsKt.apiVersionIsAtLeast$4868d312();
            CloseableKt.closeFinally(bufferedReader, function12);
        }
    }

    private static final StringReader reader(String str) {
        return new StringReader(str);
    }

    public static final Sequence<String> lineSequence(BufferedReader bufferedReader) {
        Intrinsics.checkParameterIsNotNull(bufferedReader, "$receiver");
        return SequencesKt__SequencesKt.constrainOnce(new LinesSequence(bufferedReader));
    }

    public static final String readText(Reader reader) {
        Intrinsics.checkParameterIsNotNull(reader, "$receiver");
        StringWriter stringWriter = new StringWriter();
        copyTo$default(reader, stringWriter, 0, 2, null);
        reader = stringWriter.toString();
        Intrinsics.checkExpressionValueIsNotNull(reader, "buffer.toString()");
        return reader;
    }

    public static /* synthetic */ long copyTo$default(Reader reader, Writer writer, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return copyTo(reader, writer, i);
    }

    public static final long copyTo(Reader reader, Writer writer, int i) {
        Intrinsics.checkParameterIsNotNull(reader, "$receiver");
        Intrinsics.checkParameterIsNotNull(writer, "out");
        i = new char[i];
        int read = reader.read(i);
        long j = 0;
        while (read >= 0) {
            writer.write(i, 0, read);
            long j2 = j + ((long) read);
            read = reader.read(i);
            j = j2;
        }
        return j;
    }

    private static final String readText(URL url, Charset charset) {
        return new String(readBytes(url), charset);
    }

    static /* synthetic */ String readText$default(URL url, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new String(readBytes(url), charset);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final byte[] readBytes(java.net.URL r4) {
        /*
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0);
        r4 = r4.openStream();
        r4 = (java.io.Closeable) r4;
        r0 = 0;
        r1 = r4;
        r1 = (java.io.InputStream) r1;	 Catch:{ Throwable -> 0x0020 }
        r2 = "it";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);	 Catch:{ Throwable -> 0x0020 }
        r2 = 0;
        r3 = 1;
        r1 = kotlin.io.ByteStreamsKt.readBytes$default(r1, r2, r3, r0);	 Catch:{ Throwable -> 0x0020 }
        kotlin.io.CloseableKt.closeFinally(r4, r0);
        return r1;
    L_0x001e:
        r1 = move-exception;
        goto L_0x0022;
    L_0x0020:
        r0 = move-exception;
        throw r0;	 Catch:{ all -> 0x001e }
    L_0x0022:
        kotlin.io.CloseableKt.closeFinally(r4, r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.TextStreamsKt.readBytes(java.net.URL):byte[]");
    }

    static /* synthetic */ BufferedReader buffered$default(Reader reader, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return (reader instanceof BufferedReader) != 0 ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    static /* synthetic */ BufferedWriter buffered$default(Writer writer, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return (writer instanceof BufferedWriter) != 0 ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    public static final void forEachLine(Reader reader, Function1<? super String, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(reader, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, NativeProtocol.WEB_DIALOG_ACTION);
        Closeable bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, 8192);
        try {
            for (Object invoke : lineSequence((BufferedReader) bufferedReader)) {
                function1.invoke(invoke);
            }
            function1 = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedReader, null);
        } catch (Throwable th) {
            CloseableKt.closeFinally(bufferedReader, function1);
        }
    }
}
