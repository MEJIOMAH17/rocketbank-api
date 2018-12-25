package com.google.android.gms.internal;

import java.util.Arrays;

final class zzbyz extends zzbyu {
    final transient byte[][] zzcyf;
    final transient int[] zzcyg;

    zzbyz(zzbyr zzbyr, int i) {
        super(null);
        zzbzd.checkOffsetAndCount(zzbyr.zzaA, 0, (long) i);
        int i2 = 0;
        zzbyx zzbyx = zzbyr.zzcxU;
        int i3 = 0;
        int i4 = i3;
        while (i3 < i) {
            if (zzbyx.limit == zzbyx.pos) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += zzbyx.limit - zzbyx.pos;
            i4++;
            zzbyx = zzbyx.zzcyc;
        }
        this.zzcyf = new byte[i4][];
        this.zzcyg = new int[(i4 << 1)];
        zzbyx = zzbyr.zzcxU;
        int i5 = 0;
        while (i2 < i) {
            this.zzcyf[i5] = zzbyx.data;
            i2 += zzbyx.limit - zzbyx.pos;
            if (i2 > i) {
                i2 = i;
            }
            this.zzcyg[i5] = i2;
            this.zzcyg[this.zzcyf.length + i5] = zzbyx.pos;
            zzbyx.zzcya = true;
            i5++;
            zzbyx = zzbyx.zzcyc;
        }
    }

    private zzbyu zzaga() {
        return new zzbyu(toByteArray());
    }

    private int zzrA(int i) {
        i = Arrays.binarySearch(this.zzcyg, 0, this.zzcyf.length, i + 1);
        return i >= 0 ? i : i ^ -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbyu) {
            zzbyu zzbyu = (zzbyu) obj;
            return zzbyu.size() == size() && zza(0, zzbyu, 0, size());
        }
    }

    public final byte getByte(int i) {
        zzbzd.checkOffsetAndCount((long) this.zzcyg[this.zzcyf.length - 1], (long) i, 1);
        int zzrA = zzrA(i);
        return this.zzcyf[zzrA][(i - (zzrA == 0 ? 0 : this.zzcyg[zzrA - 1])) + this.zzcyg[this.zzcyf.length + zzrA]];
    }

    public final int hashCode() {
        int i = this.zzcug;
        if (i != 0) {
            return i;
        }
        int i2 = 0;
        i = this.zzcyf.length;
        int i3 = 1;
        int i4 = 0;
        while (i2 < i) {
            byte[] bArr = this.zzcyf[i2];
            int i5 = this.zzcyg[i + i2];
            int i6 = this.zzcyg[i2];
            i4 = (i6 - i4) + i5;
            while (i5 < i4) {
                i3 = (i3 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.zzcug = i3;
        return i3;
    }

    public final int size() {
        return this.zzcyg[this.zzcyf.length - 1];
    }

    public final byte[] toByteArray() {
        int i = 0;
        Object obj = new byte[this.zzcyg[this.zzcyf.length - 1]];
        int length = this.zzcyf.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.zzcyg[length + i];
            int i4 = this.zzcyg[i];
            System.arraycopy(this.zzcyf[i], i3, obj, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return obj;
    }

    public final String toString() {
        return zzaga().toString();
    }

    public final zzbyu zzP(int i, int i2) {
        return zzaga().zzP(i, i2);
    }

    public final boolean zza(int i, zzbyu zzbyu, int i2, int i3) {
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int zzrA = zzrA(i);
        while (i3 > 0) {
            int i4 = zzrA == 0 ? 0 : this.zzcyg[zzrA - 1];
            int min = Math.min(i3, ((this.zzcyg[zzrA] - i4) + i4) - i);
            if (!zzbyu.zza(i2, this.zzcyf[zzrA], (i - i4) + this.zzcyg[this.zzcyf.length + zzrA], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            zzrA++;
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zza(int r7, byte[] r8, int r9, int r10) {
        /*
        r6 = this;
        r0 = 0;
        if (r7 < 0) goto L_0x004a;
    L_0x0003:
        r1 = r6.size();
        r1 = r1 - r10;
        if (r7 > r1) goto L_0x004a;
    L_0x000a:
        if (r9 < 0) goto L_0x004a;
    L_0x000c:
        r1 = r8.length;
        r1 = r1 - r10;
        if (r9 <= r1) goto L_0x0011;
    L_0x0010:
        return r0;
    L_0x0011:
        r1 = r6.zzrA(r7);
    L_0x0015:
        if (r10 <= 0) goto L_0x0048;
    L_0x0017:
        if (r1 != 0) goto L_0x001b;
    L_0x0019:
        r2 = r0;
        goto L_0x0021;
    L_0x001b:
        r2 = r6.zzcyg;
        r3 = r1 + -1;
        r2 = r2[r3];
    L_0x0021:
        r3 = r6.zzcyg;
        r3 = r3[r1];
        r3 = r3 - r2;
        r3 = r3 + r2;
        r3 = r3 - r7;
        r3 = java.lang.Math.min(r10, r3);
        r4 = r6.zzcyg;
        r5 = r6.zzcyf;
        r5 = r5.length;
        r5 = r5 + r1;
        r4 = r4[r5];
        r2 = r7 - r2;
        r2 = r2 + r4;
        r4 = r6.zzcyf;
        r4 = r4[r1];
        r2 = com.google.android.gms.internal.zzbzd.zza(r4, r2, r8, r9, r3);
        if (r2 != 0) goto L_0x0042;
    L_0x0041:
        return r0;
    L_0x0042:
        r7 = r7 + r3;
        r9 = r9 + r3;
        r10 = r10 - r3;
        r1 = r1 + 1;
        goto L_0x0015;
    L_0x0048:
        r7 = 1;
        return r7;
    L_0x004a:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbyz.zza(int, byte[], int, int):boolean");
    }

    public final String zzafV() {
        return zzaga().zzafV();
    }

    public final String zzafW() {
        return zzaga().zzafW();
    }
}
