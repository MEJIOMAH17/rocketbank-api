package com.appsflyer.cache;

import android.content.Context;
import android.util.Log;
import com.appsflyer.AppsFlyerLib;
import java.io.File;

public final class CacheManager {
    private static CacheManager ourInstance = new CacheManager();

    public static CacheManager getInstance() {
        return ourInstance;
    }

    private CacheManager() {
    }

    public static java.util.List<android.support.compat.C0886R.drawable> getCachedRequests(android.content.Context r7) {
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
        r0 = new java.util.ArrayList;
        r0.<init>();
        r1 = new java.io.File;	 Catch:{ Exception -> 0x0045 }
        r7 = r7.getFilesDir();	 Catch:{ Exception -> 0x0045 }
        r2 = "AFRequestCache";	 Catch:{ Exception -> 0x0045 }
        r1.<init>(r7, r2);	 Catch:{ Exception -> 0x0045 }
        r7 = r1.exists();	 Catch:{ Exception -> 0x0045 }
        if (r7 != 0) goto L_0x001a;	 Catch:{ Exception -> 0x0045 }
    L_0x0016:
        r1.mkdir();	 Catch:{ Exception -> 0x0045 }
        goto L_0x004c;	 Catch:{ Exception -> 0x0045 }
    L_0x001a:
        r7 = r1.listFiles();	 Catch:{ Exception -> 0x0045 }
        r1 = r7.length;	 Catch:{ Exception -> 0x0045 }
        r2 = 0;	 Catch:{ Exception -> 0x0045 }
    L_0x0020:
        if (r2 >= r1) goto L_0x004c;	 Catch:{ Exception -> 0x0045 }
    L_0x0022:
        r3 = r7[r2];	 Catch:{ Exception -> 0x0045 }
        r4 = com.appsflyer.AppsFlyerLib.LOG_TAG;	 Catch:{ Exception -> 0x0045 }
        r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0045 }
        r6 = "Found cached request";	 Catch:{ Exception -> 0x0045 }
        r5.<init>(r6);	 Catch:{ Exception -> 0x0045 }
        r6 = r3.getName();	 Catch:{ Exception -> 0x0045 }
        r5.append(r6);	 Catch:{ Exception -> 0x0045 }
        r5 = r5.toString();	 Catch:{ Exception -> 0x0045 }
        android.util.Log.i(r4, r5);	 Catch:{ Exception -> 0x0045 }
        r3 = loadRequestData$4fb5c820(r3);	 Catch:{ Exception -> 0x0045 }
        r0.add(r3);	 Catch:{ Exception -> 0x0045 }
        r2 = r2 + 1;
        goto L_0x0020;
    L_0x0045:
        r7 = com.appsflyer.AppsFlyerLib.LOG_TAG;
        r1 = "Could not cache request";
        android.util.Log.i(r7, r1);
    L_0x004c:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.cache.CacheManager.getCachedRequests(android.content.Context):java.util.List<android.support.compat.R$drawable>");
    }

    private static android.support.compat.C0886R.drawable loadRequestData$4fb5c820(java.io.File r4) {
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
        r0 = 0;
        r1 = new java.io.FileReader;	 Catch:{ Exception -> 0x002a, all -> 0x0022 }
        r1.<init>(r4);	 Catch:{ Exception -> 0x002a, all -> 0x0022 }
        r2 = r4.length();	 Catch:{ Exception -> 0x002b, all -> 0x0020 }
        r2 = (int) r2;	 Catch:{ Exception -> 0x002b, all -> 0x0020 }
        r2 = new char[r2];	 Catch:{ Exception -> 0x002b, all -> 0x0020 }
        r1.read(r2);	 Catch:{ Exception -> 0x002b, all -> 0x0020 }
        r3 = new android.support.compat.R$drawable;	 Catch:{ Exception -> 0x002b, all -> 0x0020 }
        r3.<init>(r2);	 Catch:{ Exception -> 0x002b, all -> 0x0020 }
        r4 = r4.getName();	 Catch:{ Exception -> 0x002b, all -> 0x0020 }
        r3.setCacheKey(r4);	 Catch:{ Exception -> 0x002b, all -> 0x0020 }
        r1.close();	 Catch:{ IOException -> 0x001f }
    L_0x001f:
        return r3;
    L_0x0020:
        r4 = move-exception;
        goto L_0x0024;
    L_0x0022:
        r4 = move-exception;
        r1 = r0;
    L_0x0024:
        if (r1 == 0) goto L_0x0029;
    L_0x0026:
        r1.close();	 Catch:{ IOException -> 0x0029 }
    L_0x0029:
        throw r4;
    L_0x002a:
        r1 = r0;
    L_0x002b:
        if (r1 == 0) goto L_0x0030;
    L_0x002d:
        r1.close();	 Catch:{ IOException -> 0x0030 }
    L_0x0030:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.cache.CacheManager.loadRequestData$4fb5c820(java.io.File):android.support.compat.R$drawable");
    }

    public static void init(android.content.Context r3) {
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
        r0 = new java.io.File;	 Catch:{ Exception -> 0x0020 }
        r1 = r3.getFilesDir();	 Catch:{ Exception -> 0x0020 }
        r2 = "AFRequestCache";	 Catch:{ Exception -> 0x0020 }
        r0.<init>(r1, r2);	 Catch:{ Exception -> 0x0020 }
        r0 = r0.exists();	 Catch:{ Exception -> 0x0020 }
        if (r0 != 0) goto L_0x001f;	 Catch:{ Exception -> 0x0020 }
    L_0x0011:
        r0 = new java.io.File;	 Catch:{ Exception -> 0x0020 }
        r3 = r3.getFilesDir();	 Catch:{ Exception -> 0x0020 }
        r1 = "AFRequestCache";	 Catch:{ Exception -> 0x0020 }
        r0.<init>(r3, r1);	 Catch:{ Exception -> 0x0020 }
        r0.mkdir();	 Catch:{ Exception -> 0x0020 }
    L_0x001f:
        return;
    L_0x0020:
        r3 = com.appsflyer.AppsFlyerLib.LOG_TAG;
        r0 = "Could not create cache directory";
        android.util.Log.i(r3, r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.cache.CacheManager.init(android.content.Context):void");
    }

    public static void cacheRequest$29a0b403(android.support.compat.C0886R.drawable r5, android.content.Context r6) {
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
        r0 = 0;
        r1 = new java.io.File;	 Catch:{ Exception -> 0x0098 }
        r2 = r6.getFilesDir();	 Catch:{ Exception -> 0x0098 }
        r3 = "AFRequestCache";	 Catch:{ Exception -> 0x0098 }
        r1.<init>(r2, r3);	 Catch:{ Exception -> 0x0098 }
        r2 = r1.exists();	 Catch:{ Exception -> 0x0098 }
        if (r2 != 0) goto L_0x0016;	 Catch:{ Exception -> 0x0098 }
    L_0x0012:
        r1.mkdir();	 Catch:{ Exception -> 0x0098 }
        return;	 Catch:{ Exception -> 0x0098 }
    L_0x0016:
        r1 = r1.listFiles();	 Catch:{ Exception -> 0x0098 }
        if (r1 == 0) goto L_0x0029;	 Catch:{ Exception -> 0x0098 }
    L_0x001c:
        r1 = r1.length;	 Catch:{ Exception -> 0x0098 }
        r2 = 40;	 Catch:{ Exception -> 0x0098 }
        if (r1 <= r2) goto L_0x0029;	 Catch:{ Exception -> 0x0098 }
    L_0x0021:
        r5 = com.appsflyer.AppsFlyerLib.LOG_TAG;	 Catch:{ Exception -> 0x0098 }
        r6 = "reached cache limit, not caching request";	 Catch:{ Exception -> 0x0098 }
        android.util.Log.i(r5, r6);	 Catch:{ Exception -> 0x0098 }
        return;	 Catch:{ Exception -> 0x0098 }
    L_0x0029:
        r1 = com.appsflyer.AppsFlyerLib.LOG_TAG;	 Catch:{ Exception -> 0x0098 }
        r2 = "caching request...";	 Catch:{ Exception -> 0x0098 }
        android.util.Log.i(r1, r2);	 Catch:{ Exception -> 0x0098 }
        r1 = new java.io.File;	 Catch:{ Exception -> 0x0098 }
        r2 = new java.io.File;	 Catch:{ Exception -> 0x0098 }
        r6 = r6.getFilesDir();	 Catch:{ Exception -> 0x0098 }
        r3 = "AFRequestCache";	 Catch:{ Exception -> 0x0098 }
        r2.<init>(r6, r3);	 Catch:{ Exception -> 0x0098 }
        r3 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0098 }
        r6 = java.lang.Long.toString(r3);	 Catch:{ Exception -> 0x0098 }
        r1.<init>(r2, r6);	 Catch:{ Exception -> 0x0098 }
        r1.createNewFile();	 Catch:{ Exception -> 0x0098 }
        r6 = new java.io.OutputStreamWriter;	 Catch:{ Exception -> 0x0098 }
        r2 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x0098 }
        r1 = r1.getPath();	 Catch:{ Exception -> 0x0098 }
        r3 = 1;	 Catch:{ Exception -> 0x0098 }
        r2.<init>(r1, r3);	 Catch:{ Exception -> 0x0098 }
        r6.<init>(r2);	 Catch:{ Exception -> 0x0098 }
        r0 = "version=";	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.write(r0);	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r0 = r5.getVersion();	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.write(r0);	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r0 = 10;	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.write(r0);	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r1 = "url=";	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.write(r1);	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r1 = r5.getRequestURL();	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.write(r1);	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.write(r0);	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r1 = "data=";	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.write(r1);	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r5 = r5.getPostData();	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.write(r5);	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.write(r0);	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.flush();	 Catch:{ Exception -> 0x0094, all -> 0x0091 }
        r6.close();	 Catch:{ IOException -> 0x0090 }
        return;
    L_0x0090:
        return;
    L_0x0091:
        r5 = move-exception;
        r0 = r6;
        goto L_0x00a7;
    L_0x0094:
        r0 = r6;
        goto L_0x0098;
    L_0x0096:
        r5 = move-exception;
        goto L_0x00a7;
    L_0x0098:
        r5 = com.appsflyer.AppsFlyerLib.LOG_TAG;	 Catch:{ all -> 0x0096 }
        r6 = "Could not cache request";	 Catch:{ all -> 0x0096 }
        android.util.Log.i(r5, r6);	 Catch:{ all -> 0x0096 }
        if (r0 == 0) goto L_0x00a6;
    L_0x00a1:
        r0.close();	 Catch:{ IOException -> 0x00a5 }
        goto L_0x00a6;
    L_0x00a5:
        return;
    L_0x00a6:
        return;
    L_0x00a7:
        if (r0 == 0) goto L_0x00ac;
    L_0x00a9:
        r0.close();	 Catch:{ IOException -> 0x00ac }
    L_0x00ac:
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.cache.CacheManager.cacheRequest$29a0b403(android.support.compat.R$drawable, android.content.Context):void");
    }

    public static void deleteRequest(String str, Context context) {
        context = new File(new File(context.getFilesDir(), "AFRequestCache"), str);
        String str2 = AppsFlyerLib.LOG_TAG;
        StringBuilder stringBuilder = new StringBuilder("Deleting ");
        stringBuilder.append(str);
        stringBuilder.append(" from cache");
        Log.i(str2, stringBuilder.toString());
        if (context.exists()) {
            try {
                context.delete();
            } catch (Context context2) {
                str2 = AppsFlyerLib.LOG_TAG;
                stringBuilder = new StringBuilder("Could not delete ");
                stringBuilder.append(str);
                stringBuilder.append(" from cache");
                Log.i(str2, stringBuilder.toString(), context2);
            }
        }
    }
}
