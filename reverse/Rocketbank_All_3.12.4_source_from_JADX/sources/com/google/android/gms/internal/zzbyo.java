package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public interface zzbyo {

    public static final class zza extends zzbyd<zza> implements Cloneable {
        public String[] zzcwZ;
        public String[] zzcxa;
        public int[] zzcxb;
        public long[] zzcxc;
        public long[] zzcxd;

        public zza() {
            zzafD();
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzafE();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zza = (zza) obj;
            if (!zzbyh.equals(this.zzcwZ, zza.zzcwZ) || !zzbyh.equals(this.zzcxa, zza.zzcxa) || !zzbyh.equals(this.zzcxb, zza.zzcxb) || !zzbyh.equals(this.zzcxc, zza.zzcxc) || !zzbyh.equals(this.zzcxd, zza.zzcxd)) {
                return false;
            }
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    return this.zzcwC.equals(zza.zzcwC);
                }
            }
            return zza.zzcwC == null || zza.zzcwC.isEmpty();
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = (((((((((((527 + getClass().getName().hashCode()) * 31) + zzbyh.hashCode(this.zzcwZ)) * 31) + zzbyh.hashCode(this.zzcxa)) * 31) + zzbyh.hashCode(this.zzcxb)) * 31) + zzbyh.hashCode(this.zzcxc)) * 31) + zzbyh.hashCode(this.zzcxd)) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    hashCode = this.zzcwC.hashCode();
                    return hashCode2 + hashCode;
                }
            }
            hashCode = 0;
            return hashCode2 + hashCode;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            int i = 0;
            if (this.zzcwZ != null && this.zzcwZ.length > 0) {
                for (String str : this.zzcwZ) {
                    if (str != null) {
                        zzbyc.zzq(1, str);
                    }
                }
            }
            if (this.zzcxa != null && this.zzcxa.length > 0) {
                for (String str2 : this.zzcxa) {
                    if (str2 != null) {
                        zzbyc.zzq(2, str2);
                    }
                }
            }
            if (this.zzcxb != null && this.zzcxb.length > 0) {
                for (int zzJ : this.zzcxb) {
                    zzbyc.zzJ(3, zzJ);
                }
            }
            if (this.zzcxc != null && this.zzcxc.length > 0) {
                for (long zzb : this.zzcxc) {
                    zzbyc.zzb(4, zzb);
                }
            }
            if (this.zzcxd != null && this.zzcxd.length > 0) {
                while (i < this.zzcxd.length) {
                    zzbyc.zzb(5, this.zzcxd[i]);
                    i++;
                }
            }
            super.zza(zzbyc);
        }

        public final zza zzaW(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                int length;
                Object obj;
                if (zzaeW == 10) {
                    zzaeW = zzbym.zzb(zzbyb, 10);
                    length = this.zzcwZ == null ? 0 : this.zzcwZ.length;
                    obj = new String[(zzaeW + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzcwZ, 0, obj, 0, length);
                    }
                    while (length < obj.length - 1) {
                        obj[length] = zzbyb.readString();
                        zzbyb.zzaeW();
                        length++;
                    }
                    obj[length] = zzbyb.readString();
                    this.zzcwZ = obj;
                } else if (zzaeW == 18) {
                    zzaeW = zzbym.zzb(zzbyb, 18);
                    length = this.zzcxa == null ? 0 : this.zzcxa.length;
                    obj = new String[(zzaeW + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzcxa, 0, obj, 0, length);
                    }
                    while (length < obj.length - 1) {
                        obj[length] = zzbyb.readString();
                        zzbyb.zzaeW();
                        length++;
                    }
                    obj[length] = zzbyb.readString();
                    this.zzcxa = obj;
                } else if (zzaeW != 24) {
                    int i;
                    Object obj2;
                    if (zzaeW == 26) {
                        zzaeW = zzbyb.zzrf(zzbyb.zzaff());
                        length = zzbyb.getPosition();
                        i = 0;
                        while (zzbyb.zzafk() > 0) {
                            zzbyb.zzafa();
                            i++;
                        }
                        zzbyb.zzrh(length);
                        length = this.zzcxb == null ? 0 : this.zzcxb.length;
                        obj2 = new int[(i + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzcxb, 0, obj2, 0, length);
                        }
                        while (length < obj2.length) {
                            obj2[length] = zzbyb.zzafa();
                            length++;
                        }
                        this.zzcxb = obj2;
                    } else if (zzaeW == 32) {
                        zzaeW = zzbym.zzb(zzbyb, 32);
                        length = this.zzcxc == null ? 0 : this.zzcxc.length;
                        obj = new long[(zzaeW + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzcxc, 0, obj, 0, length);
                        }
                        while (length < obj.length - 1) {
                            obj[length] = zzbyb.zzaeZ();
                            zzbyb.zzaeW();
                            length++;
                        }
                        obj[length] = zzbyb.zzaeZ();
                        this.zzcxc = obj;
                    } else if (zzaeW == 34) {
                        zzaeW = zzbyb.zzrf(zzbyb.zzaff());
                        length = zzbyb.getPosition();
                        i = 0;
                        while (zzbyb.zzafk() > 0) {
                            zzbyb.zzaeZ();
                            i++;
                        }
                        zzbyb.zzrh(length);
                        length = this.zzcxc == null ? 0 : this.zzcxc.length;
                        obj2 = new long[(i + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzcxc, 0, obj2, 0, length);
                        }
                        while (length < obj2.length) {
                            obj2[length] = zzbyb.zzaeZ();
                            length++;
                        }
                        this.zzcxc = obj2;
                    } else if (zzaeW == 40) {
                        zzaeW = zzbym.zzb(zzbyb, 40);
                        length = this.zzcxd == null ? 0 : this.zzcxd.length;
                        obj = new long[(zzaeW + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzcxd, 0, obj, 0, length);
                        }
                        while (length < obj.length - 1) {
                            obj[length] = zzbyb.zzaeZ();
                            zzbyb.zzaeW();
                            length++;
                        }
                        obj[length] = zzbyb.zzaeZ();
                        this.zzcxd = obj;
                    } else if (zzaeW == 42) {
                        zzaeW = zzbyb.zzrf(zzbyb.zzaff());
                        length = zzbyb.getPosition();
                        i = 0;
                        while (zzbyb.zzafk() > 0) {
                            zzbyb.zzaeZ();
                            i++;
                        }
                        zzbyb.zzrh(length);
                        length = this.zzcxd == null ? 0 : this.zzcxd.length;
                        obj2 = new long[(i + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzcxd, 0, obj2, 0, length);
                        }
                        while (length < obj2.length) {
                            obj2[length] = zzbyb.zzaeZ();
                            length++;
                        }
                        this.zzcxd = obj2;
                    } else if (!super.zza(zzbyb, zzaeW)) {
                        return this;
                    }
                    zzbyb.zzrg(zzaeW);
                } else {
                    zzaeW = zzbym.zzb(zzbyb, 24);
                    length = this.zzcxb == null ? 0 : this.zzcxb.length;
                    obj = new int[(zzaeW + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzcxb, 0, obj, 0, length);
                    }
                    while (length < obj.length - 1) {
                        obj[length] = zzbyb.zzafa();
                        zzbyb.zzaeW();
                        length++;
                    }
                    obj[length] = zzbyb.zzafa();
                    this.zzcxb = obj;
                }
            }
        }

        public final zza zzafD() {
            this.zzcwZ = zzbym.EMPTY_STRING_ARRAY;
            this.zzcxa = zzbym.EMPTY_STRING_ARRAY;
            this.zzcxb = zzbym.zzcwQ;
            this.zzcxc = zzbym.zzcwR;
            this.zzcxd = zzbym.zzcwR;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zza zzafE() {
            try {
                zza zza = (zza) super.zzafp();
                if (this.zzcwZ != null && this.zzcwZ.length > 0) {
                    zza.zzcwZ = (String[]) this.zzcwZ.clone();
                }
                if (this.zzcxa != null && this.zzcxa.length > 0) {
                    zza.zzcxa = (String[]) this.zzcxa.clone();
                }
                if (this.zzcxb != null && this.zzcxb.length > 0) {
                    zza.zzcxb = (int[]) this.zzcxb.clone();
                }
                if (this.zzcxc != null && this.zzcxc.length > 0) {
                    zza.zzcxc = (long[]) this.zzcxc.clone();
                }
                if (this.zzcxd != null && this.zzcxd.length > 0) {
                    zza.zzcxd = (long[]) this.zzcxd.clone();
                }
                return zza;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public final /* synthetic */ zzbyd zzafp() throws CloneNotSupportedException {
            return (zza) clone();
        }

        public final /* synthetic */ zzbyj zzafq() throws CloneNotSupportedException {
            return (zza) clone();
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzaW(zzbyb);
        }

        protected final int zzu() {
            int i;
            int i2;
            int i3;
            String str;
            int zzu = super.zzu();
            int i4 = 0;
            if (this.zzcwZ != null && this.zzcwZ.length > 0) {
                i = 0;
                i2 = i;
                i3 = i2;
                while (i < this.zzcwZ.length) {
                    str = this.zzcwZ[i];
                    if (str != null) {
                        i3++;
                        i2 += zzbyc.zzku(str);
                    }
                    i++;
                }
                zzu = (zzu + i2) + (i3 * 1);
            }
            if (this.zzcxa != null && this.zzcxa.length > 0) {
                i = 0;
                i2 = i;
                i3 = i2;
                while (i < this.zzcxa.length) {
                    str = this.zzcxa[i];
                    if (str != null) {
                        i3++;
                        i2 += zzbyc.zzku(str);
                    }
                    i++;
                }
                zzu = (zzu + i2) + (i3 * 1);
            }
            if (this.zzcxb != null && this.zzcxb.length > 0) {
                i = 0;
                i2 = i;
                while (i < this.zzcxb.length) {
                    i2 += zzbyc.zzrl(this.zzcxb[i]);
                    i++;
                }
                zzu = (zzu + i2) + (this.zzcxb.length * 1);
            }
            if (this.zzcxc != null && this.zzcxc.length > 0) {
                i = 0;
                i2 = i;
                while (i < this.zzcxc.length) {
                    i2 += zzbyc.zzbq(this.zzcxc[i]);
                    i++;
                }
                zzu = (zzu + i2) + (this.zzcxc.length * 1);
            }
            if (this.zzcxd == null || this.zzcxd.length <= 0) {
                return zzu;
            }
            i = 0;
            while (i4 < this.zzcxd.length) {
                i += zzbyc.zzbq(this.zzcxd[i4]);
                i4++;
            }
            return (zzu + i) + (1 * this.zzcxd.length);
        }
    }

    public static final class zzb extends zzbyd<zzb> implements Cloneable {
        public String version;
        public int zzbqV;
        public String zzcxe;

        public zzb() {
            zzafF();
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzafG();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzb = (zzb) obj;
            if (this.zzbqV != zzb.zzbqV) {
                return false;
            }
            if (this.zzcxe == null) {
                if (zzb.zzcxe != null) {
                    return false;
                }
            } else if (!this.zzcxe.equals(zzb.zzcxe)) {
                return false;
            }
            if (this.version == null) {
                if (zzb.version != null) {
                    return false;
                }
            } else if (!this.version.equals(zzb.version)) {
                return false;
            }
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    return this.zzcwC.equals(zzb.zzcwC);
                }
            }
            return zzb.zzcwC == null || zzb.zzcwC.isEmpty();
        }

        public final int hashCode() {
            int i = 0;
            int hashCode = (((((((527 + getClass().getName().hashCode()) * 31) + this.zzbqV) * 31) + (this.zzcxe == null ? 0 : this.zzcxe.hashCode())) * 31) + (this.version == null ? 0 : this.version.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbqV != 0) {
                zzbyc.zzJ(1, this.zzbqV);
            }
            if (!(this.zzcxe == null || this.zzcxe.equals(""))) {
                zzbyc.zzq(2, this.zzcxe);
            }
            if (!(this.version == null || this.version.equals(""))) {
                zzbyc.zzq(3, this.version);
            }
            super.zza(zzbyc);
        }

        public final zzb zzaX(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 8) {
                    this.zzbqV = zzbyb.zzafa();
                } else if (zzaeW == 18) {
                    this.zzcxe = zzbyb.readString();
                } else if (zzaeW == 26) {
                    this.version = zzbyb.readString();
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final zzb zzafF() {
            this.zzbqV = 0;
            this.zzcxe = "";
            this.version = "";
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zzb zzafG() {
            try {
                return (zzb) super.zzafp();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public final /* synthetic */ zzbyd zzafp() throws CloneNotSupportedException {
            return (zzb) clone();
        }

        public final /* synthetic */ zzbyj zzafq() throws CloneNotSupportedException {
            return (zzb) clone();
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzaX(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbqV != 0) {
                zzu += zzbyc.zzL(1, this.zzbqV);
            }
            if (!(this.zzcxe == null || this.zzcxe.equals(""))) {
                zzu += zzbyc.zzr(2, this.zzcxe);
            }
            return (this.version == null || this.version.equals("")) ? zzu : zzu + zzbyc.zzr(3, this.version);
        }
    }

    public static final class zzc extends zzbyd<zzc> implements Cloneable {
        public byte[] zzcxf;
        public String zzcxg;
        public byte[][] zzcxh;
        public boolean zzcxi;

        public zzc() {
            zzafH();
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzafI();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzc = (zzc) obj;
            if (!Arrays.equals(this.zzcxf, zzc.zzcxf)) {
                return false;
            }
            if (this.zzcxg == null) {
                if (zzc.zzcxg != null) {
                    return false;
                }
            } else if (!this.zzcxg.equals(zzc.zzcxg)) {
                return false;
            }
            if (!zzbyh.zza(this.zzcxh, zzc.zzcxh) || this.zzcxi != zzc.zzcxi) {
                return false;
            }
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    return this.zzcwC.equals(zzc.zzcwC);
                }
            }
            return zzc.zzcwC == null || zzc.zzcwC.isEmpty();
        }

        public final int hashCode() {
            int i = 0;
            int hashCode = (((((((((527 + getClass().getName().hashCode()) * 31) + Arrays.hashCode(this.zzcxf)) * 31) + (this.zzcxg == null ? 0 : this.zzcxg.hashCode())) * 31) + zzbyh.zzb(this.zzcxh)) * 31) + (this.zzcxi ? 1231 : 1237)) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (!Arrays.equals(this.zzcxf, zzbym.zzcwW)) {
                zzbyc.zzb(1, this.zzcxf);
            }
            if (this.zzcxh != null && this.zzcxh.length > 0) {
                for (byte[] bArr : this.zzcxh) {
                    if (bArr != null) {
                        zzbyc.zzb(2, bArr);
                    }
                }
            }
            if (this.zzcxi) {
                zzbyc.zzg(3, this.zzcxi);
            }
            if (!(this.zzcxg == null || this.zzcxg.equals(""))) {
                zzbyc.zzq(4, this.zzcxg);
            }
            super.zza(zzbyc);
        }

        public final zzc zzaY(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    this.zzcxf = zzbyb.readBytes();
                } else if (zzaeW == 18) {
                    zzaeW = zzbym.zzb(zzbyb, 18);
                    int length = this.zzcxh == null ? 0 : this.zzcxh.length;
                    Object obj = new byte[(zzaeW + length)][];
                    if (length != 0) {
                        System.arraycopy(this.zzcxh, 0, obj, 0, length);
                    }
                    while (length < obj.length - 1) {
                        obj[length] = zzbyb.readBytes();
                        zzbyb.zzaeW();
                        length++;
                    }
                    obj[length] = zzbyb.readBytes();
                    this.zzcxh = obj;
                } else if (zzaeW == 24) {
                    this.zzcxi = zzbyb.zzafc();
                } else if (zzaeW == 34) {
                    this.zzcxg = zzbyb.readString();
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final zzc zzafH() {
            this.zzcxf = zzbym.zzcwW;
            this.zzcxg = "";
            this.zzcxh = zzbym.zzcwV;
            this.zzcxi = false;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zzc zzafI() {
            try {
                zzc zzc = (zzc) super.zzafp();
                if (this.zzcxh != null && this.zzcxh.length > 0) {
                    zzc.zzcxh = (byte[][]) this.zzcxh.clone();
                }
                return zzc;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public final /* synthetic */ zzbyd zzafp() throws CloneNotSupportedException {
            return (zzc) clone();
        }

        public final /* synthetic */ zzbyj zzafq() throws CloneNotSupportedException {
            return (zzc) clone();
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzaY(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (!Arrays.equals(this.zzcxf, zzbym.zzcwW)) {
                zzu += zzbyc.zzc(1, this.zzcxf);
            }
            if (this.zzcxh != null && this.zzcxh.length > 0) {
                int i = 0;
                int i2 = 0;
                int i3 = i2;
                while (i < this.zzcxh.length) {
                    byte[] bArr = this.zzcxh[i];
                    if (bArr != null) {
                        i3++;
                        i2 += zzbyc.zzaj(bArr);
                    }
                    i++;
                }
                zzu = (zzu + i2) + (1 * i3);
            }
            if (this.zzcxi) {
                zzu += zzbyc.zzh(3, this.zzcxi);
            }
            return (this.zzcxg == null || this.zzcxg.equals("")) ? zzu : zzu + zzbyc.zzr(4, this.zzcxg);
        }
    }

    public static final class zzd extends zzbyd<zzd> implements Cloneable {
        public String tag;
        public boolean zzced;
        public zzf zzcnt;
        public int[] zzcxA;
        public long zzcxB;
        public long zzcxj;
        public long zzcxk;
        public long zzcxl;
        public int zzcxm;
        public zze[] zzcxn;
        public byte[] zzcxo;
        public zzb zzcxp;
        public byte[] zzcxq;
        public String zzcxr;
        public String zzcxs;
        public zza zzcxt;
        public String zzcxu;
        public long zzcxv;
        public zzc zzcxw;
        public byte[] zzcxx;
        public String zzcxy;
        public int zzcxz;
        public int zzri;

        public zzd() {
            zzafJ();
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzafK();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzd = (zzd) obj;
            if (this.zzcxj != zzd.zzcxj || this.zzcxk != zzd.zzcxk || this.zzcxl != zzd.zzcxl) {
                return false;
            }
            if (this.tag == null) {
                if (zzd.tag != null) {
                    return false;
                }
            } else if (!this.tag.equals(zzd.tag)) {
                return false;
            }
            if (this.zzcxm != zzd.zzcxm || this.zzri != zzd.zzri || this.zzced != zzd.zzced || !zzbyh.equals(this.zzcxn, zzd.zzcxn) || !Arrays.equals(this.zzcxo, zzd.zzcxo)) {
                return false;
            }
            if (this.zzcxp == null) {
                if (zzd.zzcxp != null) {
                    return false;
                }
            } else if (!this.zzcxp.equals(zzd.zzcxp)) {
                return false;
            }
            if (!Arrays.equals(this.zzcxq, zzd.zzcxq)) {
                return false;
            }
            if (this.zzcxr == null) {
                if (zzd.zzcxr != null) {
                    return false;
                }
            } else if (!this.zzcxr.equals(zzd.zzcxr)) {
                return false;
            }
            if (this.zzcxs == null) {
                if (zzd.zzcxs != null) {
                    return false;
                }
            } else if (!this.zzcxs.equals(zzd.zzcxs)) {
                return false;
            }
            if (this.zzcxt == null) {
                if (zzd.zzcxt != null) {
                    return false;
                }
            } else if (!this.zzcxt.equals(zzd.zzcxt)) {
                return false;
            }
            if (this.zzcxu == null) {
                if (zzd.zzcxu != null) {
                    return false;
                }
            } else if (!this.zzcxu.equals(zzd.zzcxu)) {
                return false;
            }
            if (this.zzcxv != zzd.zzcxv) {
                return false;
            }
            if (this.zzcxw == null) {
                if (zzd.zzcxw != null) {
                    return false;
                }
            } else if (!this.zzcxw.equals(zzd.zzcxw)) {
                return false;
            }
            if (!Arrays.equals(this.zzcxx, zzd.zzcxx)) {
                return false;
            }
            if (this.zzcxy == null) {
                if (zzd.zzcxy != null) {
                    return false;
                }
            } else if (!this.zzcxy.equals(zzd.zzcxy)) {
                return false;
            }
            if (this.zzcxz != zzd.zzcxz || !zzbyh.equals(this.zzcxA, zzd.zzcxA) || this.zzcxB != zzd.zzcxB) {
                return false;
            }
            if (this.zzcnt == null) {
                if (zzd.zzcnt != null) {
                    return false;
                }
            } else if (!this.zzcnt.equals(zzd.zzcnt)) {
                return false;
            }
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    return this.zzcwC.equals(zzd.zzcwC);
                }
            }
            return zzd.zzcwC == null || zzd.zzcwC.isEmpty();
        }

        public final int hashCode() {
            int i = 0;
            int hashCode = (((((((((((((((((((((((((((((((((((((((((((((((527 + getClass().getName().hashCode()) * 31) + ((int) (this.zzcxj ^ (this.zzcxj >>> 32)))) * 31) + ((int) (this.zzcxk ^ (this.zzcxk >>> 32)))) * 31) + ((int) (this.zzcxl ^ (this.zzcxl >>> 32)))) * 31) + (this.tag == null ? 0 : this.tag.hashCode())) * 31) + this.zzcxm) * 31) + this.zzri) * 31) + (this.zzced ? 1231 : 1237)) * 31) + zzbyh.hashCode(this.zzcxn)) * 31) + Arrays.hashCode(this.zzcxo)) * 31) + (this.zzcxp == null ? 0 : this.zzcxp.hashCode())) * 31) + Arrays.hashCode(this.zzcxq)) * 31) + (this.zzcxr == null ? 0 : this.zzcxr.hashCode())) * 31) + (this.zzcxs == null ? 0 : this.zzcxs.hashCode())) * 31) + (this.zzcxt == null ? 0 : this.zzcxt.hashCode())) * 31) + (this.zzcxu == null ? 0 : this.zzcxu.hashCode())) * 31) + ((int) (this.zzcxv ^ (this.zzcxv >>> 32)))) * 31) + (this.zzcxw == null ? 0 : this.zzcxw.hashCode())) * 31) + Arrays.hashCode(this.zzcxx)) * 31) + (this.zzcxy == null ? 0 : this.zzcxy.hashCode())) * 31) + this.zzcxz) * 31) + zzbyh.hashCode(this.zzcxA)) * 31) + ((int) (this.zzcxB ^ (this.zzcxB >>> 32)))) * 31) + (this.zzcnt == null ? 0 : this.zzcnt.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzcxj != 0) {
                zzbyc.zzb(1, this.zzcxj);
            }
            if (!(this.tag == null || this.tag.equals(""))) {
                zzbyc.zzq(2, this.tag);
            }
            int i = 0;
            if (this.zzcxn != null && this.zzcxn.length > 0) {
                for (zzbyj zzbyj : this.zzcxn) {
                    if (zzbyj != null) {
                        zzbyc.zza(3, zzbyj);
                    }
                }
            }
            if (!Arrays.equals(this.zzcxo, zzbym.zzcwW)) {
                zzbyc.zzb(4, this.zzcxo);
            }
            if (!Arrays.equals(this.zzcxq, zzbym.zzcwW)) {
                zzbyc.zzb(6, this.zzcxq);
            }
            if (this.zzcxt != null) {
                zzbyc.zza(7, this.zzcxt);
            }
            if (!(this.zzcxr == null || this.zzcxr.equals(""))) {
                zzbyc.zzq(8, this.zzcxr);
            }
            if (this.zzcxp != null) {
                zzbyc.zza(9, this.zzcxp);
            }
            if (this.zzced) {
                zzbyc.zzg(10, this.zzced);
            }
            if (this.zzcxm != 0) {
                zzbyc.zzJ(11, this.zzcxm);
            }
            if (this.zzri != 0) {
                zzbyc.zzJ(12, this.zzri);
            }
            if (!(this.zzcxs == null || this.zzcxs.equals(""))) {
                zzbyc.zzq(13, this.zzcxs);
            }
            if (!(this.zzcxu == null || this.zzcxu.equals(""))) {
                zzbyc.zzq(14, this.zzcxu);
            }
            if (this.zzcxv != 180000) {
                zzbyc.zzd(15, this.zzcxv);
            }
            if (this.zzcxw != null) {
                zzbyc.zza(16, this.zzcxw);
            }
            if (this.zzcxk != 0) {
                zzbyc.zzb(17, this.zzcxk);
            }
            if (!Arrays.equals(this.zzcxx, zzbym.zzcwW)) {
                zzbyc.zzb(18, this.zzcxx);
            }
            if (this.zzcxz != 0) {
                zzbyc.zzJ(19, this.zzcxz);
            }
            if (this.zzcxA != null && this.zzcxA.length > 0) {
                while (i < this.zzcxA.length) {
                    zzbyc.zzJ(20, this.zzcxA[i]);
                    i++;
                }
            }
            if (this.zzcxl != 0) {
                zzbyc.zzb(21, this.zzcxl);
            }
            if (this.zzcxB != 0) {
                zzbyc.zzb(22, this.zzcxB);
            }
            if (this.zzcnt != null) {
                zzbyc.zza(23, this.zzcnt);
            }
            if (!(this.zzcxy == null || this.zzcxy.equals(""))) {
                zzbyc.zzq(24, this.zzcxy);
            }
            super.zza(zzbyc);
        }

        public final zzd zzaZ(zzbyb zzbyb) throws IOException {
            while (true) {
                zzbyj zzbyj;
                int zzaeW = zzbyb.zzaeW();
                int length;
                Object obj;
                switch (zzaeW) {
                    case 0:
                        return this;
                    case 8:
                        this.zzcxj = zzbyb.zzaeZ();
                        continue;
                    case 18:
                        this.tag = zzbyb.readString();
                        continue;
                    case 26:
                        zzaeW = zzbym.zzb(zzbyb, 26);
                        length = this.zzcxn == null ? 0 : this.zzcxn.length;
                        obj = new zze[(zzaeW + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzcxn, 0, obj, 0, length);
                        }
                        while (length < obj.length - 1) {
                            obj[length] = new zze();
                            zzbyb.zza(obj[length]);
                            zzbyb.zzaeW();
                            length++;
                        }
                        obj[length] = new zze();
                        zzbyb.zza(obj[length]);
                        this.zzcxn = obj;
                        continue;
                    case 34:
                        this.zzcxo = zzbyb.readBytes();
                        continue;
                    case 50:
                        this.zzcxq = zzbyb.readBytes();
                        continue;
                    case 58:
                        if (this.zzcxt == null) {
                            this.zzcxt = new zza();
                        }
                        zzbyj = this.zzcxt;
                        break;
                    case 66:
                        this.zzcxr = zzbyb.readString();
                        continue;
                    case 74:
                        if (this.zzcxp == null) {
                            this.zzcxp = new zzb();
                        }
                        zzbyj = this.zzcxp;
                        break;
                    case 80:
                        this.zzced = zzbyb.zzafc();
                        continue;
                    case 88:
                        this.zzcxm = zzbyb.zzafa();
                        continue;
                    case 96:
                        this.zzri = zzbyb.zzafa();
                        continue;
                    case 106:
                        this.zzcxs = zzbyb.readString();
                        continue;
                    case 114:
                        this.zzcxu = zzbyb.readString();
                        continue;
                    case 120:
                        this.zzcxv = zzbyb.zzafe();
                        continue;
                    case 130:
                        if (this.zzcxw == null) {
                            this.zzcxw = new zzc();
                        }
                        zzbyj = this.zzcxw;
                        break;
                    case 136:
                        this.zzcxk = zzbyb.zzaeZ();
                        continue;
                    case 146:
                        this.zzcxx = zzbyb.readBytes();
                        continue;
                    case 152:
                        zzaeW = zzbyb.zzafa();
                        switch (zzaeW) {
                            case 0:
                            case 1:
                            case 2:
                                this.zzcxz = zzaeW;
                                break;
                            default:
                                continue;
                        }
                    case 160:
                        zzaeW = zzbym.zzb(zzbyb, 160);
                        length = this.zzcxA == null ? 0 : this.zzcxA.length;
                        obj = new int[(zzaeW + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzcxA, 0, obj, 0, length);
                        }
                        while (length < obj.length - 1) {
                            obj[length] = zzbyb.zzafa();
                            zzbyb.zzaeW();
                            length++;
                        }
                        obj[length] = zzbyb.zzafa();
                        this.zzcxA = obj;
                        continue;
                    case 162:
                        zzaeW = zzbyb.zzrf(zzbyb.zzaff());
                        length = zzbyb.getPosition();
                        int i = 0;
                        while (zzbyb.zzafk() > 0) {
                            zzbyb.zzafa();
                            i++;
                        }
                        zzbyb.zzrh(length);
                        length = this.zzcxA == null ? 0 : this.zzcxA.length;
                        Object obj2 = new int[(i + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzcxA, 0, obj2, 0, length);
                        }
                        while (length < obj2.length) {
                            obj2[length] = zzbyb.zzafa();
                            length++;
                        }
                        this.zzcxA = obj2;
                        zzbyb.zzrg(zzaeW);
                        continue;
                    case 168:
                        this.zzcxl = zzbyb.zzaeZ();
                        continue;
                    case 176:
                        this.zzcxB = zzbyb.zzaeZ();
                        continue;
                    case 186:
                        if (this.zzcnt == null) {
                            this.zzcnt = new zzf();
                        }
                        zzbyj = this.zzcnt;
                        break;
                    case 194:
                        this.zzcxy = zzbyb.readString();
                        continue;
                    default:
                        if (!super.zza(zzbyb, zzaeW)) {
                            return this;
                        }
                        continue;
                }
                zzbyb.zza(zzbyj);
            }
        }

        public final zzd zzafJ() {
            this.zzcxj = 0;
            this.zzcxk = 0;
            this.zzcxl = 0;
            this.tag = "";
            this.zzcxm = 0;
            this.zzri = 0;
            this.zzced = false;
            this.zzcxn = zze.zzafL();
            this.zzcxo = zzbym.zzcwW;
            this.zzcxp = null;
            this.zzcxq = zzbym.zzcwW;
            this.zzcxr = "";
            this.zzcxs = "";
            this.zzcxt = null;
            this.zzcxu = "";
            this.zzcxv = 180000;
            this.zzcxw = null;
            this.zzcxx = zzbym.zzcwW;
            this.zzcxy = "";
            this.zzcxz = 0;
            this.zzcxA = zzbym.zzcwQ;
            this.zzcxB = 0;
            this.zzcnt = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zzd zzafK() {
            try {
                zzd zzd = (zzd) super.zzafp();
                if (this.zzcxn != null && this.zzcxn.length > 0) {
                    zzd.zzcxn = new zze[this.zzcxn.length];
                    for (int i = 0; i < this.zzcxn.length; i++) {
                        if (this.zzcxn[i] != null) {
                            zzd.zzcxn[i] = (zze) this.zzcxn[i].clone();
                        }
                    }
                }
                if (this.zzcxp != null) {
                    zzd.zzcxp = (zzb) this.zzcxp.clone();
                }
                if (this.zzcxt != null) {
                    zzd.zzcxt = (zza) this.zzcxt.clone();
                }
                if (this.zzcxw != null) {
                    zzd.zzcxw = (zzc) this.zzcxw.clone();
                }
                if (this.zzcxA != null && this.zzcxA.length > 0) {
                    zzd.zzcxA = (int[]) this.zzcxA.clone();
                }
                if (this.zzcnt != null) {
                    zzd.zzcnt = (zzf) this.zzcnt.clone();
                }
                return zzd;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public final /* synthetic */ zzbyd zzafp() throws CloneNotSupportedException {
            return (zzd) clone();
        }

        public final /* synthetic */ zzbyj zzafq() throws CloneNotSupportedException {
            return (zzd) clone();
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzaZ(zzbyb);
        }

        protected final int zzu() {
            int i;
            int zzu = super.zzu();
            if (this.zzcxj != 0) {
                zzu += zzbyc.zzf(1, this.zzcxj);
            }
            if (!(this.tag == null || this.tag.equals(""))) {
                zzu += zzbyc.zzr(2, this.tag);
            }
            int i2 = 0;
            if (this.zzcxn != null && this.zzcxn.length > 0) {
                i = zzu;
                for (zzbyj zzbyj : this.zzcxn) {
                    if (zzbyj != null) {
                        i += zzbyc.zzc(3, zzbyj);
                    }
                }
                zzu = i;
            }
            if (!Arrays.equals(this.zzcxo, zzbym.zzcwW)) {
                zzu += zzbyc.zzc(4, this.zzcxo);
            }
            if (!Arrays.equals(this.zzcxq, zzbym.zzcwW)) {
                zzu += zzbyc.zzc(6, this.zzcxq);
            }
            if (this.zzcxt != null) {
                zzu += zzbyc.zzc(7, this.zzcxt);
            }
            if (!(this.zzcxr == null || this.zzcxr.equals(""))) {
                zzu += zzbyc.zzr(8, this.zzcxr);
            }
            if (this.zzcxp != null) {
                zzu += zzbyc.zzc(9, this.zzcxp);
            }
            if (this.zzced) {
                zzu += zzbyc.zzh(10, this.zzced);
            }
            if (this.zzcxm != 0) {
                zzu += zzbyc.zzL(11, this.zzcxm);
            }
            if (this.zzri != 0) {
                zzu += zzbyc.zzL(12, this.zzri);
            }
            if (!(this.zzcxs == null || this.zzcxs.equals(""))) {
                zzu += zzbyc.zzr(13, this.zzcxs);
            }
            if (!(this.zzcxu == null || this.zzcxu.equals(""))) {
                zzu += zzbyc.zzr(14, this.zzcxu);
            }
            if (this.zzcxv != 180000) {
                zzu += zzbyc.zzh(15, this.zzcxv);
            }
            if (this.zzcxw != null) {
                zzu += zzbyc.zzc(16, this.zzcxw);
            }
            if (this.zzcxk != 0) {
                zzu += zzbyc.zzf(17, this.zzcxk);
            }
            if (!Arrays.equals(this.zzcxx, zzbym.zzcwW)) {
                zzu += zzbyc.zzc(18, this.zzcxx);
            }
            if (this.zzcxz != 0) {
                zzu += zzbyc.zzL(19, this.zzcxz);
            }
            if (this.zzcxA != null && this.zzcxA.length > 0) {
                i = 0;
                while (i2 < this.zzcxA.length) {
                    i += zzbyc.zzrl(this.zzcxA[i2]);
                    i2++;
                }
                zzu = (zzu + i) + (2 * this.zzcxA.length);
            }
            if (this.zzcxl != 0) {
                zzu += zzbyc.zzf(21, this.zzcxl);
            }
            if (this.zzcxB != 0) {
                zzu += zzbyc.zzf(22, this.zzcxB);
            }
            if (this.zzcnt != null) {
                zzu += zzbyc.zzc(23, this.zzcnt);
            }
            return (this.zzcxy == null || this.zzcxy.equals("")) ? zzu : zzu + zzbyc.zzr(24, this.zzcxy);
        }
    }

    public static final class zze extends zzbyd<zze> implements Cloneable {
        private static volatile zze[] zzcxC;
        public String value;
        public String zzaB;

        public zze() {
            zzafM();
        }

        public static zze[] zzafL() {
            if (zzcxC == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzcxC == null) {
                        zzcxC = new zze[0];
                    }
                }
            }
            return zzcxC;
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzafN();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zze = (zze) obj;
            if (this.zzaB == null) {
                if (zze.zzaB != null) {
                    return false;
                }
            } else if (!this.zzaB.equals(zze.zzaB)) {
                return false;
            }
            if (this.value == null) {
                if (zze.value != null) {
                    return false;
                }
            } else if (!this.value.equals(zze.value)) {
                return false;
            }
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    return this.zzcwC.equals(zze.zzcwC);
                }
            }
            return zze.zzcwC == null || zze.zzcwC.isEmpty();
        }

        public final int hashCode() {
            int i = 0;
            int hashCode = (((((527 + getClass().getName().hashCode()) * 31) + (this.zzaB == null ? 0 : this.zzaB.hashCode())) * 31) + (this.value == null ? 0 : this.value.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (!(this.zzaB == null || this.zzaB.equals(""))) {
                zzbyc.zzq(1, this.zzaB);
            }
            if (!(this.value == null || this.value.equals(""))) {
                zzbyc.zzq(2, this.value);
            }
            super.zza(zzbyc);
        }

        public final zze zzafM() {
            this.zzaB = "";
            this.value = "";
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zze zzafN() {
            try {
                return (zze) super.zzafp();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public final /* synthetic */ zzbyd zzafp() throws CloneNotSupportedException {
            return (zze) clone();
        }

        public final /* synthetic */ zzbyj zzafq() throws CloneNotSupportedException {
            return (zze) clone();
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzba(zzbyb);
        }

        public final zze zzba(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    this.zzaB = zzbyb.readString();
                } else if (zzaeW == 18) {
                    this.value = zzbyb.readString();
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (!(this.zzaB == null || this.zzaB.equals(""))) {
                zzu += zzbyc.zzr(1, this.zzaB);
            }
            return (this.value == null || this.value.equals("")) ? zzu : zzu + zzbyc.zzr(2, this.value);
        }
    }

    public static final class zzf extends zzbyd<zzf> implements Cloneable {
        public int zzcxD;
        public int zzcxE;

        public zzf() {
            zzafO();
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzafP();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzf = (zzf) obj;
            if (this.zzcxD != zzf.zzcxD || this.zzcxE != zzf.zzcxE) {
                return false;
            }
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    return this.zzcwC.equals(zzf.zzcwC);
                }
            }
            return zzf.zzcwC == null || zzf.zzcwC.isEmpty();
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = (((((527 + getClass().getName().hashCode()) * 31) + this.zzcxD) * 31) + this.zzcxE) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    hashCode = this.zzcwC.hashCode();
                    return hashCode2 + hashCode;
                }
            }
            hashCode = 0;
            return hashCode2 + hashCode;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzcxD != -1) {
                zzbyc.zzJ(1, this.zzcxD);
            }
            if (this.zzcxE != 0) {
                zzbyc.zzJ(2, this.zzcxE);
            }
            super.zza(zzbyc);
        }

        public final zzf zzafO() {
            this.zzcxD = -1;
            this.zzcxE = 0;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zzf zzafP() {
            try {
                return (zzf) super.zzafp();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public final /* synthetic */ zzbyd zzafp() throws CloneNotSupportedException {
            return (zzf) clone();
        }

        public final /* synthetic */ zzbyj zzafq() throws CloneNotSupportedException {
            return (zzf) clone();
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzbb(zzbyb);
        }

        public final zzf zzbb(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW != 0) {
                    if (zzaeW == 8) {
                        zzaeW = zzbyb.zzafa();
                        switch (zzaeW) {
                            case -1:
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                                this.zzcxD = zzaeW;
                                break;
                            default:
                                break;
                        }
                    } else if (zzaeW == 16) {
                        zzaeW = zzbyb.zzafa();
                        if (zzaeW != 100) {
                            switch (zzaeW) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                case 14:
                                case 15:
                                case 16:
                                    break;
                                default:
                                    continue;
                            }
                        }
                        this.zzcxE = zzaeW;
                    } else if (!super.zza(zzbyb, zzaeW)) {
                        return this;
                    }
                } else {
                    return this;
                }
            }
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzcxD != -1) {
                zzu += zzbyc.zzL(1, this.zzcxD);
            }
            return this.zzcxE != 0 ? zzu + zzbyc.zzL(2, this.zzcxE) : zzu;
        }
    }
}
