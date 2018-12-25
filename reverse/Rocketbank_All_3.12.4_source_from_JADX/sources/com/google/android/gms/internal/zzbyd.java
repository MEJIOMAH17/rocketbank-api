package com.google.android.gms.internal;

import java.io.IOException;

public abstract class zzbyd<M extends zzbyd<M>> extends zzbyj {
    protected zzbyf zzcwC;

    private void zza(int i, zzbyl zzbyl) {
        zzbyg zzbyg;
        if (this.zzcwC == null) {
            this.zzcwC = new zzbyf();
            zzbyg = null;
        } else {
            zzbyg = this.zzcwC.zzrt(i);
        }
        if (zzbyg == null) {
            zzbyg = new zzbyg();
            this.zzcwC.zza(i, zzbyg);
        }
        zzbyg.zza(zzbyl);
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzafp();
    }

    public final <T> T zza(zzbye<M, T> zzbye) {
        if (this.zzcwC == null) {
            return null;
        }
        zzbyg zzrt = this.zzcwC.zzrt(zzbym.zzrx(zzbye.tag));
        return zzrt == null ? null : zzrt.zzb(zzbye);
    }

    public void zza(zzbyc zzbyc) throws IOException {
        if (this.zzcwC != null) {
            for (int i = 0; i < this.zzcwC.size(); i++) {
                this.zzcwC.zzru(i).zza(zzbyc);
            }
        }
    }

    protected final boolean zza(zzbyb zzbyb, int i) throws IOException {
        int position = zzbyb.getPosition();
        if (!zzbyb.zzrd(i)) {
            return false;
        }
        zza(zzbym.zzrx(i), new zzbyl(i, zzbyb.zzI(position, zzbyb.getPosition() - position)));
        return true;
    }

    public M zzafp() throws CloneNotSupportedException {
        zzbyd zzbyd = (zzbyd) super.zzafq();
        zzbyh.zza(this, zzbyd);
        return zzbyd;
    }

    public /* synthetic */ zzbyj zzafq() throws CloneNotSupportedException {
        return (zzbyd) clone();
    }

    protected int zzu() {
        int i = 0;
        if (this.zzcwC == null) {
            return 0;
        }
        int i2 = 0;
        while (i < this.zzcwC.size()) {
            i2 += this.zzcwC.zzru(i).zzu();
            i++;
        }
        return i2;
    }
}
