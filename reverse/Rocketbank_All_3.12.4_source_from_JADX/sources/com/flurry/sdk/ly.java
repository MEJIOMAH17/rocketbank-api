package com.flurry.sdk;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.net.URI;
import java.util.regex.Pattern;

public final class ly {
    /* renamed from: a */
    private static final Pattern f442a = Pattern.compile("/");

    /* renamed from: a */
    public static String m337a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        URI i = m348i(str);
        if (i == null) {
            return str;
        }
        String scheme = i.getScheme();
        if (TextUtils.isEmpty(scheme)) {
            return "http".concat(String.valueOf(str));
        }
        String toLowerCase = scheme.toLowerCase();
        if (scheme != null) {
            if (!scheme.equals(toLowerCase)) {
                int indexOf = str.indexOf(scheme);
                if (indexOf < 0) {
                    return str;
                }
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(toLowerCase);
                stringBuilder.append(str.substring(indexOf + scheme.length()));
                return stringBuilder.toString();
            }
        }
        return str;
    }

    /* renamed from: b */
    public static String m340b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        URI i = m348i(str);
        if (i == null) {
            return str;
        }
        i = i.normalize();
        if (i.isOpaque()) {
            return str;
        }
        i = m339a(i.getScheme(), i.getAuthority(), "/", null, null);
        if (i == null) {
            return str;
        }
        return i.toString();
    }

    /* renamed from: c */
    public static String m342c(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        URI i = m348i(str);
        if (i == null) {
            return str;
        }
        i = i.normalize();
        if (i.isOpaque()) {
            return str;
        }
        i = i.resolve("./");
        if (i == null) {
            return str;
        }
        return i.toString();
    }

    /* renamed from: a */
    public static String m338a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2)) {
                URI i = m348i(str);
                if (i == null) {
                    return str;
                }
                i = i.normalize();
                str2 = m348i(str2);
                if (str2 == null) {
                    return str;
                }
                str2 = str2.normalize();
                if (!i.isOpaque()) {
                    if (!str2.isOpaque()) {
                        String scheme = i.getScheme();
                        String scheme2 = str2.getScheme();
                        if (scheme2 == null && scheme != null) {
                            return str;
                        }
                        if (scheme2 != null && !scheme2.equals(scheme)) {
                            return str;
                        }
                        scheme = i.getAuthority();
                        scheme2 = str2.getAuthority();
                        if (scheme2 == null && scheme != null) {
                            return str;
                        }
                        if (scheme2 != null && !scheme2.equals(scheme)) {
                            return str;
                        }
                        CharSequence path = i.getPath();
                        CharSequence path2 = str2.getPath();
                        String[] split = f442a.split(path, -1);
                        String[] split2 = f442a.split(path2, -1);
                        int length = split.length;
                        int length2 = split2.length;
                        int i2 = 0;
                        while (i2 < length2 && i2 < length && split[i2].equals(split2[i2])) {
                            i2++;
                        }
                        scheme2 = i.getQuery();
                        String fragment = i.getFragment();
                        StringBuilder stringBuilder = new StringBuilder();
                        if (i2 == length2 && i2 == length) {
                            CharSequence query = str2.getQuery();
                            str2 = str2.getFragment();
                            boolean equals = TextUtils.equals(scheme2, query);
                            str2 = TextUtils.equals(fragment, str2);
                            if (!equals || str2 == null) {
                                str2 = (equals && TextUtils.isEmpty(fragment) == null) ? null : scheme2;
                                if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(fragment)) {
                                    stringBuilder.append(split[length - 1]);
                                } else {
                                    scheme2 = str2;
                                }
                            } else {
                                fragment = null;
                                scheme2 = fragment;
                            }
                        } else {
                            str2 = length - 1;
                            length2--;
                            for (int i3 = i2; i3 < length2; i3++) {
                                stringBuilder.append("..");
                                stringBuilder.append("/");
                            }
                            while (i2 < str2) {
                                stringBuilder.append(split[i2]);
                                stringBuilder.append("/");
                                i2++;
                            }
                            if (i2 < length) {
                                stringBuilder.append(split[i2]);
                            }
                            if (stringBuilder.length() == null) {
                                stringBuilder.append(".");
                                stringBuilder.append("/");
                            }
                        }
                        str2 = m339a(null, null, stringBuilder.toString(), scheme2, fragment);
                        if (str2 == null) {
                            return str;
                        }
                        return str2.toString();
                    }
                }
                return str;
            }
        }
        return str;
    }

    /* renamed from: i */
    private static java.net.URI m348i(java.lang.String r1) {
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
        r0 = new java.net.URI;	 Catch:{ URISyntaxException -> 0x0006 }
        r0.<init>(r1);	 Catch:{ URISyntaxException -> 0x0006 }
        goto L_0x0007;
    L_0x0006:
        r0 = 0;
    L_0x0007:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ly.i(java.lang.String):java.net.URI");
    }

    /* renamed from: a */
    private static java.net.URI m339a(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) {
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
        r6 = new java.net.URI;	 Catch:{ URISyntaxException -> 0x000c }
        r0 = r6;	 Catch:{ URISyntaxException -> 0x000c }
        r1 = r7;	 Catch:{ URISyntaxException -> 0x000c }
        r2 = r8;	 Catch:{ URISyntaxException -> 0x000c }
        r3 = r9;	 Catch:{ URISyntaxException -> 0x000c }
        r4 = r10;	 Catch:{ URISyntaxException -> 0x000c }
        r5 = r11;	 Catch:{ URISyntaxException -> 0x000c }
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ URISyntaxException -> 0x000c }
        goto L_0x000d;
    L_0x000c:
        r6 = 0;
    L_0x000d:
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ly.a(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):java.net.URI");
    }

    /* renamed from: d */
    public static boolean m343d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str = Uri.parse(str);
        if (str.getScheme() == null || str.getScheme().equals("market") == null) {
            return false;
        }
        return true;
    }

    /* renamed from: e */
    public static boolean m344e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str = Uri.parse(str);
        if (str.getScheme() == null) {
            return false;
        }
        if (str.getScheme().equals("http") || str.getScheme().equals("https") != null) {
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public static boolean m345f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str = Uri.parse(str);
        if (str.getHost() == null || !str.getHost().equals("play.google.com") || str.getScheme() == null || str.getScheme().startsWith("http") == null) {
            return false;
        }
        return true;
    }

    /* renamed from: g */
    public static boolean m346g(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str));
        if (str == null || str.startsWith("video/") == null) {
            return false;
        }
        return true;
    }

    /* renamed from: h */
    public static boolean m347h(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str = m348i(str);
        if (str == null) {
            return false;
        }
        if (!(str.getScheme() == null || "http".equalsIgnoreCase(str.getScheme()))) {
            if ("https".equalsIgnoreCase(str.getScheme()) == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static java.lang.String m341b(java.lang.String r2, java.lang.String r3) {
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
        r0 = android.text.TextUtils.isEmpty(r2);
        if (r0 != 0) goto L_0x003d;
    L_0x0006:
        r0 = new java.net.URI;	 Catch:{ Exception -> 0x003d }
        r0.<init>(r2);	 Catch:{ Exception -> 0x003d }
        r0 = r0.isAbsolute();	 Catch:{ Exception -> 0x003d }
        if (r0 != 0) goto L_0x003c;	 Catch:{ Exception -> 0x003d }
    L_0x0011:
        r0 = android.text.TextUtils.isEmpty(r3);	 Catch:{ Exception -> 0x003d }
        if (r0 != 0) goto L_0x003c;	 Catch:{ Exception -> 0x003d }
    L_0x0017:
        r0 = new java.net.URI;	 Catch:{ Exception -> 0x003d }
        r0.<init>(r3);	 Catch:{ Exception -> 0x003d }
        r3 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x003d }
        r3.<init>();	 Catch:{ Exception -> 0x003d }
        r1 = r0.getScheme();	 Catch:{ Exception -> 0x003d }
        r3.append(r1);	 Catch:{ Exception -> 0x003d }
        r1 = "://";	 Catch:{ Exception -> 0x003d }
        r3.append(r1);	 Catch:{ Exception -> 0x003d }
        r0 = r0.getHost();	 Catch:{ Exception -> 0x003d }
        r3.append(r0);	 Catch:{ Exception -> 0x003d }
        r3.append(r2);	 Catch:{ Exception -> 0x003d }
        r3 = r3.toString();	 Catch:{ Exception -> 0x003d }
        return r3;
    L_0x003c:
        return r2;
    L_0x003d:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ly.b(java.lang.String, java.lang.String):java.lang.String");
    }
}
