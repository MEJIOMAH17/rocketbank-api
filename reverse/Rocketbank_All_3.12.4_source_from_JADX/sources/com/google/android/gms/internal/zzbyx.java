package com.google.android.gms.internal;

final class zzbyx {
    final byte[] data;
    int limit;
    int pos;
    boolean zzcya;
    boolean zzcyb;
    zzbyx zzcyc;
    zzbyx zzcyd;

    zzbyx() {
        this.data = new byte[8192];
        this.zzcyb = true;
        this.zzcya = false;
    }

    zzbyx(zzbyx zzbyx) {
        this(zzbyx.data, zzbyx.pos, zzbyx.limit);
        zzbyx.zzcya = true;
    }

    zzbyx(byte[] bArr, int i, int i2) {
        this.data = bArr;
        this.pos = i;
        this.limit = i2;
        this.zzcyb = false;
        this.zzcya = true;
    }

    public final zzbyx zza(zzbyx zzbyx) {
        zzbyx.zzcyd = this;
        zzbyx.zzcyc = this.zzcyc;
        this.zzcyc.zzcyd = zzbyx;
        this.zzcyc = zzbyx;
        return zzbyx;
    }

    public final void zza(zzbyx zzbyx, int i) {
        if (zzbyx.zzcyb) {
            if (zzbyx.limit + i > 8192) {
                if (zzbyx.zzcya) {
                    throw new IllegalArgumentException();
                } else if ((zzbyx.limit + i) - zzbyx.pos > 8192) {
                    throw new IllegalArgumentException();
                } else {
                    System.arraycopy(zzbyx.data, zzbyx.pos, zzbyx.data, 0, zzbyx.limit - zzbyx.pos);
                    zzbyx.limit -= zzbyx.pos;
                    zzbyx.pos = 0;
                }
            }
            System.arraycopy(this.data, this.pos, zzbyx.data, zzbyx.limit, i);
            zzbyx.limit += i;
            this.pos += i;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final zzbyx zzafX() {
        zzbyx zzbyx = this.zzcyc != this ? this.zzcyc : null;
        this.zzcyd.zzcyc = this.zzcyc;
        this.zzcyc.zzcyd = this.zzcyd;
        this.zzcyc = null;
        this.zzcyd = null;
        return zzbyx;
    }

    public final void zzafY() {
        if (this.zzcyd == this) {
            throw new IllegalStateException();
        } else if (this.zzcyd.zzcyb) {
            int i = this.limit - this.pos;
            if (i <= (8192 - this.zzcyd.limit) + (this.zzcyd.zzcya ? 0 : this.zzcyd.pos)) {
                zza(this.zzcyd, i);
                zzafX();
                zzbyy.zzb(this);
            }
        }
    }

    public final zzbyx zzrz(int i) {
        if (i > 0) {
            if (i <= this.limit - this.pos) {
                zzbyx zzbyx;
                if (i >= 1024) {
                    zzbyx = new zzbyx(this);
                } else {
                    zzbyx = zzbyy.zzafZ();
                    System.arraycopy(this.data, this.pos, zzbyx.data, 0, i);
                }
                zzbyx.limit = zzbyx.pos + i;
                this.pos += i;
                this.zzcyd.zza(zzbyx);
                return zzbyx;
            }
        }
        throw new IllegalArgumentException();
    }
}
