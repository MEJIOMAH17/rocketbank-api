package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.util.zzj;

public class zze {
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = zzg.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    private static final zze zzayo = new zze();

    zze() {
    }

    static java.lang.String zzB(android.content.Context r2, java.lang.String r3) {
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
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "gcore_";
        r0.append(r1);
        r1 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        r0.append(r1);
        r1 = "-";
        r0.append(r1);
        r1 = android.text.TextUtils.isEmpty(r3);
        if (r1 != 0) goto L_0x001d;
    L_0x001a:
        r0.append(r3);
    L_0x001d:
        r3 = "-";
        r0.append(r3);
        if (r2 == 0) goto L_0x002b;
    L_0x0024:
        r3 = r2.getPackageName();
        r0.append(r3);
    L_0x002b:
        r3 = "-";
        r0.append(r3);
        if (r2 == 0) goto L_0x0044;
    L_0x0032:
        r3 = com.google.android.gms.internal.zzadg.zzbi(r2);	 Catch:{ NameNotFoundException -> 0x0044 }
        r2 = r2.getPackageName();	 Catch:{ NameNotFoundException -> 0x0044 }
        r1 = 0;	 Catch:{ NameNotFoundException -> 0x0044 }
        r2 = r3.getPackageInfo(r2, r1);	 Catch:{ NameNotFoundException -> 0x0044 }
        r2 = r2.versionCode;	 Catch:{ NameNotFoundException -> 0x0044 }
        r0.append(r2);	 Catch:{ NameNotFoundException -> 0x0044 }
    L_0x0044:
        r2 = r0.toString();
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zze.zzB(android.content.Context, java.lang.String):java.lang.String");
    }

    public static zze zzuY() {
        return zzayo;
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return zza(context, i, i2, null);
    }

    public String getErrorString(int i) {
        return zzg.getErrorString(i);
    }

    public String getOpenSourceSoftwareLicenseInfo(Context context) {
        return zzg.getOpenSourceSoftwareLicenseInfo(context);
    }

    public int isGooglePlayServicesAvailable(Context context) {
        int isGooglePlayServicesAvailable = zzg.isGooglePlayServicesAvailable(context);
        return zzg.zzd(context, isGooglePlayServicesAvailable) ? 18 : isGooglePlayServicesAvailable;
    }

    public boolean isUserResolvableError(int i) {
        return zzg.isUserRecoverableError(i);
    }

    public boolean zzA(Context context, String str) {
        return zzg.zzA(context, str);
    }

    public PendingIntent zza(Context context, int i, int i2, String str) {
        Intent zzb = zzb(context, i, str);
        return zzb == null ? null : PendingIntent.getActivity(context, i2, zzb, 268435456);
    }

    public int zzaC(Context context) {
        return zzg.zzaC(context);
    }

    public void zzaE(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        zzg.zzaq(context);
    }

    public void zzaF(Context context) {
        zzg.zzaF(context);
    }

    public Intent zzb(Context context, int i, String str) {
        switch (i) {
            case 1:
            case 2:
                return (context == null || !zzj.zzba(context)) ? zzp.zzD("com.google.android.gms", zzB(context, str)) : zzp.zzyb();
            case 3:
                return zzp.zzdp("com.google.android.gms");
            default:
                return null;
        }
    }

    @Deprecated
    public Intent zzcw(int i) {
        return zzb(null, i, null);
    }

    public boolean zzd(Context context, int i) {
        return zzg.zzd(context, i);
    }
}
