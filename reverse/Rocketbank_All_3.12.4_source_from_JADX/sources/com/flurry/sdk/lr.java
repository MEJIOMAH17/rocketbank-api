package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;

public final class lr {
    /* renamed from: a */
    private static final String f426a = "lr";

    /* renamed from: a */
    public static void m304a() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Must be called from the main thread!");
        }
    }

    /* renamed from: b */
    public static void m312b() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Must be called from a background thread!");
        }
    }

    /* renamed from: a */
    public static String m302a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Uri parse = Uri.parse(str);
        return (parse != null && parse.getScheme() == null) ? "http://".concat(String.valueOf(str)) : str;
    }

    /* renamed from: c */
    public static java.lang.String m313c(java.lang.String r4) {
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
        r0 = "UTF-8";	 Catch:{ UnsupportedEncodingException -> 0x0007 }
        r0 = java.net.URLEncoder.encode(r4, r0);	 Catch:{ UnsupportedEncodingException -> 0x0007 }
        return r0;
    L_0x0007:
        r0 = 5;
        r1 = f426a;
        r2 = new java.lang.StringBuilder;
        r3 = "Cannot encode '";
        r2.<init>(r3);
        r2.append(r4);
        r4 = "'";
        r2.append(r4);
        r4 = r2.toString();
        com.flurry.sdk.kf.m176a(r0, r1, r4);
        r4 = "";
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.lr.c(java.lang.String):java.lang.String");
    }

    /* renamed from: d */
    public static java.lang.String m314d(java.lang.String r4) {
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
        r0 = "UTF-8";	 Catch:{ UnsupportedEncodingException -> 0x0007 }
        r0 = java.net.URLDecoder.decode(r4, r0);	 Catch:{ UnsupportedEncodingException -> 0x0007 }
        return r0;
    L_0x0007:
        r0 = 5;
        r1 = f426a;
        r2 = new java.lang.StringBuilder;
        r3 = "Cannot decode '";
        r2.<init>(r3);
        r2.append(r4);
        r4 = "'";
        r2.append(r4);
        r4 = r2.toString();
        com.flurry.sdk.kf.m176a(r0, r1, r4);
        r4 = "";
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.lr.d(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static void m305a(java.io.Closeable r0) {
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
        if (r0 == 0) goto L_0x0007;
    L_0x0002:
        r0.close();	 Catch:{ Throwable -> 0x0006 }
        goto L_0x0007;
    L_0x0006:
        return;
    L_0x0007:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.lr.a(java.io.Closeable):void");
    }

    /* renamed from: e */
    public static byte[] m315e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return str.getBytes("UTF-8");
        } catch (String str2) {
            String str3 = f426a;
            StringBuilder stringBuilder = new StringBuilder("Unsupported UTF-8: ");
            stringBuilder.append(str2.getMessage());
            kf.m176a(5, str3, stringBuilder.toString());
            return null;
        }
    }

    /* renamed from: f */
    public static byte[] m316f(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(CommonUtils.SHA1_INSTANCE);
            instance.update(str.getBytes(), 0, str.length());
            return instance.digest();
        } catch (String str2) {
            String str3 = f426a;
            StringBuilder stringBuilder = new StringBuilder("Unsupported SHA1: ");
            stringBuilder.append(str2.getMessage());
            kf.m176a(6, str3, stringBuilder.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static String m303a(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder(bArr.length << 1);
        char[] cArr = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        for (byte b : bArr) {
            byte b2 = (byte) (b & 15);
            stringBuilder.append(cArr[(byte) ((b & 240) >> 4)]);
            stringBuilder.append(cArr[b2]);
        }
        return stringBuilder.toString();
    }

    /* renamed from: b */
    public static String m311b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (byte[] bArr2) {
            String str = f426a;
            StringBuilder stringBuilder = new StringBuilder("Unsupported ISO-8859-1:");
            stringBuilder.append(bArr2.getMessage());
            kf.m176a(5, str, stringBuilder.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m306a(long j) {
        if (j != 0) {
            if (System.currentTimeMillis() > j) {
                return 0;
            }
        }
        return 1;
    }

    /* renamed from: a */
    public static boolean m308a(Intent intent) {
        return jr.m114a().f293a.getPackageManager().queryIntentActivities(intent, 65536).size() > null ? true : null;
    }

    /* renamed from: g */
    public static String m317g(String str) {
        return str.replace("\\b", "").replace("\\n", "").replace("\\r", "").replace("\\t", "").replace("\\", "\\\\").replace("'", "\\'").replace("\"", "\\\"");
    }

    /* renamed from: h */
    public static Map<String, String> m318h(String str) {
        Map<String, String> hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            for (String split : str.split("&")) {
                String[] split2 = split.split("=");
                if (!split2[0].equals(NotificationCompat.CATEGORY_EVENT)) {
                    hashMap.put(m314d(split2[0]), m314d(split2[1]));
                }
            }
        }
        return hashMap;
    }

    /* renamed from: i */
    public static long m319i(String str) {
        if (str == null) {
            return 0;
        }
        long j = 1125899906842597L;
        int i = 0;
        while (i < str.length()) {
            i++;
            j = (31 * j) + ((long) str.charAt(i));
        }
        return j;
    }

    /* renamed from: a */
    public static long m301a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read < 0) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += (long) read;
        }
    }

    /* renamed from: a */
    public static byte[] m309a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m301a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: a */
    public static double m300a(double d) {
        return ((double) Math.round(d * Math.pow(10.0d, 3.0d))) / Math.pow(10.0d, 3.0d);
    }

    /* renamed from: a */
    public static boolean m307a(Context context, String str) {
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    if (context.getPackageManager().checkPermission(str, context.getPackageName()) == null) {
                        return true;
                    }
                    return false;
                } catch (Context context2) {
                    String str2 = f426a;
                    StringBuilder stringBuilder = new StringBuilder("Error occured when checking if app has permission.  Error: ");
                    stringBuilder.append(context2.getMessage());
                    kf.m176a(6, str2, stringBuilder.toString());
                    return false;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public static String m310b(String str) {
        if (str == null) {
            return "";
        }
        if (str.length() <= 255) {
            return str;
        }
        return str.substring(0, 255);
    }
}
