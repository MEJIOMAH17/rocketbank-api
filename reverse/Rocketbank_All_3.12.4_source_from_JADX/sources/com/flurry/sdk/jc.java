package com.flurry.sdk;

import android.text.TextUtils;

public class jc {
    /* renamed from: a */
    private static String f239a = "com.flurry.sdk.jc";

    /* renamed from: a */
    public static String m77a(String str) {
        StringBuilder stringBuilder = new StringBuilder("a=");
        stringBuilder.append(jr.m114a().f296d);
        String stringBuilder2 = stringBuilder.toString();
        if (TextUtils.isEmpty(str)) {
            return stringBuilder2;
        }
        StringBuilder stringBuilder3 = new StringBuilder("cid=");
        stringBuilder3.append(m78b(str));
        str = stringBuilder3.toString();
        return String.format("%s&%s", new Object[]{stringBuilder2, str});
    }

    /* renamed from: b */
    private static java.lang.String m78b(java.lang.String r5) {
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
        if (r5 == 0) goto L_0x0055;
    L_0x0003:
        r1 = r5.trim();
        r1 = r1.length();
        if (r1 <= 0) goto L_0x0055;
    L_0x000d:
        r1 = 6;
        r5 = com.flurry.sdk.lr.m316f(r5);	 Catch:{ Exception -> 0x004e }
        if (r5 == 0) goto L_0x0036;	 Catch:{ Exception -> 0x004e }
    L_0x0014:
        r2 = r5.length;	 Catch:{ Exception -> 0x004e }
        r3 = 20;
        if (r2 != r3) goto L_0x0036;
    L_0x0019:
        r0 = 5;
        r2 = f239a;	 Catch:{ Exception -> 0x0034 }
        r3 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0034 }
        r4 = "syndication hashedId is:";	 Catch:{ Exception -> 0x0034 }
        r3.<init>(r4);	 Catch:{ Exception -> 0x0034 }
        r4 = new java.lang.String;	 Catch:{ Exception -> 0x0034 }
        r4.<init>(r5);	 Catch:{ Exception -> 0x0034 }
        r3.append(r4);	 Catch:{ Exception -> 0x0034 }
        r3 = r3.toString();	 Catch:{ Exception -> 0x0034 }
        com.flurry.sdk.kf.m176a(r0, r2, r3);	 Catch:{ Exception -> 0x0034 }
        r0 = r5;
        goto L_0x0055;
    L_0x0034:
        r0 = r5;
        goto L_0x004e;
    L_0x0036:
        r2 = f239a;	 Catch:{ Exception -> 0x004e }
        r3 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x004e }
        r4 = "sha1 is not 20 bytes long: ";	 Catch:{ Exception -> 0x004e }
        r3.<init>(r4);	 Catch:{ Exception -> 0x004e }
        r5 = java.util.Arrays.toString(r5);	 Catch:{ Exception -> 0x004e }
        r3.append(r5);	 Catch:{ Exception -> 0x004e }
        r5 = r3.toString();	 Catch:{ Exception -> 0x004e }
        com.flurry.sdk.kf.m176a(r1, r2, r5);	 Catch:{ Exception -> 0x004e }
        goto L_0x0055;
    L_0x004e:
        r5 = f239a;
        r2 = "Exception in getHashedSyndicationIdString()";
        com.flurry.sdk.kf.m176a(r1, r5, r2);
    L_0x0055:
        r5 = com.flurry.sdk.lr.m303a(r0);
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.jc.b(java.lang.String):java.lang.String");
    }
}
