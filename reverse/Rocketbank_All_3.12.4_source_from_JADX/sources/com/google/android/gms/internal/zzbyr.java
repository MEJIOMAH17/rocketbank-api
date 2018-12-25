package com.google.android.gms.internal;

import android.support.v4.media.session.PlaybackStateCompat;

public final class zzbyr implements zzbys, zzbyt, Cloneable {
    private static final byte[] zzcxT = new byte[]{(byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102};
    long zzaA;
    zzbyx zzcxU;

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzafT();
    }

    public final void close() {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbyr)) {
            return false;
        }
        zzbyr zzbyr = (zzbyr) obj;
        if (this.zzaA != zzbyr.zzaA) {
            return false;
        }
        long j = 0;
        if (this.zzaA == 0) {
            return true;
        }
        zzbyx zzbyx = this.zzcxU;
        zzbyx zzbyx2 = zzbyr.zzcxU;
        int i = zzbyx.pos;
        int i2 = zzbyx2.pos;
        while (j < this.zzaA) {
            long min = (long) Math.min(zzbyx.limit - i, zzbyx2.limit - i2);
            int i3 = i2;
            i2 = i;
            i = 0;
            while (((long) i) < min) {
                int i4 = i2 + 1;
                int i5 = i3 + 1;
                if (zzbyx.data[i2] != zzbyx2.data[i3]) {
                    return false;
                }
                i++;
                i2 = i4;
                i3 = i5;
            }
            if (i2 == zzbyx.limit) {
                zzbyx = zzbyx.zzcyc;
                i = zzbyx.pos;
            } else {
                i = i2;
            }
            if (i3 == zzbyx2.limit) {
                zzbyx2 = zzbyx2.zzcyc;
                i2 = zzbyx2.pos;
            } else {
                i2 = i3;
            }
            j += min;
        }
        return true;
    }

    public final void flush() {
    }

    public final int hashCode() {
        zzbyx zzbyx = this.zzcxU;
        if (zzbyx == null) {
            return 0;
        }
        int i = 1;
        do {
            for (int i2 = zzbyx.pos; i2 < zzbyx.limit; i2++) {
                i = (i * 31) + zzbyx.data[i2];
            }
            zzbyx = zzbyx.zzcyc;
        } while (zzbyx != this.zzcxU);
        return i;
    }

    public final long read(zzbyr zzbyr, long j) {
        if (zzbyr == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (this.zzaA == 0) {
            return -1;
        } else {
            if (j > this.zzaA) {
                j = this.zzaA;
            }
            zzbyr.write(this, j);
            return j;
        }
    }

    public final String toString() {
        return zzafU().toString();
    }

    public final void write(zzbyr zzbyr, long j) {
        if (zzbyr == null) {
            throw new IllegalArgumentException("source == null");
        } else if (zzbyr == this) {
            throw new IllegalArgumentException("source == this");
        } else {
            zzbzd.checkOffsetAndCount(zzbyr.zzaA, 0, j);
            while (j > 0) {
                zzbyx zzbyx;
                if (j < ((long) (zzbyr.zzcxU.limit - zzbyr.zzcxU.pos))) {
                    zzbyx = this.zzcxU != null ? this.zzcxU.zzcyd : null;
                    if (zzbyx != null && zzbyx.zzcyb) {
                        if ((j + ((long) zzbyx.limit)) - ((long) (zzbyx.zzcya ? 0 : zzbyx.pos)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            zzbyr.zzcxU.zza(zzbyx, (int) j);
                            zzbyr.zzaA -= j;
                            this.zzaA += j;
                            return;
                        }
                    }
                    zzbyr.zzcxU = zzbyr.zzcxU.zzrz((int) j);
                }
                zzbyx = zzbyr.zzcxU;
                long j2 = (long) (zzbyx.limit - zzbyx.pos);
                zzbyr.zzcxU = zzbyx.zzafX();
                if (this.zzcxU == null) {
                    this.zzcxU = zzbyx;
                    zzbyx = this.zzcxU;
                    zzbyx zzbyx2 = this.zzcxU;
                    zzbyx zzbyx3 = this.zzcxU;
                    zzbyx2.zzcyd = zzbyx3;
                    zzbyx.zzcyc = zzbyx3;
                } else {
                    this.zzcxU.zzcyd.zza(zzbyx).zzafY();
                }
                zzbyr.zzaA -= j2;
                this.zzaA += j2;
                j -= j2;
            }
        }
    }

    public final zzbyr zzafT() {
        zzbyr zzbyr = new zzbyr();
        if (this.zzaA == 0) {
            return zzbyr;
        }
        zzbyr.zzcxU = new zzbyx(this.zzcxU);
        zzbyx zzbyx = zzbyr.zzcxU;
        zzbyx zzbyx2 = zzbyr.zzcxU;
        zzbyx zzbyx3 = zzbyr.zzcxU;
        zzbyx2.zzcyd = zzbyx3;
        zzbyx.zzcyc = zzbyx3;
        zzbyx = this.zzcxU;
        while (true) {
            zzbyx = zzbyx.zzcyc;
            if (zzbyx != this.zzcxU) {
                zzbyr.zzcxU.zzcyd.zza(new zzbyx(zzbyx));
            } else {
                zzbyr.zzaA = this.zzaA;
                return zzbyr;
            }
        }
    }

    public final zzbyu zzafU() {
        if (this.zzaA <= 2147483647L) {
            return zzry((int) this.zzaA);
        }
        StringBuilder stringBuilder = new StringBuilder("size > Integer.MAX_VALUE: ");
        stringBuilder.append(this.zzaA);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public final zzbyu zzry(int i) {
        return i == 0 ? zzbyu.zzcxW : new zzbyz(this, i);
    }
}
