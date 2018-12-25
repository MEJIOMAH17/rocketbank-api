package com.google.android.gms.internal;

abstract class zzauh extends zzaug {
    private boolean zzadP;

    zzauh(zzaue zzaue) {
        super(zzaue);
        this.zzbqb.zzb(this);
    }

    public final void initialize() {
        if (this.zzadP) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzmS();
        this.zzbqb.zzMM();
        this.zzadP = true;
    }

    boolean isInitialized() {
        return this.zzadP;
    }

    protected abstract void zzmS();

    protected void zzob() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
