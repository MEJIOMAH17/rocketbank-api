package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Log;
import com.google.android.gms.common.util.zzt;
import com.google.firebase.iid.zzb.zzc;

public final class FirebaseInstanceIdInternalReceiver extends WakefulBroadcastReceiver {
    private static boolean zzbgs = false;
    private static zzc zzclp;
    private static zzc zzclq;

    static synchronized zzc zzL(Context context, String str) {
        synchronized (FirebaseInstanceIdInternalReceiver.class) {
            if ("com.google.firebase.MESSAGING_EVENT".equals(str)) {
                if (zzclq == null) {
                    zzclq = new zzc(context, str);
                }
                zzc zzc = zzclq;
                return zzc;
            }
            if (zzclp == null) {
                zzclp = new zzc(context, str);
            }
            zzc = zzclp;
            return zzc;
        }
    }

    static boolean zzcs(Context context) {
        return zzt.zzzq() && context.getApplicationInfo().targetSdkVersion > 25;
    }

    public final void onReceive(Context context, Intent intent) {
        if (intent != null) {
            Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
            if (parcelableExtra instanceof Intent) {
                Intent intent2 = (Intent) parcelableExtra;
                Object obj = (!zzt.zzzq() || context.getApplicationInfo().targetSdkVersion <= 25) ? null : 1;
                if (obj != null) {
                    zzL(context, intent.getAction()).zza(intent2, goAsync());
                    return;
                } else {
                    zzg.zzabW().zzb(context, intent.getAction(), intent2);
                    return;
                }
            }
            Log.e("FirebaseInstanceId", "Missing or invalid wrapped intent");
        }
    }
}
