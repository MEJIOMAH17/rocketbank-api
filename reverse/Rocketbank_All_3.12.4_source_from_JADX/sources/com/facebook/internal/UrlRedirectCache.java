package com.facebook.internal;

import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache.Limits;
import java.io.IOException;

class UrlRedirectCache {
    private static final String REDIRECT_CONTENT_TAG;
    static final String TAG = "UrlRedirectCache";
    private static volatile FileLruCache urlRedirectCache;

    UrlRedirectCache() {
    }

    static {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(TAG);
        stringBuilder.append("_Redirect");
        REDIRECT_CONTENT_TAG = stringBuilder.toString();
    }

    static synchronized FileLruCache getCache() throws IOException {
        FileLruCache fileLruCache;
        synchronized (UrlRedirectCache.class) {
            if (urlRedirectCache == null) {
                urlRedirectCache = new FileLruCache(TAG, new Limits());
            }
            fileLruCache = urlRedirectCache;
        }
        return fileLruCache;
    }

    static android.net.Uri getRedirectedUri(android.net.Uri r9) {
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
        if (r9 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r9 = r9.toString();
        r1 = getCache();	 Catch:{ IOException -> 0x0058, all -> 0x0050 }
        r2 = 0;
        r4 = r0;
        r3 = r2;
    L_0x000f:
        r5 = REDIRECT_CONTENT_TAG;	 Catch:{ IOException -> 0x004e, all -> 0x004b }
        r5 = r1.get(r9, r5);	 Catch:{ IOException -> 0x004e, all -> 0x004b }
        if (r5 == 0) goto L_0x003d;	 Catch:{ IOException -> 0x004e, all -> 0x004b }
    L_0x0017:
        r3 = 1;	 Catch:{ IOException -> 0x004e, all -> 0x004b }
        r9 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x004e, all -> 0x004b }
        r9.<init>(r5);	 Catch:{ IOException -> 0x004e, all -> 0x004b }
        r4 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r5 = new char[r4];	 Catch:{ IOException -> 0x0059, all -> 0x003b }
        r6 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0059, all -> 0x003b }
        r6.<init>();	 Catch:{ IOException -> 0x0059, all -> 0x003b }
    L_0x0026:
        r7 = r9.read(r5, r2, r4);	 Catch:{ IOException -> 0x0059, all -> 0x003b }
        if (r7 <= 0) goto L_0x0030;	 Catch:{ IOException -> 0x0059, all -> 0x003b }
    L_0x002c:
        r6.append(r5, r2, r7);	 Catch:{ IOException -> 0x0059, all -> 0x003b }
        goto L_0x0026;	 Catch:{ IOException -> 0x0059, all -> 0x003b }
    L_0x0030:
        com.facebook.internal.Utility.closeQuietly(r9);	 Catch:{ IOException -> 0x0059, all -> 0x003b }
        r4 = r6.toString();	 Catch:{ IOException -> 0x0059, all -> 0x003b }
        r8 = r4;
        r4 = r9;
        r9 = r8;
        goto L_0x000f;
    L_0x003b:
        r0 = move-exception;
        goto L_0x0054;
    L_0x003d:
        if (r3 == 0) goto L_0x0047;
    L_0x003f:
        r9 = android.net.Uri.parse(r9);	 Catch:{ IOException -> 0x004e, all -> 0x004b }
        com.facebook.internal.Utility.closeQuietly(r4);
        return r9;
    L_0x0047:
        com.facebook.internal.Utility.closeQuietly(r4);
        goto L_0x005c;
    L_0x004b:
        r0 = move-exception;
        r9 = r4;
        goto L_0x0054;
    L_0x004e:
        r9 = r4;
        goto L_0x0059;
    L_0x0050:
        r9 = move-exception;
        r8 = r0;
        r0 = r9;
        r9 = r8;
    L_0x0054:
        com.facebook.internal.Utility.closeQuietly(r9);
        throw r0;
    L_0x0058:
        r9 = r0;
    L_0x0059:
        com.facebook.internal.Utility.closeQuietly(r9);
    L_0x005c:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.UrlRedirectCache.getRedirectedUri(android.net.Uri):android.net.Uri");
    }

    static void cacheUriRedirect(android.net.Uri r3, android.net.Uri r4) {
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
        if (r3 == 0) goto L_0x0030;
    L_0x0002:
        if (r4 != 0) goto L_0x0005;
    L_0x0004:
        goto L_0x0030;
    L_0x0005:
        r0 = 0;
        r1 = getCache();	 Catch:{ IOException -> 0x002b, all -> 0x0026 }
        r3 = r3.toString();	 Catch:{ IOException -> 0x002b, all -> 0x0026 }
        r2 = REDIRECT_CONTENT_TAG;	 Catch:{ IOException -> 0x002b, all -> 0x0026 }
        r3 = r1.openPutStream(r3, r2);	 Catch:{ IOException -> 0x002b, all -> 0x0026 }
        r4 = r4.toString();	 Catch:{ IOException -> 0x002c, all -> 0x0023 }
        r4 = r4.getBytes();	 Catch:{ IOException -> 0x002c, all -> 0x0023 }
        r3.write(r4);	 Catch:{ IOException -> 0x002c, all -> 0x0023 }
        com.facebook.internal.Utility.closeQuietly(r3);
        return;
    L_0x0023:
        r4 = move-exception;
        r0 = r3;
        goto L_0x0027;
    L_0x0026:
        r4 = move-exception;
    L_0x0027:
        com.facebook.internal.Utility.closeQuietly(r0);
        throw r4;
    L_0x002b:
        r3 = r0;
    L_0x002c:
        com.facebook.internal.Utility.closeQuietly(r3);
        return;
    L_0x0030:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.UrlRedirectCache.cacheUriRedirect(android.net.Uri, android.net.Uri):void");
    }

    static void clearCache() {
        try {
            getCache().clearCache();
        } catch (IOException e) {
            LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder("clearCache failed ");
            stringBuilder.append(e.getMessage());
            Logger.log(loggingBehavior, 5, str, stringBuilder.toString());
        }
    }
}
