package kotlin.io;

import com.facebook.internal.NativeProtocol;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import ru.rocketbank.core.model.provider.ProviderField;

/* compiled from: FileReadWrite.kt */
class FilesKt__FileReadWriteKt extends FilesKt__FilePathComponentsKt {
    private static final InputStreamReader reader(File file, Charset charset) {
        return new InputStreamReader(new FileInputStream(file), charset);
    }

    static /* synthetic */ InputStreamReader reader$default(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new InputStreamReader((InputStream) new FileInputStream(file), charset);
    }

    private static final BufferedReader bufferedReader(File file, Charset charset, int i) {
        return new BufferedReader((Reader) new InputStreamReader(new FileInputStream(file), charset), i);
    }

    static /* synthetic */ BufferedReader bufferedReader$default(File file, Charset charset, int i, int i2, Object obj) {
        if ((i2 & 1) != null) {
            charset = Charsets.UTF_8;
        }
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return new BufferedReader((Reader) new InputStreamReader((InputStream) new FileInputStream(file), charset), i);
    }

    private static final OutputStreamWriter writer(File file, Charset charset) {
        return new OutputStreamWriter(new FileOutputStream(file), charset);
    }

    static /* synthetic */ OutputStreamWriter writer$default(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new OutputStreamWriter((OutputStream) new FileOutputStream(file), charset);
    }

    private static final BufferedWriter bufferedWriter(File file, Charset charset, int i) {
        return new BufferedWriter((Writer) new OutputStreamWriter(new FileOutputStream(file), charset), i);
    }

    static /* synthetic */ BufferedWriter bufferedWriter$default(File file, Charset charset, int i, int i2, Object obj) {
        if ((i2 & 1) != null) {
            charset = Charsets.UTF_8;
        }
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return new BufferedWriter((Writer) new OutputStreamWriter((OutputStream) new FileOutputStream(file), charset), i);
    }

    private static final PrintWriter printWriter(File file, Charset charset) {
        return new PrintWriter((Writer) new BufferedWriter((Writer) new OutputStreamWriter(new FileOutputStream(file), charset), 8192));
    }

    static /* synthetic */ PrintWriter printWriter$default(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new PrintWriter((Writer) new BufferedWriter((Writer) new OutputStreamWriter((OutputStream) new FileOutputStream(file), charset), 8192));
    }

    public static final byte[] readBytes(File file) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Closeable fileInputStream = new FileInputStream(file);
        try {
            FileInputStream fileInputStream2 = (FileInputStream) fileInputStream;
            int i = 0;
            long length = file.length();
            if (length > 2147483647L) {
                StringBuilder stringBuilder = new StringBuilder("File ");
                stringBuilder.append(file);
                stringBuilder.append(" is too big (");
                stringBuilder.append(length);
                stringBuilder.append(" bytes) to fit in memory.");
                throw new OutOfMemoryError(stringBuilder.toString());
            }
            file = (int) length;
            byte[] bArr = new byte[file];
            while (file > null) {
                int read = fileInputStream2.read(bArr, i, file);
                if (read < 0) {
                    break;
                }
                file -= read;
                i += read;
            }
            if (file != null) {
                bArr = Arrays.copyOf(bArr, i);
                Intrinsics.checkExpressionValueIsNotNull(bArr, "java.util.Arrays.copyOf(this, newSize)");
            }
            CloseableKt.closeFinally(fileInputStream, null);
            return bArr;
        } catch (Throwable th) {
            CloseableKt.closeFinally(fileInputStream, file);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final void writeBytes(java.io.File r2, byte[] r3) {
        /*
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0);
        r0 = "array";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = new java.io.FileOutputStream;
        r0.<init>(r2);
        r0 = (java.io.Closeable) r0;
        r2 = 0;
        r1 = r0;
        r1 = (java.io.FileOutputStream) r1;	 Catch:{ Throwable -> 0x0020 }
        r1.write(r3);	 Catch:{ Throwable -> 0x0020 }
        r3 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x0020 }
        kotlin.io.CloseableKt.closeFinally(r0, r2);
        return;
    L_0x001e:
        r3 = move-exception;
        goto L_0x0022;
    L_0x0020:
        r2 = move-exception;
        throw r2;	 Catch:{ all -> 0x001e }
    L_0x0022:
        kotlin.io.CloseableKt.closeFinally(r0, r2);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FilesKt__FileReadWriteKt.writeBytes(java.io.File, byte[]):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final void appendBytes(java.io.File r2, byte[] r3) {
        /*
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0);
        r0 = "array";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = new java.io.FileOutputStream;
        r1 = 1;
        r0.<init>(r2, r1);
        r0 = (java.io.Closeable) r0;
        r2 = 0;
        r1 = r0;
        r1 = (java.io.FileOutputStream) r1;	 Catch:{ Throwable -> 0x0021 }
        r1.write(r3);	 Catch:{ Throwable -> 0x0021 }
        r3 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x0021 }
        kotlin.io.CloseableKt.closeFinally(r0, r2);
        return;
    L_0x001f:
        r3 = move-exception;
        goto L_0x0023;
    L_0x0021:
        r2 = move-exception;
        throw r2;	 Catch:{ all -> 0x001f }
    L_0x0023:
        kotlin.io.CloseableKt.closeFinally(r0, r2);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FilesKt__FileReadWriteKt.appendBytes(java.io.File, byte[]):void");
    }

    public static final String readText(File file, Charset charset) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(charset, "charset");
        return new String(readBytes(file), charset);
    }

    public static /* synthetic */ String readText$default(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return readText(file, charset);
    }

    public static final void writeText(File file, String str, Charset charset) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        Intrinsics.checkParameterIsNotNull(charset, "charset");
        str = str.getBytes(charset);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).getBytes(charset)");
        writeBytes(file, str);
    }

    public static /* synthetic */ void writeText$default(File file, String str, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        writeText(file, str, charset);
    }

    public static final void appendText(File file, String str, Charset charset) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        Intrinsics.checkParameterIsNotNull(charset, "charset");
        str = str.getBytes(charset);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).getBytes(charset)");
        appendBytes(file, str);
    }

    public static /* synthetic */ void appendText$default(File file, String str, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        appendText(file, str, charset);
    }

    public static final void forEachBlock(File file, Function2<? super byte[], ? super Integer, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, NativeProtocol.WEB_DIALOG_ACTION);
        forEachBlock(file, 4096, function2);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final void forEachBlock(java.io.File r3, int r4, kotlin.jvm.functions.Function2<? super byte[], ? super java.lang.Integer, kotlin.Unit> r5) {
        /*
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = "action";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0);
        r0 = 512; // 0x200 float:7.175E-43 double:2.53E-321;
        if (r4 >= r0) goto L_0x000f;
    L_0x000e:
        r4 = r0;
    L_0x000f:
        r4 = new byte[r4];
        r0 = new java.io.FileInputStream;
        r0.<init>(r3);
        r0 = (java.io.Closeable) r0;
        r3 = 0;
        r1 = r0;
        r1 = (java.io.FileInputStream) r1;	 Catch:{ Throwable -> 0x0032 }
    L_0x001c:
        r2 = r1.read(r4);	 Catch:{ Throwable -> 0x0032 }
        if (r2 <= 0) goto L_0x002a;
    L_0x0022:
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ Throwable -> 0x0032 }
        r5.invoke(r4, r2);	 Catch:{ Throwable -> 0x0032 }
        goto L_0x001c;
    L_0x002a:
        r4 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x0032 }
        kotlin.io.CloseableKt.closeFinally(r0, r3);
        return;
    L_0x0030:
        r4 = move-exception;
        goto L_0x0034;
    L_0x0032:
        r3 = move-exception;
        throw r3;	 Catch:{ all -> 0x0030 }
    L_0x0034:
        kotlin.io.CloseableKt.closeFinally(r0, r3);
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FilesKt__FileReadWriteKt.forEachBlock(java.io.File, int, kotlin.jvm.functions.Function2):void");
    }

    public static /* synthetic */ void forEachLine$default(File file, Charset charset, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        forEachLine(file, charset, function1);
    }

    public static final void forEachLine(File file, Charset charset, Function1<? super String, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(charset, "charset");
        Intrinsics.checkParameterIsNotNull(function1, NativeProtocol.WEB_DIALOG_ACTION);
        TextStreamsKt.forEachLine(new BufferedReader(new InputStreamReader(new FileInputStream(file), charset)), function1);
    }

    private static final FileInputStream inputStream(File file) {
        return new FileInputStream(file);
    }

    private static final FileOutputStream outputStream(File file) {
        return new FileOutputStream(file);
    }

    public static /* synthetic */ List readLines$default(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return readLines(file, charset);
    }

    public static final List<String> readLines(File file, Charset charset) {
        Intrinsics.checkParameterIsNotNull(file, "$receiver");
        Intrinsics.checkParameterIsNotNull(charset, "charset");
        ArrayList arrayList = new ArrayList();
        forEachLine(file, charset, new FilesKt__FileReadWriteKt$readLines$1(arrayList));
        return arrayList;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static /* synthetic */ java.lang.Object useLines$default(java.io.File r0, java.nio.charset.Charset r1, kotlin.jvm.functions.Function1 r2, int r3, java.lang.Object r4) {
        /*
        r3 = r3 & 1;
        if (r3 == 0) goto L_0x0006;
    L_0x0004:
        r1 = kotlin.text.Charsets.UTF_8;
    L_0x0006:
        r3 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r3);
        r3 = "charset";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r1, r3);
        r3 = "block";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r3);
        r3 = new java.io.FileInputStream;
        r3.<init>(r0);
        r3 = (java.io.InputStream) r3;
        r0 = new java.io.InputStreamReader;
        r0.<init>(r3, r1);
        r0 = (java.io.Reader) r0;
        r1 = new java.io.BufferedReader;
        r3 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r1.<init>(r0, r3);
        r1 = (java.io.Closeable) r1;
        r0 = 0;
        r3 = r1;
        r3 = (java.io.BufferedReader) r3;	 Catch:{ Throwable -> 0x0041 }
        r3 = kotlin.io.TextStreamsKt.lineSequence(r3);	 Catch:{ Throwable -> 0x0041 }
        r2 = r2.invoke(r3);	 Catch:{ Throwable -> 0x0041 }
        kotlin.internal.PlatformImplementationsKt.apiVersionIsAtLeast$4868d312();
        kotlin.io.CloseableKt.closeFinally(r1, r0);
        return r2;
    L_0x003f:
        r2 = move-exception;
        goto L_0x0043;
    L_0x0041:
        r0 = move-exception;
        throw r0;	 Catch:{ all -> 0x003f }
    L_0x0043:
        kotlin.internal.PlatformImplementationsKt.apiVersionIsAtLeast$4868d312();
        kotlin.io.CloseableKt.closeFinally(r1, r0);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FilesKt__FileReadWriteKt.useLines$default(java.io.File, java.nio.charset.Charset, kotlin.jvm.functions.Function1, int, java.lang.Object):java.lang.Object");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T useLines(java.io.File r1, java.nio.charset.Charset r2, kotlin.jvm.functions.Function1<? super kotlin.sequences.Sequence<java.lang.String>, ? extends T> r3) {
        /*
        r0 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r1, r0);
        r0 = "charset";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0);
        r0 = "block";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = new java.io.FileInputStream;
        r0.<init>(r1);
        r0 = (java.io.InputStream) r0;
        r1 = new java.io.InputStreamReader;
        r1.<init>(r0, r2);
        r1 = (java.io.Reader) r1;
        r2 = new java.io.BufferedReader;
        r0 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r2.<init>(r1, r0);
        r2 = (java.io.Closeable) r2;
        r1 = 0;
        r0 = r2;
        r0 = (java.io.BufferedReader) r0;	 Catch:{ Throwable -> 0x003b }
        r0 = kotlin.io.TextStreamsKt.lineSequence(r0);	 Catch:{ Throwable -> 0x003b }
        r3 = r3.invoke(r0);	 Catch:{ Throwable -> 0x003b }
        kotlin.internal.PlatformImplementationsKt.apiVersionIsAtLeast$4868d312();
        kotlin.io.CloseableKt.closeFinally(r2, r1);
        return r3;
    L_0x0039:
        r3 = move-exception;
        goto L_0x003d;
    L_0x003b:
        r1 = move-exception;
        throw r1;	 Catch:{ all -> 0x0039 }
    L_0x003d:
        kotlin.internal.PlatformImplementationsKt.apiVersionIsAtLeast$4868d312();
        kotlin.io.CloseableKt.closeFinally(r2, r1);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FilesKt__FileReadWriteKt.useLines(java.io.File, java.nio.charset.Charset, kotlin.jvm.functions.Function1):T");
    }
}
