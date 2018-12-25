package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.facebook.internal.ImageRequest.Callback;
import com.facebook.internal.WorkQueue.WorkItem;
import java.util.HashMap;
import java.util.Map;

public class ImageDownloader {
    private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
    private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
    private static WorkQueue cacheReadQueue = new WorkQueue(2);
    private static WorkQueue downloadQueue = new WorkQueue(8);
    private static Handler handler;
    private static final Map<RequestKey, DownloaderContext> pendingRequests = new HashMap();

    private static class CacheReadWorkItem implements Runnable {
        private boolean allowCachedRedirects;
        private Context context;
        private RequestKey key;

        CacheReadWorkItem(Context context, RequestKey requestKey, boolean z) {
            this.context = context;
            this.key = requestKey;
            this.allowCachedRedirects = z;
        }

        public void run() {
            ImageDownloader.readFromCache(this.key, this.context, this.allowCachedRedirects);
        }
    }

    private static class DownloadImageWorkItem implements Runnable {
        private Context context;
        private RequestKey key;

        DownloadImageWorkItem(Context context, RequestKey requestKey) {
            this.context = context;
            this.key = requestKey;
        }

        public void run() {
            ImageDownloader.download(this.key, this.context);
        }
    }

    private static class DownloaderContext {
        boolean isCancelled;
        ImageRequest request;
        WorkItem workItem;

        private DownloaderContext() {
        }
    }

    private static class RequestKey {
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        Object tag;
        Uri uri;

        RequestKey(Uri uri, Object obj) {
            this.uri = uri;
            this.tag = obj;
        }

        public int hashCode() {
            return ((1073 + this.uri.hashCode()) * 37) + this.tag.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof RequestKey)) {
                return false;
            }
            RequestKey requestKey = (RequestKey) obj;
            if (requestKey.uri == this.uri && requestKey.tag == this.tag) {
                return true;
            }
            return false;
        }
    }

    public static void downloadAsync(ImageRequest imageRequest) {
        if (imageRequest != null) {
            RequestKey requestKey = new RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
            synchronized (pendingRequests) {
                DownloaderContext downloaderContext = (DownloaderContext) pendingRequests.get(requestKey);
                if (downloaderContext != null) {
                    downloaderContext.request = imageRequest;
                    downloaderContext.isCancelled = null;
                    downloaderContext.workItem.moveToFront();
                } else {
                    enqueueCacheRead(imageRequest, requestKey, imageRequest.isCachedRedirectAllowed());
                }
            }
        }
    }

    public static boolean cancelRequest(ImageRequest imageRequest) {
        boolean z;
        RequestKey requestKey = new RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
        synchronized (pendingRequests) {
            DownloaderContext downloaderContext = (DownloaderContext) pendingRequests.get(requestKey);
            z = true;
            if (downloaderContext == null) {
                z = false;
            } else if (downloaderContext.workItem.cancel()) {
                pendingRequests.remove(requestKey);
            } else {
                downloaderContext.isCancelled = true;
            }
        }
        return z;
    }

    public static void prioritizeRequest(ImageRequest imageRequest) {
        RequestKey requestKey = new RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
        synchronized (pendingRequests) {
            DownloaderContext downloaderContext = (DownloaderContext) pendingRequests.get(requestKey);
            if (downloaderContext != null) {
                downloaderContext.workItem.moveToFront();
            }
        }
    }

    public static void clearCache(Context context) {
        ImageResponseCache.clearCache(context);
        UrlRedirectCache.clearCache();
    }

    private static void enqueueCacheRead(ImageRequest imageRequest, RequestKey requestKey, boolean z) {
        enqueueRequest(imageRequest, requestKey, cacheReadQueue, new CacheReadWorkItem(imageRequest.getContext(), requestKey, z));
    }

    private static void enqueueDownload(ImageRequest imageRequest, RequestKey requestKey) {
        enqueueRequest(imageRequest, requestKey, downloadQueue, new DownloadImageWorkItem(imageRequest.getContext(), requestKey));
    }

    private static void enqueueRequest(ImageRequest imageRequest, RequestKey requestKey, WorkQueue workQueue, Runnable runnable) {
        synchronized (pendingRequests) {
            DownloaderContext downloaderContext = new DownloaderContext();
            downloaderContext.request = imageRequest;
            pendingRequests.put(requestKey, downloaderContext);
            downloaderContext.workItem = workQueue.addActiveWorkItem(runnable);
        }
    }

    private static void issueResponse(RequestKey requestKey, Exception exception, Bitmap bitmap, boolean z) {
        requestKey = removePendingRequest(requestKey);
        if (requestKey != null && !requestKey.isCancelled) {
            final ImageRequest imageRequest = requestKey.request;
            final Callback callback = imageRequest.getCallback();
            if (callback != null) {
                final Exception exception2 = exception;
                final boolean z2 = z;
                final Bitmap bitmap2 = bitmap;
                getHandler().post(new Runnable() {
                    public final void run() {
                        callback.onCompleted(new ImageResponse(imageRequest, exception2, z2, bitmap2));
                    }
                });
            }
        }
    }

    private static void readFromCache(RequestKey requestKey, Context context, boolean z) {
        boolean z2 = false;
        if (z) {
            z = UrlRedirectCache.getRedirectedUri(requestKey.uri);
            if (z) {
                z = ImageResponseCache.getCachedImageStream(z, context);
                if (z) {
                    z2 = true;
                }
                if (!z2) {
                    z = ImageResponseCache.getCachedImageStream(requestKey.uri, context);
                }
                if (z) {
                    context = removePendingRequest(requestKey);
                    if (!(context == null || context.isCancelled)) {
                        enqueueDownload(context.request, requestKey);
                    }
                    return;
                }
                context = BitmapFactory.decodeStream(z);
                Utility.closeQuietly(z);
                issueResponse(requestKey, null, context, z2);
            }
        }
        z = false;
        if (z2) {
            z = ImageResponseCache.getCachedImageStream(requestKey.uri, context);
        }
        if (z) {
            context = removePendingRequest(requestKey);
            enqueueDownload(context.request, requestKey);
            return;
        }
        context = BitmapFactory.decodeStream(z);
        Utility.closeQuietly(z);
        issueResponse(requestKey, null, context, z2);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void download(com.facebook.internal.ImageDownloader.RequestKey r10, android.content.Context r11) {
        /*
        r0 = 0;
        r1 = 0;
        r2 = 1;
        r3 = new java.net.URL;	 Catch:{ IOException -> 0x00bc, all -> 0x00b3 }
        r4 = r10.uri;	 Catch:{ IOException -> 0x00bc, all -> 0x00b3 }
        r4 = r4.toString();	 Catch:{ IOException -> 0x00bc, all -> 0x00b3 }
        r3.<init>(r4);	 Catch:{ IOException -> 0x00bc, all -> 0x00b3 }
        r3 = r3.openConnection();	 Catch:{ IOException -> 0x00bc, all -> 0x00b3 }
        r3 = (java.net.HttpURLConnection) r3;	 Catch:{ IOException -> 0x00bc, all -> 0x00b3 }
        r3.setInstanceFollowRedirects(r1);	 Catch:{ IOException -> 0x00b0, all -> 0x00ae }
        r4 = r3.getResponseCode();	 Catch:{ IOException -> 0x00b0, all -> 0x00ae }
        r5 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r4 == r5) goto L_0x0095;
    L_0x001f:
        switch(r4) {
            case 301: goto L_0x0062;
            case 302: goto L_0x0062;
            default: goto L_0x0022;
        };	 Catch:{ IOException -> 0x00b0, all -> 0x00ae }
    L_0x0022:
        r4 = r3.getErrorStream();	 Catch:{ IOException -> 0x00b0, all -> 0x00ae }
        r5 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        r5.<init>();	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        if (r4 == 0) goto L_0x0044;
    L_0x002d:
        r11 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        r11.<init>(r4);	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        r6 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r7 = new char[r6];	 Catch:{ IOException -> 0x005f, all -> 0x005b }
    L_0x0036:
        r8 = r11.read(r7, r1, r6);	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        if (r8 <= 0) goto L_0x0040;
    L_0x003c:
        r5.append(r7, r1, r8);	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        goto L_0x0036;
    L_0x0040:
        com.facebook.internal.Utility.closeQuietly(r11);	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        goto L_0x004d;
    L_0x0044:
        r6 = com.facebook.C0361R.string.com_facebook_image_download_unknown_error;	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        r11 = r11.getString(r6);	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        r5.append(r11);	 Catch:{ IOException -> 0x005f, all -> 0x005b }
    L_0x004d:
        r11 = new com.facebook.FacebookException;	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        r5 = r5.toString();	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        r11.<init>(r5);	 Catch:{ IOException -> 0x005f, all -> 0x005b }
        r9 = r0;
        r0 = r11;
        r11 = r4;
        r4 = r9;
        goto L_0x009d;
    L_0x005b:
        r10 = move-exception;
        r0 = r4;
        goto L_0x00b5;
    L_0x005f:
        r11 = move-exception;
        goto L_0x00bf;
    L_0x0062:
        r11 = "location";
        r11 = r3.getHeaderField(r11);	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        r2 = com.facebook.internal.Utility.isNullOrEmpty(r11);	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        if (r2 != 0) goto L_0x008d;
    L_0x006e:
        r11 = android.net.Uri.parse(r11);	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        r2 = r10.uri;	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        com.facebook.internal.UrlRedirectCache.cacheUriRedirect(r2, r11);	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        r2 = removePendingRequest(r10);	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        if (r2 == 0) goto L_0x008d;
    L_0x007d:
        r4 = r2.isCancelled;	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        if (r4 != 0) goto L_0x008d;
    L_0x0081:
        r2 = r2.request;	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        r4 = new com.facebook.internal.ImageDownloader$RequestKey;	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        r5 = r10.tag;	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        r4.<init>(r11, r5);	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
        enqueueCacheRead(r2, r4, r1);	 Catch:{ IOException -> 0x0091, all -> 0x00ae }
    L_0x008d:
        r11 = r0;
        r4 = r11;
        r2 = r1;
        goto L_0x009d;
    L_0x0091:
        r11 = move-exception;
        r4 = r0;
        r2 = r1;
        goto L_0x00bf;
    L_0x0095:
        r11 = com.facebook.internal.ImageResponseCache.interceptAndCacheImageStream(r11, r3);	 Catch:{ IOException -> 0x00b0, all -> 0x00ae }
        r4 = android.graphics.BitmapFactory.decodeStream(r11);	 Catch:{ IOException -> 0x00a9, all -> 0x00a6 }
    L_0x009d:
        com.facebook.internal.Utility.closeQuietly(r11);
        com.facebook.internal.Utility.disconnectQuietly(r3);
        r11 = r0;
        r0 = r4;
        goto L_0x00c5;
    L_0x00a6:
        r10 = move-exception;
        r0 = r11;
        goto L_0x00b5;
    L_0x00a9:
        r4 = move-exception;
        r9 = r4;
        r4 = r11;
        r11 = r9;
        goto L_0x00bf;
    L_0x00ae:
        r10 = move-exception;
        goto L_0x00b5;
    L_0x00b0:
        r11 = move-exception;
        r4 = r0;
        goto L_0x00bf;
    L_0x00b3:
        r10 = move-exception;
        r3 = r0;
    L_0x00b5:
        com.facebook.internal.Utility.closeQuietly(r0);
        com.facebook.internal.Utility.disconnectQuietly(r3);
        throw r10;
    L_0x00bc:
        r11 = move-exception;
        r3 = r0;
        r4 = r3;
    L_0x00bf:
        com.facebook.internal.Utility.closeQuietly(r4);
        com.facebook.internal.Utility.disconnectQuietly(r3);
    L_0x00c5:
        if (r2 == 0) goto L_0x00ca;
    L_0x00c7:
        issueResponse(r10, r11, r0, r1);
    L_0x00ca:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ImageDownloader.download(com.facebook.internal.ImageDownloader$RequestKey, android.content.Context):void");
    }

    private static synchronized Handler getHandler() {
        Handler handler;
        synchronized (ImageDownloader.class) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler = handler;
        }
        return handler;
    }

    private static DownloaderContext removePendingRequest(RequestKey requestKey) {
        DownloaderContext downloaderContext;
        synchronized (pendingRequests) {
            downloaderContext = (DownloaderContext) pendingRequests.remove(requestKey);
        }
        return downloaderContext;
    }
}
