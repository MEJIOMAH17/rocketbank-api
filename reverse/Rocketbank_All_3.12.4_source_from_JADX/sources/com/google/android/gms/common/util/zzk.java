package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
import com.google.firebase.analytics.FirebaseAnalytics.Param;

public final class zzk {
    private static IntentFilter zzaIe = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    private static long zzaIf = 0;
    private static float zzaIg = Float.NaN;

    @TargetApi(20)
    public static boolean zzb(PowerManager powerManager) {
        return zzt.zzzm() ? powerManager.isInteractive() : powerManager.isScreenOn();
    }

    @TargetApi(20)
    public static int zzbd(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, zzaIe);
        int i = 0;
        if (((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0) {
            i = 1;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager == null ? -1 : (zzb(powerManager) << 1) | i;
    }

    public static synchronized float zzbe(Context context) {
        synchronized (zzk.class) {
            if (SystemClock.elapsedRealtime() - zzaIf >= 60000 || Float.isNaN(zzaIg)) {
                Intent registerReceiver = context.getApplicationContext().registerReceiver(null, zzaIe);
                if (registerReceiver != null) {
                    zzaIg = ((float) registerReceiver.getIntExtra(Param.LEVEL, -1)) / ((float) registerReceiver.getIntExtra("scale", -1));
                }
                zzaIf = SystemClock.elapsedRealtime();
                float f = zzaIg;
                return f;
            }
            f = zzaIg;
            return f;
        }
    }
}
