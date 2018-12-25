package com.davemorrissey.labs.subscaleview.decoder;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class SkiaPooledImageRegionDecoder implements ImageRegionDecoder {
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final String FILE_PREFIX = "file://";
    private static final String RESOURCE_PREFIX = "android.resource://";
    private static final String TAG = "SkiaPooledImageRegionDecoder";
    private static boolean debug = false;
    private final Config bitmapConfig;
    private Context context;
    private final ReadWriteLock decoderLock;
    private DecoderPool decoderPool;
    private long fileLength;
    private Point imageDimensions;
    private final AtomicBoolean lazyInited;
    private Uri uri;

    /* renamed from: com.davemorrissey.labs.subscaleview.decoder.SkiaPooledImageRegionDecoder$1 */
    class C03441 extends Thread {
        C03441() {
        }

        public void run() {
            while (SkiaPooledImageRegionDecoder.this.decoderPool != null && SkiaPooledImageRegionDecoder.this.allowAdditionalDecoder(SkiaPooledImageRegionDecoder.this.decoderPool.size(), SkiaPooledImageRegionDecoder.this.fileLength)) {
                try {
                    if (SkiaPooledImageRegionDecoder.this.decoderPool != null) {
                        long currentTimeMillis = System.currentTimeMillis();
                        SkiaPooledImageRegionDecoder.this.debug("Starting decoder");
                        SkiaPooledImageRegionDecoder.this.initialiseDecoder();
                        long currentTimeMillis2 = System.currentTimeMillis();
                        SkiaPooledImageRegionDecoder skiaPooledImageRegionDecoder = SkiaPooledImageRegionDecoder.this;
                        StringBuilder stringBuilder = new StringBuilder("Started decoder, took ");
                        stringBuilder.append(currentTimeMillis2 - currentTimeMillis);
                        stringBuilder.append("ms");
                        skiaPooledImageRegionDecoder.debug(stringBuilder.toString());
                    }
                } catch (Exception e) {
                    SkiaPooledImageRegionDecoder skiaPooledImageRegionDecoder2 = SkiaPooledImageRegionDecoder.this;
                    StringBuilder stringBuilder2 = new StringBuilder("Failed to start decoder: ");
                    stringBuilder2.append(e.getMessage());
                    skiaPooledImageRegionDecoder2.debug(stringBuilder2.toString());
                }
            }
        }
    }

    private static class DecoderPool {
        private final Semaphore available;
        private Map<BitmapRegionDecoder, Boolean> decoders;

        private DecoderPool() {
            this.available = new Semaphore(0, true);
            this.decoders = new ConcurrentHashMap();
        }

        private synchronized boolean isEmpty() {
            return this.decoders.isEmpty();
        }

        private synchronized int size() {
            return this.decoders.size();
        }

        private BitmapRegionDecoder acquire() {
            this.available.acquireUninterruptibly();
            return getNextAvailable();
        }

        private void release(BitmapRegionDecoder bitmapRegionDecoder) {
            if (markAsUnused(bitmapRegionDecoder) != null) {
                this.available.release();
            }
        }

        private synchronized void add(BitmapRegionDecoder bitmapRegionDecoder) {
            this.decoders.put(bitmapRegionDecoder, Boolean.FALSE);
            this.available.release();
        }

        private synchronized void recycle() {
            while (!this.decoders.isEmpty()) {
                BitmapRegionDecoder acquire = acquire();
                acquire.recycle();
                this.decoders.remove(acquire);
            }
        }

        private synchronized BitmapRegionDecoder getNextAvailable() {
            for (Entry entry : this.decoders.entrySet()) {
                if (!((Boolean) entry.getValue()).booleanValue()) {
                    entry.setValue(Boolean.TRUE);
                    return (BitmapRegionDecoder) entry.getKey();
                }
            }
            return null;
        }

        private synchronized boolean markAsUnused(BitmapRegionDecoder bitmapRegionDecoder) {
            for (Entry entry : this.decoders.entrySet()) {
                if (bitmapRegionDecoder == entry.getKey()) {
                    if (((Boolean) entry.getValue()).booleanValue() == null) {
                        return false;
                    }
                    entry.setValue(Boolean.FALSE);
                    return true;
                }
            }
            return false;
        }
    }

    public SkiaPooledImageRegionDecoder() {
        this(null);
    }

    public SkiaPooledImageRegionDecoder(Config config) {
        this.decoderPool = new DecoderPool();
        this.decoderLock = new ReentrantReadWriteLock(true);
        this.fileLength = Long.MAX_VALUE;
        this.imageDimensions = new Point(0, 0);
        this.lazyInited = new AtomicBoolean(false);
        Config preferredBitmapConfig = SubsamplingScaleImageView.getPreferredBitmapConfig();
        if (config != null) {
            this.bitmapConfig = config;
        } else if (preferredBitmapConfig != null) {
            this.bitmapConfig = preferredBitmapConfig;
        } else {
            this.bitmapConfig = Config.RGB_565;
        }
    }

    public static void setDebug(boolean z) {
        debug = z;
    }

    public Point init(Context context, Uri uri) throws Exception {
        this.context = context;
        this.uri = uri;
        initialiseDecoder();
        return this.imageDimensions;
    }

    private void lazyInit() {
        if (this.lazyInited.compareAndSet(false, true) && this.fileLength < Long.MAX_VALUE) {
            debug("Starting lazy init of additional decoders");
            new C03441().start();
        }
    }

    private void initialiseDecoder() throws java.lang.Exception {
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
        r10 = this;
        r0 = r10.uri;
        r0 = r0.toString();
        r1 = "android.resource://";
        r1 = r0.startsWith(r1);
        r2 = 1;
        r3 = 0;
        r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        if (r1 == 0) goto L_0x0099;
    L_0x0015:
        r0 = r10.uri;
        r0 = r0.getAuthority();
        r1 = r10.context;
        r1 = r1.getPackageName();
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x002e;
    L_0x0027:
        r1 = r10.context;
        r1 = r1.getResources();
        goto L_0x0038;
    L_0x002e:
        r1 = r10.context;
        r1 = r1.getPackageManager();
        r1 = r1.getResourcesForApplication(r0);
    L_0x0038:
        r6 = r10.uri;
        r6 = r6.getPathSegments();
        r7 = r6.size();
        r8 = 2;
        if (r7 != r8) goto L_0x0060;
    L_0x0045:
        r8 = r6.get(r3);
        r8 = (java.lang.String) r8;
        r9 = "drawable";
        r8 = r8.equals(r9);
        if (r8 == 0) goto L_0x0060;
    L_0x0053:
        r2 = r6.get(r2);
        r2 = (java.lang.String) r2;
        r6 = "drawable";
        r0 = r1.getIdentifier(r2, r6, r0);
        goto L_0x007a;
    L_0x0060:
        if (r7 != r2) goto L_0x0079;
    L_0x0062:
        r0 = r6.get(r3);
        r0 = (java.lang.CharSequence) r0;
        r0 = android.text.TextUtils.isDigitsOnly(r0);
        if (r0 == 0) goto L_0x0079;
    L_0x006e:
        r0 = r6.get(r3);	 Catch:{ NumberFormatException -> 0x0079 }
        r0 = (java.lang.String) r0;	 Catch:{ NumberFormatException -> 0x0079 }
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ NumberFormatException -> 0x0079 }
        goto L_0x007a;
    L_0x0079:
        r0 = r3;
    L_0x007a:
        r1 = r10.context;	 Catch:{ Exception -> 0x0089 }
        r1 = r1.getResources();	 Catch:{ Exception -> 0x0089 }
        r1 = r1.openRawResourceFd(r0);	 Catch:{ Exception -> 0x0089 }
        r1 = r1.getLength();	 Catch:{ Exception -> 0x0089 }
        r4 = r1;
    L_0x0089:
        r1 = r10.context;
        r1 = r1.getResources();
        r0 = r1.openRawResource(r0);
        r0 = android.graphics.BitmapRegionDecoder.newInstance(r0, r3);
        goto L_0x010d;
    L_0x0099:
        r1 = "file:///android_asset/";
        r1 = r0.startsWith(r1);
        if (r1 == 0) goto L_0x00c5;
    L_0x00a1:
        r1 = 22;
        r0 = r0.substring(r1);
        r1 = r10.context;	 Catch:{ Exception -> 0x00b6 }
        r1 = r1.getAssets();	 Catch:{ Exception -> 0x00b6 }
        r1 = r1.openFd(r0);	 Catch:{ Exception -> 0x00b6 }
        r6 = r1.getLength();	 Catch:{ Exception -> 0x00b6 }
        r4 = r6;
    L_0x00b6:
        r1 = r10.context;
        r1 = r1.getAssets();
        r0 = r1.open(r0, r2);
        r0 = android.graphics.BitmapRegionDecoder.newInstance(r0, r3);
        goto L_0x010d;
    L_0x00c5:
        r1 = "file://";
        r1 = r0.startsWith(r1);
        if (r1 == 0) goto L_0x00e8;
    L_0x00cd:
        r1 = 7;
        r1 = r0.substring(r1);
        r1 = android.graphics.BitmapRegionDecoder.newInstance(r1, r3);
        r2 = new java.io.File;	 Catch:{ Exception -> 0x00e6 }
        r2.<init>(r0);	 Catch:{ Exception -> 0x00e6 }
        r0 = r2.exists();	 Catch:{ Exception -> 0x00e6 }
        if (r0 == 0) goto L_0x00e6;	 Catch:{ Exception -> 0x00e6 }
    L_0x00e1:
        r2 = r2.length();	 Catch:{ Exception -> 0x00e6 }
        r4 = r2;
    L_0x00e6:
        r0 = r1;
        goto L_0x010d;
    L_0x00e8:
        r0 = 0;
        r1 = r10.context;	 Catch:{ all -> 0x0145 }
        r1 = r1.getContentResolver();	 Catch:{ all -> 0x0145 }
        r2 = r10.uri;	 Catch:{ all -> 0x0145 }
        r2 = r1.openInputStream(r2);	 Catch:{ all -> 0x0145 }
        r0 = android.graphics.BitmapRegionDecoder.newInstance(r2, r3);	 Catch:{ all -> 0x0143 }
        r3 = r10.uri;	 Catch:{ Exception -> 0x0108 }
        r6 = "r";	 Catch:{ Exception -> 0x0108 }
        r1 = r1.openAssetFileDescriptor(r3, r6);	 Catch:{ Exception -> 0x0108 }
        if (r1 == 0) goto L_0x0108;	 Catch:{ Exception -> 0x0108 }
    L_0x0103:
        r6 = r1.getLength();	 Catch:{ Exception -> 0x0108 }
        r4 = r6;
    L_0x0108:
        if (r2 == 0) goto L_0x010d;
    L_0x010a:
        r2.close();	 Catch:{ Exception -> 0x010d }
    L_0x010d:
        r10.fileLength = r4;
        r1 = r10.imageDimensions;
        r2 = r0.getWidth();
        r3 = r0.getHeight();
        r1.set(r2, r3);
        r1 = r10.decoderLock;
        r1 = r1.writeLock();
        r1.lock();
        r1 = r10.decoderPool;	 Catch:{ all -> 0x0138 }
        if (r1 == 0) goto L_0x012e;	 Catch:{ all -> 0x0138 }
    L_0x0129:
        r1 = r10.decoderPool;	 Catch:{ all -> 0x0138 }
        r1.add(r0);	 Catch:{ all -> 0x0138 }
    L_0x012e:
        r0 = r10.decoderLock;
        r0 = r0.writeLock();
        r0.unlock();
        return;
    L_0x0138:
        r0 = move-exception;
        r1 = r10.decoderLock;
        r1 = r1.writeLock();
        r1.unlock();
        throw r0;
    L_0x0143:
        r0 = move-exception;
        goto L_0x0148;
    L_0x0145:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x0148:
        if (r2 == 0) goto L_0x014d;
    L_0x014a:
        r2.close();	 Catch:{ Exception -> 0x014d }
    L_0x014d:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.davemorrissey.labs.subscaleview.decoder.SkiaPooledImageRegionDecoder.initialiseDecoder():void");
    }

    public Bitmap decodeRegion(Rect rect, int i) {
        StringBuilder stringBuilder = new StringBuilder("Decode region ");
        stringBuilder.append(rect);
        stringBuilder.append(" on thread ");
        stringBuilder.append(Thread.currentThread().getName());
        debug(stringBuilder.toString());
        if (rect.width() < this.imageDimensions.x || rect.height() < this.imageDimensions.y) {
            lazyInit();
        }
        this.decoderLock.readLock().lock();
        BitmapRegionDecoder access$700;
        try {
            if (this.decoderPool != null) {
                access$700 = this.decoderPool.acquire();
                if (access$700 != null) {
                    if (!access$700.isRecycled()) {
                        Options options = new Options();
                        options.inSampleSize = i;
                        options.inPreferredConfig = this.bitmapConfig;
                        rect = access$700.decodeRegion(rect, options);
                        if (rect == null) {
                            throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
                        }
                        if (access$700 != null) {
                            this.decoderPool.release(access$700);
                        }
                        this.decoderLock.readLock().unlock();
                        return rect;
                    }
                }
                if (access$700 != null) {
                    this.decoderPool.release(access$700);
                }
            }
            throw new IllegalStateException("Cannot decode region after decoder has been recycled");
        } catch (Throwable th) {
            this.decoderLock.readLock().unlock();
        }
    }

    public synchronized boolean isReady() {
        boolean z;
        z = (this.decoderPool == null || this.decoderPool.isEmpty()) ? false : true;
        return z;
    }

    public synchronized void recycle() {
        this.decoderLock.writeLock().lock();
        try {
            if (this.decoderPool != null) {
                this.decoderPool.recycle();
                this.decoderPool = null;
                this.context = null;
                this.uri = null;
            }
        } finally {
            this.decoderLock.writeLock().unlock();
        }
    }

    protected boolean allowAdditionalDecoder(int i, long j) {
        if (i >= 4) {
            debug("No additional decoders allowed, reached hard limit (4)");
            return false;
        }
        long j2 = ((long) i) * j;
        if (j2 > 20971520) {
            debug("No additional encoders allowed, reached hard memory limit (20Mb)");
            return false;
        } else if (i >= getNumberOfCores()) {
            i = new StringBuilder("No additional encoders allowed, limited by CPU cores (");
            i.append(getNumberOfCores());
            i.append(")");
            debug(i.toString());
            return false;
        } else if (isLowMemory() != null) {
            debug("No additional encoders allowed, memory is low");
            return false;
        } else {
            j = new StringBuilder("Additional decoder allowed, current count is ");
            j.append(i);
            j.append(", estimated native memory ");
            j.append(j2 / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
            j.append("Mb");
            debug(j.toString());
            return true;
        }
    }

    private int getNumberOfCores() {
        if (VERSION.SDK_INT >= 17) {
            return Runtime.getRuntime().availableProcessors();
        }
        return getNumCoresOldPhones();
    }

    private int getNumCoresOldPhones() {
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
        r2 = this;
        r0 = new java.io.File;	 Catch:{ Exception -> 0x0012 }
        r1 = "/sys/devices/system/cpu/";	 Catch:{ Exception -> 0x0012 }
        r0.<init>(r1);	 Catch:{ Exception -> 0x0012 }
        r1 = new com.davemorrissey.labs.subscaleview.decoder.SkiaPooledImageRegionDecoder$1CpuFilter;	 Catch:{ Exception -> 0x0012 }
        r1.<init>();	 Catch:{ Exception -> 0x0012 }
        r0 = r0.listFiles(r1);	 Catch:{ Exception -> 0x0012 }
        r0 = r0.length;	 Catch:{ Exception -> 0x0012 }
        return r0;
    L_0x0012:
        r0 = 1;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.davemorrissey.labs.subscaleview.decoder.SkiaPooledImageRegionDecoder.getNumCoresOldPhones():int");
    }

    private boolean isLowMemory() {
        ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
        if (activityManager == null) {
            return true;
        }
        MemoryInfo memoryInfo = new MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.lowMemory;
    }

    private void debug(String str) {
        if (debug) {
            Log.d(TAG, str);
        }
    }
}
