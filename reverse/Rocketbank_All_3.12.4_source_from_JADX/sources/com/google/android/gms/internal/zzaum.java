package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzac;

public final class zzaum {
    private final Context mContext;
    private final Handler mHandler = new Handler();
    private final zza zzbvW;

    public interface zza {
        boolean callServiceStopSelfResult(int i);

        Context getContext();
    }

    public zzaum(zza zza) {
        this.mContext = zza.getContext();
        zzac.zzw(this.mContext);
        this.zzbvW = zza;
    }

    private zzatx zzKl() {
        return zzaue.zzbM(this.mContext).zzKl();
    }

    public static boolean zzj(Context context, boolean z) {
        zzac.zzw(context);
        return zzaut.zzy(context, z ? "com.google.android.gms.measurement.PackageMeasurementService" : "com.google.android.gms.measurement.AppMeasurementService");
    }

    public final IBinder onBind(Intent intent) {
        if (intent == null) {
            zzKl().zzLZ().log("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzauf(zzaue.zzbM(this.mContext));
        }
        zzKl().zzMb().zzj("onBind received unknown action", action);
        return null;
    }

    public final void onCreate() {
        zzaue zzbM = zzaue.zzbM(this.mContext);
        zzatx zzKl = zzbM.zzKl();
        zzbM.zzKn().zzLh();
        zzKl.zzMf().log("Local AppMeasurementService is starting up");
    }

    public final void onDestroy() {
        zzaue zzbM = zzaue.zzbM(this.mContext);
        zzatx zzKl = zzbM.zzKl();
        zzbM.zzKn().zzLh();
        zzKl.zzMf().log("Local AppMeasurementService is shutting down");
    }

    public final void onRebind(Intent intent) {
        if (intent == null) {
            zzKl().zzLZ().log("onRebind called with null intent");
            return;
        }
        zzKl().zzMf().zzj("onRebind called. action", intent.getAction());
    }

    public final int onStartCommand(Intent intent, int i, final int i2) {
        final zzaue zzbM = zzaue.zzbM(this.mContext);
        final zzatx zzKl = zzbM.zzKl();
        if (intent == null) {
            zzKl.zzMb().log("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzbM.zzKn().zzLh();
        zzKl.zzMf().zze("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            zzbM.zzKk().zzm(new Runnable(this) {
                final /* synthetic */ zzaum zzbvX;

                /* renamed from: com.google.android.gms.internal.zzaum$1$1 */
                class C06131 implements Runnable {
                    final /* synthetic */ C06141 zzbvY;

                    C06131(C06141 c06141) {
                        this.zzbvY = c06141;
                    }

                    public void run() {
                        if (this.zzbvY.zzbvX.zzbvW.callServiceStopSelfResult(i2)) {
                            zzbM.zzKn().zzLh();
                            zzKl.zzMf().log("Local AppMeasurementService processed last upload request");
                        }
                    }
                }

                public void run() {
                    zzbM.zzMN();
                    zzbM.zzMI();
                    this.zzbvX.mHandler.post(new C06131(this));
                }
            });
        }
        return 2;
    }

    public final boolean onUnbind(Intent intent) {
        if (intent == null) {
            zzKl().zzLZ().log("onUnbind called with null intent");
            return true;
        }
        zzKl().zzMf().zzj("onUnbind called for intent. action", intent.getAction());
        return true;
    }
}
