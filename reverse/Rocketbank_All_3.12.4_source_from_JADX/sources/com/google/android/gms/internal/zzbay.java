package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.common.util.zzw;
import com.google.android.gms.common.util.zzz;

public class zzbay {
    private static boolean DEBUG = false;
    private static String TAG = "WakeLock";
    private static String zzbEy = "*gcore*:";
    private final Context mContext;
    private final String zzaHF;
    private final String zzaHH;
    private final int zzbEA;
    private final String zzbEB;
    private boolean zzbEC;
    private int zzbED;
    private int zzbEE;
    private final WakeLock zzbEz;
    private WorkSource zzbjl;

    public zzbay(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzbay(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, str2, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzbay(Context context, int i, String str, String str2, String str3, String str4) {
        this.zzbEC = true;
        zzac.zzh(str, "Wake lock name can NOT be empty");
        this.zzbEA = i;
        this.zzbEB = str2;
        this.zzaHH = str4;
        this.mContext = context.getApplicationContext();
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.zzaHF = str;
        } else {
            str2 = String.valueOf(zzbEy);
            str4 = String.valueOf(str);
            this.zzaHF = str4.length() != 0 ? str2.concat(str4) : new String(str2);
        }
        this.zzbEz = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (zzz.zzbf(this.mContext)) {
            if (zzw.zzdz(str3)) {
                str3 = context.getPackageName();
            }
            this.zzbjl = zzz.zzG(context, str3);
            zzc(this.zzbjl);
        }
    }

    private void zzd(WorkSource workSource) {
        try {
            this.zzbEz.setWorkSource(workSource);
        } catch (IllegalArgumentException e) {
            Log.wtf(TAG, e.toString());
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zzgM(java.lang.String r12) {
        /*
        r11 = this;
        r0 = r11.zzgN(r12);
        r6 = r11.zzo(r12, r0);
        monitor-enter(r11);
        r12 = r11.zzbEC;	 Catch:{ all -> 0x0043 }
        r10 = 1;
        if (r12 == 0) goto L_0x0017;
    L_0x000e:
        r12 = r11.zzbED;	 Catch:{ all -> 0x0043 }
        r12 = r12 - r10;
        r11.zzbED = r12;	 Catch:{ all -> 0x0043 }
        if (r12 == 0) goto L_0x001f;
    L_0x0015:
        if (r0 != 0) goto L_0x001f;
    L_0x0017:
        r12 = r11.zzbEC;	 Catch:{ all -> 0x0043 }
        if (r12 != 0) goto L_0x0041;
    L_0x001b:
        r12 = r11.zzbEE;	 Catch:{ all -> 0x0043 }
        if (r12 != r10) goto L_0x0041;
    L_0x001f:
        r1 = com.google.android.gms.common.stats.zze.zzyX();	 Catch:{ all -> 0x0043 }
        r2 = r11.mContext;	 Catch:{ all -> 0x0043 }
        r12 = r11.zzbEz;	 Catch:{ all -> 0x0043 }
        r3 = com.google.android.gms.common.stats.zzc.zza(r12, r6);	 Catch:{ all -> 0x0043 }
        r4 = 8;
        r5 = r11.zzaHF;	 Catch:{ all -> 0x0043 }
        r7 = r11.zzaHH;	 Catch:{ all -> 0x0043 }
        r8 = r11.zzbEA;	 Catch:{ all -> 0x0043 }
        r12 = r11.zzbjl;	 Catch:{ all -> 0x0043 }
        r9 = com.google.android.gms.common.util.zzz.zzb(r12);	 Catch:{ all -> 0x0043 }
        r1.zza(r2, r3, r4, r5, r6, r7, r8, r9);	 Catch:{ all -> 0x0043 }
        r12 = r11.zzbEE;	 Catch:{ all -> 0x0043 }
        r12 = r12 - r10;
        r11.zzbEE = r12;	 Catch:{ all -> 0x0043 }
    L_0x0041:
        monitor-exit(r11);	 Catch:{ all -> 0x0043 }
        return;
    L_0x0043:
        r12 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x0043 }
        throw r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbay.zzgM(java.lang.String):void");
    }

    private boolean zzgN(String str) {
        return (TextUtils.isEmpty(str) || str.equals(this.zzbEB)) ? false : true;
    }

    private String zzo(String str, boolean z) {
        return this.zzbEC ? z ? str : this.zzbEB : this.zzbEB;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zzo(java.lang.String r13, long r14) {
        /*
        r12 = this;
        r0 = r12.zzgN(r13);
        r6 = r12.zzo(r13, r0);
        monitor-enter(r12);
        r13 = r12.zzbEC;	 Catch:{ all -> 0x0044 }
        if (r13 == 0) goto L_0x0017;
    L_0x000d:
        r13 = r12.zzbED;	 Catch:{ all -> 0x0044 }
        r1 = r13 + 1;
        r12.zzbED = r1;	 Catch:{ all -> 0x0044 }
        if (r13 == 0) goto L_0x001f;
    L_0x0015:
        if (r0 != 0) goto L_0x001f;
    L_0x0017:
        r13 = r12.zzbEC;	 Catch:{ all -> 0x0044 }
        if (r13 != 0) goto L_0x0042;
    L_0x001b:
        r13 = r12.zzbEE;	 Catch:{ all -> 0x0044 }
        if (r13 != 0) goto L_0x0042;
    L_0x001f:
        r1 = com.google.android.gms.common.stats.zze.zzyX();	 Catch:{ all -> 0x0044 }
        r2 = r12.mContext;	 Catch:{ all -> 0x0044 }
        r13 = r12.zzbEz;	 Catch:{ all -> 0x0044 }
        r3 = com.google.android.gms.common.stats.zzc.zza(r13, r6);	 Catch:{ all -> 0x0044 }
        r4 = 7;
        r5 = r12.zzaHF;	 Catch:{ all -> 0x0044 }
        r7 = r12.zzaHH;	 Catch:{ all -> 0x0044 }
        r8 = r12.zzbEA;	 Catch:{ all -> 0x0044 }
        r13 = r12.zzbjl;	 Catch:{ all -> 0x0044 }
        r9 = com.google.android.gms.common.util.zzz.zzb(r13);	 Catch:{ all -> 0x0044 }
        r10 = r14;
        r1.zza(r2, r3, r4, r5, r6, r7, r8, r9, r10);	 Catch:{ all -> 0x0044 }
        r13 = r12.zzbEE;	 Catch:{ all -> 0x0044 }
        r13 = r13 + 1;
        r12.zzbEE = r13;	 Catch:{ all -> 0x0044 }
    L_0x0042:
        monitor-exit(r12);	 Catch:{ all -> 0x0044 }
        return;
    L_0x0044:
        r13 = move-exception;
        monitor-exit(r12);	 Catch:{ all -> 0x0044 }
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbay.zzo(java.lang.String, long):void");
    }

    public void acquire(long j) {
        zzt.zzzg();
        zzo(null, j);
        this.zzbEz.acquire(j);
    }

    public boolean isHeld() {
        return this.zzbEz.isHeld();
    }

    public void release() {
        zzgM(null);
        this.zzbEz.release();
    }

    public void setReferenceCounted(boolean z) {
        this.zzbEz.setReferenceCounted(z);
        this.zzbEC = z;
    }

    public void zzc(WorkSource workSource) {
        if (workSource != null && zzz.zzbf(this.mContext)) {
            if (this.zzbjl != null) {
                this.zzbjl.add(workSource);
            } else {
                this.zzbjl = workSource;
            }
            zzd(this.zzbjl);
        }
    }
}
