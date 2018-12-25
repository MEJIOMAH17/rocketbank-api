package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.zzaub;
import com.google.android.gms.internal.zzaub.zza;

public final class AppMeasurementInstallReferrerReceiver extends BroadcastReceiver implements zza {
    private zzaub zzbqi;

    private zzaub zzJS() {
        if (this.zzbqi == null) {
            this.zzbqi = new zzaub(this);
        }
        return this.zzbqi;
    }

    public final void doStartService(Context context, Intent intent) {
    }

    public final void onReceive(Context context, Intent intent) {
        zzJS().onReceive(context, intent);
    }
}
