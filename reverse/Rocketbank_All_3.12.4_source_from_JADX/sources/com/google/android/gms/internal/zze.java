package com.google.android.gms.internal;

public class zze implements zzp {
    private int zzn;
    private int zzo;
    private final int zzp;
    private final float zzq;

    public zze() {
        this(2500, 1, 1.0f);
    }

    public zze(int i, int i2, float f) {
        this.zzn = i;
        this.zzp = i2;
        this.zzq = f;
    }

    public void zza(zzs zzs) throws zzs {
        this.zzo++;
        this.zzn = (int) (((float) this.zzn) + (((float) this.zzn) * this.zzq));
        if (!zze()) {
            throw zzs;
        }
    }

    public int zzc() {
        return this.zzn;
    }

    public int zzd() {
        return this.zzo;
    }

    protected boolean zze() {
        return this.zzo <= this.zzp;
    }
}
