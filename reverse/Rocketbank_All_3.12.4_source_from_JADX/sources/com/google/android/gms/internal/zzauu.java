package com.google.android.gms.internal;

import java.io.IOException;

public interface zzauu {

    public static final class zza extends zzbyd<zza> {
        private static volatile zza[] zzbwm;
        public Integer zzbwn;
        public zze[] zzbwo;
        public zzb[] zzbwp;

        public zza() {
            zzNm();
        }

        public static zza[] zzNl() {
            if (zzbwm == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbwm == null) {
                        zzbwm = new zza[0];
                    }
                }
            }
            return zzbwm;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zza = (zza) obj;
            if (this.zzbwn == null) {
                if (zza.zzbwn != null) {
                    return false;
                }
            } else if (!this.zzbwn.equals(zza.zzbwn)) {
                return false;
            }
            if (!zzbyh.equals(this.zzbwo, zza.zzbwo) || !zzbyh.equals(this.zzbwp, zza.zzbwp)) {
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
            int i = 0;
            int hashCode = (((((((527 + getClass().getName().hashCode()) * 31) + (this.zzbwn == null ? 0 : this.zzbwn.hashCode())) * 31) + zzbyh.hashCode(this.zzbwo)) * 31) + zzbyh.hashCode(this.zzbwp)) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zza zzG(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 8) {
                    this.zzbwn = Integer.valueOf(zzbyb.zzafa());
                } else if (zzaeW == 18) {
                    zzaeW = zzbym.zzb(zzbyb, 18);
                    r1 = this.zzbwo == null ? 0 : this.zzbwo.length;
                    r0 = new zze[(zzaeW + r1)];
                    if (r1 != 0) {
                        System.arraycopy(this.zzbwo, 0, r0, 0, r1);
                    }
                    while (r1 < r0.length - 1) {
                        r0[r1] = new zze();
                        zzbyb.zza(r0[r1]);
                        zzbyb.zzaeW();
                        r1++;
                    }
                    r0[r1] = new zze();
                    zzbyb.zza(r0[r1]);
                    this.zzbwo = r0;
                } else if (zzaeW == 26) {
                    zzaeW = zzbym.zzb(zzbyb, 26);
                    r1 = this.zzbwp == null ? 0 : this.zzbwp.length;
                    r0 = new zzb[(zzaeW + r1)];
                    if (r1 != 0) {
                        System.arraycopy(this.zzbwp, 0, r0, 0, r1);
                    }
                    while (r1 < r0.length - 1) {
                        r0[r1] = new zzb();
                        zzbyb.zza(r0[r1]);
                        zzbyb.zzaeW();
                        r1++;
                    }
                    r0[r1] = new zzb();
                    zzbyb.zza(r0[r1]);
                    this.zzbwp = r0;
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final zza zzNm() {
            this.zzbwn = null;
            this.zzbwo = zze.zzNs();
            this.zzbwp = zzb.zzNn();
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbwn != null) {
                zzbyc.zzJ(1, this.zzbwn.intValue());
            }
            int i = 0;
            if (this.zzbwo != null && this.zzbwo.length > 0) {
                for (zzbyj zzbyj : this.zzbwo) {
                    if (zzbyj != null) {
                        zzbyc.zza(2, zzbyj);
                    }
                }
            }
            if (this.zzbwp != null && this.zzbwp.length > 0) {
                while (i < this.zzbwp.length) {
                    zzbyj zzbyj2 = this.zzbwp[i];
                    if (zzbyj2 != null) {
                        zzbyc.zza(3, zzbyj2);
                    }
                    i++;
                }
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzG(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbwn != null) {
                zzu += zzbyc.zzL(1, this.zzbwn.intValue());
            }
            int i = 0;
            if (this.zzbwo != null && this.zzbwo.length > 0) {
                int i2 = zzu;
                for (zzbyj zzbyj : this.zzbwo) {
                    if (zzbyj != null) {
                        i2 += zzbyc.zzc(2, zzbyj);
                    }
                }
                zzu = i2;
            }
            if (this.zzbwp != null && this.zzbwp.length > 0) {
                while (i < this.zzbwp.length) {
                    zzbyj zzbyj2 = this.zzbwp[i];
                    if (zzbyj2 != null) {
                        zzu += zzbyc.zzc(3, zzbyj2);
                    }
                    i++;
                }
            }
            return zzu;
        }
    }

    public static final class zzb extends zzbyd<zzb> {
        private static volatile zzb[] zzbwq;
        public Integer zzbwr;
        public String zzbws;
        public zzc[] zzbwt;
        public Boolean zzbwu;
        public zzd zzbwv;

        public zzb() {
            zzNo();
        }

        public static zzb[] zzNn() {
            if (zzbwq == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbwq == null) {
                        zzbwq = new zzb[0];
                    }
                }
            }
            return zzbwq;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzb = (zzb) obj;
            if (this.zzbwr == null) {
                if (zzb.zzbwr != null) {
                    return false;
                }
            } else if (!this.zzbwr.equals(zzb.zzbwr)) {
                return false;
            }
            if (this.zzbws == null) {
                if (zzb.zzbws != null) {
                    return false;
                }
            } else if (!this.zzbws.equals(zzb.zzbws)) {
                return false;
            }
            if (!zzbyh.equals(this.zzbwt, zzb.zzbwt)) {
                return false;
            }
            if (this.zzbwu == null) {
                if (zzb.zzbwu != null) {
                    return false;
                }
            } else if (!this.zzbwu.equals(zzb.zzbwu)) {
                return false;
            }
            if (this.zzbwv == null) {
                if (zzb.zzbwv != null) {
                    return false;
                }
            } else if (!this.zzbwv.equals(zzb.zzbwv)) {
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
            int hashCode = (((((((((((527 + getClass().getName().hashCode()) * 31) + (this.zzbwr == null ? 0 : this.zzbwr.hashCode())) * 31) + (this.zzbws == null ? 0 : this.zzbws.hashCode())) * 31) + zzbyh.hashCode(this.zzbwt)) * 31) + (this.zzbwu == null ? 0 : this.zzbwu.hashCode())) * 31) + (this.zzbwv == null ? 0 : this.zzbwv.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zzb zzH(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 8) {
                    this.zzbwr = Integer.valueOf(zzbyb.zzafa());
                } else if (zzaeW == 18) {
                    this.zzbws = zzbyb.readString();
                } else if (zzaeW == 26) {
                    zzaeW = zzbym.zzb(zzbyb, 26);
                    int length = this.zzbwt == null ? 0 : this.zzbwt.length;
                    Object obj = new zzc[(zzaeW + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzbwt, 0, obj, 0, length);
                    }
                    while (length < obj.length - 1) {
                        obj[length] = new zzc();
                        zzbyb.zza(obj[length]);
                        zzbyb.zzaeW();
                        length++;
                    }
                    obj[length] = new zzc();
                    zzbyb.zza(obj[length]);
                    this.zzbwt = obj;
                } else if (zzaeW == 32) {
                    this.zzbwu = Boolean.valueOf(zzbyb.zzafc());
                } else if (zzaeW == 42) {
                    if (this.zzbwv == null) {
                        this.zzbwv = new zzd();
                    }
                    zzbyb.zza(this.zzbwv);
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final zzb zzNo() {
            this.zzbwr = null;
            this.zzbws = null;
            this.zzbwt = zzc.zzNp();
            this.zzbwu = null;
            this.zzbwv = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbwr != null) {
                zzbyc.zzJ(1, this.zzbwr.intValue());
            }
            if (this.zzbws != null) {
                zzbyc.zzq(2, this.zzbws);
            }
            if (this.zzbwt != null && this.zzbwt.length > 0) {
                for (zzbyj zzbyj : this.zzbwt) {
                    if (zzbyj != null) {
                        zzbyc.zza(3, zzbyj);
                    }
                }
            }
            if (this.zzbwu != null) {
                zzbyc.zzg(4, this.zzbwu.booleanValue());
            }
            if (this.zzbwv != null) {
                zzbyc.zza(5, this.zzbwv);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzH(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbwr != null) {
                zzu += zzbyc.zzL(1, this.zzbwr.intValue());
            }
            if (this.zzbws != null) {
                zzu += zzbyc.zzr(2, this.zzbws);
            }
            if (this.zzbwt != null && this.zzbwt.length > 0) {
                for (zzbyj zzbyj : this.zzbwt) {
                    if (zzbyj != null) {
                        zzu += zzbyc.zzc(3, zzbyj);
                    }
                }
            }
            if (this.zzbwu != null) {
                zzu += zzbyc.zzh(4, this.zzbwu.booleanValue());
            }
            return this.zzbwv != null ? zzu + zzbyc.zzc(5, this.zzbwv) : zzu;
        }
    }

    public static final class zzc extends zzbyd<zzc> {
        private static volatile zzc[] zzbww;
        public String zzbwA;
        public zzf zzbwx;
        public zzd zzbwy;
        public Boolean zzbwz;

        public zzc() {
            zzNq();
        }

        public static zzc[] zzNp() {
            if (zzbww == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbww == null) {
                        zzbww = new zzc[0];
                    }
                }
            }
            return zzbww;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzc = (zzc) obj;
            if (this.zzbwx == null) {
                if (zzc.zzbwx != null) {
                    return false;
                }
            } else if (!this.zzbwx.equals(zzc.zzbwx)) {
                return false;
            }
            if (this.zzbwy == null) {
                if (zzc.zzbwy != null) {
                    return false;
                }
            } else if (!this.zzbwy.equals(zzc.zzbwy)) {
                return false;
            }
            if (this.zzbwz == null) {
                if (zzc.zzbwz != null) {
                    return false;
                }
            } else if (!this.zzbwz.equals(zzc.zzbwz)) {
                return false;
            }
            if (this.zzbwA == null) {
                if (zzc.zzbwA != null) {
                    return false;
                }
            } else if (!this.zzbwA.equals(zzc.zzbwA)) {
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
            int hashCode = (((((((((527 + getClass().getName().hashCode()) * 31) + (this.zzbwx == null ? 0 : this.zzbwx.hashCode())) * 31) + (this.zzbwy == null ? 0 : this.zzbwy.hashCode())) * 31) + (this.zzbwz == null ? 0 : this.zzbwz.hashCode())) * 31) + (this.zzbwA == null ? 0 : this.zzbwA.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zzc zzI(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                zzbyj zzbyj;
                if (zzaeW == 10) {
                    if (this.zzbwx == null) {
                        this.zzbwx = new zzf();
                    }
                    zzbyj = this.zzbwx;
                } else if (zzaeW == 18) {
                    if (this.zzbwy == null) {
                        this.zzbwy = new zzd();
                    }
                    zzbyj = this.zzbwy;
                } else if (zzaeW == 24) {
                    this.zzbwz = Boolean.valueOf(zzbyb.zzafc());
                } else if (zzaeW == 34) {
                    this.zzbwA = zzbyb.readString();
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
                zzbyb.zza(zzbyj);
            }
        }

        public final zzc zzNq() {
            this.zzbwx = null;
            this.zzbwy = null;
            this.zzbwz = null;
            this.zzbwA = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbwx != null) {
                zzbyc.zza(1, this.zzbwx);
            }
            if (this.zzbwy != null) {
                zzbyc.zza(2, this.zzbwy);
            }
            if (this.zzbwz != null) {
                zzbyc.zzg(3, this.zzbwz.booleanValue());
            }
            if (this.zzbwA != null) {
                zzbyc.zzq(4, this.zzbwA);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzI(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbwx != null) {
                zzu += zzbyc.zzc(1, this.zzbwx);
            }
            if (this.zzbwy != null) {
                zzu += zzbyc.zzc(2, this.zzbwy);
            }
            if (this.zzbwz != null) {
                zzu += zzbyc.zzh(3, this.zzbwz.booleanValue());
            }
            return this.zzbwA != null ? zzu + zzbyc.zzr(4, this.zzbwA) : zzu;
        }
    }

    public static final class zzd extends zzbyd<zzd> {
        public Integer zzbwB;
        public Boolean zzbwC;
        public String zzbwD;
        public String zzbwE;
        public String zzbwF;

        public zzd() {
            zzNr();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzd = (zzd) obj;
            if (this.zzbwB == null) {
                if (zzd.zzbwB != null) {
                    return false;
                }
            } else if (!this.zzbwB.equals(zzd.zzbwB)) {
                return false;
            }
            if (this.zzbwC == null) {
                if (zzd.zzbwC != null) {
                    return false;
                }
            } else if (!this.zzbwC.equals(zzd.zzbwC)) {
                return false;
            }
            if (this.zzbwD == null) {
                if (zzd.zzbwD != null) {
                    return false;
                }
            } else if (!this.zzbwD.equals(zzd.zzbwD)) {
                return false;
            }
            if (this.zzbwE == null) {
                if (zzd.zzbwE != null) {
                    return false;
                }
            } else if (!this.zzbwE.equals(zzd.zzbwE)) {
                return false;
            }
            if (this.zzbwF == null) {
                if (zzd.zzbwF != null) {
                    return false;
                }
            } else if (!this.zzbwF.equals(zzd.zzbwF)) {
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
            int hashCode = (((((((((((527 + getClass().getName().hashCode()) * 31) + (this.zzbwB == null ? 0 : this.zzbwB.intValue())) * 31) + (this.zzbwC == null ? 0 : this.zzbwC.hashCode())) * 31) + (this.zzbwD == null ? 0 : this.zzbwD.hashCode())) * 31) + (this.zzbwE == null ? 0 : this.zzbwE.hashCode())) * 31) + (this.zzbwF == null ? 0 : this.zzbwF.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zzd zzJ(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW != 0) {
                    if (zzaeW == 8) {
                        zzaeW = zzbyb.zzafa();
                        switch (zzaeW) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.zzbwB = Integer.valueOf(zzaeW);
                                break;
                            default:
                                break;
                        }
                    } else if (zzaeW == 16) {
                        this.zzbwC = Boolean.valueOf(zzbyb.zzafc());
                    } else if (zzaeW == 26) {
                        this.zzbwD = zzbyb.readString();
                    } else if (zzaeW == 34) {
                        this.zzbwE = zzbyb.readString();
                    } else if (zzaeW == 42) {
                        this.zzbwF = zzbyb.readString();
                    } else if (!super.zza(zzbyb, zzaeW)) {
                        return this;
                    }
                } else {
                    return this;
                }
            }
        }

        public final zzd zzNr() {
            this.zzbwC = null;
            this.zzbwD = null;
            this.zzbwE = null;
            this.zzbwF = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbwB != null) {
                zzbyc.zzJ(1, this.zzbwB.intValue());
            }
            if (this.zzbwC != null) {
                zzbyc.zzg(2, this.zzbwC.booleanValue());
            }
            if (this.zzbwD != null) {
                zzbyc.zzq(3, this.zzbwD);
            }
            if (this.zzbwE != null) {
                zzbyc.zzq(4, this.zzbwE);
            }
            if (this.zzbwF != null) {
                zzbyc.zzq(5, this.zzbwF);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzJ(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbwB != null) {
                zzu += zzbyc.zzL(1, this.zzbwB.intValue());
            }
            if (this.zzbwC != null) {
                zzu += zzbyc.zzh(2, this.zzbwC.booleanValue());
            }
            if (this.zzbwD != null) {
                zzu += zzbyc.zzr(3, this.zzbwD);
            }
            if (this.zzbwE != null) {
                zzu += zzbyc.zzr(4, this.zzbwE);
            }
            return this.zzbwF != null ? zzu + zzbyc.zzr(5, this.zzbwF) : zzu;
        }
    }

    public static final class zze extends zzbyd<zze> {
        private static volatile zze[] zzbwG;
        public String zzbwH;
        public zzc zzbwI;
        public Integer zzbwr;

        public zze() {
            zzNt();
        }

        public static zze[] zzNs() {
            if (zzbwG == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbwG == null) {
                        zzbwG = new zze[0];
                    }
                }
            }
            return zzbwG;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zze = (zze) obj;
            if (this.zzbwr == null) {
                if (zze.zzbwr != null) {
                    return false;
                }
            } else if (!this.zzbwr.equals(zze.zzbwr)) {
                return false;
            }
            if (this.zzbwH == null) {
                if (zze.zzbwH != null) {
                    return false;
                }
            } else if (!this.zzbwH.equals(zze.zzbwH)) {
                return false;
            }
            if (this.zzbwI == null) {
                if (zze.zzbwI != null) {
                    return false;
                }
            } else if (!this.zzbwI.equals(zze.zzbwI)) {
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
            int hashCode = (((((((527 + getClass().getName().hashCode()) * 31) + (this.zzbwr == null ? 0 : this.zzbwr.hashCode())) * 31) + (this.zzbwH == null ? 0 : this.zzbwH.hashCode())) * 31) + (this.zzbwI == null ? 0 : this.zzbwI.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zze zzK(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 8) {
                    this.zzbwr = Integer.valueOf(zzbyb.zzafa());
                } else if (zzaeW == 18) {
                    this.zzbwH = zzbyb.readString();
                } else if (zzaeW == 26) {
                    if (this.zzbwI == null) {
                        this.zzbwI = new zzc();
                    }
                    zzbyb.zza(this.zzbwI);
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final zze zzNt() {
            this.zzbwr = null;
            this.zzbwH = null;
            this.zzbwI = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbwr != null) {
                zzbyc.zzJ(1, this.zzbwr.intValue());
            }
            if (this.zzbwH != null) {
                zzbyc.zzq(2, this.zzbwH);
            }
            if (this.zzbwI != null) {
                zzbyc.zza(3, this.zzbwI);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzK(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbwr != null) {
                zzu += zzbyc.zzL(1, this.zzbwr.intValue());
            }
            if (this.zzbwH != null) {
                zzu += zzbyc.zzr(2, this.zzbwH);
            }
            return this.zzbwI != null ? zzu + zzbyc.zzc(3, this.zzbwI) : zzu;
        }
    }

    public static final class zzf extends zzbyd<zzf> {
        public Integer zzbwJ;
        public String zzbwK;
        public Boolean zzbwL;
        public String[] zzbwM;

        public zzf() {
            zzNu();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzf = (zzf) obj;
            if (this.zzbwJ == null) {
                if (zzf.zzbwJ != null) {
                    return false;
                }
            } else if (!this.zzbwJ.equals(zzf.zzbwJ)) {
                return false;
            }
            if (this.zzbwK == null) {
                if (zzf.zzbwK != null) {
                    return false;
                }
            } else if (!this.zzbwK.equals(zzf.zzbwK)) {
                return false;
            }
            if (this.zzbwL == null) {
                if (zzf.zzbwL != null) {
                    return false;
                }
            } else if (!this.zzbwL.equals(zzf.zzbwL)) {
                return false;
            }
            if (!zzbyh.equals(this.zzbwM, zzf.zzbwM)) {
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
            int i = 0;
            int hashCode = (((((((((527 + getClass().getName().hashCode()) * 31) + (this.zzbwJ == null ? 0 : this.zzbwJ.intValue())) * 31) + (this.zzbwK == null ? 0 : this.zzbwK.hashCode())) * 31) + (this.zzbwL == null ? 0 : this.zzbwL.hashCode())) * 31) + zzbyh.hashCode(this.zzbwM)) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zzf zzL(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW != 0) {
                    if (zzaeW == 8) {
                        zzaeW = zzbyb.zzafa();
                        switch (zzaeW) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.zzbwJ = Integer.valueOf(zzaeW);
                                break;
                            default:
                                break;
                        }
                    } else if (zzaeW == 18) {
                        this.zzbwK = zzbyb.readString();
                    } else if (zzaeW == 24) {
                        this.zzbwL = Boolean.valueOf(zzbyb.zzafc());
                    } else if (zzaeW == 34) {
                        zzaeW = zzbym.zzb(zzbyb, 34);
                        int length = this.zzbwM == null ? 0 : this.zzbwM.length;
                        Object obj = new String[(zzaeW + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzbwM, 0, obj, 0, length);
                        }
                        while (length < obj.length - 1) {
                            obj[length] = zzbyb.readString();
                            zzbyb.zzaeW();
                            length++;
                        }
                        obj[length] = zzbyb.readString();
                        this.zzbwM = obj;
                    } else if (!super.zza(zzbyb, zzaeW)) {
                        return this;
                    }
                } else {
                    return this;
                }
            }
        }

        public final zzf zzNu() {
            this.zzbwK = null;
            this.zzbwL = null;
            this.zzbwM = zzbym.EMPTY_STRING_ARRAY;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbwJ != null) {
                zzbyc.zzJ(1, this.zzbwJ.intValue());
            }
            if (this.zzbwK != null) {
                zzbyc.zzq(2, this.zzbwK);
            }
            if (this.zzbwL != null) {
                zzbyc.zzg(3, this.zzbwL.booleanValue());
            }
            if (this.zzbwM != null && this.zzbwM.length > 0) {
                for (String str : this.zzbwM) {
                    if (str != null) {
                        zzbyc.zzq(4, str);
                    }
                }
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzL(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbwJ != null) {
                zzu += zzbyc.zzL(1, this.zzbwJ.intValue());
            }
            if (this.zzbwK != null) {
                zzu += zzbyc.zzr(2, this.zzbwK);
            }
            if (this.zzbwL != null) {
                zzu += zzbyc.zzh(3, this.zzbwL.booleanValue());
            }
            if (this.zzbwM == null || this.zzbwM.length <= 0) {
                return zzu;
            }
            int i = 0;
            int i2 = 0;
            int i3 = i2;
            while (i < this.zzbwM.length) {
                String str = this.zzbwM[i];
                if (str != null) {
                    i3++;
                    i2 += zzbyc.zzku(str);
                }
                i++;
            }
            return (zzu + i2) + (1 * i3);
        }
    }
}
