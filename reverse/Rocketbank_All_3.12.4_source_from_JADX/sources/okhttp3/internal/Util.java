package okhttp3.internal;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.ByteString;

public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final RequestBody EMPTY_REQUEST = RequestBody.create(null, EMPTY_BYTE_ARRAY);
    public static final ResponseBody EMPTY_RESPONSE = ResponseBody.create(null, EMPTY_BYTE_ARRAY);
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    public static final Comparator<String> NATURAL_ORDER = new C07711();
    public static final TimeZone UTC = TimeZone.getTimeZone("GMT");
    private static final Charset UTF_16_BE = Charset.forName("UTF-16BE");
    private static final ByteString UTF_16_BE_BOM = ByteString.decodeHex("feff");
    private static final Charset UTF_16_LE = Charset.forName("UTF-16LE");
    private static final ByteString UTF_16_LE_BOM = ByteString.decodeHex("fffe");
    private static final Charset UTF_32_BE = Charset.forName("UTF-32BE");
    private static final ByteString UTF_32_BE_BOM = ByteString.decodeHex("0000ffff");
    private static final Charset UTF_32_LE = Charset.forName("UTF-32LE");
    private static final ByteString UTF_32_LE_BOM = ByteString.decodeHex("ffff0000");
    public static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final ByteString UTF_8_BOM = ByteString.decodeHex("efbbbf");
    private static final Pattern VERIFY_AS_IP_ADDRESS = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* renamed from: okhttp3.internal.Util$1 */
    class C07711 implements Comparator<String> {
        C07711() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            return ((String) obj).compareTo((String) obj2);
        }
    }

    /* renamed from: okhttp3.internal.Util$2 */
    class C07722 implements ThreadFactory {
        final /* synthetic */ boolean val$daemon;
        final /* synthetic */ String val$name;

        C07722(String str, boolean z) {
            this.val$name = str;
            this.val$daemon = z;
        }

        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.val$name);
            thread.setDaemon(this.val$daemon);
            return thread;
        }
    }

    public static int decodeHexDigit(char c) {
        return (c < '0' || c > '9') ? (c < 'a' || c > 'f') ? (c < 'A' || c > 'F') ? -1 : (c - 65) + 10 : (c - 97) + 10 : c - 48;
    }

    public static void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) >= 0 && j2 <= j) {
            if (j - j2 >= j3) {
                return;
            }
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public static boolean equal(Object obj, Object obj2) {
        if (obj != obj2) {
            if (obj == null || obj.equals(obj2) == null) {
                return null;
            }
        }
        return true;
    }

    public static void closeQuietly(java.io.Closeable r0) {
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
        if (r0 == 0) goto L_0x0008;
    L_0x0002:
        r0.close();	 Catch:{ RuntimeException -> 0x0006, Exception -> 0x0008 }
        return;
    L_0x0006:
        r0 = move-exception;
        throw r0;
    L_0x0008:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.closeQuietly(java.io.Closeable):void");
    }

    public static void closeQuietly(java.net.Socket r2) {
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
        if (r2 == 0) goto L_0x0028;
    L_0x0002:
        r2.close();	 Catch:{ AssertionError -> 0x0008, RuntimeException -> 0x0006, Exception -> 0x0028 }
        return;
    L_0x0006:
        r2 = move-exception;
        throw r2;
    L_0x0008:
        r2 = move-exception;
        r0 = r2.getCause();
        if (r0 == 0) goto L_0x0023;
    L_0x000f:
        r0 = r2.getMessage();
        if (r0 == 0) goto L_0x0023;
    L_0x0015:
        r0 = r2.getMessage();
        r1 = "getsockname failed";
        r0 = r0.contains(r1);
        if (r0 == 0) goto L_0x0023;
    L_0x0021:
        r0 = 1;
        goto L_0x0024;
    L_0x0023:
        r0 = 0;
    L_0x0024:
        if (r0 != 0) goto L_0x0027;
    L_0x0026:
        throw r2;
    L_0x0027:
        return;
    L_0x0028:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.closeQuietly(java.net.Socket):void");
    }

    public static boolean discard$1a4e8ddd(okio.Source r1, java.util.concurrent.TimeUnit r2) {
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
        r0 = 100;
        r1 = skipAll(r1, r0, r2);	 Catch:{ IOException -> 0x0007 }
        return r1;
    L_0x0007:
        r1 = 0;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.discard$1a4e8ddd(okio.Source, java.util.concurrent.TimeUnit):boolean");
    }

    public static boolean skipAll(okio.Source r11, int r12, java.util.concurrent.TimeUnit r13) throws java.io.IOException {
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
        r0 = java.lang.System.nanoTime();
        r2 = r11.timeout();
        r2 = r2.hasDeadline();
        r3 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        if (r2 == 0) goto L_0x001e;
    L_0x0013:
        r2 = r11.timeout();
        r5 = r2.deadlineNanoTime();
        r7 = r5 - r0;
        goto L_0x001f;
    L_0x001e:
        r7 = r3;
    L_0x001f:
        r2 = r11.timeout();
        r5 = (long) r12;
        r12 = r13.toNanos(r5);
        r12 = java.lang.Math.min(r7, r12);
        r5 = r0 + r12;
        r2.deadlineNanoTime(r5);
        r12 = new okio.Buffer;	 Catch:{ InterruptedIOException -> 0x0074, all -> 0x005d }
        r12.<init>();	 Catch:{ InterruptedIOException -> 0x0074, all -> 0x005d }
    L_0x0036:
        r5 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;	 Catch:{ InterruptedIOException -> 0x0074, all -> 0x005d }
        r5 = r11.read(r12, r5);	 Catch:{ InterruptedIOException -> 0x0074, all -> 0x005d }
        r9 = -1;	 Catch:{ InterruptedIOException -> 0x0074, all -> 0x005d }
        r13 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1));	 Catch:{ InterruptedIOException -> 0x0074, all -> 0x005d }
        if (r13 == 0) goto L_0x0046;	 Catch:{ InterruptedIOException -> 0x0074, all -> 0x005d }
    L_0x0042:
        r12.clear();	 Catch:{ InterruptedIOException -> 0x0074, all -> 0x005d }
        goto L_0x0036;
    L_0x0046:
        r12 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1));
        if (r12 != 0) goto L_0x0052;
    L_0x004a:
        r11 = r11.timeout();
        r11.clearDeadline();
        goto L_0x005b;
    L_0x0052:
        r11 = r11.timeout();
        r12 = r0 + r7;
        r11.deadlineNanoTime(r12);
    L_0x005b:
        r11 = 1;
        return r11;
    L_0x005d:
        r12 = move-exception;
        r13 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1));
        if (r13 != 0) goto L_0x006a;
    L_0x0062:
        r11 = r11.timeout();
        r11.clearDeadline();
        goto L_0x0073;
    L_0x006a:
        r11 = r11.timeout();
        r2 = r0 + r7;
        r11.deadlineNanoTime(r2);
    L_0x0073:
        throw r12;
    L_0x0074:
        r12 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1));
        if (r12 != 0) goto L_0x0080;
    L_0x0078:
        r11 = r11.timeout();
        r11.clearDeadline();
        goto L_0x0089;
    L_0x0080:
        r11 = r11.timeout();
        r12 = r0 + r7;
        r11.deadlineNanoTime(r12);
    L_0x0089:
        r11 = 0;
        return r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.skipAll(okio.Source, int, java.util.concurrent.TimeUnit):boolean");
    }

    public static <T> List<T> immutableList(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> immutableList(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory threadFactory(String str, boolean z) {
        return new C07722(str, z);
    }

    public static String[] intersect(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        List arrayList = new ArrayList();
        for (Object obj : strArr) {
            for (Object compare : strArr2) {
                if (comparator.compare(obj, compare) == 0) {
                    arrayList.add(obj);
                    break;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean nonEmptyIntersection(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (!(strArr == null || strArr2 == null || strArr.length == 0)) {
            if (strArr2.length != 0) {
                for (Object obj : strArr) {
                    for (Object compare : strArr2) {
                        if (comparator.compare(obj, compare) == 0) {
                            return true;
                        }
                    }
                }
                return false;
            }
        }
        return false;
    }

    public static String hostHeader(HttpUrl httpUrl, boolean z) {
        String stringBuilder;
        if (httpUrl.host().contains(":")) {
            StringBuilder stringBuilder2 = new StringBuilder("[");
            stringBuilder2.append(httpUrl.host());
            stringBuilder2.append("]");
            stringBuilder = stringBuilder2.toString();
        } else {
            stringBuilder = httpUrl.host();
        }
        if (!z) {
            if (httpUrl.port() == HttpUrl.defaultPort(httpUrl.scheme())) {
                return stringBuilder;
            }
        }
        z = new StringBuilder();
        z.append(stringBuilder);
        z.append(":");
        z.append(httpUrl.port());
        return z.toString();
    }

    public static boolean isAndroidGetsocknameError(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || assertionError.getMessage().contains("getsockname failed") == null) ? null : true;
    }

    public static int indexOf(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    public static String[] concat(String[] strArr, String str) {
        Object obj = new String[(strArr.length + 1)];
        System.arraycopy(strArr, 0, obj, 0, strArr.length);
        obj[obj.length - 1] = str;
        return obj;
    }

    public static int skipLeadingAsciiWhitespace(String str, int i, int i2) {
        while (i < i2) {
            switch (str.charAt(i)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                    i++;
                default:
                    return i;
            }
        }
        return i2;
    }

    public static int skipTrailingAsciiWhitespace(String str, int i, int i2) {
        i2--;
        while (i2 >= i) {
            switch (str.charAt(i2)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                    i2--;
                default:
                    return i2 + 1;
            }
        }
        return i;
    }

    public static String trimSubstring(String str, int i, int i2) {
        i = skipLeadingAsciiWhitespace(str, i, i2);
        return str.substring(i, skipTrailingAsciiWhitespace(str, i, i2));
    }

    public static int delimiterOffset(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static int delimiterOffset(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static java.lang.String canonicalizeHost(java.lang.String r8) {
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
        r0 = ":";
        r0 = r8.contains(r0);
        r1 = 0;
        if (r0 == 0) goto L_0x00a9;
    L_0x0009:
        r0 = "[";
        r0 = r8.startsWith(r0);
        r2 = 0;
        if (r0 == 0) goto L_0x0025;
    L_0x0012:
        r0 = "]";
        r0 = r8.endsWith(r0);
        if (r0 == 0) goto L_0x0025;
    L_0x001a:
        r0 = r8.length();
        r3 = 1;
        r0 = r0 - r3;
        r0 = decodeIpv6(r8, r3, r0);
        goto L_0x002d;
    L_0x0025:
        r0 = r8.length();
        r0 = decodeIpv6(r8, r2, r0);
    L_0x002d:
        if (r0 != 0) goto L_0x0030;
    L_0x002f:
        return r1;
    L_0x0030:
        r0 = r0.getAddress();
        r1 = 16;
        r3 = r0.length;
        if (r3 != r1) goto L_0x0090;
    L_0x0039:
        r8 = -1;
        r4 = r8;
        r8 = r2;
        r3 = r8;
    L_0x003d:
        r5 = r0.length;
        if (r8 >= r5) goto L_0x005c;
    L_0x0040:
        r5 = r8;
    L_0x0041:
        if (r5 >= r1) goto L_0x0050;
    L_0x0043:
        r6 = r0[r5];
        if (r6 != 0) goto L_0x0050;
    L_0x0047:
        r6 = r5 + 1;
        r6 = r0[r6];
        if (r6 != 0) goto L_0x0050;
    L_0x004d:
        r5 = r5 + 2;
        goto L_0x0041;
    L_0x0050:
        r6 = r5 - r8;
        if (r6 <= r3) goto L_0x0059;
    L_0x0054:
        r7 = 4;
        if (r6 < r7) goto L_0x0059;
    L_0x0057:
        r4 = r8;
        r3 = r6;
    L_0x0059:
        r8 = r5 + 2;
        goto L_0x003d;
    L_0x005c:
        r8 = new okio.Buffer;
        r8.<init>();
    L_0x0061:
        r5 = r0.length;
        if (r2 >= r5) goto L_0x008b;
    L_0x0064:
        r5 = 58;
        if (r2 != r4) goto L_0x0072;
    L_0x0068:
        r8.writeByte(r5);
        r2 = r2 + r3;
        if (r2 != r1) goto L_0x0061;
    L_0x006e:
        r8.writeByte(r5);
        goto L_0x0061;
    L_0x0072:
        if (r2 <= 0) goto L_0x0077;
    L_0x0074:
        r8.writeByte(r5);
    L_0x0077:
        r5 = r0[r2];
        r5 = r5 & 255;
        r5 = r5 << 8;
        r6 = r2 + 1;
        r6 = r0[r6];
        r6 = r6 & 255;
        r5 = r5 | r6;
        r5 = (long) r5;
        r8.writeHexadecimalUnsignedLong(r5);
        r2 = r2 + 2;
        goto L_0x0061;
    L_0x008b:
        r8 = r8.readUtf8();
        return r8;
    L_0x0090:
        r0 = new java.lang.AssertionError;
        r1 = new java.lang.StringBuilder;
        r2 = "Invalid IPv6 address: '";
        r1.<init>(r2);
        r1.append(r8);
        r8 = "'";
        r1.append(r8);
        r8 = r1.toString();
        r0.<init>(r8);
        throw r0;
    L_0x00a9:
        r8 = java.net.IDN.toASCII(r8);	 Catch:{ IllegalArgumentException -> 0x00c2 }
        r0 = java.util.Locale.US;	 Catch:{ IllegalArgumentException -> 0x00c2 }
        r8 = r8.toLowerCase(r0);	 Catch:{ IllegalArgumentException -> 0x00c2 }
        r0 = r8.isEmpty();	 Catch:{ IllegalArgumentException -> 0x00c2 }
        if (r0 == 0) goto L_0x00ba;	 Catch:{ IllegalArgumentException -> 0x00c2 }
    L_0x00b9:
        return r1;	 Catch:{ IllegalArgumentException -> 0x00c2 }
    L_0x00ba:
        r0 = containsInvalidHostnameAsciiCodes(r8);	 Catch:{ IllegalArgumentException -> 0x00c2 }
        if (r0 == 0) goto L_0x00c1;
    L_0x00c0:
        return r1;
    L_0x00c1:
        return r8;
    L_0x00c2:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.canonicalizeHost(java.lang.String):java.lang.String");
    }

    private static boolean containsInvalidHostnameAsciiCodes(String str) {
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt > '\u001f') {
                if (charAt < '') {
                    if (" #%/:?@[\\]".indexOf(charAt) != -1) {
                        return true;
                    }
                    i++;
                }
            }
            return true;
        }
        return false;
    }

    public static int indexOfControlOrNonAscii(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt > '\u001f') {
                if (charAt < '') {
                    i++;
                }
            }
            return i;
        }
        return -1;
    }

    public static boolean verifyAsIpAddress(String str) {
        return VERIFY_AS_IP_ADDRESS.matcher(str).matches();
    }

    public static String format(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static Charset bomAwareCharset(BufferedSource bufferedSource, Charset charset) throws IOException {
        if (bufferedSource.rangeEquals$45b61a70(UTF_8_BOM)) {
            bufferedSource.skip((long) UTF_8_BOM.size());
            return UTF_8;
        } else if (bufferedSource.rangeEquals$45b61a70(UTF_16_BE_BOM)) {
            bufferedSource.skip((long) UTF_16_BE_BOM.size());
            return UTF_16_BE;
        } else if (bufferedSource.rangeEquals$45b61a70(UTF_16_LE_BOM)) {
            bufferedSource.skip((long) UTF_16_LE_BOM.size());
            return UTF_16_LE;
        } else if (bufferedSource.rangeEquals$45b61a70(UTF_32_BE_BOM)) {
            bufferedSource.skip((long) UTF_32_BE_BOM.size());
            return UTF_32_BE;
        } else if (!bufferedSource.rangeEquals$45b61a70(UTF_32_LE_BOM)) {
            return charset;
        } else {
            bufferedSource.skip((long) UTF_32_LE_BOM.size());
            return UTF_32_LE;
        }
    }

    public static int checkDuration(String str, long j, TimeUnit timeUnit) {
        StringBuilder stringBuilder;
        if (j < 0) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(" < 0");
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        } else {
            long toMillis = timeUnit.toMillis(j);
            if (toMillis > 2147483647L) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(" too large.");
                throw new IllegalArgumentException(stringBuilder.toString());
            } else if (toMillis != 0 || j <= 0) {
                return (int) toMillis;
            } else {
                stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(" too small.");
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }
    }

    public static java.lang.AssertionError assertionError(java.lang.String r1, java.lang.Exception r2) {
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
        r0 = new java.lang.AssertionError;
        r0.<init>(r1);
        r0.initCause(r2);	 Catch:{ IllegalStateException -> 0x0008 }
    L_0x0008:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.assertionError(java.lang.String, java.lang.Exception):java.lang.AssertionError");
    }

    @javax.annotation.Nullable
    private static java.net.InetAddress decodeIpv6(java.lang.String r17, int r18, int r19) {
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
        r0 = r17;
        r1 = r19;
        r2 = 16;
        r3 = new byte[r2];
        r4 = -1;
        r5 = 0;
        r6 = r18;
        r8 = r4;
        r9 = r8;
        r7 = r5;
    L_0x000f:
        r10 = 0;
        if (r6 >= r1) goto L_0x00d1;
    L_0x0012:
        if (r7 != r2) goto L_0x0015;
    L_0x0014:
        return r10;
    L_0x0015:
        r11 = r6 + 2;
        r12 = 4;
        if (r11 > r1) goto L_0x0032;
    L_0x001a:
        r13 = "::";
        r14 = 2;
        r13 = r0.regionMatches(r6, r13, r5, r14);
        if (r13 == 0) goto L_0x0032;
    L_0x0023:
        if (r8 == r4) goto L_0x0026;
    L_0x0025:
        return r10;
    L_0x0026:
        r7 = r7 + 2;
        if (r11 != r1) goto L_0x002e;
    L_0x002a:
        r0 = r2;
        r8 = r7;
        goto L_0x00d2;
    L_0x002e:
        r8 = r7;
        r9 = r11;
        goto L_0x00a4;
    L_0x0032:
        if (r7 == 0) goto L_0x00a3;
    L_0x0034:
        r11 = ":";
        r13 = 1;
        r11 = r0.regionMatches(r6, r11, r5, r13);
        if (r11 == 0) goto L_0x0041;
    L_0x003d:
        r6 = r6 + 1;
        goto L_0x00a3;
    L_0x0041:
        r11 = ".";
        r6 = r0.regionMatches(r6, r11, r5, r13);
        if (r6 == 0) goto L_0x00a2;
    L_0x0049:
        r6 = r7 + -2;
        r11 = r6;
    L_0x004c:
        if (r9 >= r1) goto L_0x0094;
    L_0x004e:
        if (r11 != r2) goto L_0x0051;
    L_0x0050:
        goto L_0x009a;
    L_0x0051:
        if (r11 == r6) goto L_0x005e;
    L_0x0053:
        r14 = r0.charAt(r9);
        r15 = 46;
        if (r14 == r15) goto L_0x005c;
    L_0x005b:
        goto L_0x009a;
    L_0x005c:
        r9 = r9 + 1;
    L_0x005e:
        r15 = r5;
        r14 = r9;
    L_0x0060:
        if (r14 >= r1) goto L_0x0083;
    L_0x0062:
        r13 = r0.charAt(r14);
        r5 = 48;
        if (r13 < r5) goto L_0x0083;
    L_0x006a:
        r2 = 57;
        if (r13 > r2) goto L_0x0083;
    L_0x006e:
        if (r15 != 0) goto L_0x0073;
    L_0x0070:
        if (r9 == r14) goto L_0x0073;
    L_0x0072:
        goto L_0x0097;
    L_0x0073:
        r15 = r15 * 10;
        r15 = r15 + r13;
        r15 = r15 - r5;
        r2 = 255; // 0xff float:3.57E-43 double:1.26E-321;
        if (r15 <= r2) goto L_0x007c;
    L_0x007b:
        goto L_0x0097;
    L_0x007c:
        r14 = r14 + 1;
        r2 = 16;
        r5 = 0;
        r13 = 1;
        goto L_0x0060;
    L_0x0083:
        r2 = r14 - r9;
        if (r2 != 0) goto L_0x0088;
    L_0x0087:
        goto L_0x0097;
    L_0x0088:
        r2 = r11 + 1;
        r5 = (byte) r15;
        r3[r11] = r5;
        r11 = r2;
        r9 = r14;
        r2 = 16;
        r5 = 0;
        r13 = 1;
        goto L_0x004c;
    L_0x0094:
        r6 = r6 + r12;
        if (r11 == r6) goto L_0x0099;
    L_0x0097:
        r5 = 0;
        goto L_0x009a;
    L_0x0099:
        r5 = 1;
    L_0x009a:
        if (r5 != 0) goto L_0x009d;
    L_0x009c:
        return r10;
    L_0x009d:
        r7 = r7 + 2;
        r0 = 16;
        goto L_0x00d2;
    L_0x00a2:
        return r10;
    L_0x00a3:
        r9 = r6;
    L_0x00a4:
        r6 = r9;
        r2 = 0;
    L_0x00a6:
        if (r6 >= r1) goto L_0x00b8;
    L_0x00a8:
        r5 = r0.charAt(r6);
        r5 = decodeHexDigit(r5);
        if (r5 == r4) goto L_0x00b8;
    L_0x00b2:
        r2 = r2 << 4;
        r2 = r2 + r5;
        r6 = r6 + 1;
        goto L_0x00a6;
    L_0x00b8:
        r5 = r6 - r9;
        if (r5 == 0) goto L_0x00d0;
    L_0x00bc:
        if (r5 <= r12) goto L_0x00bf;
    L_0x00be:
        goto L_0x00d0;
    L_0x00bf:
        r5 = r7 + 1;
        r10 = r2 >>> 8;
        r10 = (byte) r10;
        r3[r7] = r10;
        r7 = r5 + 1;
        r2 = (byte) r2;
        r3[r5] = r2;
        r2 = 16;
        r5 = 0;
        goto L_0x000f;
    L_0x00d0:
        return r10;
    L_0x00d1:
        r0 = r2;
    L_0x00d2:
        if (r7 == r0) goto L_0x00e5;
    L_0x00d4:
        if (r8 != r4) goto L_0x00d7;
    L_0x00d6:
        return r10;
    L_0x00d7:
        r1 = r7 - r8;
        r2 = 16 - r1;
        java.lang.System.arraycopy(r3, r8, r3, r2, r1);
        r2 = 16 - r7;
        r2 = r2 + r8;
        r0 = 0;
        java.util.Arrays.fill(r3, r8, r2, r0);
    L_0x00e5:
        r0 = java.net.InetAddress.getByAddress(r3);	 Catch:{ UnknownHostException -> 0x00ea }
        return r0;
    L_0x00ea:
        r0 = new java.lang.AssertionError;
        r0.<init>();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.decodeIpv6(java.lang.String, int, int):java.net.InetAddress");
    }
}
