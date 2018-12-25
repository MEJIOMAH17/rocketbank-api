package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.zzg;
import com.google.android.gms.internal.zzcq;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;

public class AdvertisingIdClient {
    private final Context mContext;
    com.google.android.gms.common.zza zzsa;
    zzcq zzsb;
    boolean zzsc;
    Object zzsd;
    zza zzse;
    final long zzsf;

    public static final class Info {
        private final String zzsl;
        private final boolean zzsm;

        public Info(String str, boolean z) {
            this.zzsl = str;
            this.zzsm = z;
        }

        public final String getId() {
            return this.zzsl;
        }

        public final boolean isLimitAdTrackingEnabled() {
            return this.zzsm;
        }

        public final String toString() {
            String str = this.zzsl;
            boolean z = this.zzsm;
            StringBuilder stringBuilder = new StringBuilder(7 + String.valueOf(str).length());
            stringBuilder.append("{");
            stringBuilder.append(str);
            stringBuilder.append("}");
            stringBuilder.append(z);
            return stringBuilder.toString();
        }
    }

    static class zza extends Thread {
        private WeakReference<AdvertisingIdClient> zzsh;
        private long zzsi;
        CountDownLatch zzsj = new CountDownLatch(1);
        boolean zzsk = false;

        public zza(AdvertisingIdClient advertisingIdClient, long j) {
            this.zzsh = new WeakReference(advertisingIdClient);
            this.zzsi = j;
            start();
        }

        private void disconnect() {
            AdvertisingIdClient advertisingIdClient = (AdvertisingIdClient) this.zzsh.get();
            if (advertisingIdClient != null) {
                advertisingIdClient.finish();
                this.zzsk = true;
            }
        }

        public void cancel() {
            this.zzsj.countDown();
        }

        public void run() {
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
            r4 = this;
            r0 = r4.zzsj;	 Catch:{ InterruptedException -> 0x0010 }
            r1 = r4.zzsi;	 Catch:{ InterruptedException -> 0x0010 }
            r3 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ InterruptedException -> 0x0010 }
            r0 = r0.await(r1, r3);	 Catch:{ InterruptedException -> 0x0010 }
            if (r0 != 0) goto L_0x000f;	 Catch:{ InterruptedException -> 0x0010 }
        L_0x000c:
            r4.disconnect();	 Catch:{ InterruptedException -> 0x0010 }
        L_0x000f:
            return;
        L_0x0010:
            r4.disconnect();
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.AdvertisingIdClient.zza.run():void");
        }

        public boolean zzbx() {
            return this.zzsk;
        }
    }

    public AdvertisingIdClient(Context context) {
        this(context, 30000, false);
    }

    public AdvertisingIdClient(Context context, long j, boolean z) {
        this.zzsd = new Object();
        zzac.zzw(context);
        if (z) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
        }
        this.mContext = context;
        this.zzsc = false;
        this.zzsf = j;
    }

    public static Info getAdvertisingIdInfo(Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        boolean z;
        Throwable e;
        AdvertisingIdClient advertisingIdClient;
        Info info;
        float f = BitmapDescriptorFactory.HUE_RED;
        try {
            Context remoteContext = zzg.getRemoteContext(context);
            if (remoteContext != null) {
                SharedPreferences sharedPreferences = remoteContext.getSharedPreferences("google_ads_flags", 1);
                z = sharedPreferences.getBoolean("gads:ad_id_app_context:enabled", false);
                try {
                    f = sharedPreferences.getFloat("gads:ad_id_app_context:ping_ratio", BitmapDescriptorFactory.HUE_RED);
                } catch (Exception e2) {
                    e = e2;
                    Log.w("AdvertisingIdClient", "Error while reading from SharedPreferences ", e);
                    advertisingIdClient = new AdvertisingIdClient(context, -1, z);
                    advertisingIdClient.start(false);
                    info = advertisingIdClient.getInfo();
                    advertisingIdClient.zza(info, z, f, null);
                    return info;
                }
            }
            z = false;
        } catch (Exception e3) {
            e = e3;
            z = false;
            Log.w("AdvertisingIdClient", "Error while reading from SharedPreferences ", e);
            advertisingIdClient = new AdvertisingIdClient(context, -1, z);
            advertisingIdClient.start(false);
            info = advertisingIdClient.getInfo();
            advertisingIdClient.zza(info, z, f, null);
            return info;
        }
        advertisingIdClient = new AdvertisingIdClient(context, -1, z);
        try {
            advertisingIdClient.start(false);
            info = advertisingIdClient.getInfo();
            advertisingIdClient.zza(info, z, f, null);
            return info;
        } catch (Throwable th) {
            info = th;
            advertisingIdClient.zza(null, z, f, info);
            return null;
        } finally {
            advertisingIdClient.finish();
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    static com.google.android.gms.internal.zzcq zza(android.content.Context r2, com.google.android.gms.common.zza r3) throws java.io.IOException {
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
        r0 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
        r2 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ InterruptedException -> 0x0014, Throwable -> 0x000d }
        r2 = r3.zza(r0, r2);	 Catch:{ InterruptedException -> 0x0014, Throwable -> 0x000d }
        r2 = com.google.android.gms.internal.zzcq.zza.zzf(r2);	 Catch:{ InterruptedException -> 0x0014, Throwable -> 0x000d }
        return r2;
    L_0x000d:
        r2 = move-exception;
        r3 = new java.io.IOException;
        r3.<init>(r2);
        throw r3;
    L_0x0014:
        r2 = new java.io.IOException;
        r3 = "Interrupted exception";
        r2.<init>(r3);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.AdvertisingIdClient.zza(android.content.Context, com.google.android.gms.common.zza):com.google.android.gms.internal.zzcq");
    }

    private void zza(Info info, boolean z, float f, Throwable th) {
        if (Math.random() <= ((double) f)) {
            final String uri = zza(info, z, th).toString();
            new Thread(this) {
                public void run() {
                    new zza().zzu(uri);
                }
            }.start();
        }
    }

    private void zzbw() {
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
        r6 = this;
        r0 = r6.zzsd;
        monitor-enter(r0);
        r1 = r6.zzse;	 Catch:{ all -> 0x0024 }
        if (r1 == 0) goto L_0x0011;	 Catch:{ all -> 0x0024 }
    L_0x0007:
        r1 = r6.zzse;	 Catch:{ all -> 0x0024 }
        r1.cancel();	 Catch:{ all -> 0x0024 }
        r1 = r6.zzse;	 Catch:{ InterruptedException -> 0x0011 }
        r1.join();	 Catch:{ InterruptedException -> 0x0011 }
    L_0x0011:
        r1 = r6.zzsf;	 Catch:{ all -> 0x0024 }
        r3 = 0;	 Catch:{ all -> 0x0024 }
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));	 Catch:{ all -> 0x0024 }
        if (r5 <= 0) goto L_0x0022;	 Catch:{ all -> 0x0024 }
    L_0x0019:
        r1 = new com.google.android.gms.ads.identifier.AdvertisingIdClient$zza;	 Catch:{ all -> 0x0024 }
        r2 = r6.zzsf;	 Catch:{ all -> 0x0024 }
        r1.<init>(r6, r2);	 Catch:{ all -> 0x0024 }
        r6.zzse = r1;	 Catch:{ all -> 0x0024 }
    L_0x0022:
        monitor-exit(r0);	 Catch:{ all -> 0x0024 }
        return;	 Catch:{ all -> 0x0024 }
    L_0x0024:
        r1 = move-exception;	 Catch:{ all -> 0x0024 }
        monitor-exit(r0);	 Catch:{ all -> 0x0024 }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.AdvertisingIdClient.zzbw():void");
    }

    static com.google.android.gms.common.zza zzf(android.content.Context r4) throws java.io.IOException, com.google.android.gms.common.GooglePlayServicesNotAvailableException, com.google.android.gms.common.GooglePlayServicesRepairableException {
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
        r0 = r4.getPackageManager();	 Catch:{ NameNotFoundException -> 0x004b }
        r1 = "com.android.vending";	 Catch:{ NameNotFoundException -> 0x004b }
        r2 = 0;	 Catch:{ NameNotFoundException -> 0x004b }
        r0.getPackageInfo(r1, r2);	 Catch:{ NameNotFoundException -> 0x004b }
        r0 = com.google.android.gms.common.zze.zzuY();
        r0 = r0.isGooglePlayServicesAvailable(r4);
        if (r0 == 0) goto L_0x001f;
    L_0x0014:
        r1 = 2;
        if (r0 == r1) goto L_0x001f;
    L_0x0017:
        r4 = new java.io.IOException;
        r0 = "Google Play services not available";
        r4.<init>(r0);
        throw r4;
    L_0x001f:
        r0 = new com.google.android.gms.common.zza;
        r0.<init>();
        r1 = new android.content.Intent;
        r2 = "com.google.android.gms.ads.identifier.service.START";
        r1.<init>(r2);
        r2 = "com.google.android.gms";
        r1.setPackage(r2);
        r2 = com.google.android.gms.common.stats.zza.zzyJ();	 Catch:{ Throwable -> 0x0044 }
        r3 = 1;	 Catch:{ Throwable -> 0x0044 }
        r4 = r2.zza(r4, r1, r0, r3);	 Catch:{ Throwable -> 0x0044 }
        if (r4 == 0) goto L_0x003c;
    L_0x003b:
        return r0;
    L_0x003c:
        r4 = new java.io.IOException;
        r0 = "Connection failure";
        r4.<init>(r0);
        throw r4;
    L_0x0044:
        r4 = move-exception;
        r0 = new java.io.IOException;
        r0.<init>(r4);
        throw r0;
    L_0x004b:
        r4 = new com.google.android.gms.common.GooglePlayServicesNotAvailableException;
        r0 = 9;
        r4.<init>(r0);
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.AdvertisingIdClient.zzf(android.content.Context):com.google.android.gms.common.zza");
    }

    protected void finalize() throws Throwable {
        finish();
        super.finalize();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void finish() {
        /*
        r3 = this;
        r0 = "Calling this from your main thread can lead to deadlock";
        com.google.android.gms.common.internal.zzac.zzdk(r0);
        monitor-enter(r3);
        r0 = r3.mContext;	 Catch:{ all -> 0x003a }
        if (r0 == 0) goto L_0x0038;
    L_0x000a:
        r0 = r3.zzsa;	 Catch:{ all -> 0x003a }
        if (r0 != 0) goto L_0x000f;
    L_0x000e:
        goto L_0x0038;
    L_0x000f:
        r0 = r3.zzsc;	 Catch:{ IllegalArgumentException -> 0x0028, Throwable -> 0x001f }
        if (r0 == 0) goto L_0x002e;
    L_0x0013:
        r0 = com.google.android.gms.common.stats.zza.zzyJ();	 Catch:{ IllegalArgumentException -> 0x0028, Throwable -> 0x001f }
        r1 = r3.mContext;	 Catch:{ IllegalArgumentException -> 0x0028, Throwable -> 0x001f }
        r2 = r3.zzsa;	 Catch:{ IllegalArgumentException -> 0x0028, Throwable -> 0x001f }
        r0.zza(r1, r2);	 Catch:{ IllegalArgumentException -> 0x0028, Throwable -> 0x001f }
        goto L_0x002e;
    L_0x001f:
        r0 = move-exception;
        r1 = "AdvertisingIdClient";
        r2 = "AdvertisingIdClient unbindService failed.";
    L_0x0024:
        android.util.Log.i(r1, r2, r0);	 Catch:{ all -> 0x003a }
        goto L_0x002e;
    L_0x0028:
        r0 = move-exception;
        r1 = "AdvertisingIdClient";
        r2 = "AdvertisingIdClient unbindService failed.";
        goto L_0x0024;
    L_0x002e:
        r0 = 0;
        r3.zzsc = r0;	 Catch:{ all -> 0x003a }
        r0 = 0;
        r3.zzsb = r0;	 Catch:{ all -> 0x003a }
        r3.zzsa = r0;	 Catch:{ all -> 0x003a }
        monitor-exit(r3);	 Catch:{ all -> 0x003a }
        return;
    L_0x0038:
        monitor-exit(r3);	 Catch:{ all -> 0x003a }
        return;
    L_0x003a:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x003a }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.AdvertisingIdClient.finish():void");
    }

    public Info getInfo() throws IOException {
        Info info;
        zzac.zzdk("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzsc) {
                synchronized (this.zzsd) {
                    if (this.zzse != null) {
                        if (this.zzse.zzbx()) {
                        }
                    }
                    throw new IOException("AdvertisingIdClient is not connected.");
                }
                try {
                    start(false);
                    if (!this.zzsc) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Throwable e) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e);
                    throw new IOException("Remote exception");
                } catch (Throwable e2) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                }
            }
            zzac.zzw(this.zzsa);
            zzac.zzw(this.zzsb);
            info = new Info(this.zzsb.getId(), this.zzsb.zze(true));
        }
        zzbw();
        return info;
    }

    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        start(true);
    }

    protected void start(boolean z) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzac.zzdk("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzsc) {
                finish();
            }
            this.zzsa = zzf(this.mContext);
            this.zzsb = zza(this.mContext, this.zzsa);
            this.zzsc = true;
            if (z) {
                zzbw();
            }
        }
    }

    Uri zza(Info info, boolean z, Throwable th) {
        Bundle bundle = new Bundle();
        bundle.putString("app_context", z ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        if (info != null) {
            bundle.putString("limit_ad_tracking", info.isLimitAdTrackingEnabled() ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        if (!(info == null || info.getId() == null)) {
            bundle.putString("ad_id_size", Integer.toString(info.getId().length()));
        }
        if (th != null) {
            bundle.putString("error", th.getClass().getName());
        }
        Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str : bundle.keySet()) {
            buildUpon.appendQueryParameter(str, bundle.getString(str));
        }
        return buildUpon.build();
    }
}
