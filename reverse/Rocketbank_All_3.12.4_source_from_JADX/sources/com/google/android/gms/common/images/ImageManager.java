package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.util.LruCache;
import android.widget.ImageView;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.zzacd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ImageManager {
    private static final Object zzaEf = new Object();
    private static HashSet<Uri> zzaEg = new HashSet();
    private static ImageManager zzaEh;
    private static ImageManager zzaEi;
    private final Context mContext;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService zzaEj = Executors.newFixedThreadPool(4);
    private final zza zzaEk;
    private final zzacd zzaEl;
    private final Map<zza, ImageReceiver> zzaEm;
    private final Map<Uri, ImageReceiver> zzaEn;
    private final Map<Uri, Long> zzaEo;

    @KeepName
    private final class ImageReceiver extends ResultReceiver {
        private final Uri mUri;
        private final ArrayList<zza> zzaEp = new ArrayList();
        final /* synthetic */ ImageManager zzaEq;

        ImageReceiver(ImageManager imageManager, Uri uri) {
            this.zzaEq = imageManager;
            super(new Handler(Looper.getMainLooper()));
            this.mUri = uri;
        }

        public final void onReceiveResult(int i, Bundle bundle) {
            this.zzaEq.zzaEj.execute(new zzb(this.zzaEq, this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public final void zzb(zza zza) {
            com.google.android.gms.common.internal.zzc.zzdj("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zzaEp.add(zza);
        }

        public final void zzc(zza zza) {
            com.google.android.gms.common.internal.zzc.zzdj("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zzaEp.remove(zza);
        }

        public final void zzxr() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            this.zzaEq.mContext.sendBroadcast(intent);
        }
    }

    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    private final class zzb implements Runnable {
        private final Uri mUri;
        final /* synthetic */ ImageManager zzaEq;
        private final ParcelFileDescriptor zzaEr;

        public zzb(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.zzaEq = imageManager;
            this.mUri = uri;
            this.zzaEr = parcelFileDescriptor;
        }

        public final void run() {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r12 = this;
            r0 = "LoadBitmapFromDiskRunnable can't be executed in the main thread";
            com.google.android.gms.common.internal.zzc.zzdk(r0);
            r0 = r12.zzaEr;
            r1 = 1;
            r2 = 0;
            r3 = 0;
            if (r0 == 0) goto L_0x004f;
        L_0x000c:
            r0 = r12.zzaEr;	 Catch:{ OutOfMemoryError -> 0x0018 }
            r0 = r0.getFileDescriptor();	 Catch:{ OutOfMemoryError -> 0x0018 }
            r0 = android.graphics.BitmapFactory.decodeFileDescriptor(r0);	 Catch:{ OutOfMemoryError -> 0x0018 }
            r3 = r0;
            goto L_0x0041;
        L_0x0018:
            r0 = move-exception;
            r2 = "ImageManager";
            r4 = r12.mUri;
            r4 = java.lang.String.valueOf(r4);
            r5 = 34;
            r6 = java.lang.String.valueOf(r4);
            r6 = r6.length();
            r5 = r5 + r6;
            r6 = new java.lang.StringBuilder;
            r6.<init>(r5);
            r5 = "OOM while loading bitmap for uri: ";
            r6.append(r5);
            r6.append(r4);
            r4 = r6.toString();
            android.util.Log.e(r2, r4, r0);
            r2 = r1;
        L_0x0041:
            r0 = r12.zzaEr;	 Catch:{ IOException -> 0x0047 }
            r0.close();	 Catch:{ IOException -> 0x0047 }
            goto L_0x004f;
        L_0x0047:
            r0 = move-exception;
            r4 = "ImageManager";
            r5 = "closed failed";
            android.util.Log.e(r4, r5, r0);
        L_0x004f:
            r10 = r2;
            r9 = r3;
            r0 = new java.util.concurrent.CountDownLatch;
            r0.<init>(r1);
            r1 = r12.zzaEq;
            r1 = r1.mHandler;
            r2 = new com.google.android.gms.common.images.ImageManager$zze;
            r7 = r12.zzaEq;
            r8 = r12.mUri;
            r6 = r2;
            r11 = r0;
            r6.<init>(r7, r8, r9, r10, r11);
            r1.post(r2);
            r0.await();	 Catch:{ InterruptedException -> 0x006e }
            return;
        L_0x006e:
            r0 = "ImageManager";
            r1 = r12.mUri;
            r1 = java.lang.String.valueOf(r1);
            r2 = 32;
            r3 = java.lang.String.valueOf(r1);
            r3 = r3.length();
            r2 = r2 + r3;
            r3 = new java.lang.StringBuilder;
            r3.<init>(r2);
            r2 = "Latch interrupted while posting ";
            r3.append(r2);
            r3.append(r1);
            r1 = r3.toString();
            android.util.Log.w(r0, r1);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.images.ImageManager.zzb.run():void");
        }
    }

    private final class zzc implements Runnable {
        final /* synthetic */ ImageManager zzaEq;
        private final zza zzaEs;

        public zzc(ImageManager imageManager, zza zza) {
            this.zzaEq = imageManager;
            this.zzaEs = zza;
        }

        public final void run() {
            com.google.android.gms.common.internal.zzc.zzdj("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) this.zzaEq.zzaEm.get(this.zzaEs);
            if (imageReceiver != null) {
                this.zzaEq.zzaEm.remove(this.zzaEs);
                imageReceiver.zzc(this.zzaEs);
            }
            zza zza = this.zzaEs.zzaEu;
            if (zza.uri == null) {
                this.zzaEs.zza(this.zzaEq.mContext, this.zzaEq.zzaEl, true);
                return;
            }
            Bitmap zza2 = this.zzaEq.zza(zza);
            if (zza2 != null) {
                this.zzaEs.zza(this.zzaEq.mContext, zza2, true);
                return;
            }
            Long l = (Long) this.zzaEq.zzaEo.get(zza.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.zzaEs.zza(this.zzaEq.mContext, this.zzaEq.zzaEl, true);
                    return;
                }
                this.zzaEq.zzaEo.remove(zza.uri);
            }
            this.zzaEs.zza(this.zzaEq.mContext, this.zzaEq.zzaEl);
            ImageReceiver imageReceiver2 = (ImageReceiver) this.zzaEq.zzaEn.get(zza.uri);
            if (imageReceiver2 == null) {
                imageReceiver2 = new ImageReceiver(this.zzaEq, zza.uri);
                this.zzaEq.zzaEn.put(zza.uri, imageReceiver2);
            }
            imageReceiver2.zzb(this.zzaEs);
            if (!(this.zzaEs instanceof com.google.android.gms.common.images.zza.zzc)) {
                this.zzaEq.zzaEm.put(this.zzaEs, imageReceiver2);
            }
            synchronized (ImageManager.zzaEf) {
                if (!ImageManager.zzaEg.contains(zza.uri)) {
                    ImageManager.zzaEg.add(zza.uri);
                    imageReceiver2.zzxr();
                }
            }
        }
    }

    private static final class zzd implements ComponentCallbacks2 {
        private final zza zzaEk;

        public zzd(zza zza) {
            this.zzaEk = zza;
        }

        public final void onConfigurationChanged(Configuration configuration) {
        }

        public final void onLowMemory() {
            this.zzaEk.evictAll();
        }

        public final void onTrimMemory(int i) {
            if (i >= 60) {
                this.zzaEk.evictAll();
                return;
            }
            if (i >= 20) {
                this.zzaEk.trimToSize(this.zzaEk.size() / 2);
            }
        }
    }

    private final class zze implements Runnable {
        private final Bitmap mBitmap;
        private final Uri mUri;
        final /* synthetic */ ImageManager zzaEq;
        private boolean zzaEt;
        private final CountDownLatch zztj;

        public zze(ImageManager imageManager, Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.zzaEq = imageManager;
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.zzaEt = z;
            this.zztj = countDownLatch;
        }

        private void zza(ImageReceiver imageReceiver, boolean z) {
            ArrayList zza = imageReceiver.zzaEp;
            int size = zza.size();
            for (int i = 0; i < size; i++) {
                zza zza2 = (zza) zza.get(i);
                if (z) {
                    zza2.zza(this.zzaEq.mContext, this.mBitmap, false);
                } else {
                    this.zzaEq.zzaEo.put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                    zza2.zza(this.zzaEq.mContext, this.zzaEq.zzaEl, false);
                }
                if (!(zza2 instanceof com.google.android.gms.common.images.zza.zzc)) {
                    this.zzaEq.zzaEm.remove(zza2);
                }
            }
        }

        public final void run() {
            com.google.android.gms.common.internal.zzc.zzdj("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (this.zzaEq.zzaEk != null) {
                if (this.zzaEt) {
                    this.zzaEq.zzaEk.evictAll();
                    System.gc();
                    this.zzaEt = false;
                    this.zzaEq.mHandler.post(this);
                    return;
                } else if (z) {
                    this.zzaEq.zzaEk.put(new zza(this.mUri), this.mBitmap);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) this.zzaEq.zzaEn.remove(this.mUri);
            if (imageReceiver != null) {
                zza(imageReceiver, z);
            }
            this.zztj.countDown();
            synchronized (ImageManager.zzaEf) {
                ImageManager.zzaEg.remove(this.mUri);
            }
        }
    }

    private static final class zza extends LruCache<zza, Bitmap> {
        public zza(Context context) {
            super(zzaR(context));
        }

        private static int zzaR(Context context) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            return (int) (0.33f * ((float) ((((context.getApplicationInfo().flags & 1048576) != 0 ? 1 : null) != null ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * 1048576)));
        }

        protected final /* synthetic */ void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
            zza(z, (zza) obj, (Bitmap) obj2, (Bitmap) obj3);
        }

        protected final /* synthetic */ int sizeOf(Object obj, Object obj2) {
            return zza((zza) obj, (Bitmap) obj2);
        }

        protected final int zza(zza zza, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        protected final void zza(boolean z, zza zza, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, zza, bitmap, bitmap2);
        }
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
        if (z) {
            this.zzaEk = new zza(this.mContext);
            this.mContext.registerComponentCallbacks(new zzd(this.zzaEk));
        } else {
            this.zzaEk = null;
        }
        this.zzaEl = new zzacd();
        this.zzaEm = new HashMap();
        this.zzaEn = new HashMap();
        this.zzaEo = new HashMap();
    }

    public static ImageManager create(Context context) {
        return zzg(context, false);
    }

    private Bitmap zza(zza zza) {
        return this.zzaEk == null ? null : (Bitmap) this.zzaEk.get(zza);
    }

    public static ImageManager zzg(Context context, boolean z) {
        if (z) {
            if (zzaEi == null) {
                zzaEi = new ImageManager(context, true);
            }
            return zzaEi;
        }
        if (zzaEh == null) {
            zzaEh = new ImageManager(context, false);
        }
        return zzaEh;
    }

    public final void loadImage(ImageView imageView, int i) {
        zza(new com.google.android.gms.common.images.zza.zzb(imageView, i));
    }

    public final void loadImage(ImageView imageView, Uri uri) {
        zza(new com.google.android.gms.common.images.zza.zzb(imageView, uri));
    }

    public final void loadImage(ImageView imageView, Uri uri, int i) {
        zza zzb = new com.google.android.gms.common.images.zza.zzb(imageView, uri);
        zzb.zzcO(i);
        zza(zzb);
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zza(new com.google.android.gms.common.images.zza.zzc(onImageLoadedListener, uri));
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zza zzc = new com.google.android.gms.common.images.zza.zzc(onImageLoadedListener, uri);
        zzc.zzcO(i);
        zza(zzc);
    }

    public final void zza(zza zza) {
        com.google.android.gms.common.internal.zzc.zzdj("ImageManager.loadImage() must be called in the main thread");
        new zzc(this, zza).run();
    }
}
