package com.flurry.sdk;

import android.content.Context;
import android.os.Bundle;

public final class lo {
    /* renamed from: a */
    private static final String f424a = "lo";

    /* renamed from: d */
    private static android.content.pm.PackageInfo m285d(android.content.Context r3) {
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
        if (r3 == 0) goto L_0x0028;
    L_0x0002:
        r0 = r3.getPackageManager();	 Catch:{ NameNotFoundException -> 0x0011 }
        r1 = r3.getPackageName();	 Catch:{ NameNotFoundException -> 0x0011 }
        r2 = 20815; // 0x514f float:2.9168E-41 double:1.0284E-319;	 Catch:{ NameNotFoundException -> 0x0011 }
        r0 = r0.getPackageInfo(r1, r2);	 Catch:{ NameNotFoundException -> 0x0011 }
        goto L_0x0029;
    L_0x0011:
        r0 = f424a;
        r1 = new java.lang.StringBuilder;
        r2 = "Cannot find package info for package: ";
        r1.<init>(r2);
        r3 = r3.getPackageName();
        r1.append(r3);
        r3 = r1.toString();
        com.flurry.sdk.kf.m178a(r0, r3);
    L_0x0028:
        r0 = 0;
    L_0x0029:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.lo.d(android.content.Context):android.content.pm.PackageInfo");
    }

    /* renamed from: e */
    private static android.content.pm.ApplicationInfo m286e(android.content.Context r3) {
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
        if (r3 == 0) goto L_0x0028;
    L_0x0002:
        r0 = r3.getPackageManager();	 Catch:{ NameNotFoundException -> 0x0011 }
        r1 = r3.getPackageName();	 Catch:{ NameNotFoundException -> 0x0011 }
        r2 = 128; // 0x80 float:1.794E-43 double:6.32E-322;	 Catch:{ NameNotFoundException -> 0x0011 }
        r0 = r0.getApplicationInfo(r1, r2);	 Catch:{ NameNotFoundException -> 0x0011 }
        goto L_0x0029;
    L_0x0011:
        r0 = f424a;
        r1 = new java.lang.StringBuilder;
        r2 = "Cannot find application info for package: ";
        r1.<init>(r2);
        r3 = r3.getPackageName();
        r1.append(r3);
        r3 = r1.toString();
        com.flurry.sdk.kf.m178a(r0, r3);
    L_0x0028:
        r0 = 0;
    L_0x0029:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.lo.e(android.content.Context):android.content.pm.ApplicationInfo");
    }

    /* renamed from: a */
    public static String m282a(Context context) {
        context = m285d(context);
        return (context == null || context.packageName == null) ? "" : context.packageName;
    }

    /* renamed from: b */
    public static String m283b(Context context) {
        context = m285d(context);
        return (context == null || context.versionName == null) ? "" : context.versionName;
    }

    /* renamed from: c */
    public static Bundle m284c(Context context) {
        context = m286e(context);
        return (context == null || context.metaData == null) ? Bundle.EMPTY : context.metaData;
    }
}
