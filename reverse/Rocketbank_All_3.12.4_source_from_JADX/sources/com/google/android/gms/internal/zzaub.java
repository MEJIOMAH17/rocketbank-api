package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.measurement.AppMeasurement;

public final class zzaub {
    private final zza zzbtA;

    public interface zza {
        void doStartService(Context context, Intent intent);
    }

    public zzaub(zza zza) {
        zzac.zzw(zza);
        this.zzbtA = zza;
    }

    public static boolean zzi(Context context, boolean z) {
        zzac.zzw(context);
        return zzaut.zza(context, z ? "com.google.android.gms.measurement.PackageMeasurementReceiver" : "com.google.android.gms.measurement.AppMeasurementReceiver", false);
    }

    public final void onReceive(Context context, Intent intent) {
        final zzaue zzbM = zzaue.zzbM(context);
        final zzatx zzKl = zzbM.zzKl();
        if (intent == null) {
            zzKl.zzMb().log("Receiver called with null intent");
            return;
        }
        zzbM.zzKn().zzLh();
        String action = intent.getAction();
        zzKl.zzMf().zzj("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            zzaum.zzj(context, false);
            intent = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            intent.setAction("com.google.android.gms.measurement.UPLOAD");
            this.zzbtA.doStartService(context, intent);
            return;
        }
        if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            action = intent.getStringExtra("referrer");
            if (action == null) {
                zzKl.zzMf().log("Install referrer extras are null");
                return;
            }
            zzKl.zzMd().zzj("Install referrer extras are", action);
            if (!action.contains("?")) {
                String str = "?";
                action = String.valueOf(action);
                action = action.length() != 0 ? str.concat(action) : new String(str);
            }
            final Bundle zzu = zzbM.zzKh().zzu(Uri.parse(action));
            if (zzu == null) {
                zzKl.zzMf().log("No campaign defined in install referrer broadcast");
                return;
            }
            long longExtra = 1000 * intent.getLongExtra("referrer_timestamp_seconds", 0);
            if (longExtra == 0) {
                zzKl.zzMb().log("Install referrer is missing timestamp");
            }
            final long j = longExtra;
            final Context context2 = context;
            zzbM.zzKk().zzm(new Runnable(this) {
                public void run() {
                    zzaus zzS = zzbM.zzKg().zzS(zzbM.zzKb().zzke(), "_fot");
                    long longValue = (zzS == null || !(zzS.mValue instanceof Long)) ? 0 : ((Long) zzS.mValue).longValue();
                    long j = j;
                    if (longValue > 0 && (j >= longValue || j <= 0)) {
                        j = longValue - 1;
                    }
                    if (j > 0) {
                        zzu.putLong("click_timestamp", j);
                    }
                    AppMeasurement.getInstance(context2).logEventInternal("auto", "_cmp", zzu);
                    zzKl.zzMf().log("Install campaign recorded");
                }
            });
        }
    }
}
