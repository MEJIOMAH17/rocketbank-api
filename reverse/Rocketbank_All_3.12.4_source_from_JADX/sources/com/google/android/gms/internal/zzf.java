package com.google.android.gms.internal;

import android.os.Handler;
import java.util.concurrent.Executor;

public class zzf implements zzo {
    private final Executor zzr;

    private class zza implements Runnable {
        final /* synthetic */ zzf zzt;
        private final zzl zzu;
        private final zzn zzv;
        private final Runnable zzw;

        public zza(zzf zzf, zzl zzl, zzn zzn, Runnable runnable) {
            this.zzt = zzf;
            this.zzu = zzl;
            this.zzv = zzn;
            this.zzw = runnable;
        }

        public void run() {
            if (this.zzv.isSuccess()) {
                this.zzu.zza(this.zzv.result);
            } else {
                this.zzu.zzc(this.zzv.zzag);
            }
            if (this.zzv.zzah) {
                this.zzu.zzc("intermediate-response");
            } else {
                this.zzu.zzd("done");
            }
            if (this.zzw != null) {
                this.zzw.run();
            }
        }
    }

    public zzf(final Handler handler) {
        this.zzr = new Executor(this) {
            final /* synthetic */ zzf zzt;

            public void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    public void zza(zzl<?> zzl, zzn<?> zzn) {
        zza(zzl, zzn, null);
    }

    public void zza(zzl<?> zzl, zzn<?> zzn, Runnable runnable) {
        zzl.zzr();
        zzl.zzc("post-response");
        this.zzr.execute(new zza(this, zzl, zzn, runnable));
    }

    public void zza(zzl<?> zzl, zzs zzs) {
        zzl.zzc("post-error");
        this.zzr.execute(new zza(this, zzl, zzn.zzd(zzs), null));
    }
}
