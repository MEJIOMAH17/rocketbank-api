package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache.Limits;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

class ImageResponseCache {
    static final String TAG = "ImageResponseCache";
    private static volatile FileLruCache imageCache;

    private static class BufferedHttpInputStream extends BufferedInputStream {
        HttpURLConnection connection;

        BufferedHttpInputStream(InputStream inputStream, HttpURLConnection httpURLConnection) {
            super(inputStream, 8192);
            this.connection = httpURLConnection;
        }

        public void close() throws IOException {
            super.close();
            Utility.disconnectQuietly(this.connection);
        }
    }

    ImageResponseCache() {
    }

    static synchronized FileLruCache getCache(Context context) throws IOException {
        FileLruCache fileLruCache;
        synchronized (ImageResponseCache.class) {
            if (imageCache == null) {
                imageCache = new FileLruCache(TAG, new Limits());
            }
            fileLruCache = imageCache;
        }
        return fileLruCache;
    }

    static InputStream getCachedImageStream(Uri uri, Context context) {
        if (uri != null && isCDNURL(uri)) {
            try {
                return getCache(context).get(uri.toString());
            } catch (Uri uri2) {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, uri2.toString());
            }
        }
        return null;
    }

    static java.io.InputStream interceptAndCacheImageStream(android.content.Context r3, java.net.HttpURLConnection r4) throws java.io.IOException {
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
        r0 = r4.getResponseCode();
        r1 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r0 != r1) goto L_0x0031;
    L_0x0008:
        r0 = r4.getURL();
        r0 = r0.toString();
        r0 = android.net.Uri.parse(r0);
        r1 = r4.getInputStream();
        r2 = isCDNURL(r0);	 Catch:{ IOException -> 0x0032 }
        if (r2 == 0) goto L_0x0032;	 Catch:{ IOException -> 0x0032 }
    L_0x001e:
        r3 = getCache(r3);	 Catch:{ IOException -> 0x0032 }
        r0 = r0.toString();	 Catch:{ IOException -> 0x0032 }
        r2 = new com.facebook.internal.ImageResponseCache$BufferedHttpInputStream;	 Catch:{ IOException -> 0x0032 }
        r2.<init>(r1, r4);	 Catch:{ IOException -> 0x0032 }
        r3 = r3.interceptAndPut(r0, r2);	 Catch:{ IOException -> 0x0032 }
        r1 = r3;
        goto L_0x0032;
    L_0x0031:
        r1 = 0;
    L_0x0032:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ImageResponseCache.interceptAndCacheImageStream(android.content.Context, java.net.HttpURLConnection):java.io.InputStream");
    }

    private static boolean isCDNURL(Uri uri) {
        if (uri != null) {
            uri = uri.getHost();
            if (uri.endsWith("fbcdn.net")) {
                return true;
            }
            if (uri.startsWith("fbcdn") && uri.endsWith("akamaihd.net") != null) {
                return true;
            }
        }
        return null;
    }

    static void clearCache(Context context) {
        try {
            getCache(context).clearCache();
        } catch (Context context2) {
            LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder("clearCache failed ");
            stringBuilder.append(context2.getMessage());
            Logger.log(loggingBehavior, 5, str, stringBuilder.toString());
        }
    }
}
