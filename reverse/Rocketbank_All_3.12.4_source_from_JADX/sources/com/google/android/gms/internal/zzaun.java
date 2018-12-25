package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.util.zze;

public class zzaun extends zzauh {
    private Handler mHandler;
    protected long zzbvZ;
    private final zzatk zzbwa = new zzatk(this, this.zzbqb) {
        final /* synthetic */ zzaun zzbwc;

        public void run() {
            this.zzbwc.zzNh();
        }
    };
    private final zzatk zzbwb = new zzatk(this, this.zzbqb) {
        final /* synthetic */ zzaun zzbwc;

        public void run() {
            this.zzbwc.zzNi();
        }
    };

    zzaun(zzaue zzaue) {
        super(zzaue);
    }

    private void zzNf() {
        synchronized (this) {
            if (this.mHandler == null) {
                this.mHandler = new Handler(Looper.getMainLooper());
            }
        }
    }

    private void zzNi() {
        zzmR();
        zzaN(false);
        zzJY().zzW(zznR().elapsedRealtime());
    }

    private void zzat(long j) {
        zzatk zzatk;
        long j2;
        zzmR();
        zzNf();
        this.zzbwa.cancel();
        this.zzbwb.cancel();
        zzKl().zzMf().zzj("Activity resumed, time", Long.valueOf(j));
        this.zzbvZ = j;
        if (zznR().currentTimeMillis() - zzKm().zzbto.get() > zzKm().zzbtq.get()) {
            zzKm().zzbtp.set(true);
            zzKm().zzbtr.set(0);
        }
        if (zzKm().zzbtp.get()) {
            zzatk = this.zzbwa;
            j2 = zzKm().zzbtn.get();
        } else {
            zzatk = this.zzbwb;
            j2 = 3600000;
        }
        zzatk.zzy(Math.max(0, j2 - zzKm().zzbtr.get()));
    }

    private void zzau(long j) {
        zzmR();
        zzNf();
        this.zzbwa.cancel();
        this.zzbwb.cancel();
        zzKl().zzMf().zzj("Activity paused, time", Long.valueOf(j));
        if (this.zzbvZ != 0) {
            zzKm().zzbtr.set(zzKm().zzbtr.get() + (j - this.zzbvZ));
        }
        zzKm().zzbtq.set(zznR().currentTimeMillis());
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

    protected void zzNe() {
        final long elapsedRealtime = zznR().elapsedRealtime();
        zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzaun zzbwc;

            public void run() {
                this.zzbwc.zzat(elapsedRealtime);
            }
        });
    }

    protected void zzNg() {
        final long elapsedRealtime = zznR().elapsedRealtime();
        zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzaun zzbwc;

            public void run() {
                this.zzbwc.zzau(elapsedRealtime);
            }
        });
    }

    protected void zzNh() {
        zzmR();
        zzKl().zzMf().zzj("Session started, time", Long.valueOf(zznR().elapsedRealtime()));
        zzKm().zzbtp.set(false);
        zzKa().zze("auto", "_s", new Bundle());
    }

    public boolean zzaN(boolean z) {
        zzmR();
        zzob();
        long elapsedRealtime = zznR().elapsedRealtime();
        if (this.zzbvZ == 0) {
            this.zzbvZ = elapsedRealtime - 3600000;
        }
        long j = elapsedRealtime - this.zzbvZ;
        if (z || j >= 1000) {
            zzKm().zzbtr.set(j);
            zzKl().zzMf().zzj("Recording user engagement, ms", Long.valueOf(j));
            Bundle bundle = new Bundle();
            bundle.putLong("_et", j);
            zzauk.zza(zzKe().zzMW(), bundle);
            zzKa().zze("auto", "_e", bundle);
            this.zzbvZ = elapsedRealtime;
            this.zzbwb.cancel();
            this.zzbwb.zzy(Math.max(0, 3600000 - zzKm().zzbtr.get()));
            return true;
        }
        zzKl().zzMf().zzj("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j));
        return false;
    }

    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    protected void zzmS() {
    }

    public /* bridge */ /* synthetic */ zze zznR() {
        return super.zznR();
    }
}
