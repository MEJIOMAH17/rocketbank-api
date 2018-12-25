package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.zze;

public class zzatu extends zzauh {
    private String mAppId;
    private String zzVX;
    private String zzacL;
    private String zzacM;
    private String zzbqv;
    private long zzbqz;
    private int zzbsw;
    private long zzbsx;
    private int zzbsy;

    zzatu(zzaue zzaue) {
        super(zzaue);
    }

    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    String getGmpAppId() {
        zzob();
        return this.zzVX;
    }

    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    String zzKu() {
        zzob();
        return this.zzbqv;
    }

    long zzKv() {
        return zzKn().zzKv();
    }

    long zzKw() {
        zzob();
        zzmR();
        if (this.zzbsx == 0) {
            this.zzbsx = this.zzbqb.zzKh().zzM(getContext(), getContext().getPackageName());
        }
        return this.zzbsx;
    }

    int zzLX() {
        zzob();
        return this.zzbsw;
    }

    int zzLY() {
        zzob();
        return this.zzbsy;
    }

    protected void zzbw(Status status) {
        if (status == null) {
            zzKl().zzLZ().log("GoogleService failed to initialize (no status)");
        } else {
            zzKl().zzLZ().zze("GoogleService failed to initialize, status", Integer.valueOf(status.getStatusCode()), status.getStatusMessage());
        }
    }

    zzatd zzfD(String str) {
        zzmR();
        return new zzatd(zzke(), getGmpAppId(), zzmZ(), (long) zzLX(), zzKu(), zzKv(), zzKw(), str, this.zzbqb.isEnabled(), zzKm().zzbts ^ 1, zzKm().zzKq(), zzuW(), this.zzbqb.zzMF(), zzLY());
    }

    String zzke() {
        zzob();
        return this.mAppId;
    }

    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    protected void zzmS() {
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
        r10 = this;
        r0 = "unknown";
        r1 = "Unknown";
        r2 = "Unknown";
        r3 = r10.getContext();
        r3 = r3.getPackageName();
        r4 = r10.getContext();
        r4 = r4.getPackageManager();
        r5 = 0;
        r6 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r4 != 0) goto L_0x002d;
    L_0x001b:
        r4 = r10.zzKl();
        r4 = r4.zzLZ();
        r7 = "PackageManager is null, app identity information might be inaccurate. appId";
        r8 = com.google.android.gms.internal.zzatx.zzfE(r3);
        r4.zzj(r7, r8);
        goto L_0x008b;
    L_0x002d:
        r7 = r4.getInstallerPackageName(r3);	 Catch:{ IllegalArgumentException -> 0x0033 }
        r0 = r7;
        goto L_0x0044;
    L_0x0033:
        r7 = r10.zzKl();
        r7 = r7.zzLZ();
        r8 = "Error retrieving app installer package name. appId";
        r9 = com.google.android.gms.internal.zzatx.zzfE(r3);
        r7.zzj(r8, r9);
    L_0x0044:
        if (r0 != 0) goto L_0x0049;
    L_0x0046:
        r0 = "manual_install";
        goto L_0x0053;
    L_0x0049:
        r7 = "com.android.vending";
        r7 = r7.equals(r0);
        if (r7 == 0) goto L_0x0053;
    L_0x0051:
        r0 = "";
    L_0x0053:
        r7 = r10.getContext();	 Catch:{ NameNotFoundException -> 0x007a }
        r7 = r7.getPackageName();	 Catch:{ NameNotFoundException -> 0x007a }
        r7 = r4.getPackageInfo(r7, r5);	 Catch:{ NameNotFoundException -> 0x007a }
        if (r7 == 0) goto L_0x008b;	 Catch:{ NameNotFoundException -> 0x007a }
    L_0x0061:
        r8 = r7.applicationInfo;	 Catch:{ NameNotFoundException -> 0x007a }
        r4 = r4.getApplicationLabel(r8);	 Catch:{ NameNotFoundException -> 0x007a }
        r8 = android.text.TextUtils.isEmpty(r4);	 Catch:{ NameNotFoundException -> 0x007a }
        if (r8 != 0) goto L_0x0072;	 Catch:{ NameNotFoundException -> 0x007a }
    L_0x006d:
        r4 = r4.toString();	 Catch:{ NameNotFoundException -> 0x007a }
        r2 = r4;	 Catch:{ NameNotFoundException -> 0x007a }
    L_0x0072:
        r4 = r7.versionName;	 Catch:{ NameNotFoundException -> 0x007a }
        r1 = r7.versionCode;	 Catch:{ NameNotFoundException -> 0x0079 }
        r6 = r1;
        r1 = r4;
        goto L_0x008b;
    L_0x0079:
        r1 = r4;
    L_0x007a:
        r4 = r10.zzKl();
        r4 = r4.zzLZ();
        r7 = "Error retrieving package info. appId, appName";
        r8 = com.google.android.gms.internal.zzatx.zzfE(r3);
        r4.zze(r7, r8, r2);
    L_0x008b:
        r10.mAppId = r3;
        r10.zzbqv = r0;
        r10.zzacM = r1;
        r10.zzbsw = r6;
        r10.zzacL = r2;
        r0 = 0;
        r10.zzbsx = r0;
        r2 = r10.zzKn();
        r2.zzLh();
        r2 = r10.getContext();
        r2 = com.google.android.gms.internal.zzaba.zzaQ(r2);
        r4 = 1;
        if (r2 == 0) goto L_0x00b3;
    L_0x00ab:
        r6 = r2.isSuccess();
        if (r6 == 0) goto L_0x00b3;
    L_0x00b1:
        r6 = r4;
        goto L_0x00b4;
    L_0x00b3:
        r6 = r5;
    L_0x00b4:
        if (r6 != 0) goto L_0x00b9;
    L_0x00b6:
        r10.zzbw(r2);
    L_0x00b9:
        if (r6 == 0) goto L_0x0113;
    L_0x00bb:
        r2 = r10.zzKn();
        r2 = r2.zzLj();
        r6 = r10.zzKn();
        r6 = r6.zzLi();
        if (r6 == 0) goto L_0x00db;
    L_0x00cd:
        r2 = r10.zzKl();
        r2 = r2.zzMd();
        r4 = "Collection disabled with firebase_analytics_collection_deactivated=1";
    L_0x00d7:
        r2.log(r4);
        goto L_0x0113;
    L_0x00db:
        if (r2 == 0) goto L_0x00ee;
    L_0x00dd:
        r6 = r2.booleanValue();
        if (r6 != 0) goto L_0x00ee;
    L_0x00e3:
        r2 = r10.zzKl();
        r2 = r2.zzMd();
        r4 = "Collection disabled with firebase_analytics_collection_enabled=0";
        goto L_0x00d7;
    L_0x00ee:
        if (r2 != 0) goto L_0x0105;
    L_0x00f0:
        r2 = r10.zzKn();
        r2 = r2.zzwR();
        if (r2 == 0) goto L_0x0105;
    L_0x00fa:
        r2 = r10.zzKl();
        r2 = r2.zzMd();
        r4 = "Collection disabled with google_app_measurement_enable=0";
        goto L_0x00d7;
    L_0x0105:
        r2 = r10.zzKl();
        r2 = r2.zzMf();
        r6 = "Collection enabled";
        r2.log(r6);
        goto L_0x0114;
    L_0x0113:
        r4 = r5;
    L_0x0114:
        r2 = "";
        r10.zzVX = r2;
        r10.zzbqz = r0;
        r0 = r10.zzKn();
        r0.zzLh();
        r0 = com.google.android.gms.internal.zzaba.zzwQ();	 Catch:{ IllegalStateException -> 0x0143 }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ IllegalStateException -> 0x0143 }
        if (r1 == 0) goto L_0x012d;	 Catch:{ IllegalStateException -> 0x0143 }
    L_0x012b:
        r0 = "";	 Catch:{ IllegalStateException -> 0x0143 }
    L_0x012d:
        r10.zzVX = r0;	 Catch:{ IllegalStateException -> 0x0143 }
        if (r4 == 0) goto L_0x0155;	 Catch:{ IllegalStateException -> 0x0143 }
    L_0x0131:
        r0 = r10.zzKl();	 Catch:{ IllegalStateException -> 0x0143 }
        r0 = r0.zzMf();	 Catch:{ IllegalStateException -> 0x0143 }
        r1 = "App package, google app id";	 Catch:{ IllegalStateException -> 0x0143 }
        r2 = r10.mAppId;	 Catch:{ IllegalStateException -> 0x0143 }
        r4 = r10.zzVX;	 Catch:{ IllegalStateException -> 0x0143 }
        r0.zze(r1, r2, r4);	 Catch:{ IllegalStateException -> 0x0143 }
        goto L_0x0155;
    L_0x0143:
        r0 = move-exception;
        r1 = r10.zzKl();
        r1 = r1.zzLZ();
        r2 = "getGoogleAppId or isMeasurementEnabled failed with exception. appId";
        r3 = com.google.android.gms.internal.zzatx.zzfE(r3);
        r1.zze(r2, r3, r0);
    L_0x0155:
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 16;
        if (r0 < r1) goto L_0x0166;
    L_0x015b:
        r0 = r10.getContext();
        r0 = com.google.android.gms.internal.zzade.zzbg(r0);
        r10.zzbsy = r0;
        return;
    L_0x0166:
        r10.zzbsy = r5;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatu.zzmS():void");
    }

    String zzmZ() {
        zzob();
        return this.zzacM;
    }

    public /* bridge */ /* synthetic */ zze zznR() {
        return super.zznR();
    }

    long zzuW() {
        zzob();
        return 0;
    }
}
