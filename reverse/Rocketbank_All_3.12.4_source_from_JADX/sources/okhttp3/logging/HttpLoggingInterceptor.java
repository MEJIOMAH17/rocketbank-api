package okhttp3.logging;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSource;

public final class HttpLoggingInterceptor implements Interceptor {
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private volatile Level level;
    private final Logger logger;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface Logger {
        public static final Logger DEFAULT = new C13151();

        /* renamed from: okhttp3.logging.HttpLoggingInterceptor$Logger$1 */
        class C13151 implements Logger {
            C13151() {
            }

            public final void log(String str) {
                Platform.get().log(4, str, null);
            }
        }

        void log(String str);
    }

    public final Response intercept(Chain chain) throws IOException {
        Chain chain2 = chain;
        Level level = this.level;
        Request request = chain.request();
        if (Level.NONE == null) {
            return chain2.proceed(request);
        }
        Object obj;
        RequestBody body;
        Object obj2;
        Connection connection;
        Object protocol;
        StringBuilder stringBuilder;
        String stringBuilder2;
        Logger logger;
        StringBuilder stringBuilder3;
        Headers headers;
        int size;
        int i;
        String name;
        StringBuilder stringBuilder4;
        String str;
        Object obj3;
        Logger logger2;
        StringBuilder stringBuilder5;
        Buffer buffer;
        Charset charset;
        MediaType contentType;
        long nanoTime;
        Response proceed;
        ResponseBody body2;
        long contentLength;
        StringBuilder stringBuilder6;
        int i2;
        Object obj4;
        Buffer buffer2;
        Charset charset2;
        MediaType contentType2;
        Logger logger3;
        Object obj5 = Level.BODY == null ? 1 : null;
        if (obj5 == null) {
            if (Level.HEADERS != null) {
                obj = null;
                body = request.body();
                obj2 = body == null ? 1 : null;
                connection = chain.connection();
                protocol = connection == null ? connection.protocol() : Protocol.HTTP_1_1;
                stringBuilder = new StringBuilder("--> ");
                stringBuilder.append(request.method());
                stringBuilder.append(' ');
                stringBuilder.append(request.url());
                stringBuilder.append(' ');
                stringBuilder.append(protocol);
                stringBuilder2 = stringBuilder.toString();
                if (obj == null && obj2 != null) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(stringBuilder2);
                    stringBuilder.append(" (");
                    stringBuilder.append(body.contentLength());
                    stringBuilder.append("-byte body)");
                    stringBuilder2 = stringBuilder.toString();
                }
                r1.logger.log(stringBuilder2);
                if (obj != null) {
                    if (obj2 != null) {
                        if (body.contentType() != null) {
                            logger = r1.logger;
                            stringBuilder3 = new StringBuilder("Content-Type: ");
                            stringBuilder3.append(body.contentType());
                            logger.log(stringBuilder3.toString());
                        }
                        if (body.contentLength() != -1) {
                            logger = r1.logger;
                            stringBuilder3 = new StringBuilder("Content-Length: ");
                            stringBuilder3.append(body.contentLength());
                            logger.log(stringBuilder3.toString());
                        }
                    }
                    headers = request.headers();
                    size = headers.size();
                    for (i = 0; i < size; i++) {
                        name = headers.name(i);
                        if (!("Content-Type".equalsIgnoreCase(name) || "Content-Length".equalsIgnoreCase(name))) {
                            Logger logger4 = r1.logger;
                            stringBuilder4 = new StringBuilder();
                            stringBuilder4.append(name);
                            stringBuilder4.append(": ");
                            stringBuilder4.append(headers.value(i));
                            logger4.log(stringBuilder4.toString());
                        }
                    }
                    if (obj5 != null) {
                        if (obj2 == null) {
                            str = request.headers().get("Content-Encoding");
                            obj3 = (str != null || str.equalsIgnoreCase("identity")) ? null : 1;
                            if (obj3 == null) {
                                logger2 = r1.logger;
                                stringBuilder5 = new StringBuilder("--> END ");
                                stringBuilder5.append(request.method());
                                stringBuilder5.append(" (encoded body omitted)");
                                logger2.log(stringBuilder5.toString());
                            } else {
                                buffer = new Buffer();
                                body.writeTo(buffer);
                                charset = UTF8;
                                contentType = body.contentType();
                                if (contentType != null) {
                                    charset = contentType.charset(UTF8);
                                }
                                r1.logger.log("");
                                if (isPlaintext(buffer)) {
                                    logger2 = r1.logger;
                                    stringBuilder5 = new StringBuilder("--> END ");
                                    stringBuilder5.append(request.method());
                                    stringBuilder5.append(" (binary ");
                                    stringBuilder5.append(body.contentLength());
                                    stringBuilder5.append("-byte body omitted)");
                                    logger2.log(stringBuilder5.toString());
                                } else {
                                    r1.logger.log(buffer.readString(charset));
                                    logger2 = r1.logger;
                                    stringBuilder5 = new StringBuilder("--> END ");
                                    stringBuilder5.append(request.method());
                                    stringBuilder5.append(" (");
                                    stringBuilder5.append(body.contentLength());
                                    stringBuilder5.append("-byte body)");
                                    logger2.log(stringBuilder5.toString());
                                }
                            }
                        }
                    }
                    logger2 = r1.logger;
                    stringBuilder5 = new StringBuilder("--> END ");
                    stringBuilder5.append(request.method());
                    logger2.log(stringBuilder5.toString());
                }
                nanoTime = System.nanoTime();
                proceed = chain2.proceed(request);
                nanoTime = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
                body2 = proceed.body();
                contentLength = body2.contentLength();
                if (contentLength == -1) {
                    StringBuilder stringBuilder7 = new StringBuilder();
                    stringBuilder7.append(contentLength);
                    stringBuilder7.append("-byte");
                    stringBuilder2 = stringBuilder7.toString();
                } else {
                    stringBuilder2 = "unknown-length";
                }
                Logger logger5 = r1.logger;
                stringBuilder4 = new StringBuilder("<-- ");
                stringBuilder4.append(proceed.code());
                stringBuilder4.append(' ');
                stringBuilder4.append(proceed.message());
                stringBuilder4.append(' ');
                stringBuilder4.append(proceed.request().url());
                stringBuilder4.append(" (");
                stringBuilder4.append(nanoTime);
                stringBuilder4.append("ms");
                if (obj != null) {
                    stringBuilder6 = new StringBuilder(", ");
                    stringBuilder6.append(stringBuilder2);
                    stringBuilder6.append(" body");
                    str = stringBuilder6.toString();
                } else {
                    str = "";
                }
                stringBuilder4.append(str);
                stringBuilder4.append(')');
                logger5.log(stringBuilder4.toString());
                if (obj != null) {
                    headers = proceed.headers();
                    size = headers.size();
                    for (i2 = 0; i2 < size; i2++) {
                        Logger logger6 = r1.logger;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append(headers.name(i2));
                        stringBuilder.append(": ");
                        stringBuilder.append(headers.value(i2));
                        logger6.log(stringBuilder.toString());
                    }
                    if (obj5 != null) {
                        if (!HttpHeaders.hasBody(proceed)) {
                            String str2 = proceed.headers().get("Content-Encoding");
                            obj4 = (str2 != null || str2.equalsIgnoreCase("identity")) ? null : 1;
                            if (obj4 == null) {
                                r1.logger.log("<-- END HTTP (encoded body omitted)");
                            } else {
                                BufferedSource source = body2.source();
                                source.request(Long.MAX_VALUE);
                                buffer2 = source.buffer();
                                charset2 = UTF8;
                                contentType2 = body2.contentType();
                                if (contentType2 != null) {
                                    charset2 = contentType2.charset(UTF8);
                                }
                                if (isPlaintext(buffer2)) {
                                    r1.logger.log("");
                                    logger3 = r1.logger;
                                    stringBuilder6 = new StringBuilder("<-- END HTTP (binary ");
                                    stringBuilder6.append(buffer2.size());
                                    stringBuilder6.append("-byte body omitted)");
                                    logger3.log(stringBuilder6.toString());
                                    return proceed;
                                }
                                if (contentLength != 0) {
                                    r1.logger.log("");
                                    r1.logger.log(buffer2.clone().readString(charset2));
                                }
                                logger3 = r1.logger;
                                stringBuilder6 = new StringBuilder("<-- END HTTP (");
                                stringBuilder6.append(buffer2.size());
                                stringBuilder6.append("-byte body)");
                                logger3.log(stringBuilder6.toString());
                            }
                        }
                    }
                    r1.logger.log("<-- END HTTP");
                }
                return proceed;
            }
        }
        obj = 1;
        body = request.body();
        if (body == null) {
        }
        connection = chain.connection();
        if (connection == null) {
        }
        stringBuilder = new StringBuilder("--> ");
        stringBuilder.append(request.method());
        stringBuilder.append(' ');
        stringBuilder.append(request.url());
        stringBuilder.append(' ');
        stringBuilder.append(protocol);
        stringBuilder2 = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append(stringBuilder2);
        stringBuilder.append(" (");
        stringBuilder.append(body.contentLength());
        stringBuilder.append("-byte body)");
        stringBuilder2 = stringBuilder.toString();
        r1.logger.log(stringBuilder2);
        if (obj != null) {
            if (obj2 != null) {
                if (body.contentType() != null) {
                    logger = r1.logger;
                    stringBuilder3 = new StringBuilder("Content-Type: ");
                    stringBuilder3.append(body.contentType());
                    logger.log(stringBuilder3.toString());
                }
                if (body.contentLength() != -1) {
                    logger = r1.logger;
                    stringBuilder3 = new StringBuilder("Content-Length: ");
                    stringBuilder3.append(body.contentLength());
                    logger.log(stringBuilder3.toString());
                }
            }
            headers = request.headers();
            size = headers.size();
            for (i = 0; i < size; i++) {
                name = headers.name(i);
                Logger logger42 = r1.logger;
                stringBuilder4 = new StringBuilder();
                stringBuilder4.append(name);
                stringBuilder4.append(": ");
                stringBuilder4.append(headers.value(i));
                logger42.log(stringBuilder4.toString());
            }
            if (obj5 != null) {
                if (obj2 == null) {
                    str = request.headers().get("Content-Encoding");
                    if (str != null) {
                    }
                    if (obj3 == null) {
                        buffer = new Buffer();
                        body.writeTo(buffer);
                        charset = UTF8;
                        contentType = body.contentType();
                        if (contentType != null) {
                            charset = contentType.charset(UTF8);
                        }
                        r1.logger.log("");
                        if (isPlaintext(buffer)) {
                            logger2 = r1.logger;
                            stringBuilder5 = new StringBuilder("--> END ");
                            stringBuilder5.append(request.method());
                            stringBuilder5.append(" (binary ");
                            stringBuilder5.append(body.contentLength());
                            stringBuilder5.append("-byte body omitted)");
                            logger2.log(stringBuilder5.toString());
                        } else {
                            r1.logger.log(buffer.readString(charset));
                            logger2 = r1.logger;
                            stringBuilder5 = new StringBuilder("--> END ");
                            stringBuilder5.append(request.method());
                            stringBuilder5.append(" (");
                            stringBuilder5.append(body.contentLength());
                            stringBuilder5.append("-byte body)");
                            logger2.log(stringBuilder5.toString());
                        }
                    } else {
                        logger2 = r1.logger;
                        stringBuilder5 = new StringBuilder("--> END ");
                        stringBuilder5.append(request.method());
                        stringBuilder5.append(" (encoded body omitted)");
                        logger2.log(stringBuilder5.toString());
                    }
                }
            }
            logger2 = r1.logger;
            stringBuilder5 = new StringBuilder("--> END ");
            stringBuilder5.append(request.method());
            logger2.log(stringBuilder5.toString());
        }
        nanoTime = System.nanoTime();
        try {
            proceed = chain2.proceed(request);
            nanoTime = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            body2 = proceed.body();
            contentLength = body2.contentLength();
            if (contentLength == -1) {
                stringBuilder2 = "unknown-length";
            } else {
                StringBuilder stringBuilder72 = new StringBuilder();
                stringBuilder72.append(contentLength);
                stringBuilder72.append("-byte");
                stringBuilder2 = stringBuilder72.toString();
            }
            Logger logger52 = r1.logger;
            stringBuilder4 = new StringBuilder("<-- ");
            stringBuilder4.append(proceed.code());
            stringBuilder4.append(' ');
            stringBuilder4.append(proceed.message());
            stringBuilder4.append(' ');
            stringBuilder4.append(proceed.request().url());
            stringBuilder4.append(" (");
            stringBuilder4.append(nanoTime);
            stringBuilder4.append("ms");
            if (obj != null) {
                str = "";
            } else {
                stringBuilder6 = new StringBuilder(", ");
                stringBuilder6.append(stringBuilder2);
                stringBuilder6.append(" body");
                str = stringBuilder6.toString();
            }
            stringBuilder4.append(str);
            stringBuilder4.append(')');
            logger52.log(stringBuilder4.toString());
            if (obj != null) {
                headers = proceed.headers();
                size = headers.size();
                for (i2 = 0; i2 < size; i2++) {
                    Logger logger62 = r1.logger;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(headers.name(i2));
                    stringBuilder.append(": ");
                    stringBuilder.append(headers.value(i2));
                    logger62.log(stringBuilder.toString());
                }
                if (obj5 != null) {
                    if (!HttpHeaders.hasBody(proceed)) {
                        String str22 = proceed.headers().get("Content-Encoding");
                        if (str22 != null) {
                        }
                        if (obj4 == null) {
                            BufferedSource source2 = body2.source();
                            source2.request(Long.MAX_VALUE);
                            buffer2 = source2.buffer();
                            charset2 = UTF8;
                            contentType2 = body2.contentType();
                            if (contentType2 != null) {
                                charset2 = contentType2.charset(UTF8);
                            }
                            if (isPlaintext(buffer2)) {
                                if (contentLength != 0) {
                                    r1.logger.log("");
                                    r1.logger.log(buffer2.clone().readString(charset2));
                                }
                                logger3 = r1.logger;
                                stringBuilder6 = new StringBuilder("<-- END HTTP (");
                                stringBuilder6.append(buffer2.size());
                                stringBuilder6.append("-byte body)");
                                logger3.log(stringBuilder6.toString());
                            } else {
                                r1.logger.log("");
                                logger3 = r1.logger;
                                stringBuilder6 = new StringBuilder("<-- END HTTP (binary ");
                                stringBuilder6.append(buffer2.size());
                                stringBuilder6.append("-byte body omitted)");
                                logger3.log(stringBuilder6.toString());
                                return proceed;
                            }
                        }
                        r1.logger.log("<-- END HTTP (encoded body omitted)");
                    }
                }
                r1.logger.log("<-- END HTTP");
            }
            return proceed;
        } catch (Exception e) {
            r1.logger.log("<-- HTTP FAILED: ".concat(String.valueOf(e)));
            throw e;
        }
    }

    private static boolean isPlaintext(okio.Buffer r8) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = 0;
        r7 = new okio.Buffer;	 Catch:{ EOFException -> 0x003f }
        r7.<init>();	 Catch:{ EOFException -> 0x003f }
        r1 = r8.size();	 Catch:{ EOFException -> 0x003f }
        r3 = 64;	 Catch:{ EOFException -> 0x003f }
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));	 Catch:{ EOFException -> 0x003f }
        if (r5 >= 0) goto L_0x0016;	 Catch:{ EOFException -> 0x003f }
    L_0x0010:
        r1 = r8.size();	 Catch:{ EOFException -> 0x003f }
        r5 = r1;	 Catch:{ EOFException -> 0x003f }
        goto L_0x0017;	 Catch:{ EOFException -> 0x003f }
    L_0x0016:
        r5 = r3;	 Catch:{ EOFException -> 0x003f }
    L_0x0017:
        r3 = 0;	 Catch:{ EOFException -> 0x003f }
        r1 = r8;	 Catch:{ EOFException -> 0x003f }
        r2 = r7;	 Catch:{ EOFException -> 0x003f }
        r1.copyTo(r2, r3, r5);	 Catch:{ EOFException -> 0x003f }
        r8 = r0;	 Catch:{ EOFException -> 0x003f }
    L_0x001f:
        r1 = 16;	 Catch:{ EOFException -> 0x003f }
        if (r8 >= r1) goto L_0x003d;	 Catch:{ EOFException -> 0x003f }
    L_0x0023:
        r1 = r7.exhausted();	 Catch:{ EOFException -> 0x003f }
        if (r1 != 0) goto L_0x003d;	 Catch:{ EOFException -> 0x003f }
    L_0x0029:
        r1 = r7.readUtf8CodePoint();	 Catch:{ EOFException -> 0x003f }
        r2 = java.lang.Character.isISOControl(r1);	 Catch:{ EOFException -> 0x003f }
        if (r2 == 0) goto L_0x003a;	 Catch:{ EOFException -> 0x003f }
    L_0x0033:
        r1 = java.lang.Character.isWhitespace(r1);	 Catch:{ EOFException -> 0x003f }
        if (r1 != 0) goto L_0x003a;
    L_0x0039:
        return r0;
    L_0x003a:
        r8 = r8 + 1;
        goto L_0x001f;
    L_0x003d:
        r8 = 1;
        return r8;
    L_0x003f:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.logging.HttpLoggingInterceptor.isPlaintext(okio.Buffer):boolean");
    }
}
