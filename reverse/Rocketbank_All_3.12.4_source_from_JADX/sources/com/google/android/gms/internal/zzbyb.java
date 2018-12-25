package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbyb {
    private final byte[] buffer;
    private int zzcwA = 67108864;
    private int zzcws;
    private int zzcwt;
    private int zzcwu;
    private int zzcwv;
    private int zzcww;
    private int zzcwx = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    private int zzcwy;
    private int zzcwz = 64;

    private zzbyb(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.zzcws = i;
        this.zzcwt = i2 + i;
        this.zzcwv = i;
    }

    private void zzafj() {
        this.zzcwt += this.zzcwu;
        int i = this.zzcwt;
        if (i > this.zzcwx) {
            this.zzcwu = i - this.zzcwx;
            this.zzcwt -= this.zzcwu;
            return;
        }
        this.zzcwu = 0;
    }

    public static zzbyb zzag(byte[] bArr) {
        return zzb(bArr, 0, bArr.length);
    }

    public static zzbyb zzb(byte[] bArr, int i, int i2) {
        return new zzbyb(bArr, i, i2);
    }

    public static long zzbk(long j) {
        return (j >>> 1) ^ (-(j & 1));
    }

    public static int zzre(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public final int getPosition() {
        return this.zzcwv - this.zzcws;
    }

    public final byte[] readBytes() throws IOException {
        int zzaff = zzaff();
        if (zzaff < 0) {
            throw zzbyi.zzafu();
        } else if (zzaff == 0) {
            return zzbym.zzcwW;
        } else {
            if (zzaff > this.zzcwt - this.zzcwv) {
                throw zzbyi.zzaft();
            }
            Object obj = new byte[zzaff];
            System.arraycopy(this.buffer, this.zzcwv, obj, 0, zzaff);
            this.zzcwv += zzaff;
            return obj;
        }
    }

    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(zzafi());
    }

    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(zzafh());
    }

    public final String readString() throws IOException {
        int zzaff = zzaff();
        if (zzaff < 0) {
            throw zzbyi.zzafu();
        } else if (zzaff > this.zzcwt - this.zzcwv) {
            throw zzbyi.zzaft();
        } else {
            String str = new String(this.buffer, this.zzcwv, zzaff, zzbyh.UTF_8);
            this.zzcwv += zzaff;
            return str;
        }
    }

    public final byte[] zzI(int i, int i2) {
        if (i2 == 0) {
            return zzbym.zzcwW;
        }
        Object obj = new byte[i2];
        System.arraycopy(this.buffer, this.zzcws + i, obj, 0, i2);
        return obj;
    }

    public final void zza(zzbyj zzbyj) throws IOException {
        int zzaff = zzaff();
        if (this.zzcwy >= this.zzcwz) {
            throw zzbyi.zzafz();
        }
        zzaff = zzrf(zzaff);
        this.zzcwy++;
        zzbyj.zzb(this);
        zzrc(0);
        this.zzcwy--;
        zzrg(zzaff);
    }

    public final void zza(zzbyj zzbyj, int i) throws IOException {
        if (this.zzcwy >= this.zzcwz) {
            throw zzbyi.zzafz();
        }
        this.zzcwy++;
        zzbyj.zzb(this);
        zzrc(zzbym.zzO(i, 4));
        this.zzcwy--;
    }

    public final int zzaeW() throws IOException {
        if (zzafl()) {
            this.zzcww = 0;
            return 0;
        }
        this.zzcww = zzaff();
        if (this.zzcww != 0) {
            return this.zzcww;
        }
        throw zzbyi.zzafw();
    }

    public final void zzaeX() throws IOException {
        int zzaeW;
        do {
            zzaeW = zzaeW();
            if (zzaeW == 0) {
                return;
            }
        } while (zzrd(zzaeW));
    }

    public final long zzaeY() throws IOException {
        return zzafg();
    }

    public final long zzaeZ() throws IOException {
        return zzafg();
    }

    public final int zzafa() throws IOException {
        return zzaff();
    }

    public final long zzafb() throws IOException {
        return zzafi();
    }

    public final boolean zzafc() throws IOException {
        return zzaff() != 0;
    }

    public final int zzafd() throws IOException {
        return zzre(zzaff());
    }

    public final long zzafe() throws IOException {
        return zzbk(zzafg());
    }

    public final int zzaff() throws IOException {
        byte zzafm = zzafm();
        if (zzafm >= (byte) 0) {
            return zzafm;
        }
        int i;
        int i2 = zzafm & 127;
        byte zzafm2 = zzafm();
        if (zzafm2 >= (byte) 0) {
            i = zzafm2 << 7;
        } else {
            i2 |= (zzafm2 & 127) << 7;
            zzafm2 = zzafm();
            if (zzafm2 >= (byte) 0) {
                i = zzafm2 << 14;
            } else {
                i2 |= (zzafm2 & 127) << 14;
                zzafm2 = zzafm();
                if (zzafm2 >= (byte) 0) {
                    i = zzafm2 << 21;
                } else {
                    i2 |= (zzafm2 & 127) << 21;
                    zzafm2 = zzafm();
                    i2 |= zzafm2 << 28;
                    if (zzafm2 >= (byte) 0) {
                        return i2;
                    }
                    for (i = 0; i < 5; i++) {
                        if (zzafm() >= (byte) 0) {
                            return i2;
                        }
                    }
                    throw zzbyi.zzafv();
                }
            }
        }
        return i2 | i;
    }

    public final long zzafg() throws IOException {
        int i = 0;
        long j = 0;
        while (i < 64) {
            byte zzafm = zzafm();
            long j2 = j | (((long) (zzafm & 127)) << i);
            if ((zzafm & 128) == 0) {
                return j2;
            }
            i += 7;
            j = j2;
        }
        throw zzbyi.zzafv();
    }

    public final int zzafh() throws IOException {
        return (((zzafm() & 255) | ((zzafm() & 255) << 8)) | ((zzafm() & 255) << 16)) | ((zzafm() & 255) << 24);
    }

    public final long zzafi() throws IOException {
        return (((((((((long) zzafm()) & 255) | ((((long) zzafm()) & 255) << 8)) | ((((long) zzafm()) & 255) << 16)) | ((((long) zzafm()) & 255) << 24)) | ((((long) zzafm()) & 255) << 32)) | ((((long) zzafm()) & 255) << 40)) | ((((long) zzafm()) & 255) << 48)) | ((((long) zzafm()) & 255) << 56);
    }

    public final int zzafk() {
        if (this.zzcwx == ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
            return -1;
        }
        return this.zzcwx - this.zzcwv;
    }

    public final boolean zzafl() {
        return this.zzcwv == this.zzcwt;
    }

    public final byte zzafm() throws IOException {
        if (this.zzcwv == this.zzcwt) {
            throw zzbyi.zzaft();
        }
        byte[] bArr = this.buffer;
        int i = this.zzcwv;
        this.zzcwv = i + 1;
        return bArr[i];
    }

    public final void zzrc(int i) throws zzbyi {
        if (this.zzcww != i) {
            throw zzbyi.zzafx();
        }
    }

    public final boolean zzrd(int i) throws IOException {
        switch (zzbym.zzrw(i)) {
            case 0:
                zzafa();
                return true;
            case 1:
                zzafi();
                return true;
            case 2:
                zzri(zzaff());
                return true;
            case 3:
                zzaeX();
                zzrc(zzbym.zzO(zzbym.zzrx(i), 4));
                return true;
            case 4:
                return false;
            case 5:
                zzafh();
                return true;
            default:
                throw zzbyi.zzafy();
        }
    }

    public final int zzrf(int i) throws zzbyi {
        if (i < 0) {
            throw zzbyi.zzafu();
        }
        i += this.zzcwv;
        int i2 = this.zzcwx;
        if (i > i2) {
            throw zzbyi.zzaft();
        }
        this.zzcwx = i;
        zzafj();
        return i2;
    }

    public final void zzrg(int i) {
        this.zzcwx = i;
        zzafj();
    }

    public final void zzrh(int i) {
        if (i > this.zzcwv - this.zzcws) {
            int i2 = this.zzcwv - this.zzcws;
            StringBuilder stringBuilder = new StringBuilder(50);
            stringBuilder.append("Position ");
            stringBuilder.append(i);
            stringBuilder.append(" is beyond current ");
            stringBuilder.append(i2);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (i < 0) {
            StringBuilder stringBuilder2 = new StringBuilder(24);
            stringBuilder2.append("Bad position ");
            stringBuilder2.append(i);
            throw new IllegalArgumentException(stringBuilder2.toString());
        } else {
            this.zzcwv = this.zzcws + i;
        }
    }

    public final void zzri(int i) throws IOException {
        if (i < 0) {
            throw zzbyi.zzafu();
        } else if (this.zzcwv + i > this.zzcwx) {
            zzri(this.zzcwx - this.zzcwv);
            throw zzbyi.zzaft();
        } else if (i <= this.zzcwt - this.zzcwv) {
            this.zzcwv += i;
        } else {
            throw zzbyi.zzaft();
        }
    }
}
