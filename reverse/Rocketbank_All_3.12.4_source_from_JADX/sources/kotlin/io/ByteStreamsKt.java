package kotlin.io;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;
import kotlin.TypeCastException;
import kotlin.collections.ByteIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* compiled from: IOStreams.kt */
public final class ByteStreamsKt {
    public static final ByteIterator iterator(BufferedInputStream bufferedInputStream) {
        Intrinsics.checkParameterIsNotNull(bufferedInputStream, "$receiver");
        return new ByteStreamsKt$iterator$1(bufferedInputStream);
    }

    private static final ByteArrayInputStream byteInputStream(String str, Charset charset) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.getBytes(charset);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).getBytes(charset)");
        return new ByteArrayInputStream(str);
    }

    static /* synthetic */ ByteArrayInputStream byteInputStream$default(String str, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.getBytes(charset);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).getBytes(charset)");
        return new ByteArrayInputStream(str);
    }

    private static final ByteArrayInputStream inputStream(byte[] bArr) {
        return new ByteArrayInputStream(bArr);
    }

    private static final ByteArrayInputStream inputStream(byte[] bArr, int i, int i2) {
        return new ByteArrayInputStream(bArr, i, i2);
    }

    private static final BufferedInputStream buffered(InputStream inputStream, int i) {
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i);
    }

    private static final InputStreamReader reader(InputStream inputStream, Charset charset) {
        return new InputStreamReader(inputStream, charset);
    }

    static /* synthetic */ InputStreamReader reader$default(InputStream inputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new InputStreamReader(inputStream, charset);
    }

    private static final BufferedReader bufferedReader(InputStream inputStream, Charset charset) {
        return new BufferedReader(new InputStreamReader(inputStream, charset), 8192);
    }

    static /* synthetic */ BufferedReader bufferedReader$default(InputStream inputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new BufferedReader((Reader) new InputStreamReader(inputStream, charset), 8192);
    }

    private static final BufferedOutputStream buffered(OutputStream outputStream, int i) {
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i);
    }

    private static final OutputStreamWriter writer(OutputStream outputStream, Charset charset) {
        return new OutputStreamWriter(outputStream, charset);
    }

    static /* synthetic */ OutputStreamWriter writer$default(OutputStream outputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new OutputStreamWriter(outputStream, charset);
    }

    private static final BufferedWriter bufferedWriter(OutputStream outputStream, Charset charset) {
        return new BufferedWriter(new OutputStreamWriter(outputStream, charset), 8192);
    }

    static /* synthetic */ BufferedWriter bufferedWriter$default(OutputStream outputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new BufferedWriter((Writer) new OutputStreamWriter(outputStream, charset), 8192);
    }

    public static /* synthetic */ long copyTo$default(InputStream inputStream, OutputStream outputStream, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return copyTo(inputStream, outputStream, i);
    }

    public static final long copyTo(InputStream inputStream, OutputStream outputStream, int i) {
        Intrinsics.checkParameterIsNotNull(inputStream, "$receiver");
        Intrinsics.checkParameterIsNotNull(outputStream, "out");
        i = new byte[i];
        int read = inputStream.read(i);
        long j = 0;
        while (read >= 0) {
            outputStream.write(i, 0, read);
            long j2 = j + ((long) read);
            read = inputStream.read(i);
            j = j2;
        }
        return j;
    }

    public static /* synthetic */ byte[] readBytes$default(InputStream inputStream, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return readBytes(inputStream, i);
    }

    public static final byte[] readBytes(InputStream inputStream, int i) {
        Intrinsics.checkParameterIsNotNull(inputStream, "$receiver");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(i, inputStream.available()));
        copyTo$default(inputStream, byteArrayOutputStream, 0, 2, null);
        inputStream = byteArrayOutputStream.toByteArray();
        Intrinsics.checkExpressionValueIsNotNull(inputStream, "buffer.toByteArray()");
        return inputStream;
    }

    static /* synthetic */ BufferedInputStream buffered$default(InputStream inputStream, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return (inputStream instanceof BufferedInputStream) != 0 ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i);
    }

    static /* synthetic */ BufferedOutputStream buffered$default(OutputStream outputStream, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return (outputStream instanceof BufferedOutputStream) != 0 ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i);
    }
}
