package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.internal.http.HttpDate;

public final class Cookie {
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;
    private final String name;
    private final String path;
    private final boolean persistent;
    private final boolean secure;
    private final String value;

    private Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z2;
        this.hostOnly = z3;
        this.persistent = z4;
    }

    public final String name() {
        return this.name;
    }

    public final String value() {
        return this.value;
    }

    @javax.annotation.Nullable
    private static okhttp3.Cookie parse(long r31, okhttp3.HttpUrl r33, java.lang.String r34) {
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
        r2 = r34;
        r3 = r34.length();
        r4 = 59;
        r5 = 0;
        r6 = okhttp3.internal.Util.delimiterOffset(r2, r5, r3, r4);
        r7 = 61;
        r8 = okhttp3.internal.Util.delimiterOffset(r2, r5, r6, r7);
        r9 = 0;
        if (r8 != r6) goto L_0x0017;
    L_0x0016:
        return r9;
    L_0x0017:
        r11 = okhttp3.internal.Util.trimSubstring(r2, r5, r8);
        r10 = r11.isEmpty();
        if (r10 != 0) goto L_0x0306;
    L_0x0021:
        r10 = okhttp3.internal.Util.indexOfControlOrNonAscii(r11);
        r12 = -1;
        if (r10 == r12) goto L_0x002a;
    L_0x0028:
        goto L_0x0306;
    L_0x002a:
        r10 = 1;
        r8 = r8 + r10;
        r8 = okhttp3.internal.Util.trimSubstring(r2, r8, r6);
        r13 = okhttp3.internal.Util.indexOfControlOrNonAscii(r8);
        if (r13 == r12) goto L_0x0037;
    L_0x0036:
        return r9;
    L_0x0037:
        r6 = r6 + r10;
        r22 = r5;
        r23 = r22;
        r25 = r23;
        r21 = r9;
        r24 = r10;
        r17 = -1;
        r19 = 253402300799999; // 0xe677d21fdbff float:-1.71647681E11 double:1.251973714024093E-309;
    L_0x0049:
        if (r6 >= r3) goto L_0x0245;
    L_0x004b:
        r15 = okhttp3.internal.Util.delimiterOffset(r2, r6, r3, r4);
        r13 = okhttp3.internal.Util.delimiterOffset(r2, r6, r15, r7);
        r6 = okhttp3.internal.Util.trimSubstring(r2, r6, r13);
        if (r13 >= r15) goto L_0x0060;
    L_0x0059:
        r13 = r13 + 1;
        r13 = okhttp3.internal.Util.trimSubstring(r2, r13, r15);
        goto L_0x0062;
    L_0x0060:
        r13 = "";
    L_0x0062:
        r14 = "expires";
        r14 = r6.equalsIgnoreCase(r14);
        if (r14 == 0) goto L_0x01d4;
    L_0x006a:
        r6 = r13.length();	 Catch:{ IllegalArgumentException -> 0x01d2 }
        r14 = dateCharacterOffset(r13, r5, r6, r5);	 Catch:{ IllegalArgumentException -> 0x01d2 }
        r7 = TIME_PATTERN;	 Catch:{ IllegalArgumentException -> 0x01d2 }
        r7 = r7.matcher(r13);	 Catch:{ IllegalArgumentException -> 0x01d2 }
        r4 = r12;
        r5 = r4;
        r26 = r5;
        r27 = r26;
        r28 = r27;
        r29 = r28;
    L_0x0082:
        if (r14 >= r6) goto L_0x0138;
    L_0x0084:
        r12 = r14 + 1;
        r12 = dateCharacterOffset(r13, r12, r6, r10);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r7.region(r14, r12);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = -1;	 Catch:{ IllegalArgumentException -> 0x0134 }
        if (r5 != r14) goto L_0x00c0;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0090:
        r14 = TIME_PATTERN;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = r7.usePattern(r14);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = r14.matches();	 Catch:{ IllegalArgumentException -> 0x0134 }
        if (r14 == 0) goto L_0x00bc;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x009c:
        r5 = r7.group(r10);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r5 = java.lang.Integer.parseInt(r5);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = 2;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = r7.group(r14);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = java.lang.Integer.parseInt(r14);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r10 = 3;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r10 = r7.group(r10);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r10 = java.lang.Integer.parseInt(r10);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r29 = r10;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r28 = r14;	 Catch:{ IllegalArgumentException -> 0x0134 }
        goto L_0x0128;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00bc:
        r10 = r27;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = -1;	 Catch:{ IllegalArgumentException -> 0x0134 }
        goto L_0x00c2;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00c0:
        r10 = r27;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00c2:
        if (r10 != r14) goto L_0x00e0;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00c4:
        r14 = DAY_OF_MONTH_PATTERN;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = r7.usePattern(r14);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = r14.matches();	 Catch:{ IllegalArgumentException -> 0x0134 }
        if (r14 == 0) goto L_0x00dc;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00d0:
        r14 = 1;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r10 = r7.group(r14);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r10 = java.lang.Integer.parseInt(r10);	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00d9:
        r27 = r10;	 Catch:{ IllegalArgumentException -> 0x0134 }
        goto L_0x0128;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00dc:
        r14 = r26;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = -1;	 Catch:{ IllegalArgumentException -> 0x0134 }
        goto L_0x00e3;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00e0:
        r2 = r14;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = r26;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00e3:
        if (r14 != r2) goto L_0x010c;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00e5:
        r2 = MONTH_PATTERN;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = r7.usePattern(r2);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = r2.matches();	 Catch:{ IllegalArgumentException -> 0x0134 }
        if (r2 == 0) goto L_0x010b;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x00f1:
        r2 = 1;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = r7.group(r2);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = java.util.Locale.US;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = r14.toLowerCase(r2);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = MONTH_PATTERN;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = r14.pattern();	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = r14.indexOf(r2);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = r2 / 4;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r26 = r2;	 Catch:{ IllegalArgumentException -> 0x0134 }
        goto L_0x00d9;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x010b:
        r2 = -1;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x010c:
        if (r4 != r2) goto L_0x0124;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x010e:
        r2 = YEAR_PATTERN;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = r7.usePattern(r2);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = r2.matches();	 Catch:{ IllegalArgumentException -> 0x0134 }
        if (r2 == 0) goto L_0x0124;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x011a:
        r2 = 1;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r4 = r7.group(r2);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = java.lang.Integer.parseInt(r4);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r4 = r2;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0124:
        r27 = r10;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r26 = r14;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0128:
        r12 = r12 + 1;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = 0;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r14 = dateCharacterOffset(r13, r12, r6, r2);	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = r34;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r10 = 1;	 Catch:{ IllegalArgumentException -> 0x0134 }
        goto L_0x0082;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0134:
        r7 = 59;	 Catch:{ IllegalArgumentException -> 0x0134 }
        goto L_0x0239;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0138:
        r14 = r26;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r10 = r27;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2 = 70;	 Catch:{ IllegalArgumentException -> 0x0134 }
        if (r4 < r2) goto L_0x0146;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0140:
        r2 = 99;	 Catch:{ IllegalArgumentException -> 0x0134 }
        if (r4 > r2) goto L_0x0146;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0144:
        r4 = r4 + 1900;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0146:
        if (r4 < 0) goto L_0x014e;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0148:
        r2 = 69;	 Catch:{ IllegalArgumentException -> 0x0134 }
        if (r4 > r2) goto L_0x014e;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x014c:
        r4 = r4 + 2000;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x014e:
        r2 = 1601; // 0x641 float:2.243E-42 double:7.91E-321;	 Catch:{ IllegalArgumentException -> 0x0134 }
        if (r4 >= r2) goto L_0x0158;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0152:
        r2 = new java.lang.IllegalArgumentException;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r2.<init>();	 Catch:{ IllegalArgumentException -> 0x0134 }
        throw r2;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0158:
        r2 = -1;	 Catch:{ IllegalArgumentException -> 0x0134 }
        if (r14 != r2) goto L_0x0161;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x015b:
        r4 = new java.lang.IllegalArgumentException;	 Catch:{ IllegalArgumentException -> 0x0134 }
        r4.<init>();	 Catch:{ IllegalArgumentException -> 0x0134 }
        throw r4;	 Catch:{ IllegalArgumentException -> 0x0134 }
    L_0x0161:
        if (r10 <= 0) goto L_0x01ca;
    L_0x0163:
        r6 = 31;
        if (r10 <= r6) goto L_0x0168;
    L_0x0167:
        goto L_0x01ca;
    L_0x0168:
        if (r5 < 0) goto L_0x01c2;
    L_0x016a:
        r6 = 23;
        if (r5 <= r6) goto L_0x016f;
    L_0x016e:
        goto L_0x01c2;
    L_0x016f:
        r12 = r28;
        if (r12 < 0) goto L_0x01ba;
    L_0x0173:
        r7 = 59;
        if (r12 <= r7) goto L_0x0178;
    L_0x0177:
        goto L_0x01bc;
    L_0x0178:
        r6 = r29;
        if (r6 < 0) goto L_0x01b4;
    L_0x017c:
        if (r6 <= r7) goto L_0x017f;
    L_0x017e:
        goto L_0x01b4;
    L_0x017f:
        r13 = new java.util.GregorianCalendar;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = okhttp3.internal.Util.UTC;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r13.<init>(r2);	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = 0;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r13.setLenient(r2);	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = 1;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r13.set(r2, r4);	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = r14 + -1;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r4 = 2;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r13.set(r4, r2);	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = 5;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r13.set(r2, r10);	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = 11;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r13.set(r2, r5);	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = 12;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r13.set(r2, r12);	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = 13;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r13.set(r2, r6);	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = 14;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r4 = 0;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r13.set(r2, r4);	 Catch:{ IllegalArgumentException -> 0x0239 }
        r4 = r13.getTimeInMillis();	 Catch:{ IllegalArgumentException -> 0x0239 }
        r19 = r4;	 Catch:{ IllegalArgumentException -> 0x0239 }
        goto L_0x01e3;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x01b4:
        r2 = new java.lang.IllegalArgumentException;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2.<init>();	 Catch:{ IllegalArgumentException -> 0x0239 }
        throw r2;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x01ba:
        r7 = 59;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x01bc:
        r2 = new java.lang.IllegalArgumentException;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2.<init>();	 Catch:{ IllegalArgumentException -> 0x0239 }
        throw r2;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x01c2:
        r7 = 59;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = new java.lang.IllegalArgumentException;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2.<init>();	 Catch:{ IllegalArgumentException -> 0x0239 }
        throw r2;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x01ca:
        r7 = 59;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = new java.lang.IllegalArgumentException;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2.<init>();	 Catch:{ IllegalArgumentException -> 0x0239 }
        throw r2;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x01d2:
        r7 = r4;
        goto L_0x0239;
    L_0x01d4:
        r7 = r4;
        r2 = "max-age";
        r2 = r6.equalsIgnoreCase(r2);
        if (r2 == 0) goto L_0x01e6;
    L_0x01dd:
        r4 = parseMaxAge(r13);	 Catch:{  }
        r17 = r4;
    L_0x01e3:
        r25 = 1;
        goto L_0x0239;
    L_0x01e6:
        r2 = "domain";
        r2 = r6.equalsIgnoreCase(r2);
        if (r2 == 0) goto L_0x0219;
    L_0x01ee:
        r2 = ".";	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = r13.endsWith(r2);	 Catch:{ IllegalArgumentException -> 0x0239 }
        if (r2 == 0) goto L_0x01fc;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x01f6:
        r2 = new java.lang.IllegalArgumentException;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2.<init>();	 Catch:{ IllegalArgumentException -> 0x0239 }
        throw r2;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x01fc:
        r2 = ".";	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2 = r13.startsWith(r2);	 Catch:{ IllegalArgumentException -> 0x0239 }
        if (r2 == 0) goto L_0x0209;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x0204:
        r2 = 1;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r13 = r13.substring(r2);	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x0209:
        r2 = okhttp3.internal.Util.canonicalizeHost(r13);	 Catch:{ IllegalArgumentException -> 0x0239 }
        if (r2 != 0) goto L_0x0215;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x020f:
        r2 = new java.lang.IllegalArgumentException;	 Catch:{ IllegalArgumentException -> 0x0239 }
        r2.<init>();	 Catch:{ IllegalArgumentException -> 0x0239 }
        throw r2;	 Catch:{ IllegalArgumentException -> 0x0239 }
    L_0x0215:
        r9 = r2;
        r24 = 0;
        goto L_0x0239;
    L_0x0219:
        r2 = "path";
        r2 = r6.equalsIgnoreCase(r2);
        if (r2 == 0) goto L_0x0224;
    L_0x0221:
        r21 = r13;
        goto L_0x0239;
    L_0x0224:
        r2 = "secure";
        r2 = r6.equalsIgnoreCase(r2);
        if (r2 == 0) goto L_0x022f;
    L_0x022c:
        r22 = 1;
        goto L_0x0239;
    L_0x022f:
        r2 = "httponly";
        r2 = r6.equalsIgnoreCase(r2);
        if (r2 == 0) goto L_0x0239;
    L_0x0237:
        r23 = 1;
    L_0x0239:
        r6 = r15 + 1;
        r4 = r7;
        r2 = r34;
        r5 = 0;
        r7 = 61;
        r10 = 1;
        r12 = -1;
        goto L_0x0049;
    L_0x0245:
        r2 = -9223372036854775808;
        r4 = (r17 > r2 ? 1 : (r17 == r2 ? 0 : -1));
        if (r4 != 0) goto L_0x024f;
    L_0x024b:
        r0 = r33;
        r13 = r2;
        goto L_0x0285;
    L_0x024f:
        r2 = -1;
        r4 = (r17 > r2 ? 1 : (r17 == r2 ? 0 : -1));
        if (r4 == 0) goto L_0x0281;
    L_0x0255:
        r2 = 9223372036854775; // 0x20c49ba5e353f7 float:-3.943512E-16 double:4.663754807431093E-308;
        r4 = (r17 > r2 ? 1 : (r17 == r2 ? 0 : -1));
        if (r4 > 0) goto L_0x0263;
    L_0x025e:
        r2 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r17 = r17 * r2;
        goto L_0x0268;
    L_0x0263:
        r17 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
    L_0x0268:
        r2 = r31 + r17;
        r4 = (r2 > r31 ? 1 : (r2 == r31 ? 0 : -1));
        if (r4 < 0) goto L_0x0278;
    L_0x026e:
        r0 = 253402300799999; // 0xe677d21fdbff float:-1.71647681E11 double:1.251973714024093E-309;
        r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1));
        if (r4 <= 0) goto L_0x024b;
    L_0x0277:
        goto L_0x027d;
    L_0x0278:
        r0 = 253402300799999; // 0xe677d21fdbff float:-1.71647681E11 double:1.251973714024093E-309;
    L_0x027d:
        r13 = r0;
        r0 = r33;
        goto L_0x0285;
    L_0x0281:
        r0 = r33;
        r13 = r19;
    L_0x0285:
        r1 = r0.host;
        if (r9 != 0) goto L_0x028c;
    L_0x0289:
        r15 = r1;
        r2 = 0;
        goto L_0x02bb;
    L_0x028c:
        r2 = r1.equals(r9);
        if (r2 == 0) goto L_0x0294;
    L_0x0292:
        r3 = 1;
        goto L_0x02b5;
    L_0x0294:
        r2 = r1.endsWith(r9);
        if (r2 == 0) goto L_0x02b4;
    L_0x029a:
        r2 = r1.length();
        r3 = r9.length();
        r2 = r2 - r3;
        r3 = 1;
        r2 = r2 - r3;
        r2 = r1.charAt(r2);
        r4 = 46;
        if (r2 != r4) goto L_0x02b4;
    L_0x02ad:
        r2 = okhttp3.internal.Util.verifyAsIpAddress(r1);
        if (r2 != 0) goto L_0x02b4;
    L_0x02b3:
        goto L_0x02b5;
    L_0x02b4:
        r3 = 0;
    L_0x02b5:
        if (r3 != 0) goto L_0x02b9;
    L_0x02b7:
        r2 = 0;
        return r2;
    L_0x02b9:
        r2 = 0;
        r15 = r9;
    L_0x02bb:
        r1 = r1.length();
        r3 = r15.length();
        if (r1 == r3) goto L_0x02d0;
    L_0x02c5:
        r1 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.get();
        r1 = r1.getEffectiveTldPlusOne(r15);
        if (r1 != 0) goto L_0x02d0;
    L_0x02cf:
        return r2;
    L_0x02d0:
        r9 = r21;
        if (r9 == 0) goto L_0x02e0;
    L_0x02d4:
        r1 = "/";
        r1 = r9.startsWith(r1);
        if (r1 != 0) goto L_0x02dd;
    L_0x02dc:
        goto L_0x02e0;
    L_0x02dd:
        r16 = r9;
        goto L_0x02f6;
    L_0x02e0:
        r0 = r33.encodedPath();
        r1 = 47;
        r1 = r0.lastIndexOf(r1);
        if (r1 == 0) goto L_0x02f2;
    L_0x02ec:
        r2 = 0;
        r0 = r0.substring(r2, r1);
        goto L_0x02f4;
    L_0x02f2:
        r0 = "/";
    L_0x02f4:
        r16 = r0;
    L_0x02f6:
        r0 = new okhttp3.Cookie;
        r10 = r0;
        r12 = r8;
        r17 = r22;
        r18 = r23;
        r19 = r24;
        r20 = r25;
        r10.<init>(r11, r12, r13, r15, r16, r17, r18, r19, r20);
        return r0;
    L_0x0306:
        r0 = r9;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.parse(long, okhttp3.HttpUrl, java.lang.String):okhttp3.Cookie");
    }

    private static int dateCharacterOffset(String str, int i, int i2, boolean z) {
        while (i < i2) {
            int i3;
            char charAt = str.charAt(i);
            if ((charAt >= ' ' || charAt == '\t') && charAt < '' && ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'z') && (charAt < 'A' || charAt > 'Z')))) {
                if (charAt != ':') {
                    i3 = 0;
                    if (i3 == (z ^ 1)) {
                        return i;
                    }
                    i++;
                }
            }
            i3 = 1;
            if (i3 == (z ^ 1)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    private static long parseMaxAge(String str) {
        try {
            long parseLong = Long.parseLong(str);
            return parseLong <= 0 ? Long.MIN_VALUE : parseLong;
        } catch (NumberFormatException e) {
            if (!str.matches("-?\\d+")) {
                throw e;
            } else if (str.startsWith("-") != null) {
                return Long.MIN_VALUE;
            } else {
                return Long.MAX_VALUE;
            }
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        if (cookie.name.equals(this.name) && cookie.value.equals(this.value) && cookie.domain.equals(this.domain) && cookie.path.equals(this.path) && cookie.expiresAt == this.expiresAt && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((((527 + this.name.hashCode()) * 31) + this.value.hashCode()) * 31) + this.domain.hashCode()) * 31) + this.path.hashCode()) * 31) + ((int) (this.expiresAt ^ (this.expiresAt >>> 32)))) * 31) + (this.secure ^ 1)) * 31) + (this.httpOnly ^ 1)) * 31) + (this.persistent ^ 1)) * 31) + (this.hostOnly ^ 1);
    }

    public static List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        String str = "Set-Cookie";
        int size = headers.size();
        int i = 0;
        List list = null;
        List list2 = null;
        for (int i2 = 0; i2 < size; i2++) {
            if (str.equalsIgnoreCase(headers.name(i2))) {
                if (list2 == null) {
                    list2 = new ArrayList(2);
                }
                list2.add(headers.value(i2));
            }
        }
        if (list2 != null) {
            headers = Collections.unmodifiableList(list2);
        } else {
            headers = Collections.emptyList();
        }
        int size2 = headers.size();
        while (i < size2) {
            Cookie parse = parse(System.currentTimeMillis(), httpUrl, (String) headers.get(i));
            if (parse != null) {
                if (list == null) {
                    list = new ArrayList();
                }
                list.add(parse);
            }
            i++;
        }
        if (list != null) {
            return Collections.unmodifiableList(list);
        }
        return Collections.emptyList();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.name);
        stringBuilder.append('=');
        stringBuilder.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                stringBuilder.append("; max-age=0");
            } else {
                stringBuilder.append("; expires=");
                stringBuilder.append(HttpDate.format(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            stringBuilder.append("; domain=");
            stringBuilder.append(this.domain);
        }
        stringBuilder.append("; path=");
        stringBuilder.append(this.path);
        if (this.secure) {
            stringBuilder.append("; secure");
        }
        if (this.httpOnly) {
            stringBuilder.append("; httponly");
        }
        return stringBuilder.toString();
    }
}
