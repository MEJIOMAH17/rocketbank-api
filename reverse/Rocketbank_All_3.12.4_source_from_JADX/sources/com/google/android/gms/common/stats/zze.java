package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.zzk;
import java.util.List;

public class zze {
    private static zze zzaHQ = new zze();
    private static Boolean zzaHR;

    private static boolean zzaY(Context context) {
        if (zzaHR == null) {
            zzaHR = Boolean.FALSE;
        }
        return zzaHR.booleanValue();
    }

    public static zze zzyX() {
        return zzaHQ;
    }

    public void zza(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list) {
        zza(context, str, i, str2, str3, str4, i2, list, 0);
    }

    public void zza(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        int i3 = i;
        if (!zzaY(context)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            String str5 = "WakeLockTracker";
            String str6 = "missing wakeLock key. ";
            String valueOf = String.valueOf(str);
            Log.e(str5, valueOf.length() != 0 ? str6.concat(valueOf) : new String(str6));
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (7 == i3 || 8 == i3 || 10 == i3 || 11 == i3) {
            WakeLockEvent wakeLockEvent = r1;
            WakeLockEvent wakeLockEvent2 = new WakeLockEvent(currentTimeMillis, i3, str2, i2, zzc.zzB(list), str, SystemClock.elapsedRealtime(), zzk.zzbd(context), str3, zzc.zzdx(context.getPackageName()), zzk.zzbe(context), j, str4);
            try {
                context.startService(new Intent().setComponent(zzb.zzaHv).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", wakeLockEvent));
            } catch (Throwable e) {
                Log.wtf("WakeLockTracker", e);
            }
        }
    }
}
