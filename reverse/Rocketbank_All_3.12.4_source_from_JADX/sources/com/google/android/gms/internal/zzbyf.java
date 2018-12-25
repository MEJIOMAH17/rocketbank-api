package com.google.android.gms.internal;

public final class zzbyf implements Cloneable {
    private static final zzbyg zzcwE = new zzbyg();
    private int mSize;
    private boolean zzcwF;
    private int[] zzcwG;
    private zzbyg[] zzcwH;

    zzbyf() {
        this(10);
    }

    zzbyf(int i) {
        this.zzcwF = false;
        i = idealIntArraySize(i);
        this.zzcwG = new int[i];
        this.zzcwH = new zzbyg[i];
        this.mSize = 0;
    }

    private int idealByteArraySize(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            int i3 = (1 << i2) - 12;
            if (i <= i3) {
                return i3;
            }
        }
        return i;
    }

    private int idealIntArraySize(int i) {
        return idealByteArraySize(i << 2) / 4;
    }

    private boolean zza(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean zza(zzbyg[] zzbygArr, zzbyg[] zzbygArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!zzbygArr[i2].equals(zzbygArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    private int zzrv(int i) {
        int i2 = this.mSize - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.zzcwG[i4];
            if (i5 < i) {
                i3 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i2 = i4 - 1;
            }
        }
        return i3 ^ -1;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzafr();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbyf)) {
            return false;
        }
        zzbyf zzbyf = (zzbyf) obj;
        return size() == zzbyf.size() && zza(this.zzcwG, zzbyf.zzcwG, this.mSize) && zza(this.zzcwH, zzbyf.zzcwH, this.mSize);
    }

    public final int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.mSize; i2++) {
            i = (((i * 31) + this.zzcwG[i2]) * 31) + this.zzcwH[i2].hashCode();
        }
        return i;
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    final int size() {
        return this.mSize;
    }

    final void zza(int i, zzbyg zzbyg) {
        int zzrv = zzrv(i);
        if (zzrv >= 0) {
            this.zzcwH[zzrv] = zzbyg;
            return;
        }
        zzrv ^= -1;
        if (zzrv >= this.mSize || this.zzcwH[zzrv] != zzcwE) {
            Object obj;
            if (this.mSize >= this.zzcwG.length) {
                int idealIntArraySize = idealIntArraySize(this.mSize + 1);
                Object obj2 = new int[idealIntArraySize];
                obj = new zzbyg[idealIntArraySize];
                System.arraycopy(this.zzcwG, 0, obj2, 0, this.zzcwG.length);
                System.arraycopy(this.zzcwH, 0, obj, 0, this.zzcwH.length);
                this.zzcwG = obj2;
                this.zzcwH = obj;
            }
            if (this.mSize - zzrv != 0) {
                obj = this.zzcwG;
                int i2 = zzrv + 1;
                System.arraycopy(obj, zzrv, obj, i2, this.mSize - zzrv);
                obj = this.zzcwH;
                System.arraycopy(obj, zzrv, obj, i2, this.mSize - zzrv);
            }
            this.zzcwG[zzrv] = i;
            this.zzcwH[zzrv] = zzbyg;
            this.mSize++;
            return;
        }
        this.zzcwG[zzrv] = i;
        this.zzcwH[zzrv] = zzbyg;
    }

    public final zzbyf zzafr() {
        int size = size();
        zzbyf zzbyf = new zzbyf(size);
        int i = 0;
        System.arraycopy(this.zzcwG, 0, zzbyf.zzcwG, 0, size);
        while (i < size) {
            if (this.zzcwH[i] != null) {
                zzbyf.zzcwH[i] = (zzbyg) this.zzcwH[i].clone();
            }
            i++;
        }
        zzbyf.mSize = size;
        return zzbyf;
    }

    final zzbyg zzrt(int i) {
        i = zzrv(i);
        if (i >= 0) {
            if (this.zzcwH[i] != zzcwE) {
                return this.zzcwH[i];
            }
        }
        return null;
    }

    final zzbyg zzru(int i) {
        return this.zzcwH[i];
    }
}
