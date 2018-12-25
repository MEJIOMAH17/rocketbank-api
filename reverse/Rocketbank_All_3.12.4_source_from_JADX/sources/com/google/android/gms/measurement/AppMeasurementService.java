package com.google.android.gms.measurement;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.google.android.gms.internal.zzaum;
import com.google.android.gms.internal.zzaum.zza;

public final class AppMeasurementService extends Service implements zza {
    private zzaum zzbqj;

    private zzaum zzJT() {
        if (this.zzbqj == null) {
            this.zzbqj = new zzaum(this);
        }
        return this.zzbqj;
    }

    public final boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    public final Context getContext() {
        return this;
    }

    public final IBinder onBind(Intent intent) {
        return zzJT().onBind(intent);
    }

    public final void onCreate() {
        super.onCreate();
        zzJT().onCreate();
    }

    public final void onDestroy() {
        zzJT().onDestroy();
        super.onDestroy();
    }

    public final void onRebind(Intent intent) {
        zzJT().onRebind(intent);
    }

    public final int onStartCommand(Intent intent, int i, int i2) {
        zzJT().onStartCommand(intent, i, i2);
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
        return 2;
    }

    public final boolean onUnbind(Intent intent) {
        return zzJT().onUnbind(intent);
    }
}
