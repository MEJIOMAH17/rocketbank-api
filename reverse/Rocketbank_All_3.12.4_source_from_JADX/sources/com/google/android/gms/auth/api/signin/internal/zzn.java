package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.zzac;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class zzn {
    private static final Lock zzakO = new ReentrantLock();
    private static zzn zzakP;
    private final Lock zzakQ = new ReentrantLock();
    private final SharedPreferences zzakR;

    zzn(Context context) {
        this.zzakR = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static zzn zzas(Context context) {
        zzac.zzw(context);
        zzakO.lock();
        try {
            if (zzakP == null) {
                zzakP = new zzn(context.getApplicationContext());
            }
            zzn zzn = zzakP;
            return zzn;
        } finally {
            zzakO.unlock();
        }
    }

    private String zzy(String str, String str2) {
        String valueOf = String.valueOf(":");
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + String.valueOf(valueOf).length()) + String.valueOf(str2).length());
        stringBuilder.append(str);
        stringBuilder.append(valueOf);
        stringBuilder.append(str2);
        return stringBuilder.toString();
    }

    void zza(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        zzac.zzw(googleSignInAccount);
        zzac.zzw(googleSignInOptions);
        String zzrf = googleSignInAccount.zzrf();
        zzx(zzy("googleSignInAccount", zzrf), googleSignInAccount.zzrh());
        zzx(zzy("googleSignInOptions", zzrf), googleSignInOptions.zzrg());
    }

    public void zzb(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        zzac.zzw(googleSignInAccount);
        zzac.zzw(googleSignInOptions);
        zzx("defaultGoogleSignInAccount", googleSignInAccount.zzrf());
        zza(googleSignInAccount, googleSignInOptions);
    }

    com.google.android.gms.auth.api.signin.GoogleSignInOptions zzcA(java.lang.String r3) {
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
        r0 = android.text.TextUtils.isEmpty(r3);
        r1 = 0;
        if (r0 == 0) goto L_0x0008;
    L_0x0007:
        return r1;
    L_0x0008:
        r0 = "googleSignInOptions";
        r3 = r2.zzy(r0, r3);
        r3 = r2.zzcB(r3);
        if (r3 == 0) goto L_0x0019;
    L_0x0014:
        r3 = com.google.android.gms.auth.api.signin.GoogleSignInOptions.zzcx(r3);	 Catch:{ JSONException -> 0x0019 }
        return r3;
    L_0x0019:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.zzn.zzcA(java.lang.String):com.google.android.gms.auth.api.signin.GoogleSignInOptions");
    }

    protected String zzcB(String str) {
        this.zzakQ.lock();
        try {
            str = this.zzakR.getString(str, null);
            return str;
        } finally {
            this.zzakQ.unlock();
        }
    }

    void zzcC(String str) {
        if (!TextUtils.isEmpty(str)) {
            zzcD(zzy("googleSignInAccount", str));
            zzcD(zzy("googleSignInOptions", str));
        }
    }

    protected void zzcD(String str) {
        this.zzakQ.lock();
        try {
            this.zzakR.edit().remove(str).apply();
        } finally {
            this.zzakQ.unlock();
        }
    }

    com.google.android.gms.auth.api.signin.GoogleSignInAccount zzcz(java.lang.String r3) {
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
        r0 = android.text.TextUtils.isEmpty(r3);
        r1 = 0;
        if (r0 == 0) goto L_0x0008;
    L_0x0007:
        return r1;
    L_0x0008:
        r0 = "googleSignInAccount";
        r3 = r2.zzy(r0, r3);
        r3 = r2.zzcB(r3);
        if (r3 == 0) goto L_0x0019;
    L_0x0014:
        r3 = com.google.android.gms.auth.api.signin.GoogleSignInAccount.zzcv(r3);	 Catch:{ JSONException -> 0x0019 }
        return r3;
    L_0x0019:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.zzn.zzcz(java.lang.String):com.google.android.gms.auth.api.signin.GoogleSignInAccount");
    }

    public GoogleSignInAccount zzrB() {
        return zzcz(zzcB("defaultGoogleSignInAccount"));
    }

    public GoogleSignInOptions zzrC() {
        return zzcA(zzcB("defaultGoogleSignInAccount"));
    }

    public void zzrD() {
        String zzcB = zzcB("defaultGoogleSignInAccount");
        zzcD("defaultGoogleSignInAccount");
        zzcC(zzcB);
    }

    protected void zzx(String str, String str2) {
        this.zzakQ.lock();
        try {
            this.zzakR.edit().putString(str, str2).apply();
        } finally {
            this.zzakQ.unlock();
        }
    }
}
