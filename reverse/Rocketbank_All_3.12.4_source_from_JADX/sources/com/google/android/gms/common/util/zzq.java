package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;

public final class zzq {
    private static final Pattern zzaIl = Pattern.compile("\\\\.");
    private static final Pattern zzaIm = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    public static String zzdy(String str) {
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = zzaIm.matcher(str);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                String str2;
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                }
                char charAt = matcher.group().charAt(0);
                if (charAt == Typography.quote) {
                    str2 = "\\\\\\\"";
                } else if (charAt == '/') {
                    str2 = "\\\\/";
                } else if (charAt != '\\') {
                    switch (charAt) {
                        case '\b':
                            str2 = "\\\\b";
                            break;
                        case '\t':
                            str2 = "\\\\t";
                            break;
                        case '\n':
                            str2 = "\\\\n";
                            break;
                        default:
                            switch (charAt) {
                                case '\f':
                                    str2 = "\\\\f";
                                    break;
                                case '\r':
                                    str2 = "\\\\r";
                                    break;
                                default:
                                    continue;
                                    continue;
                            }
                    }
                } else {
                    str2 = "\\\\\\\\";
                }
                matcher.appendReplacement(stringBuffer, str2);
            }
            if (stringBuffer == null) {
                return str;
            }
            matcher.appendTail(stringBuffer);
            str = stringBuffer.toString();
        }
        return str;
    }

    public static boolean zze(java.lang.Object r5, java.lang.Object r6) {
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
        r0 = 1;
        if (r5 != 0) goto L_0x0006;
    L_0x0003:
        if (r6 != 0) goto L_0x0006;
    L_0x0005:
        return r0;
    L_0x0006:
        r1 = 0;
        if (r5 == 0) goto L_0x0081;
    L_0x0009:
        if (r6 != 0) goto L_0x000c;
    L_0x000b:
        return r1;
    L_0x000c:
        r2 = r5 instanceof org.json.JSONObject;
        if (r2 == 0) goto L_0x004a;
    L_0x0010:
        r2 = r6 instanceof org.json.JSONObject;
        if (r2 == 0) goto L_0x004a;
    L_0x0014:
        r5 = (org.json.JSONObject) r5;
        r6 = (org.json.JSONObject) r6;
        r2 = r5.length();
        r3 = r6.length();
        if (r2 == r3) goto L_0x0023;
    L_0x0022:
        return r1;
    L_0x0023:
        r2 = r5.keys();
    L_0x0027:
        r3 = r2.hasNext();
        if (r3 == 0) goto L_0x0049;
    L_0x002d:
        r3 = r2.next();
        r3 = (java.lang.String) r3;
        r4 = r6.has(r3);
        if (r4 != 0) goto L_0x003a;
    L_0x0039:
        return r1;
    L_0x003a:
        r4 = r5.get(r3);	 Catch:{ JSONException -> 0x0048 }
        r3 = r6.get(r3);	 Catch:{ JSONException -> 0x0048 }
        r3 = zze(r4, r3);	 Catch:{ JSONException -> 0x0048 }
        if (r3 != 0) goto L_0x0027;
    L_0x0048:
        return r1;
    L_0x0049:
        return r0;
    L_0x004a:
        r2 = r5 instanceof org.json.JSONArray;
        if (r2 == 0) goto L_0x007c;
    L_0x004e:
        r2 = r6 instanceof org.json.JSONArray;
        if (r2 == 0) goto L_0x007c;
    L_0x0052:
        r5 = (org.json.JSONArray) r5;
        r6 = (org.json.JSONArray) r6;
        r2 = r5.length();
        r3 = r6.length();
        if (r2 == r3) goto L_0x0061;
    L_0x0060:
        return r1;
    L_0x0061:
        r2 = r1;
    L_0x0062:
        r3 = r5.length();
        if (r2 >= r3) goto L_0x007b;
    L_0x0068:
        r3 = r5.get(r2);	 Catch:{ JSONException -> 0x007a }
        r4 = r6.get(r2);	 Catch:{ JSONException -> 0x007a }
        r3 = zze(r3, r4);	 Catch:{ JSONException -> 0x007a }
        if (r3 != 0) goto L_0x0077;
    L_0x0076:
        return r1;
    L_0x0077:
        r2 = r2 + 1;
        goto L_0x0062;
    L_0x007a:
        return r1;
    L_0x007b:
        return r0;
    L_0x007c:
        r5 = r5.equals(r6);
        return r5;
    L_0x0081:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.zzq.zze(java.lang.Object, java.lang.Object):boolean");
    }
}
