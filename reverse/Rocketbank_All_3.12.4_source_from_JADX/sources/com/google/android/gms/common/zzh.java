package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzadf;
import com.google.android.gms.internal.zzadg;

public class zzh {
    private static zzh zzayD;
    private final Context mContext;
    private final zzadf zzayE = zzadg.zzbi(this.mContext);

    private zzh(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static zzh zzaN(Context context) {
        zzac.zzw(context);
        synchronized (zzh.class) {
            if (zzayD == null) {
                zzf.zzaG(context);
                zzayD = new zzh(context);
            }
        }
        return zzayD;
    }

    zza zza(PackageInfo packageInfo, zza... zzaArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        int i = 0;
        zzb zzb = new zzb(packageInfo.signatures[0].toByteArray());
        while (i < zzaArr.length) {
            if (zzaArr[i].equals(zzb)) {
                return zzaArr[i];
            }
            i++;
        }
        return null;
    }

    public boolean zza(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zzg.zzaJ(this.mContext)) {
            return zzb(packageInfo, true);
        }
        boolean zzb = zzb(packageInfo, false);
        if (!zzb && zzb(packageInfo, true)) {
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return zzb;
    }

    public boolean zza(PackageInfo packageInfo, boolean z) {
        if (!(packageInfo == null || packageInfo.signatures == null)) {
            if (zza(packageInfo, z ? zzd.zzayw : new zza[]{zzd.zzayw[0]}) != null) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public boolean zza(PackageManager packageManager, int i) {
        return zzcx(i);
    }

    @Deprecated
    public boolean zza(PackageManager packageManager, PackageInfo packageInfo) {
        return zzb(packageInfo);
    }

    public boolean zzb(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zza(packageInfo, false)) {
            return true;
        }
        if (zza(packageInfo, true)) {
            if (zzg.zzaJ(this.mContext)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    boolean zzb(PackageInfo packageInfo, boolean z) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return false;
        }
        zza zzb = new zzb(packageInfo.signatures[0].toByteArray());
        String str = packageInfo.packageName;
        boolean zzb2 = z ? zzf.zzb(str, zzb) : zzf.zza(str, zzb);
        if (!zzb2) {
            StringBuilder stringBuilder = new StringBuilder(27);
            stringBuilder.append("Cert not in list. atk=");
            stringBuilder.append(z);
            Log.d("GoogleSignatureVerifier", stringBuilder.toString());
        }
        return zzb2;
    }

    public boolean zzcx(int i) {
        String[] packagesForUid = this.zzayE.getPackagesForUid(i);
        if (packagesForUid == null || packagesForUid.length == 0) {
            return false;
        }
        for (String zzdd : packagesForUid) {
            if (zzdd(zzdd)) {
                return true;
            }
        }
        return false;
    }

    public boolean zzdd(java.lang.String r3) {
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
        r0 = r2.zzayE;	 Catch:{ NameNotFoundException -> 0x000d }
        r1 = 64;	 Catch:{ NameNotFoundException -> 0x000d }
        r3 = r0.getPackageInfo(r3, r1);	 Catch:{ NameNotFoundException -> 0x000d }
        r3 = r2.zza(r3);	 Catch:{ NameNotFoundException -> 0x000d }
        return r3;
    L_0x000d:
        r3 = 0;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzh.zzdd(java.lang.String):boolean");
    }
}
