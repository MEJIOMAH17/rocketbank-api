package com.crashlytics.android.beta;

import io.fabric.sdk.android.services.cache.ValueLoader;

public final class DeviceTokenLoader implements ValueLoader<String> {
    private static java.lang.String load(android.content.Context r7) throws java.lang.Exception {
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
        r2 = "";
        r3 = 0;
        r4 = "io.crash.air";	 Catch:{ NameNotFoundException -> 0x0083, FileNotFoundException -> 0x0071, IOException -> 0x005f }
        r7 = r7.getPackageManager();	 Catch:{ NameNotFoundException -> 0x0083, FileNotFoundException -> 0x0071, IOException -> 0x005f }
        r5 = 0;	 Catch:{ NameNotFoundException -> 0x0083, FileNotFoundException -> 0x0071, IOException -> 0x005f }
        r7 = r7.getApplicationInfo(r4, r5);	 Catch:{ NameNotFoundException -> 0x0083, FileNotFoundException -> 0x0071, IOException -> 0x005f }
        r4 = new java.util.zip.ZipInputStream;	 Catch:{ NameNotFoundException -> 0x0083, FileNotFoundException -> 0x0071, IOException -> 0x005f }
        r5 = new java.io.FileInputStream;	 Catch:{ NameNotFoundException -> 0x0083, FileNotFoundException -> 0x0071, IOException -> 0x005f }
        r7 = r7.sourceDir;	 Catch:{ NameNotFoundException -> 0x0083, FileNotFoundException -> 0x0071, IOException -> 0x005f }
        r5.<init>(r7);	 Catch:{ NameNotFoundException -> 0x0083, FileNotFoundException -> 0x0071, IOException -> 0x005f }
        r4.<init>(r5);	 Catch:{ NameNotFoundException -> 0x0083, FileNotFoundException -> 0x0071, IOException -> 0x005f }
        r7 = r4.getNextEntry();	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
        if (r7 == 0) goto L_0x003d;	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
    L_0x0024:
        r7 = r7.getName();	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
        r3 = "assets/com.crashlytics.android.beta/dirfactor-device-token=";	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
        r3 = r7.startsWith(r3);	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
        if (r3 == 0) goto L_0x003d;	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
    L_0x0030:
        r3 = 59;	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
        r5 = r7.length();	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
        r5 = r5 + -1;	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
        r7 = r7.substring(r3, r5);	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
        goto L_0x003f;	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
    L_0x003d:
        r7 = "";	 Catch:{ NameNotFoundException -> 0x005b, FileNotFoundException -> 0x0058, IOException -> 0x0055, all -> 0x0051 }
    L_0x003f:
        r2 = r7;
        r4.close();	 Catch:{ IOException -> 0x0044 }
        goto L_0x0093;
    L_0x0044:
        r7 = move-exception;
        r3 = io.fabric.sdk.android.Fabric.getLogger();
        r4 = "Beta";
        r5 = "Failed to close the APK file";
        r3.mo771e(r4, r5, r7);
        goto L_0x0093;
    L_0x0051:
        r7 = move-exception;
        r3 = r4;
        goto L_0x00bd;
    L_0x0055:
        r7 = move-exception;
        r3 = r4;
        goto L_0x0060;
    L_0x0058:
        r7 = move-exception;
        r3 = r4;
        goto L_0x0072;
    L_0x005b:
        r3 = r4;
        goto L_0x0083;
    L_0x005d:
        r7 = move-exception;
        goto L_0x00bd;
    L_0x005f:
        r7 = move-exception;
    L_0x0060:
        r4 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ all -> 0x005d }
        r5 = "Beta";	 Catch:{ all -> 0x005d }
        r6 = "Failed to read the APK file";	 Catch:{ all -> 0x005d }
        r4.mo771e(r5, r6, r7);	 Catch:{ all -> 0x005d }
        if (r3 == 0) goto L_0x0093;
    L_0x006d:
        r3.close();	 Catch:{ IOException -> 0x0044 }
        goto L_0x0093;
    L_0x0071:
        r7 = move-exception;
    L_0x0072:
        r4 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ all -> 0x005d }
        r5 = "Beta";	 Catch:{ all -> 0x005d }
        r6 = "Failed to find the APK file";	 Catch:{ all -> 0x005d }
        r4.mo771e(r5, r6, r7);	 Catch:{ all -> 0x005d }
        if (r3 == 0) goto L_0x0093;
    L_0x007f:
        r3.close();	 Catch:{ IOException -> 0x0044 }
        goto L_0x0093;
    L_0x0083:
        r7 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ all -> 0x005d }
        r4 = "Beta";	 Catch:{ all -> 0x005d }
        r5 = "Beta by Crashlytics app is not installed";	 Catch:{ all -> 0x005d }
        r7.mo768d(r4, r5);	 Catch:{ all -> 0x005d }
        if (r3 == 0) goto L_0x0093;
    L_0x0090:
        r3.close();	 Catch:{ IOException -> 0x0044 }
    L_0x0093:
        r3 = java.lang.System.nanoTime();
        r5 = r3 - r0;
        r0 = (double) r5;
        r3 = 4696837146684686336; // 0x412e848000000000 float:0.0 double:1000000.0;
        r0 = r0 / r3;
        r7 = io.fabric.sdk.android.Fabric.getLogger();
        r3 = "Beta";
        r4 = new java.lang.StringBuilder;
        r5 = "Beta device token load took ";
        r4.<init>(r5);
        r4.append(r0);
        r0 = "ms";
        r4.append(r0);
        r0 = r4.toString();
        r7.mo768d(r3, r0);
        return r2;
    L_0x00bd:
        if (r3 == 0) goto L_0x00cf;
    L_0x00bf:
        r3.close();	 Catch:{ IOException -> 0x00c3 }
        goto L_0x00cf;
    L_0x00c3:
        r0 = move-exception;
        r1 = io.fabric.sdk.android.Fabric.getLogger();
        r2 = "Beta";
        r3 = "Failed to close the APK file";
        r1.mo771e(r2, r3, r0);
    L_0x00cf:
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.beta.DeviceTokenLoader.load(android.content.Context):java.lang.String");
    }
}
