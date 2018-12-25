package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.v4.util.ArrayMap;
import android.util.Base64;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import java.io.IOException;
import java.util.Map;
import org.slf4j.Marker;

public class FirebaseInstanceId {
    private static Map<String, FirebaseInstanceId> zzbhH = new ArrayMap();
    private static zze zzcll;
    private final FirebaseApp zzclm;
    private final zzd zzcln;
    private final String zzclo;

    public static FirebaseInstanceId getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    @Keep
    public static synchronized FirebaseInstanceId getInstance(FirebaseApp firebaseApp) {
        FirebaseInstanceId firebaseInstanceId;
        synchronized (FirebaseInstanceId.class) {
            firebaseInstanceId = (FirebaseInstanceId) zzbhH.get(firebaseApp.getOptions().getApplicationId());
            if (firebaseInstanceId == null) {
                zzd zzb = zzd.zzb(firebaseApp.getApplicationContext(), null);
                if (zzcll == null) {
                    zzcll = new zze(zzd.zzabS());
                }
                FirebaseInstanceId firebaseInstanceId2 = new FirebaseInstanceId(firebaseApp, zzb);
                zzbhH.put(firebaseApp.getOptions().getApplicationId(), firebaseInstanceId2);
                firebaseInstanceId = firebaseInstanceId2;
            }
        }
        return firebaseInstanceId;
    }

    static int zzS(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(23 + String.valueOf(valueOf).length());
            stringBuilder.append("Failed to find package ");
            stringBuilder.append(valueOf);
            Log.w("FirebaseInstanceId", stringBuilder.toString());
            return 0;
        }
    }

    static java.lang.String zza(java.security.KeyPair r4) {
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
        r4 = r4.getPublic();
        r4 = r4.getEncoded();
        r0 = "SHA1";	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r0 = java.security.MessageDigest.getInstance(r0);	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r4 = r0.digest(r4);	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r0 = 0;	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r1 = r4[r0];	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r2 = 112; // 0x70 float:1.57E-43 double:5.53E-322;	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r3 = 15;	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r1 = r1 & r3;	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r2 = r2 + r1;	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r1 = (byte) r2;	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r4[r0] = r1;	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r1 = 8;	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r2 = 11;	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        r4 = android.util.Base64.encodeToString(r4, r0, r1, r2);	 Catch:{ NoSuchAlgorithmException -> 0x0027 }
        return r4;
    L_0x0027:
        r4 = "FirebaseInstanceId";
        r0 = "Unexpected error, device missing required alghorithms";
        android.util.Log.w(r4, r0);
        r4 = 0;
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.FirebaseInstanceId.zza(java.security.KeyPair):java.lang.String");
    }

    static void zza(Context context, zzh zzh) {
        zzh.zzHo();
        Intent intent = new Intent();
        intent.putExtra("CMD", "RST");
        zzg.zzabW().zzg(context, intent);
    }

    static zze zzabR() {
        return zzcll;
    }

    static String zzbx(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(38 + String.valueOf(valueOf).length());
            stringBuilder.append("Never happens: can't find own package ");
            stringBuilder.append(valueOf);
            Log.w("FirebaseInstanceId", stringBuilder.toString());
            return null;
        }
    }

    static void zzby(Context context) {
        Intent intent = new Intent();
        intent.putExtra("CMD", "SYNC");
        zzg.zzabW().zzg(context, intent);
    }

    static int zzcr(Context context) {
        return zzS(context, context.getPackageName());
    }

    static String zzv(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    public final String getId() {
        return zza(this.zzcln.zzHh());
    }

    final zza zzabP() {
        return zzd.zzabS().zzu("", this.zzclo, Marker.ANY_MARKER);
    }

    private FirebaseInstanceId(FirebaseApp firebaseApp, zzd zzd) {
        this.zzclm = firebaseApp;
        this.zzcln = zzd;
        firebaseApp = this.zzclm.getOptions().getGcmSenderId();
        if (firebaseApp == null) {
            firebaseApp = this.zzclm.getOptions().getApplicationId();
            if (firebaseApp.startsWith("1:")) {
                firebaseApp = firebaseApp.split(":");
                if (firebaseApp.length >= 2) {
                    firebaseApp = firebaseApp[1];
                    if (firebaseApp.isEmpty()) {
                    }
                }
                firebaseApp = null;
            }
        }
        this.zzclo = firebaseApp;
        if (this.zzclo == null) {
            throw new IllegalStateException("IID failing to initialize, FirebaseApp is missing project ID");
        }
        FirebaseInstanceIdService.zza(this.zzclm.getApplicationContext(), this);
    }

    public final String getToken() {
        zza zzu = zzd.zzabS().zzu("", this.zzclo, Marker.ANY_MARKER);
        if (zzu == null || zzu.zzjB(zzd.zzbhN)) {
            FirebaseInstanceIdService.zzct(this.zzclm.getApplicationContext());
        }
        return zzu != null ? zzu.zzbxW : null;
    }

    final String zzabQ() throws IOException {
        String str = this.zzclo;
        String str2 = Marker.ANY_MARKER;
        Bundle bundle = new Bundle();
        bundle.putString("gmp_app_id", this.zzclm.getOptions().getApplicationId());
        return this.zzcln.getToken(str, str2, bundle);
    }

    final void zzju(String str) throws IOException {
        zza zzu = zzd.zzabS().zzu("", this.zzclo, Marker.ANY_MARKER);
        if (zzu != null) {
            if (!zzu.zzjB(zzd.zzbhN)) {
                Bundle bundle = new Bundle();
                String str2 = "gcm.topic";
                String valueOf = String.valueOf("/topics/");
                String valueOf2 = String.valueOf(str);
                bundle.putString(str2, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                String str3 = zzu.zzbxW;
                str2 = String.valueOf("/topics/");
                str = String.valueOf(str);
                str = str.length() != 0 ? str2.concat(str) : new String(str2);
                bundle.putString("gmp_app_id", this.zzclm.getOptions().getApplicationId());
                this.zzcln.zzc(str3, str, bundle);
                return;
            }
        }
        throw new IOException("token not available");
    }

    final void zzjv(String str) throws IOException {
        zza zzu = zzd.zzabS().zzu("", this.zzclo, Marker.ANY_MARKER);
        if (zzu != null) {
            if (!zzu.zzjB(zzd.zzbhN)) {
                Bundle bundle = new Bundle();
                String str2 = "gcm.topic";
                String valueOf = String.valueOf("/topics/");
                String valueOf2 = String.valueOf(str);
                bundle.putString(str2, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                zzd zzd = this.zzcln;
                String str3 = zzu.zzbxW;
                valueOf = String.valueOf("/topics/");
                str = String.valueOf(str);
                zzd.zzb(str3, str.length() != 0 ? valueOf.concat(str) : new String(valueOf), bundle);
                return;
            }
        }
        throw new IOException("token not available");
    }
}
