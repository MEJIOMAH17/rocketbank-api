package com.google.android.gms.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import com.google.android.gms.common.util.zze;

public class zzaup extends zzauh {
    private boolean zzafh;
    private final AlarmManager zzafi = ((AlarmManager) getContext().getSystemService(NotificationCompat.CATEGORY_ALARM));
    private final zzatk zzbwd;

    protected zzaup(zzaue zzaue) {
        super(zzaue);
        this.zzbwd = new zzatk(this, zzaue) {
            final /* synthetic */ zzaup zzbwe;

            public void run() {
                this.zzbwe.zzNj();
            }
        };
    }

    private void zzNj() {
        Intent intent = new Intent();
        Context context = getContext();
        zzKn().zzLh();
        intent = intent.setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver");
        intent.setAction("com.google.android.gms.measurement.UPLOAD");
        getContext().sendBroadcast(intent);
    }

    private PendingIntent zzpE() {
        Intent intent = new Intent();
        Context context = getContext();
        zzKn().zzLh();
        intent = intent.setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver");
        intent.setAction("com.google.android.gms.measurement.UPLOAD");
        return PendingIntent.getBroadcast(getContext(), 0, intent, 0);
    }

    public void cancel() {
        zzob();
        this.zzafh = false;
        this.zzafi.cancel(zzpE());
        this.zzbwd.cancel();
    }

    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    protected void zzmS() {
        this.zzafi.cancel(zzpE());
    }

    public /* bridge */ /* synthetic */ zze zznR() {
        return super.zznR();
    }

    public void zzy(long j) {
        zzob();
        zzKn().zzLh();
        if (!zzaub.zzi(getContext(), false)) {
            zzKl().zzMe().log("Receiver not registered/enabled");
        }
        zzKn().zzLh();
        if (!zzaum.zzj(getContext(), false)) {
            zzKl().zzMe().log("Service not registered/enabled");
        }
        cancel();
        long elapsedRealtime = zznR().elapsedRealtime() + j;
        this.zzafh = true;
        if (j < zzKn().zzLy() && !this.zzbwd.zzcy()) {
            this.zzbwd.zzy(j);
        }
        this.zzafi.setInexactRepeating(2, elapsedRealtime, Math.max(zzKn().zzLz(), j), zzpE());
    }
}
