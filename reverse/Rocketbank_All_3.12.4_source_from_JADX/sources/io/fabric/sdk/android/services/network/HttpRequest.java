package io.fabric.sdk.android.services.network;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Callable;
import kotlin.text.Typography;
import org.slf4j.Marker;

public final class HttpRequest {
    private static ConnectionFactory CONNECTION_FACTORY = ConnectionFactory.DEFAULT;
    private static final String[] EMPTY_STRINGS = new String[0];
    private int bufferSize = 8192;
    private HttpURLConnection connection = null;
    private boolean ignoreCloseExceptions = true;
    private boolean multipart;
    private RequestOutputStream output;
    private final String requestMethod;
    private boolean uncompress = false;
    public final URL url;

    public interface ConnectionFactory {
        public static final ConnectionFactory DEFAULT = new C12841();

        /* renamed from: io.fabric.sdk.android.services.network.HttpRequest$ConnectionFactory$1 */
        static class C12841 implements ConnectionFactory {
            C12841() {
            }

            public final HttpURLConnection create(URL url) throws IOException {
                return (HttpURLConnection) url.openConnection();
            }
        }

        HttpURLConnection create(URL url) throws IOException;
    }

    public static class HttpRequestException extends RuntimeException {
        private static final long serialVersionUID = -1170466989781746231L;

        protected HttpRequestException(IOException iOException) {
            super(iOException);
        }

        public IOException getCause() {
            return (IOException) super.getCause();
        }
    }

    public static abstract class Operation<V> implements Callable<V> {
        protected abstract void done() throws IOException;

        protected abstract V run() throws HttpRequestException, IOException;

        protected Operation() {
        }

        public V call() throws HttpRequestException {
            Throwable th;
            Object obj = 1;
            try {
                V run = run();
                try {
                    done();
                    return run;
                } catch (IOException e) {
                    throw new HttpRequestException(e);
                }
            } catch (HttpRequestException e2) {
                throw e2;
            } catch (IOException e3) {
                throw new HttpRequestException(e3);
            } catch (Throwable th2) {
                th = th2;
                done();
                throw th;
            }
        }
    }

    public static class RequestOutputStream extends BufferedOutputStream {
        private final CharsetEncoder encoder;

        public RequestOutputStream(OutputStream outputStream, String str, int i) {
            super(outputStream, i);
            this.encoder = Charset.forName(HttpRequest.access$000(str)).newEncoder();
        }

        public final RequestOutputStream write(String str) throws IOException {
            str = this.encoder.encode(CharBuffer.wrap(str));
            super.write(str.array(), 0, str.limit());
            return this;
        }
    }

    public static abstract class CloseOperation<V> extends Operation<V> {
        private final Closeable closeable;
        private final boolean ignoreCloseExceptions;

        protected CloseOperation(Closeable closeable, boolean z) {
            this.closeable = closeable;
            this.ignoreCloseExceptions = z;
        }

        protected final void done() throws java.io.IOException {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r1 = this;
            r0 = r1.closeable;
            r0 = r0 instanceof java.io.Flushable;
            if (r0 == 0) goto L_0x000d;
        L_0x0006:
            r0 = r1.closeable;
            r0 = (java.io.Flushable) r0;
            r0.flush();
        L_0x000d:
            r0 = r1.ignoreCloseExceptions;
            if (r0 == 0) goto L_0x0017;
        L_0x0011:
            r0 = r1.closeable;	 Catch:{ IOException -> 0x0016 }
            r0.close();	 Catch:{ IOException -> 0x0016 }
        L_0x0016:
            return;
        L_0x0017:
            r0 = r1.closeable;
            r0.close();
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.network.HttpRequest.CloseOperation.done():void");
        }
    }

    private static String encode(CharSequence charSequence) throws HttpRequestException {
        try {
            URL url = new URL(charSequence.toString());
            charSequence = url.getHost();
            int port = url.getPort();
            if (port != -1) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(charSequence);
                stringBuilder.append(':');
                stringBuilder.append(Integer.toString(port));
                charSequence = stringBuilder.toString();
            }
            try {
                charSequence = new URI(url.getProtocol(), charSequence, url.getPath(), url.getQuery(), null).toASCIIString();
                int indexOf = charSequence.indexOf(63);
                if (indexOf <= 0) {
                    return charSequence;
                }
                indexOf++;
                if (indexOf >= charSequence.length()) {
                    return charSequence;
                }
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(charSequence.substring(0, indexOf));
                stringBuilder2.append(charSequence.substring(indexOf).replace(Marker.ANY_NON_NULL_MARKER, "%2B"));
                return stringBuilder2.toString();
            } catch (CharSequence charSequence2) {
                IOException iOException = new IOException("Parsing URI failed");
                iOException.initCause(charSequence2);
                throw new HttpRequestException(iOException);
            }
        } catch (CharSequence charSequence22) {
            throw new HttpRequestException(charSequence22);
        }
    }

    private static String append(CharSequence charSequence, Map<?, ?> map) {
        charSequence = charSequence.toString();
        if (map != null) {
            if (!map.isEmpty()) {
                StringBuilder stringBuilder = new StringBuilder(charSequence);
                if (charSequence.indexOf(58) + 2 == charSequence.lastIndexOf(47)) {
                    stringBuilder.append('/');
                }
                int indexOf = charSequence.indexOf(63);
                int length = stringBuilder.length() - 1;
                if (indexOf == -1) {
                    stringBuilder.append('?');
                } else if (indexOf < length && charSequence.charAt(length) != 38) {
                    stringBuilder.append(Typography.amp);
                }
                charSequence = map.entrySet().iterator();
                Entry entry = (Entry) charSequence.next();
                stringBuilder.append(entry.getKey().toString());
                stringBuilder.append('=');
                map = entry.getValue();
                if (map != null) {
                    stringBuilder.append(map);
                }
                while (charSequence.hasNext() != null) {
                    stringBuilder.append(Typography.amp);
                    entry = (Entry) charSequence.next();
                    stringBuilder.append(entry.getKey().toString());
                    stringBuilder.append('=');
                    map = entry.getValue();
                    if (map != null) {
                        stringBuilder.append(map);
                    }
                }
                return stringBuilder.toString();
            }
        }
        return charSequence;
    }

    public static HttpRequest get$6df498ee(CharSequence charSequence, Map<?, ?> map) {
        return new HttpRequest(encode(append(charSequence, map)), "GET");
    }

    public static HttpRequest post$6df498ee(CharSequence charSequence, Map<?, ?> map) {
        return new HttpRequest(encode(append(charSequence, map)), "POST");
    }

    public static HttpRequest put(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "PUT");
    }

    public static HttpRequest delete(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "DELETE");
    }

    private HttpRequest(CharSequence charSequence, String str) throws HttpRequestException {
        try {
            this.url = new URL(charSequence.toString());
            this.requestMethod = str;
        } catch (CharSequence charSequence2) {
            throw new HttpRequestException(charSequence2);
        }
    }

    private HttpURLConnection createConnection() {
        try {
            HttpURLConnection create = CONNECTION_FACTORY.create(this.url);
            create.setRequestMethod(this.requestMethod);
            return create;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.connection == null) {
            this.connection = createConnection();
        }
        stringBuilder.append(this.connection.getRequestMethod());
        stringBuilder.append(' ');
        if (this.connection == null) {
            this.connection = createConnection();
        }
        stringBuilder.append(this.connection.getURL());
        return stringBuilder.toString();
    }

    public final HttpURLConnection getConnection() {
        if (this.connection == null) {
            this.connection = createConnection();
        }
        return this.connection;
    }

    public final int code() throws HttpRequestException {
        try {
            closeOutput();
            if (this.connection == null) {
                this.connection = createConnection();
            }
            return this.connection.getResponseCode();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    private InputStream stream() throws HttpRequestException {
        InputStream inputStream;
        if (code() < 400) {
            try {
                if (this.connection == null) {
                    this.connection = createConnection();
                }
                inputStream = this.connection.getInputStream();
            } catch (IOException e) {
                throw new HttpRequestException(e);
            }
        }
        if (this.connection == null) {
            this.connection = createConnection();
        }
        inputStream = this.connection.getErrorStream();
        if (inputStream == null) {
            try {
                if (this.connection == null) {
                    this.connection = createConnection();
                }
                inputStream = this.connection.getInputStream();
            } catch (IOException e2) {
                throw new HttpRequestException(e2);
            }
        }
        return inputStream;
    }

    public final String header(String str) throws HttpRequestException {
        closeOutputQuietly();
        if (this.connection == null) {
            this.connection = createConnection();
        }
        return this.connection.getHeaderField(str);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String getParam(java.lang.String r8, java.lang.String r9) {
        /*
        r0 = 0;
        if (r8 == 0) goto L_0x0071;
    L_0x0003:
        r1 = r8.length();
        if (r1 != 0) goto L_0x000a;
    L_0x0009:
        goto L_0x0071;
    L_0x000a:
        r1 = r8.length();
        r2 = 59;
        r3 = r8.indexOf(r2);
        r4 = 1;
        r3 = r3 + r4;
        if (r3 == 0) goto L_0x0070;
    L_0x0018:
        if (r3 != r1) goto L_0x001b;
    L_0x001a:
        goto L_0x0070;
    L_0x001b:
        r5 = r8.indexOf(r2, r3);
        r6 = -1;
        if (r5 != r6) goto L_0x0023;
    L_0x0022:
        r5 = r1;
    L_0x0023:
        if (r3 >= r5) goto L_0x006f;
    L_0x0025:
        r7 = 61;
        r7 = r8.indexOf(r7, r3);
        if (r7 == r6) goto L_0x0066;
    L_0x002d:
        if (r7 >= r5) goto L_0x0066;
    L_0x002f:
        r3 = r8.substring(r3, r7);
        r3 = r3.trim();
        r3 = r9.equals(r3);
        if (r3 == 0) goto L_0x0066;
    L_0x003d:
        r7 = r7 + 1;
        r3 = r8.substring(r7, r5);
        r3 = r3.trim();
        r7 = r3.length();
        if (r7 == 0) goto L_0x0066;
    L_0x004d:
        r8 = 2;
        if (r7 <= r8) goto L_0x0065;
    L_0x0050:
        r8 = 0;
        r8 = r3.charAt(r8);
        r9 = 34;
        if (r9 != r8) goto L_0x0065;
    L_0x0059:
        r7 = r7 - r4;
        r8 = r3.charAt(r7);
        if (r9 != r8) goto L_0x0065;
    L_0x0060:
        r8 = r3.substring(r4, r7);
        return r8;
    L_0x0065:
        return r3;
    L_0x0066:
        r3 = r5 + 1;
        r5 = r8.indexOf(r2, r3);
        if (r5 != r6) goto L_0x0023;
    L_0x006e:
        goto L_0x0022;
    L_0x006f:
        return r0;
    L_0x0070:
        return r0;
    L_0x0071:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.network.HttpRequest.getParam(java.lang.String, java.lang.String):java.lang.String");
    }

    private io.fabric.sdk.android.services.network.HttpRequest closeOutput() throws java.io.IOException {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = r2.output;
        if (r0 != 0) goto L_0x0005;
    L_0x0004:
        return r2;
    L_0x0005:
        r0 = r2.multipart;
        if (r0 == 0) goto L_0x0010;
    L_0x0009:
        r0 = r2.output;
        r1 = "\r\n--00content0boundary00--\r\n";
        r0.write(r1);
    L_0x0010:
        r0 = r2.ignoreCloseExceptions;
        if (r0 == 0) goto L_0x001a;
    L_0x0014:
        r0 = r2.output;	 Catch:{ IOException -> 0x001f }
        r0.close();	 Catch:{ IOException -> 0x001f }
        goto L_0x001f;
    L_0x001a:
        r0 = r2.output;
        r0.close();
    L_0x001f:
        r0 = 0;
        r2.output = r0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.network.HttpRequest.closeOutput():io.fabric.sdk.android.services.network.HttpRequest");
    }

    private HttpRequest closeOutputQuietly() throws HttpRequestException {
        try {
            return closeOutput();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    private HttpRequest openOutput() throws IOException {
        if (this.output != null) {
            return this;
        }
        if (this.connection == null) {
            this.connection = createConnection();
        }
        this.connection.setDoOutput(true);
        if (this.connection == null) {
            this.connection = createConnection();
        }
        String param = getParam(this.connection.getRequestProperty("Content-Type"), "charset");
        if (this.connection == null) {
            this.connection = createConnection();
        }
        this.output = new RequestOutputStream(this.connection.getOutputStream(), param, this.bufferSize);
        return this;
    }

    private HttpRequest startPart() throws IOException {
        if (this.multipart) {
            this.output.write("\r\n--00content0boundary00\r\n");
        } else {
            this.multipart = true;
            String str = "multipart/form-data; boundary=00content0boundary00";
            String str2 = "Content-Type";
            if (this.connection == null) {
                this.connection = createConnection();
            }
            this.connection.setRequestProperty(str2, str);
            openOutput();
            this.output.write("--00content0boundary00\r\n");
        }
        return this;
    }

    private HttpRequest writePartHeader(String str, String str2, String str3) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("form-data; name=\"");
        stringBuilder.append(str);
        if (str2 != null) {
            stringBuilder.append("\"; filename=\"");
            stringBuilder.append(str2);
        }
        stringBuilder.append(Typography.quote);
        send("Content-Disposition").send(": ").send(stringBuilder.toString()).send("\r\n");
        if (str3 != null) {
            send("Content-Type").send(": ").send(str3).send("\r\n");
        }
        return send("\r\n");
    }

    public final HttpRequest part$d4ee95d$41e34ca7(String str, String str2) throws HttpRequestException {
        try {
            startPart();
            writePartHeader(str, null, null);
            this.output.write(str2);
            return this;
        } catch (String str3) {
            throw new HttpRequestException(str3);
        }
    }

    public final io.fabric.sdk.android.services.network.HttpRequest part(java.lang.String r4, java.lang.String r5, java.lang.String r6, java.io.File r7) throws io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = 0;
        r1 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x001b }
        r2 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x001b }
        r2.<init>(r7);	 Catch:{ IOException -> 0x001b }
        r1.<init>(r2);	 Catch:{ IOException -> 0x001b }
        r4 = r3.part(r4, r5, r6, r1);	 Catch:{ IOException -> 0x0016, all -> 0x0013 }
        r1.close();	 Catch:{ IOException -> 0x0012 }
    L_0x0012:
        return r4;
    L_0x0013:
        r4 = move-exception;
        r0 = r1;
        goto L_0x0022;
    L_0x0016:
        r4 = move-exception;
        r0 = r1;
        goto L_0x001c;
    L_0x0019:
        r4 = move-exception;
        goto L_0x0022;
    L_0x001b:
        r4 = move-exception;
    L_0x001c:
        r5 = new io.fabric.sdk.android.services.network.HttpRequest$HttpRequestException;	 Catch:{ all -> 0x0019 }
        r5.<init>(r4);	 Catch:{ all -> 0x0019 }
        throw r5;	 Catch:{ all -> 0x0019 }
    L_0x0022:
        if (r0 == 0) goto L_0x0027;
    L_0x0024:
        r0.close();	 Catch:{ IOException -> 0x0027 }
    L_0x0027:
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.network.HttpRequest.part(java.lang.String, java.lang.String, java.lang.String, java.io.File):io.fabric.sdk.android.services.network.HttpRequest");
    }

    public final HttpRequest part(String str, String str2, String str3, InputStream inputStream) throws HttpRequestException {
        try {
            startPart();
            writePartHeader(str, str2, str3);
            final OutputStream outputStream = this.output;
            final InputStream inputStream2 = inputStream;
            new CloseOperation<HttpRequest>(inputStream, this.ignoreCloseExceptions) {
                public final /* bridge */ /* synthetic */ Object run() throws HttpRequestException, IOException {
                    byte[] bArr = new byte[HttpRequest.this.bufferSize];
                    while (true) {
                        int read = inputStream2.read(bArr);
                        if (read == -1) {
                            return HttpRequest.this;
                        }
                        outputStream.write(bArr, 0, read);
                    }
                }
            }.call();
            return this;
        } catch (String str4) {
            throw new HttpRequestException(str4);
        }
    }

    private HttpRequest send(CharSequence charSequence) throws HttpRequestException {
        try {
            openOutput();
            this.output.write(charSequence.toString());
            return this;
        } catch (CharSequence charSequence2) {
            throw new HttpRequestException(charSequence2);
        }
    }

    public final String body(String str) throws HttpRequestException {
        OutputStream byteArrayOutputStream;
        String str2 = "Content-Length";
        closeOutputQuietly();
        if (this.connection == null) {
            this.connection = createConnection();
        }
        int headerFieldInt = this.connection.getHeaderFieldInt(str2, -1);
        if (headerFieldInt > 0) {
            byteArrayOutputStream = new ByteArrayOutputStream(headerFieldInt);
        } else {
            byteArrayOutputStream = new ByteArrayOutputStream();
        }
        try {
            final InputStream bufferedInputStream = new BufferedInputStream(stream(), this.bufferSize);
            final OutputStream outputStream = byteArrayOutputStream;
            /* anonymous class already generated */.call();
            if (str == null || str.length() <= 0) {
                str = "UTF-8";
            }
            return byteArrayOutputStream.toString(str);
        } catch (String str3) {
            throw new HttpRequestException(str3);
        }
    }

    public final String body() throws HttpRequestException {
        String str = "Content-Type";
        String str2 = "charset";
        closeOutputQuietly();
        if (this.connection == null) {
            this.connection = createConnection();
        }
        return body(getParam(this.connection.getHeaderField(str), str2));
    }

    public final HttpRequest header(String str, String str2) {
        if (this.connection == null) {
            this.connection = createConnection();
        }
        this.connection.setRequestProperty(str, str2);
        return this;
    }

    public final String charset() {
        String str = "Content-Type";
        String str2 = "charset";
        closeOutputQuietly();
        if (this.connection == null) {
            this.connection = createConnection();
        }
        return getParam(this.connection.getHeaderField(str), str2);
    }

    public final String method() {
        if (this.connection == null) {
            this.connection = createConnection();
        }
        return this.connection.getRequestMethod();
    }

    static /* synthetic */ String access$000(String str) {
        return (str == null || str.length() <= 0) ? "UTF-8" : str;
    }
}
