package com.google.android.gms.internal;

import java.io.IOException;

public interface zzauw {

    public static final class zza extends zzbyd<zza> {
        private static volatile zza[] zzbwW;
        public zzf zzbwX;
        public zzf zzbwY;
        public Boolean zzbwZ;
        public Integer zzbwn;

        public zza() {
            zzNB();
        }

        public static zza[] zzNA() {
            if (zzbwW == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbwW == null) {
                        zzbwW = new zza[0];
                    }
                }
            }
            return zzbwW;
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
            if (this.zzbwX == null) {
                if (zza.zzbwX != null) {
                    return false;
                }
            } else if (!this.zzbwX.equals(zza.zzbwX)) {
                return false;
            }
            if (this.zzbwY == null) {
                if (zza.zzbwY != null) {
                    return false;
                }
            } else if (!this.zzbwY.equals(zza.zzbwY)) {
                return false;
            }
            if (this.zzbwZ == null) {
                if (zza.zzbwZ != null) {
                    return false;
                }
            } else if (!this.zzbwZ.equals(zza.zzbwZ)) {
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
            int hashCode = (((((((((527 + getClass().getName().hashCode()) * 31) + (this.zzbwn == null ? 0 : this.zzbwn.hashCode())) * 31) + (this.zzbwX == null ? 0 : this.zzbwX.hashCode())) * 31) + (this.zzbwY == null ? 0 : this.zzbwY.hashCode())) * 31) + (this.zzbwZ == null ? 0 : this.zzbwZ.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zza zzNB() {
            this.zzbwn = null;
            this.zzbwX = null;
            this.zzbwY = null;
            this.zzbwZ = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zza zzP(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW != 8) {
                    zzbyj zzbyj;
                    if (zzaeW == 18) {
                        if (this.zzbwX == null) {
                            this.zzbwX = new zzf();
                        }
                        zzbyj = this.zzbwX;
                    } else if (zzaeW == 26) {
                        if (this.zzbwY == null) {
                            this.zzbwY = new zzf();
                        }
                        zzbyj = this.zzbwY;
                    } else if (zzaeW == 32) {
                        this.zzbwZ = Boolean.valueOf(zzbyb.zzafc());
                    } else if (!super.zza(zzbyb, zzaeW)) {
                        return this;
                    }
                    zzbyb.zza(zzbyj);
                } else {
                    this.zzbwn = Integer.valueOf(zzbyb.zzafa());
                }
            }
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbwn != null) {
                zzbyc.zzJ(1, this.zzbwn.intValue());
            }
            if (this.zzbwX != null) {
                zzbyc.zza(2, this.zzbwX);
            }
            if (this.zzbwY != null) {
                zzbyc.zza(3, this.zzbwY);
            }
            if (this.zzbwZ != null) {
                zzbyc.zzg(4, this.zzbwZ.booleanValue());
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzP(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbwn != null) {
                zzu += zzbyc.zzL(1, this.zzbwn.intValue());
            }
            if (this.zzbwX != null) {
                zzu += zzbyc.zzc(2, this.zzbwX);
            }
            if (this.zzbwY != null) {
                zzu += zzbyc.zzc(3, this.zzbwY);
            }
            return this.zzbwZ != null ? zzu + zzbyc.zzh(4, this.zzbwZ.booleanValue()) : zzu;
        }
    }

    public static final class zzb extends zzbyd<zzb> {
        private static volatile zzb[] zzbxa;
        public Integer count;
        public String name;
        public zzc[] zzbxb;
        public Long zzbxc;
        public Long zzbxd;

        public zzb() {
            zzND();
        }

        public static zzb[] zzNC() {
            if (zzbxa == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbxa == null) {
                        zzbxa = new zzb[0];
                    }
                }
            }
            return zzbxa;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzb = (zzb) obj;
            if (!zzbyh.equals(this.zzbxb, zzb.zzbxb)) {
                return false;
            }
            if (this.name == null) {
                if (zzb.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzb.name)) {
                return false;
            }
            if (this.zzbxc == null) {
                if (zzb.zzbxc != null) {
                    return false;
                }
            } else if (!this.zzbxc.equals(zzb.zzbxc)) {
                return false;
            }
            if (this.zzbxd == null) {
                if (zzb.zzbxd != null) {
                    return false;
                }
            } else if (!this.zzbxd.equals(zzb.zzbxd)) {
                return false;
            }
            if (this.count == null) {
                if (zzb.count != null) {
                    return false;
                }
            } else if (!this.count.equals(zzb.count)) {
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
            int hashCode = (((((((((((527 + getClass().getName().hashCode()) * 31) + zzbyh.hashCode(this.zzbxb)) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzbxc == null ? 0 : this.zzbxc.hashCode())) * 31) + (this.zzbxd == null ? 0 : this.zzbxd.hashCode())) * 31) + (this.count == null ? 0 : this.count.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zzb zzND() {
            this.zzbxb = zzc.zzNE();
            this.name = null;
            this.zzbxc = null;
            this.zzbxd = null;
            this.count = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zzb zzQ(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    zzaeW = zzbym.zzb(zzbyb, 10);
                    int length = this.zzbxb == null ? 0 : this.zzbxb.length;
                    Object obj = new zzc[(zzaeW + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzbxb, 0, obj, 0, length);
                    }
                    while (length < obj.length - 1) {
                        obj[length] = new zzc();
                        zzbyb.zza(obj[length]);
                        zzbyb.zzaeW();
                        length++;
                    }
                    obj[length] = new zzc();
                    zzbyb.zza(obj[length]);
                    this.zzbxb = obj;
                } else if (zzaeW == 18) {
                    this.name = zzbyb.readString();
                } else if (zzaeW == 24) {
                    this.zzbxc = Long.valueOf(zzbyb.zzaeZ());
                } else if (zzaeW == 32) {
                    this.zzbxd = Long.valueOf(zzbyb.zzaeZ());
                } else if (zzaeW == 40) {
                    this.count = Integer.valueOf(zzbyb.zzafa());
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbxb != null && this.zzbxb.length > 0) {
                for (zzbyj zzbyj : this.zzbxb) {
                    if (zzbyj != null) {
                        zzbyc.zza(1, zzbyj);
                    }
                }
            }
            if (this.name != null) {
                zzbyc.zzq(2, this.name);
            }
            if (this.zzbxc != null) {
                zzbyc.zzb(3, this.zzbxc.longValue());
            }
            if (this.zzbxd != null) {
                zzbyc.zzb(4, this.zzbxd.longValue());
            }
            if (this.count != null) {
                zzbyc.zzJ(5, this.count.intValue());
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzQ(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbxb != null && this.zzbxb.length > 0) {
                for (zzbyj zzbyj : this.zzbxb) {
                    if (zzbyj != null) {
                        zzu += zzbyc.zzc(1, zzbyj);
                    }
                }
            }
            if (this.name != null) {
                zzu += zzbyc.zzr(2, this.name);
            }
            if (this.zzbxc != null) {
                zzu += zzbyc.zzf(3, this.zzbxc.longValue());
            }
            if (this.zzbxd != null) {
                zzu += zzbyc.zzf(4, this.zzbxd.longValue());
            }
            return this.count != null ? zzu + zzbyc.zzL(5, this.count.intValue()) : zzu;
        }
    }

    public static final class zzc extends zzbyd<zzc> {
        private static volatile zzc[] zzbxe;
        public String name;
        public String zzaGV;
        public Float zzbwh;
        public Double zzbwi;
        public Long zzbxf;

        public zzc() {
            zzNF();
        }

        public static zzc[] zzNE() {
            if (zzbxe == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbxe == null) {
                        zzbxe = new zzc[0];
                    }
                }
            }
            return zzbxe;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzc = (zzc) obj;
            if (this.name == null) {
                if (zzc.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzc.name)) {
                return false;
            }
            if (this.zzaGV == null) {
                if (zzc.zzaGV != null) {
                    return false;
                }
            } else if (!this.zzaGV.equals(zzc.zzaGV)) {
                return false;
            }
            if (this.zzbxf == null) {
                if (zzc.zzbxf != null) {
                    return false;
                }
            } else if (!this.zzbxf.equals(zzc.zzbxf)) {
                return false;
            }
            if (this.zzbwh == null) {
                if (zzc.zzbwh != null) {
                    return false;
                }
            } else if (!this.zzbwh.equals(zzc.zzbwh)) {
                return false;
            }
            if (this.zzbwi == null) {
                if (zzc.zzbwi != null) {
                    return false;
                }
            } else if (!this.zzbwi.equals(zzc.zzbwi)) {
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
            int hashCode = (((((((((((527 + getClass().getName().hashCode()) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzaGV == null ? 0 : this.zzaGV.hashCode())) * 31) + (this.zzbxf == null ? 0 : this.zzbxf.hashCode())) * 31) + (this.zzbwh == null ? 0 : this.zzbwh.hashCode())) * 31) + (this.zzbwi == null ? 0 : this.zzbwi.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zzc zzNF() {
            this.name = null;
            this.zzaGV = null;
            this.zzbxf = null;
            this.zzbwh = null;
            this.zzbwi = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zzc zzR(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    this.name = zzbyb.readString();
                } else if (zzaeW == 18) {
                    this.zzaGV = zzbyb.readString();
                } else if (zzaeW == 24) {
                    this.zzbxf = Long.valueOf(zzbyb.zzaeZ());
                } else if (zzaeW == 37) {
                    this.zzbwh = Float.valueOf(zzbyb.readFloat());
                } else if (zzaeW == 41) {
                    this.zzbwi = Double.valueOf(zzbyb.readDouble());
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.name != null) {
                zzbyc.zzq(1, this.name);
            }
            if (this.zzaGV != null) {
                zzbyc.zzq(2, this.zzaGV);
            }
            if (this.zzbxf != null) {
                zzbyc.zzb(3, this.zzbxf.longValue());
            }
            if (this.zzbwh != null) {
                zzbyc.zzc(4, this.zzbwh.floatValue());
            }
            if (this.zzbwi != null) {
                zzbyc.zza(5, this.zzbwi.doubleValue());
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzR(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.name != null) {
                zzu += zzbyc.zzr(1, this.name);
            }
            if (this.zzaGV != null) {
                zzu += zzbyc.zzr(2, this.zzaGV);
            }
            if (this.zzbxf != null) {
                zzu += zzbyc.zzf(3, this.zzbxf.longValue());
            }
            if (this.zzbwh != null) {
                zzu += zzbyc.zzd(4, this.zzbwh.floatValue());
            }
            return this.zzbwi != null ? zzu + zzbyc.zzb(5, this.zzbwi.doubleValue()) : zzu;
        }
    }

    public static final class zzd extends zzbyd<zzd> {
        public zze[] zzbxg;

        public zzd() {
            zzNG();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzd = (zzd) obj;
            if (!zzbyh.equals(this.zzbxg, zzd.zzbxg)) {
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
            int hashCode;
            int hashCode2 = (((527 + getClass().getName().hashCode()) * 31) + zzbyh.hashCode(this.zzbxg)) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    hashCode = this.zzcwC.hashCode();
                    return hashCode2 + hashCode;
                }
            }
            hashCode = 0;
            return hashCode2 + hashCode;
        }

        public final zzd zzNG() {
            this.zzbxg = zze.zzNH();
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zzd zzS(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    zzaeW = zzbym.zzb(zzbyb, 10);
                    int length = this.zzbxg == null ? 0 : this.zzbxg.length;
                    Object obj = new zze[(zzaeW + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzbxg, 0, obj, 0, length);
                    }
                    while (length < obj.length - 1) {
                        obj[length] = new zze();
                        zzbyb.zza(obj[length]);
                        zzbyb.zzaeW();
                        length++;
                    }
                    obj[length] = new zze();
                    zzbyb.zza(obj[length]);
                    this.zzbxg = obj;
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbxg != null && this.zzbxg.length > 0) {
                for (zzbyj zzbyj : this.zzbxg) {
                    if (zzbyj != null) {
                        zzbyc.zza(1, zzbyj);
                    }
                }
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzS(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbxg != null && this.zzbxg.length > 0) {
                for (zzbyj zzbyj : this.zzbxg) {
                    if (zzbyj != null) {
                        zzu += zzbyc.zzc(1, zzbyj);
                    }
                }
            }
            return zzu;
        }
    }

    public static final class zze extends zzbyd<zze> {
        private static volatile zze[] zzbxh;
        public String zzaS;
        public String zzbb;
        public String zzbhN;
        public String zzbqK;
        public String zzbqL;
        public String zzbqO;
        public String zzbqS;
        public Integer zzbxA;
        public Boolean zzbxB;
        public zza[] zzbxC;
        public Integer zzbxD;
        public Integer zzbxE;
        public Integer zzbxF;
        public String zzbxG;
        public Long zzbxH;
        public Long zzbxI;
        public Integer zzbxi;
        public zzb[] zzbxj;
        public zzg[] zzbxk;
        public Long zzbxl;
        public Long zzbxm;
        public Long zzbxn;
        public Long zzbxo;
        public Long zzbxp;
        public String zzbxq;
        public String zzbxr;
        public String zzbxs;
        public Integer zzbxt;
        public Long zzbxu;
        public Long zzbxv;
        public String zzbxw;
        public Boolean zzbxx;
        public String zzbxy;
        public Long zzbxz;

        public zze() {
            zzNI();
        }

        public static zze[] zzNH() {
            if (zzbxh == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbxh == null) {
                        zzbxh = new zze[0];
                    }
                }
            }
            return zzbxh;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zze = (zze) obj;
            if (this.zzbxi == null) {
                if (zze.zzbxi != null) {
                    return false;
                }
            } else if (!this.zzbxi.equals(zze.zzbxi)) {
                return false;
            }
            if (!zzbyh.equals(this.zzbxj, zze.zzbxj) || !zzbyh.equals(this.zzbxk, zze.zzbxk)) {
                return false;
            }
            if (this.zzbxl == null) {
                if (zze.zzbxl != null) {
                    return false;
                }
            } else if (!this.zzbxl.equals(zze.zzbxl)) {
                return false;
            }
            if (this.zzbxm == null) {
                if (zze.zzbxm != null) {
                    return false;
                }
            } else if (!this.zzbxm.equals(zze.zzbxm)) {
                return false;
            }
            if (this.zzbxn == null) {
                if (zze.zzbxn != null) {
                    return false;
                }
            } else if (!this.zzbxn.equals(zze.zzbxn)) {
                return false;
            }
            if (this.zzbxo == null) {
                if (zze.zzbxo != null) {
                    return false;
                }
            } else if (!this.zzbxo.equals(zze.zzbxo)) {
                return false;
            }
            if (this.zzbxp == null) {
                if (zze.zzbxp != null) {
                    return false;
                }
            } else if (!this.zzbxp.equals(zze.zzbxp)) {
                return false;
            }
            if (this.zzbxq == null) {
                if (zze.zzbxq != null) {
                    return false;
                }
            } else if (!this.zzbxq.equals(zze.zzbxq)) {
                return false;
            }
            if (this.zzbb == null) {
                if (zze.zzbb != null) {
                    return false;
                }
            } else if (!this.zzbb.equals(zze.zzbb)) {
                return false;
            }
            if (this.zzbxr == null) {
                if (zze.zzbxr != null) {
                    return false;
                }
            } else if (!this.zzbxr.equals(zze.zzbxr)) {
                return false;
            }
            if (this.zzbxs == null) {
                if (zze.zzbxs != null) {
                    return false;
                }
            } else if (!this.zzbxs.equals(zze.zzbxs)) {
                return false;
            }
            if (this.zzbxt == null) {
                if (zze.zzbxt != null) {
                    return false;
                }
            } else if (!this.zzbxt.equals(zze.zzbxt)) {
                return false;
            }
            if (this.zzbqL == null) {
                if (zze.zzbqL != null) {
                    return false;
                }
            } else if (!this.zzbqL.equals(zze.zzbqL)) {
                return false;
            }
            if (this.zzaS == null) {
                if (zze.zzaS != null) {
                    return false;
                }
            } else if (!this.zzaS.equals(zze.zzaS)) {
                return false;
            }
            if (this.zzbhN == null) {
                if (zze.zzbhN != null) {
                    return false;
                }
            } else if (!this.zzbhN.equals(zze.zzbhN)) {
                return false;
            }
            if (this.zzbxu == null) {
                if (zze.zzbxu != null) {
                    return false;
                }
            } else if (!this.zzbxu.equals(zze.zzbxu)) {
                return false;
            }
            if (this.zzbxv == null) {
                if (zze.zzbxv != null) {
                    return false;
                }
            } else if (!this.zzbxv.equals(zze.zzbxv)) {
                return false;
            }
            if (this.zzbxw == null) {
                if (zze.zzbxw != null) {
                    return false;
                }
            } else if (!this.zzbxw.equals(zze.zzbxw)) {
                return false;
            }
            if (this.zzbxx == null) {
                if (zze.zzbxx != null) {
                    return false;
                }
            } else if (!this.zzbxx.equals(zze.zzbxx)) {
                return false;
            }
            if (this.zzbxy == null) {
                if (zze.zzbxy != null) {
                    return false;
                }
            } else if (!this.zzbxy.equals(zze.zzbxy)) {
                return false;
            }
            if (this.zzbxz == null) {
                if (zze.zzbxz != null) {
                    return false;
                }
            } else if (!this.zzbxz.equals(zze.zzbxz)) {
                return false;
            }
            if (this.zzbxA == null) {
                if (zze.zzbxA != null) {
                    return false;
                }
            } else if (!this.zzbxA.equals(zze.zzbxA)) {
                return false;
            }
            if (this.zzbqO == null) {
                if (zze.zzbqO != null) {
                    return false;
                }
            } else if (!this.zzbqO.equals(zze.zzbqO)) {
                return false;
            }
            if (this.zzbqK == null) {
                if (zze.zzbqK != null) {
                    return false;
                }
            } else if (!this.zzbqK.equals(zze.zzbqK)) {
                return false;
            }
            if (this.zzbxB == null) {
                if (zze.zzbxB != null) {
                    return false;
                }
            } else if (!this.zzbxB.equals(zze.zzbxB)) {
                return false;
            }
            if (!zzbyh.equals(this.zzbxC, zze.zzbxC)) {
                return false;
            }
            if (this.zzbqS == null) {
                if (zze.zzbqS != null) {
                    return false;
                }
            } else if (!this.zzbqS.equals(zze.zzbqS)) {
                return false;
            }
            if (this.zzbxD == null) {
                if (zze.zzbxD != null) {
                    return false;
                }
            } else if (!this.zzbxD.equals(zze.zzbxD)) {
                return false;
            }
            if (this.zzbxE == null) {
                if (zze.zzbxE != null) {
                    return false;
                }
            } else if (!this.zzbxE.equals(zze.zzbxE)) {
                return false;
            }
            if (this.zzbxF == null) {
                if (zze.zzbxF != null) {
                    return false;
                }
            } else if (!this.zzbxF.equals(zze.zzbxF)) {
                return false;
            }
            if (this.zzbxG == null) {
                if (zze.zzbxG != null) {
                    return false;
                }
            } else if (!this.zzbxG.equals(zze.zzbxG)) {
                return false;
            }
            if (this.zzbxH == null) {
                if (zze.zzbxH != null) {
                    return false;
                }
            } else if (!this.zzbxH.equals(zze.zzbxH)) {
                return false;
            }
            if (this.zzbxI == null) {
                if (zze.zzbxI != null) {
                    return false;
                }
            } else if (!this.zzbxI.equals(zze.zzbxI)) {
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
            int hashCode = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((527 + getClass().getName().hashCode()) * 31) + (this.zzbxi == null ? 0 : this.zzbxi.hashCode())) * 31) + zzbyh.hashCode(this.zzbxj)) * 31) + zzbyh.hashCode(this.zzbxk)) * 31) + (this.zzbxl == null ? 0 : this.zzbxl.hashCode())) * 31) + (this.zzbxm == null ? 0 : this.zzbxm.hashCode())) * 31) + (this.zzbxn == null ? 0 : this.zzbxn.hashCode())) * 31) + (this.zzbxo == null ? 0 : this.zzbxo.hashCode())) * 31) + (this.zzbxp == null ? 0 : this.zzbxp.hashCode())) * 31) + (this.zzbxq == null ? 0 : this.zzbxq.hashCode())) * 31) + (this.zzbb == null ? 0 : this.zzbb.hashCode())) * 31) + (this.zzbxr == null ? 0 : this.zzbxr.hashCode())) * 31) + (this.zzbxs == null ? 0 : this.zzbxs.hashCode())) * 31) + (this.zzbxt == null ? 0 : this.zzbxt.hashCode())) * 31) + (this.zzbqL == null ? 0 : this.zzbqL.hashCode())) * 31) + (this.zzaS == null ? 0 : this.zzaS.hashCode())) * 31) + (this.zzbhN == null ? 0 : this.zzbhN.hashCode())) * 31) + (this.zzbxu == null ? 0 : this.zzbxu.hashCode())) * 31) + (this.zzbxv == null ? 0 : this.zzbxv.hashCode())) * 31) + (this.zzbxw == null ? 0 : this.zzbxw.hashCode())) * 31) + (this.zzbxx == null ? 0 : this.zzbxx.hashCode())) * 31) + (this.zzbxy == null ? 0 : this.zzbxy.hashCode())) * 31) + (this.zzbxz == null ? 0 : this.zzbxz.hashCode())) * 31) + (this.zzbxA == null ? 0 : this.zzbxA.hashCode())) * 31) + (this.zzbqO == null ? 0 : this.zzbqO.hashCode())) * 31) + (this.zzbqK == null ? 0 : this.zzbqK.hashCode())) * 31) + (this.zzbxB == null ? 0 : this.zzbxB.hashCode())) * 31) + zzbyh.hashCode(this.zzbxC)) * 31) + (this.zzbqS == null ? 0 : this.zzbqS.hashCode())) * 31) + (this.zzbxD == null ? 0 : this.zzbxD.hashCode())) * 31) + (this.zzbxE == null ? 0 : this.zzbxE.hashCode())) * 31) + (this.zzbxF == null ? 0 : this.zzbxF.hashCode())) * 31) + (this.zzbxG == null ? 0 : this.zzbxG.hashCode())) * 31) + (this.zzbxH == null ? 0 : this.zzbxH.hashCode())) * 31) + (this.zzbxI == null ? 0 : this.zzbxI.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zze zzNI() {
            this.zzbxi = null;
            this.zzbxj = zzb.zzNC();
            this.zzbxk = zzg.zzNK();
            this.zzbxl = null;
            this.zzbxm = null;
            this.zzbxn = null;
            this.zzbxo = null;
            this.zzbxp = null;
            this.zzbxq = null;
            this.zzbb = null;
            this.zzbxr = null;
            this.zzbxs = null;
            this.zzbxt = null;
            this.zzbqL = null;
            this.zzaS = null;
            this.zzbhN = null;
            this.zzbxu = null;
            this.zzbxv = null;
            this.zzbxw = null;
            this.zzbxx = null;
            this.zzbxy = null;
            this.zzbxz = null;
            this.zzbxA = null;
            this.zzbqO = null;
            this.zzbqK = null;
            this.zzbxB = null;
            this.zzbxC = zza.zzNA();
            this.zzbqS = null;
            this.zzbxD = null;
            this.zzbxE = null;
            this.zzbxF = null;
            this.zzbxG = null;
            this.zzbxH = null;
            this.zzbxI = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zze zzT(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                int length;
                Object obj;
                switch (zzaeW) {
                    case 0:
                        return this;
                    case 8:
                        this.zzbxi = Integer.valueOf(zzbyb.zzafa());
                        break;
                    case 18:
                        zzaeW = zzbym.zzb(zzbyb, 18);
                        length = this.zzbxj == null ? 0 : this.zzbxj.length;
                        obj = new zzb[(zzaeW + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzbxj, 0, obj, 0, length);
                        }
                        while (length < obj.length - 1) {
                            obj[length] = new zzb();
                            zzbyb.zza(obj[length]);
                            zzbyb.zzaeW();
                            length++;
                        }
                        obj[length] = new zzb();
                        zzbyb.zza(obj[length]);
                        this.zzbxj = obj;
                        break;
                    case 26:
                        zzaeW = zzbym.zzb(zzbyb, 26);
                        length = this.zzbxk == null ? 0 : this.zzbxk.length;
                        obj = new zzg[(zzaeW + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzbxk, 0, obj, 0, length);
                        }
                        while (length < obj.length - 1) {
                            obj[length] = new zzg();
                            zzbyb.zza(obj[length]);
                            zzbyb.zzaeW();
                            length++;
                        }
                        obj[length] = new zzg();
                        zzbyb.zza(obj[length]);
                        this.zzbxk = obj;
                        break;
                    case 32:
                        this.zzbxl = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 40:
                        this.zzbxm = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 48:
                        this.zzbxn = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 56:
                        this.zzbxp = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 66:
                        this.zzbxq = zzbyb.readString();
                        break;
                    case 74:
                        this.zzbb = zzbyb.readString();
                        break;
                    case 82:
                        this.zzbxr = zzbyb.readString();
                        break;
                    case 90:
                        this.zzbxs = zzbyb.readString();
                        break;
                    case 96:
                        this.zzbxt = Integer.valueOf(zzbyb.zzafa());
                        break;
                    case 106:
                        this.zzbqL = zzbyb.readString();
                        break;
                    case 114:
                        this.zzaS = zzbyb.readString();
                        break;
                    case 130:
                        this.zzbhN = zzbyb.readString();
                        break;
                    case 136:
                        this.zzbxu = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 144:
                        this.zzbxv = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 154:
                        this.zzbxw = zzbyb.readString();
                        break;
                    case 160:
                        this.zzbxx = Boolean.valueOf(zzbyb.zzafc());
                        break;
                    case 170:
                        this.zzbxy = zzbyb.readString();
                        break;
                    case 176:
                        this.zzbxz = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 184:
                        this.zzbxA = Integer.valueOf(zzbyb.zzafa());
                        break;
                    case 194:
                        this.zzbqO = zzbyb.readString();
                        break;
                    case 202:
                        this.zzbqK = zzbyb.readString();
                        break;
                    case 208:
                        this.zzbxo = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 224:
                        this.zzbxB = Boolean.valueOf(zzbyb.zzafc());
                        break;
                    case 234:
                        zzaeW = zzbym.zzb(zzbyb, 234);
                        length = this.zzbxC == null ? 0 : this.zzbxC.length;
                        obj = new zza[(zzaeW + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzbxC, 0, obj, 0, length);
                        }
                        while (length < obj.length - 1) {
                            obj[length] = new zza();
                            zzbyb.zza(obj[length]);
                            zzbyb.zzaeW();
                            length++;
                        }
                        obj[length] = new zza();
                        zzbyb.zza(obj[length]);
                        this.zzbxC = obj;
                        break;
                    case 242:
                        this.zzbqS = zzbyb.readString();
                        break;
                    case 248:
                        this.zzbxD = Integer.valueOf(zzbyb.zzafa());
                        break;
                    case 256:
                        this.zzbxE = Integer.valueOf(zzbyb.zzafa());
                        break;
                    case 264:
                        this.zzbxF = Integer.valueOf(zzbyb.zzafa());
                        break;
                    case 274:
                        this.zzbxG = zzbyb.readString();
                        break;
                    case 280:
                        this.zzbxH = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 288:
                        this.zzbxI = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    default:
                        if (super.zza(zzbyb, zzaeW)) {
                            break;
                        }
                        return this;
                }
            }
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbxi != null) {
                zzbyc.zzJ(1, this.zzbxi.intValue());
            }
            int i = 0;
            if (this.zzbxj != null && this.zzbxj.length > 0) {
                for (zzbyj zzbyj : this.zzbxj) {
                    if (zzbyj != null) {
                        zzbyc.zza(2, zzbyj);
                    }
                }
            }
            if (this.zzbxk != null && this.zzbxk.length > 0) {
                for (zzbyj zzbyj2 : this.zzbxk) {
                    if (zzbyj2 != null) {
                        zzbyc.zza(3, zzbyj2);
                    }
                }
            }
            if (this.zzbxl != null) {
                zzbyc.zzb(4, this.zzbxl.longValue());
            }
            if (this.zzbxm != null) {
                zzbyc.zzb(5, this.zzbxm.longValue());
            }
            if (this.zzbxn != null) {
                zzbyc.zzb(6, this.zzbxn.longValue());
            }
            if (this.zzbxp != null) {
                zzbyc.zzb(7, this.zzbxp.longValue());
            }
            if (this.zzbxq != null) {
                zzbyc.zzq(8, this.zzbxq);
            }
            if (this.zzbb != null) {
                zzbyc.zzq(9, this.zzbb);
            }
            if (this.zzbxr != null) {
                zzbyc.zzq(10, this.zzbxr);
            }
            if (this.zzbxs != null) {
                zzbyc.zzq(11, this.zzbxs);
            }
            if (this.zzbxt != null) {
                zzbyc.zzJ(12, this.zzbxt.intValue());
            }
            if (this.zzbqL != null) {
                zzbyc.zzq(13, this.zzbqL);
            }
            if (this.zzaS != null) {
                zzbyc.zzq(14, this.zzaS);
            }
            if (this.zzbhN != null) {
                zzbyc.zzq(16, this.zzbhN);
            }
            if (this.zzbxu != null) {
                zzbyc.zzb(17, this.zzbxu.longValue());
            }
            if (this.zzbxv != null) {
                zzbyc.zzb(18, this.zzbxv.longValue());
            }
            if (this.zzbxw != null) {
                zzbyc.zzq(19, this.zzbxw);
            }
            if (this.zzbxx != null) {
                zzbyc.zzg(20, this.zzbxx.booleanValue());
            }
            if (this.zzbxy != null) {
                zzbyc.zzq(21, this.zzbxy);
            }
            if (this.zzbxz != null) {
                zzbyc.zzb(22, this.zzbxz.longValue());
            }
            if (this.zzbxA != null) {
                zzbyc.zzJ(23, this.zzbxA.intValue());
            }
            if (this.zzbqO != null) {
                zzbyc.zzq(24, this.zzbqO);
            }
            if (this.zzbqK != null) {
                zzbyc.zzq(25, this.zzbqK);
            }
            if (this.zzbxo != null) {
                zzbyc.zzb(26, this.zzbxo.longValue());
            }
            if (this.zzbxB != null) {
                zzbyc.zzg(28, this.zzbxB.booleanValue());
            }
            if (this.zzbxC != null && this.zzbxC.length > 0) {
                while (i < this.zzbxC.length) {
                    zzbyj zzbyj3 = this.zzbxC[i];
                    if (zzbyj3 != null) {
                        zzbyc.zza(29, zzbyj3);
                    }
                    i++;
                }
            }
            if (this.zzbqS != null) {
                zzbyc.zzq(30, this.zzbqS);
            }
            if (this.zzbxD != null) {
                zzbyc.zzJ(31, this.zzbxD.intValue());
            }
            if (this.zzbxE != null) {
                zzbyc.zzJ(32, this.zzbxE.intValue());
            }
            if (this.zzbxF != null) {
                zzbyc.zzJ(33, this.zzbxF.intValue());
            }
            if (this.zzbxG != null) {
                zzbyc.zzq(34, this.zzbxG);
            }
            if (this.zzbxH != null) {
                zzbyc.zzb(35, this.zzbxH.longValue());
            }
            if (this.zzbxI != null) {
                zzbyc.zzb(36, this.zzbxI.longValue());
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzT(zzbyb);
        }

        protected final int zzu() {
            int i;
            int zzu = super.zzu();
            if (this.zzbxi != null) {
                zzu += zzbyc.zzL(1, this.zzbxi.intValue());
            }
            int i2 = 0;
            if (this.zzbxj != null && this.zzbxj.length > 0) {
                i = zzu;
                for (zzbyj zzbyj : this.zzbxj) {
                    if (zzbyj != null) {
                        i += zzbyc.zzc(2, zzbyj);
                    }
                }
                zzu = i;
            }
            if (this.zzbxk != null && this.zzbxk.length > 0) {
                i = zzu;
                for (zzbyj zzbyj2 : this.zzbxk) {
                    if (zzbyj2 != null) {
                        i += zzbyc.zzc(3, zzbyj2);
                    }
                }
                zzu = i;
            }
            if (this.zzbxl != null) {
                zzu += zzbyc.zzf(4, this.zzbxl.longValue());
            }
            if (this.zzbxm != null) {
                zzu += zzbyc.zzf(5, this.zzbxm.longValue());
            }
            if (this.zzbxn != null) {
                zzu += zzbyc.zzf(6, this.zzbxn.longValue());
            }
            if (this.zzbxp != null) {
                zzu += zzbyc.zzf(7, this.zzbxp.longValue());
            }
            if (this.zzbxq != null) {
                zzu += zzbyc.zzr(8, this.zzbxq);
            }
            if (this.zzbb != null) {
                zzu += zzbyc.zzr(9, this.zzbb);
            }
            if (this.zzbxr != null) {
                zzu += zzbyc.zzr(10, this.zzbxr);
            }
            if (this.zzbxs != null) {
                zzu += zzbyc.zzr(11, this.zzbxs);
            }
            if (this.zzbxt != null) {
                zzu += zzbyc.zzL(12, this.zzbxt.intValue());
            }
            if (this.zzbqL != null) {
                zzu += zzbyc.zzr(13, this.zzbqL);
            }
            if (this.zzaS != null) {
                zzu += zzbyc.zzr(14, this.zzaS);
            }
            if (this.zzbhN != null) {
                zzu += zzbyc.zzr(16, this.zzbhN);
            }
            if (this.zzbxu != null) {
                zzu += zzbyc.zzf(17, this.zzbxu.longValue());
            }
            if (this.zzbxv != null) {
                zzu += zzbyc.zzf(18, this.zzbxv.longValue());
            }
            if (this.zzbxw != null) {
                zzu += zzbyc.zzr(19, this.zzbxw);
            }
            if (this.zzbxx != null) {
                zzu += zzbyc.zzh(20, this.zzbxx.booleanValue());
            }
            if (this.zzbxy != null) {
                zzu += zzbyc.zzr(21, this.zzbxy);
            }
            if (this.zzbxz != null) {
                zzu += zzbyc.zzf(22, this.zzbxz.longValue());
            }
            if (this.zzbxA != null) {
                zzu += zzbyc.zzL(23, this.zzbxA.intValue());
            }
            if (this.zzbqO != null) {
                zzu += zzbyc.zzr(24, this.zzbqO);
            }
            if (this.zzbqK != null) {
                zzu += zzbyc.zzr(25, this.zzbqK);
            }
            if (this.zzbxo != null) {
                zzu += zzbyc.zzf(26, this.zzbxo.longValue());
            }
            if (this.zzbxB != null) {
                zzu += zzbyc.zzh(28, this.zzbxB.booleanValue());
            }
            if (this.zzbxC != null && this.zzbxC.length > 0) {
                while (i2 < this.zzbxC.length) {
                    zzbyj zzbyj3 = this.zzbxC[i2];
                    if (zzbyj3 != null) {
                        zzu += zzbyc.zzc(29, zzbyj3);
                    }
                    i2++;
                }
            }
            if (this.zzbqS != null) {
                zzu += zzbyc.zzr(30, this.zzbqS);
            }
            if (this.zzbxD != null) {
                zzu += zzbyc.zzL(31, this.zzbxD.intValue());
            }
            if (this.zzbxE != null) {
                zzu += zzbyc.zzL(32, this.zzbxE.intValue());
            }
            if (this.zzbxF != null) {
                zzu += zzbyc.zzL(33, this.zzbxF.intValue());
            }
            if (this.zzbxG != null) {
                zzu += zzbyc.zzr(34, this.zzbxG);
            }
            if (this.zzbxH != null) {
                zzu += zzbyc.zzf(35, this.zzbxH.longValue());
            }
            return this.zzbxI != null ? zzu + zzbyc.zzf(36, this.zzbxI.longValue()) : zzu;
        }
    }

    public static final class zzf extends zzbyd<zzf> {
        public long[] zzbxJ;
        public long[] zzbxK;

        public zzf() {
            zzNJ();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzf = (zzf) obj;
            if (!zzbyh.equals(this.zzbxJ, zzf.zzbxJ) || !zzbyh.equals(this.zzbxK, zzf.zzbxK)) {
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
            int hashCode2 = (((((527 + getClass().getName().hashCode()) * 31) + zzbyh.hashCode(this.zzbxJ)) * 31) + zzbyh.hashCode(this.zzbxK)) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    hashCode = this.zzcwC.hashCode();
                    return hashCode2 + hashCode;
                }
            }
            hashCode = 0;
            return hashCode2 + hashCode;
        }

        public final zzf zzNJ() {
            this.zzbxJ = zzbym.zzcwR;
            this.zzbxK = zzbym.zzcwR;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zzf zzU(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                int position;
                Object obj;
                if (zzaeW != 8) {
                    int i;
                    Object obj2;
                    if (zzaeW == 10) {
                        zzaeW = zzbyb.zzrf(zzbyb.zzaff());
                        position = zzbyb.getPosition();
                        i = 0;
                        while (zzbyb.zzafk() > 0) {
                            zzbyb.zzaeY();
                            i++;
                        }
                        zzbyb.zzrh(position);
                        position = this.zzbxJ == null ? 0 : this.zzbxJ.length;
                        obj2 = new long[(i + position)];
                        if (position != 0) {
                            System.arraycopy(this.zzbxJ, 0, obj2, 0, position);
                        }
                        while (position < obj2.length) {
                            obj2[position] = zzbyb.zzaeY();
                            position++;
                        }
                        this.zzbxJ = obj2;
                    } else if (zzaeW == 16) {
                        zzaeW = zzbym.zzb(zzbyb, 16);
                        position = this.zzbxK == null ? 0 : this.zzbxK.length;
                        obj = new long[(zzaeW + position)];
                        if (position != 0) {
                            System.arraycopy(this.zzbxK, 0, obj, 0, position);
                        }
                        while (position < obj.length - 1) {
                            obj[position] = zzbyb.zzaeY();
                            zzbyb.zzaeW();
                            position++;
                        }
                        obj[position] = zzbyb.zzaeY();
                        this.zzbxK = obj;
                    } else if (zzaeW == 18) {
                        zzaeW = zzbyb.zzrf(zzbyb.zzaff());
                        position = zzbyb.getPosition();
                        i = 0;
                        while (zzbyb.zzafk() > 0) {
                            zzbyb.zzaeY();
                            i++;
                        }
                        zzbyb.zzrh(position);
                        position = this.zzbxK == null ? 0 : this.zzbxK.length;
                        obj2 = new long[(i + position)];
                        if (position != 0) {
                            System.arraycopy(this.zzbxK, 0, obj2, 0, position);
                        }
                        while (position < obj2.length) {
                            obj2[position] = zzbyb.zzaeY();
                            position++;
                        }
                        this.zzbxK = obj2;
                    } else if (!super.zza(zzbyb, zzaeW)) {
                        return this;
                    }
                    zzbyb.zzrg(zzaeW);
                } else {
                    zzaeW = zzbym.zzb(zzbyb, 8);
                    position = this.zzbxJ == null ? 0 : this.zzbxJ.length;
                    obj = new long[(zzaeW + position)];
                    if (position != 0) {
                        System.arraycopy(this.zzbxJ, 0, obj, 0, position);
                    }
                    while (position < obj.length - 1) {
                        obj[position] = zzbyb.zzaeY();
                        zzbyb.zzaeW();
                        position++;
                    }
                    obj[position] = zzbyb.zzaeY();
                    this.zzbxJ = obj;
                }
            }
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            int i = 0;
            if (this.zzbxJ != null && this.zzbxJ.length > 0) {
                for (long zza : this.zzbxJ) {
                    zzbyc.zza(1, zza);
                }
            }
            if (this.zzbxK != null && this.zzbxK.length > 0) {
                while (i < this.zzbxK.length) {
                    zzbyc.zza(2, this.zzbxK[i]);
                    i++;
                }
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzU(zzbyb);
        }

        protected final int zzu() {
            int i;
            int zzu = super.zzu();
            int i2 = 0;
            if (this.zzbxJ != null && this.zzbxJ.length > 0) {
                i = 0;
                int i3 = i;
                while (i < this.zzbxJ.length) {
                    i3 += zzbyc.zzbp(this.zzbxJ[i]);
                    i++;
                }
                zzu = (zzu + i3) + (this.zzbxJ.length * 1);
            }
            if (this.zzbxK == null || this.zzbxK.length <= 0) {
                return zzu;
            }
            i = 0;
            while (i2 < this.zzbxK.length) {
                i += zzbyc.zzbp(this.zzbxK[i2]);
                i2++;
            }
            return (zzu + i) + (1 * this.zzbxK.length);
        }
    }

    public static final class zzg extends zzbyd<zzg> {
        private static volatile zzg[] zzbxL;
        public String name;
        public String zzaGV;
        public Float zzbwh;
        public Double zzbwi;
        public Long zzbxM;
        public Long zzbxf;

        public zzg() {
            zzNL();
        }

        public static zzg[] zzNK() {
            if (zzbxL == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbxL == null) {
                        zzbxL = new zzg[0];
                    }
                }
            }
            return zzbxL;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzg)) {
                return false;
            }
            zzg zzg = (zzg) obj;
            if (this.zzbxM == null) {
                if (zzg.zzbxM != null) {
                    return false;
                }
            } else if (!this.zzbxM.equals(zzg.zzbxM)) {
                return false;
            }
            if (this.name == null) {
                if (zzg.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzg.name)) {
                return false;
            }
            if (this.zzaGV == null) {
                if (zzg.zzaGV != null) {
                    return false;
                }
            } else if (!this.zzaGV.equals(zzg.zzaGV)) {
                return false;
            }
            if (this.zzbxf == null) {
                if (zzg.zzbxf != null) {
                    return false;
                }
            } else if (!this.zzbxf.equals(zzg.zzbxf)) {
                return false;
            }
            if (this.zzbwh == null) {
                if (zzg.zzbwh != null) {
                    return false;
                }
            } else if (!this.zzbwh.equals(zzg.zzbwh)) {
                return false;
            }
            if (this.zzbwi == null) {
                if (zzg.zzbwi != null) {
                    return false;
                }
            } else if (!this.zzbwi.equals(zzg.zzbwi)) {
                return false;
            }
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    return this.zzcwC.equals(zzg.zzcwC);
                }
            }
            return zzg.zzcwC == null || zzg.zzcwC.isEmpty();
        }

        public final int hashCode() {
            int i = 0;
            int hashCode = (((((((((((((527 + getClass().getName().hashCode()) * 31) + (this.zzbxM == null ? 0 : this.zzbxM.hashCode())) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzaGV == null ? 0 : this.zzaGV.hashCode())) * 31) + (this.zzbxf == null ? 0 : this.zzbxf.hashCode())) * 31) + (this.zzbwh == null ? 0 : this.zzbwh.hashCode())) * 31) + (this.zzbwi == null ? 0 : this.zzbwi.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zzg zzNL() {
            this.zzbxM = null;
            this.name = null;
            this.zzaGV = null;
            this.zzbxf = null;
            this.zzbwh = null;
            this.zzbwi = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zzg zzV(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 8) {
                    this.zzbxM = Long.valueOf(zzbyb.zzaeZ());
                } else if (zzaeW == 18) {
                    this.name = zzbyb.readString();
                } else if (zzaeW == 26) {
                    this.zzaGV = zzbyb.readString();
                } else if (zzaeW == 32) {
                    this.zzbxf = Long.valueOf(zzbyb.zzaeZ());
                } else if (zzaeW == 45) {
                    this.zzbwh = Float.valueOf(zzbyb.readFloat());
                } else if (zzaeW == 49) {
                    this.zzbwi = Double.valueOf(zzbyb.readDouble());
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbxM != null) {
                zzbyc.zzb(1, this.zzbxM.longValue());
            }
            if (this.name != null) {
                zzbyc.zzq(2, this.name);
            }
            if (this.zzaGV != null) {
                zzbyc.zzq(3, this.zzaGV);
            }
            if (this.zzbxf != null) {
                zzbyc.zzb(4, this.zzbxf.longValue());
            }
            if (this.zzbwh != null) {
                zzbyc.zzc(5, this.zzbwh.floatValue());
            }
            if (this.zzbwi != null) {
                zzbyc.zza(6, this.zzbwi.doubleValue());
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzV(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbxM != null) {
                zzu += zzbyc.zzf(1, this.zzbxM.longValue());
            }
            if (this.name != null) {
                zzu += zzbyc.zzr(2, this.name);
            }
            if (this.zzaGV != null) {
                zzu += zzbyc.zzr(3, this.zzaGV);
            }
            if (this.zzbxf != null) {
                zzu += zzbyc.zzf(4, this.zzbxf.longValue());
            }
            if (this.zzbwh != null) {
                zzu += zzbyc.zzd(5, this.zzbwh.floatValue());
            }
            return this.zzbwi != null ? zzu + zzbyc.zzb(6, this.zzbwi.doubleValue()) : zzu;
        }
    }
}
