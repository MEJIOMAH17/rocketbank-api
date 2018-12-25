package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Base64;
import android.util.Log;

public final class FirebaseInstanceIdReceiver extends WakefulBroadcastReceiver {
    public final void onReceive(Context context, Intent intent) {
        int i;
        String str = null;
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        stringExtra = intent.getStringExtra("from");
        if (!"google.com/iid".equals(stringExtra)) {
            if (!"gcm.googleapis.com/refresh".equals(stringExtra)) {
                if ("com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
                    str = "com.google.firebase.MESSAGING_EVENT";
                } else {
                    Log.d("FirebaseInstanceId", "Unexpected intent");
                }
                i = -1;
                if (str != null) {
                    if (FirebaseInstanceIdInternalReceiver.zzcs(context)) {
                        i = zzg.zzabW().zzb(context, str, intent);
                    } else {
                        if (isOrderedBroadcast()) {
                            setResultCode(-1);
                        }
                        FirebaseInstanceIdInternalReceiver.zzL(context, str).zza(intent, goAsync());
                    }
                }
                if (isOrderedBroadcast() != null) {
                    setResultCode(i);
                }
            }
        }
        str = "com.google.firebase.INSTANCE_ID_EVENT";
        i = -1;
        if (str != null) {
            if (FirebaseInstanceIdInternalReceiver.zzcs(context)) {
                i = zzg.zzabW().zzb(context, str, intent);
            } else {
                if (isOrderedBroadcast()) {
                    setResultCode(-1);
                }
                FirebaseInstanceIdInternalReceiver.zzL(context, str).zza(intent, goAsync());
            }
        }
        if (isOrderedBroadcast() != null) {
            setResultCode(i);
        }
    }
}
