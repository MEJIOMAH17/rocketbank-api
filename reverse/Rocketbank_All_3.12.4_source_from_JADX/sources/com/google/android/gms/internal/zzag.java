package com.google.android.gms.internal;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import java.io.IOException;
import ru.rocketbank.r2d2.root.feed.FeedFragment;

public interface zzag {

    public static final class zza extends zzbyd<zza> {
        public String zzaN;
        public String zzaP;
        public String zzaQ;
        public String zzaR;
        public Long zzbA;
        public Long zzbB;
        public Long zzbC;
        public zzb zzbD;
        public Long zzbE;
        public Long zzbF;
        public Long zzbG;
        public Long zzbH;
        public Long zzbI;
        public Long zzbJ;
        public Integer zzbK;
        public Integer zzbL;
        public Long zzbM;
        public Long zzbN;
        public Long zzbO;
        public Long zzbP;
        public Long zzbQ;
        public Integer zzbR;
        public zza zzbS;
        public zza[] zzbT;
        public zzb zzbU;
        public Long zzbV;
        public String zzbW;
        public Integer zzbX;
        public Boolean zzbY;
        public String zzbZ;
        public String zzba;
        public String zzbb;
        public Long zzbc;
        public Long zzbd;
        public Long zzbe;
        public Long zzbf;
        public Long zzbg;
        public Long zzbh;
        public Long zzbi;
        public Long zzbj;
        public Long zzbk;
        public Long zzbl;
        public String zzbm;
        public Long zzbn;
        public Long zzbo;
        public Long zzbp;
        public Long zzbq;
        public Long zzbr;
        public Long zzbs;
        public Long zzbt;
        public Long zzbu;
        public Long zzbv;
        public String zzbw;
        public Long zzbx;
        public Long zzby;
        public Long zzbz;
        public Long zzca;
        public zze zzcb;

        public static final class zza extends zzbyd<zza> {
            private static volatile zza[] zzcc;
            public Long zzbn;
            public Long zzbo;
            public Long zzcd;
            public Long zzce;
            public Long zzcf;
            public Long zzcg;
            public Integer zzch;
            public Long zzci;
            public Long zzcj;
            public Long zzck;
            public Integer zzcl;
            public Long zzcm;

            public zza() {
                this.zzbn = null;
                this.zzbo = null;
                this.zzcd = null;
                this.zzce = null;
                this.zzcf = null;
                this.zzcg = null;
                this.zzch = null;
                this.zzci = null;
                this.zzcj = null;
                this.zzck = null;
                this.zzcl = null;
                this.zzcm = null;
                this.zzcwL = -1;
            }

            public static zza[] zzv() {
                if (zzcc == null) {
                    synchronized (zzbyh.zzcwK) {
                        if (zzcc == null) {
                            zzcc = new zza[0];
                        }
                    }
                }
                return zzcc;
            }

            public final void zza(zzbyc zzbyc) throws IOException {
                if (this.zzbn != null) {
                    zzbyc.zzb(1, this.zzbn.longValue());
                }
                if (this.zzbo != null) {
                    zzbyc.zzb(2, this.zzbo.longValue());
                }
                if (this.zzcd != null) {
                    zzbyc.zzb(3, this.zzcd.longValue());
                }
                if (this.zzce != null) {
                    zzbyc.zzb(4, this.zzce.longValue());
                }
                if (this.zzcf != null) {
                    zzbyc.zzb(5, this.zzcf.longValue());
                }
                if (this.zzcg != null) {
                    zzbyc.zzb(6, this.zzcg.longValue());
                }
                if (this.zzch != null) {
                    zzbyc.zzJ(7, this.zzch.intValue());
                }
                if (this.zzci != null) {
                    zzbyc.zzb(8, this.zzci.longValue());
                }
                if (this.zzcj != null) {
                    zzbyc.zzb(9, this.zzcj.longValue());
                }
                if (this.zzck != null) {
                    zzbyc.zzb(10, this.zzck.longValue());
                }
                if (this.zzcl != null) {
                    zzbyc.zzJ(11, this.zzcl.intValue());
                }
                if (this.zzcm != null) {
                    zzbyc.zzb(12, this.zzcm.longValue());
                }
                super.zza(zzbyc);
            }

            public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
                return zzg(zzbyb);
            }

            public final zza zzg(zzbyb zzbyb) throws IOException {
                while (true) {
                    int zzaeW = zzbyb.zzaeW();
                    switch (zzaeW) {
                        case 0:
                            return this;
                        case 8:
                            this.zzbn = Long.valueOf(zzbyb.zzaeZ());
                            break;
                        case 16:
                            this.zzbo = Long.valueOf(zzbyb.zzaeZ());
                            break;
                        case 24:
                            this.zzcd = Long.valueOf(zzbyb.zzaeZ());
                            break;
                        case 32:
                            this.zzce = Long.valueOf(zzbyb.zzaeZ());
                            break;
                        case 40:
                            this.zzcf = Long.valueOf(zzbyb.zzaeZ());
                            break;
                        case 48:
                            this.zzcg = Long.valueOf(zzbyb.zzaeZ());
                            break;
                        case 56:
                            zzaeW = zzbyb.zzafa();
                            if (zzaeW != 1000) {
                                switch (zzaeW) {
                                    case 0:
                                    case 1:
                                    case 2:
                                        break;
                                    default:
                                        continue;
                                }
                            }
                            this.zzch = Integer.valueOf(zzaeW);
                            break;
                        case 64:
                            this.zzci = Long.valueOf(zzbyb.zzaeZ());
                            break;
                        case 72:
                            this.zzcj = Long.valueOf(zzbyb.zzaeZ());
                            break;
                        case 80:
                            this.zzck = Long.valueOf(zzbyb.zzaeZ());
                            break;
                        case 88:
                            zzaeW = zzbyb.zzafa();
                            if (zzaeW != 1000) {
                                switch (zzaeW) {
                                    case 0:
                                    case 1:
                                    case 2:
                                        break;
                                    default:
                                        continue;
                                }
                            }
                            this.zzcl = Integer.valueOf(zzaeW);
                            break;
                        case 96:
                            this.zzcm = Long.valueOf(zzbyb.zzaeZ());
                            break;
                        default:
                            if (super.zza(zzbyb, zzaeW)) {
                                break;
                            }
                            return this;
                    }
                }
            }

            protected final int zzu() {
                int zzu = super.zzu();
                if (this.zzbn != null) {
                    zzu += zzbyc.zzf(1, this.zzbn.longValue());
                }
                if (this.zzbo != null) {
                    zzu += zzbyc.zzf(2, this.zzbo.longValue());
                }
                if (this.zzcd != null) {
                    zzu += zzbyc.zzf(3, this.zzcd.longValue());
                }
                if (this.zzce != null) {
                    zzu += zzbyc.zzf(4, this.zzce.longValue());
                }
                if (this.zzcf != null) {
                    zzu += zzbyc.zzf(5, this.zzcf.longValue());
                }
                if (this.zzcg != null) {
                    zzu += zzbyc.zzf(6, this.zzcg.longValue());
                }
                if (this.zzch != null) {
                    zzu += zzbyc.zzL(7, this.zzch.intValue());
                }
                if (this.zzci != null) {
                    zzu += zzbyc.zzf(8, this.zzci.longValue());
                }
                if (this.zzcj != null) {
                    zzu += zzbyc.zzf(9, this.zzcj.longValue());
                }
                if (this.zzck != null) {
                    zzu += zzbyc.zzf(10, this.zzck.longValue());
                }
                if (this.zzcl != null) {
                    zzu += zzbyc.zzL(11, this.zzcl.intValue());
                }
                return this.zzcm != null ? zzu + zzbyc.zzf(12, this.zzcm.longValue()) : zzu;
            }
        }

        public static final class zzb extends zzbyd<zzb> {
            public Long zzbP;
            public Long zzbQ;
            public Long zzcn;

            public zzb() {
                this.zzbP = null;
                this.zzbQ = null;
                this.zzcn = null;
                this.zzcwL = -1;
            }

            public final void zza(zzbyc zzbyc) throws IOException {
                if (this.zzbP != null) {
                    zzbyc.zzb(1, this.zzbP.longValue());
                }
                if (this.zzbQ != null) {
                    zzbyc.zzb(2, this.zzbQ.longValue());
                }
                if (this.zzcn != null) {
                    zzbyc.zzb(3, this.zzcn.longValue());
                }
                super.zza(zzbyc);
            }

            public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
                return zzh(zzbyb);
            }

            public final zzb zzh(zzbyb zzbyb) throws IOException {
                while (true) {
                    int zzaeW = zzbyb.zzaeW();
                    if (zzaeW == 0) {
                        return this;
                    }
                    if (zzaeW == 8) {
                        this.zzbP = Long.valueOf(zzbyb.zzaeZ());
                    } else if (zzaeW == 16) {
                        this.zzbQ = Long.valueOf(zzbyb.zzaeZ());
                    } else if (zzaeW == 24) {
                        this.zzcn = Long.valueOf(zzbyb.zzaeZ());
                    } else if (!super.zza(zzbyb, zzaeW)) {
                        return this;
                    }
                }
            }

            protected final int zzu() {
                int zzu = super.zzu();
                if (this.zzbP != null) {
                    zzu += zzbyc.zzf(1, this.zzbP.longValue());
                }
                if (this.zzbQ != null) {
                    zzu += zzbyc.zzf(2, this.zzbQ.longValue());
                }
                return this.zzcn != null ? zzu + zzbyc.zzf(3, this.zzcn.longValue()) : zzu;
            }
        }

        public zza() {
            this.zzbb = null;
            this.zzba = null;
            this.zzbc = null;
            this.zzbd = null;
            this.zzbe = null;
            this.zzbf = null;
            this.zzbg = null;
            this.zzbh = null;
            this.zzbi = null;
            this.zzbj = null;
            this.zzbk = null;
            this.zzbl = null;
            this.zzbm = null;
            this.zzbn = null;
            this.zzbo = null;
            this.zzbp = null;
            this.zzbq = null;
            this.zzbr = null;
            this.zzbs = null;
            this.zzbt = null;
            this.zzbu = null;
            this.zzbv = null;
            this.zzaN = null;
            this.zzbw = null;
            this.zzbx = null;
            this.zzby = null;
            this.zzbz = null;
            this.zzaP = null;
            this.zzbA = null;
            this.zzbB = null;
            this.zzbC = null;
            this.zzbE = null;
            this.zzbF = null;
            this.zzbG = null;
            this.zzbH = null;
            this.zzbI = null;
            this.zzbJ = null;
            this.zzaQ = null;
            this.zzaR = null;
            this.zzbK = null;
            this.zzbL = null;
            this.zzbM = null;
            this.zzbN = null;
            this.zzbO = null;
            this.zzbP = null;
            this.zzbQ = null;
            this.zzbR = null;
            this.zzbT = zza.zzv();
            this.zzbV = null;
            this.zzbW = null;
            this.zzbX = null;
            this.zzbY = null;
            this.zzbZ = null;
            this.zzca = null;
            this.zzcwL = -1;
        }

        public static zza zzd(byte[] bArr) throws zzbyi {
            return (zza) zzbyj.zza(new zza(), bArr);
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbb != null) {
                zzbyc.zzq(1, this.zzbb);
            }
            if (this.zzba != null) {
                zzbyc.zzq(2, this.zzba);
            }
            if (this.zzbc != null) {
                zzbyc.zzb(3, this.zzbc.longValue());
            }
            if (this.zzbd != null) {
                zzbyc.zzb(4, this.zzbd.longValue());
            }
            if (this.zzbe != null) {
                zzbyc.zzb(5, this.zzbe.longValue());
            }
            if (this.zzbf != null) {
                zzbyc.zzb(6, this.zzbf.longValue());
            }
            if (this.zzbg != null) {
                zzbyc.zzb(7, this.zzbg.longValue());
            }
            if (this.zzbh != null) {
                zzbyc.zzb(8, this.zzbh.longValue());
            }
            if (this.zzbi != null) {
                zzbyc.zzb(9, this.zzbi.longValue());
            }
            if (this.zzbj != null) {
                zzbyc.zzb(10, this.zzbj.longValue());
            }
            if (this.zzbk != null) {
                zzbyc.zzb(11, this.zzbk.longValue());
            }
            if (this.zzbl != null) {
                zzbyc.zzb(12, this.zzbl.longValue());
            }
            if (this.zzbm != null) {
                zzbyc.zzq(13, this.zzbm);
            }
            if (this.zzbn != null) {
                zzbyc.zzb(14, this.zzbn.longValue());
            }
            if (this.zzbo != null) {
                zzbyc.zzb(15, this.zzbo.longValue());
            }
            if (this.zzbp != null) {
                zzbyc.zzb(16, this.zzbp.longValue());
            }
            if (this.zzbq != null) {
                zzbyc.zzb(17, this.zzbq.longValue());
            }
            if (this.zzbr != null) {
                zzbyc.zzb(18, this.zzbr.longValue());
            }
            if (this.zzbs != null) {
                zzbyc.zzb(19, this.zzbs.longValue());
            }
            if (this.zzbt != null) {
                zzbyc.zzb(20, this.zzbt.longValue());
            }
            if (this.zzbV != null) {
                zzbyc.zzb(21, this.zzbV.longValue());
            }
            if (this.zzbu != null) {
                zzbyc.zzb(22, this.zzbu.longValue());
            }
            if (this.zzbv != null) {
                zzbyc.zzb(23, this.zzbv.longValue());
            }
            if (this.zzbW != null) {
                zzbyc.zzq(24, this.zzbW);
            }
            if (this.zzca != null) {
                zzbyc.zzb(25, this.zzca.longValue());
            }
            if (this.zzbX != null) {
                zzbyc.zzJ(26, this.zzbX.intValue());
            }
            if (this.zzaN != null) {
                zzbyc.zzq(27, this.zzaN);
            }
            if (this.zzbY != null) {
                zzbyc.zzg(28, this.zzbY.booleanValue());
            }
            if (this.zzbw != null) {
                zzbyc.zzq(29, this.zzbw);
            }
            if (this.zzbZ != null) {
                zzbyc.zzq(30, this.zzbZ);
            }
            if (this.zzbx != null) {
                zzbyc.zzb(31, this.zzbx.longValue());
            }
            if (this.zzby != null) {
                zzbyc.zzb(32, this.zzby.longValue());
            }
            if (this.zzbz != null) {
                zzbyc.zzb(33, this.zzbz.longValue());
            }
            if (this.zzaP != null) {
                zzbyc.zzq(34, this.zzaP);
            }
            if (this.zzbA != null) {
                zzbyc.zzb(35, this.zzbA.longValue());
            }
            if (this.zzbB != null) {
                zzbyc.zzb(36, this.zzbB.longValue());
            }
            if (this.zzbC != null) {
                zzbyc.zzb(37, this.zzbC.longValue());
            }
            if (this.zzbD != null) {
                zzbyc.zza(38, this.zzbD);
            }
            if (this.zzbE != null) {
                zzbyc.zzb(39, this.zzbE.longValue());
            }
            if (this.zzbF != null) {
                zzbyc.zzb(40, this.zzbF.longValue());
            }
            if (this.zzbG != null) {
                zzbyc.zzb(41, this.zzbG.longValue());
            }
            if (this.zzbH != null) {
                zzbyc.zzb(42, this.zzbH.longValue());
            }
            if (this.zzbT != null && this.zzbT.length > 0) {
                for (zzbyj zzbyj : this.zzbT) {
                    if (zzbyj != null) {
                        zzbyc.zza(43, zzbyj);
                    }
                }
            }
            if (this.zzbI != null) {
                zzbyc.zzb(44, this.zzbI.longValue());
            }
            if (this.zzbJ != null) {
                zzbyc.zzb(45, this.zzbJ.longValue());
            }
            if (this.zzaQ != null) {
                zzbyc.zzq(46, this.zzaQ);
            }
            if (this.zzaR != null) {
                zzbyc.zzq(47, this.zzaR);
            }
            if (this.zzbK != null) {
                zzbyc.zzJ(48, this.zzbK.intValue());
            }
            if (this.zzbL != null) {
                zzbyc.zzJ(49, this.zzbL.intValue());
            }
            if (this.zzbS != null) {
                zzbyc.zza(50, this.zzbS);
            }
            if (this.zzbM != null) {
                zzbyc.zzb(51, this.zzbM.longValue());
            }
            if (this.zzbN != null) {
                zzbyc.zzb(52, this.zzbN.longValue());
            }
            if (this.zzbO != null) {
                zzbyc.zzb(53, this.zzbO.longValue());
            }
            if (this.zzbP != null) {
                zzbyc.zzb(54, this.zzbP.longValue());
            }
            if (this.zzbQ != null) {
                zzbyc.zzb(55, this.zzbQ.longValue());
            }
            if (this.zzbR != null) {
                zzbyc.zzJ(56, this.zzbR.intValue());
            }
            if (this.zzbU != null) {
                zzbyc.zza(57, this.zzbU);
            }
            if (this.zzcb != null) {
                zzbyc.zza(201, this.zzcb);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzf(zzbyb);
        }

        public final zza zzf(zzbyb zzbyb) throws IOException {
            while (true) {
                zzbyj zzbyj;
                int zzaeW = zzbyb.zzaeW();
                switch (zzaeW) {
                    case 0:
                        return this;
                    case 10:
                        this.zzbb = zzbyb.readString();
                        continue;
                    case 18:
                        this.zzba = zzbyb.readString();
                        continue;
                    case 24:
                        this.zzbc = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 32:
                        this.zzbd = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 40:
                        this.zzbe = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 48:
                        this.zzbf = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 56:
                        this.zzbg = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 64:
                        this.zzbh = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 72:
                        this.zzbi = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 80:
                        this.zzbj = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 88:
                        this.zzbk = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 96:
                        this.zzbl = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 106:
                        this.zzbm = zzbyb.readString();
                        continue;
                    case 112:
                        this.zzbn = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 120:
                        this.zzbo = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 128:
                        this.zzbp = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 136:
                        this.zzbq = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 144:
                        this.zzbr = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 152:
                        this.zzbs = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 160:
                        this.zzbt = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 168:
                        this.zzbV = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 176:
                        this.zzbu = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 184:
                        this.zzbv = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 194:
                        this.zzbW = zzbyb.readString();
                        continue;
                    case Callback.DEFAULT_DRAG_ANIMATION_DURATION /*200*/:
                        this.zzca = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 208:
                        zzaeW = zzbyb.zzafa();
                        switch (zzaeW) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.zzbX = Integer.valueOf(zzaeW);
                                break;
                            default:
                                continue;
                        }
                    case 218:
                        this.zzaN = zzbyb.readString();
                        continue;
                    case 224:
                        this.zzbY = Boolean.valueOf(zzbyb.zzafc());
                        continue;
                    case 234:
                        this.zzbw = zzbyb.readString();
                        continue;
                    case 242:
                        this.zzbZ = zzbyb.readString();
                        continue;
                    case 248:
                        this.zzbx = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 256:
                        this.zzby = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 264:
                        this.zzbz = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 274:
                        this.zzaP = zzbyb.readString();
                        continue;
                    case 280:
                        this.zzbA = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 288:
                        this.zzbB = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 296:
                        this.zzbC = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 306:
                        if (this.zzbD == null) {
                            this.zzbD = new zzb();
                        }
                        zzbyj = this.zzbD;
                        break;
                    case 312:
                        this.zzbE = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 320:
                        this.zzbF = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 328:
                        this.zzbG = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 336:
                        this.zzbH = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 346:
                        zzaeW = zzbym.zzb(zzbyb, 346);
                        int length = this.zzbT == null ? 0 : this.zzbT.length;
                        Object obj = new zza[(zzaeW + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzbT, 0, obj, 0, length);
                        }
                        while (length < obj.length - 1) {
                            obj[length] = new zza();
                            zzbyb.zza(obj[length]);
                            zzbyb.zzaeW();
                            length++;
                        }
                        obj[length] = new zza();
                        zzbyb.zza(obj[length]);
                        this.zzbT = obj;
                        continue;
                    case 352:
                        this.zzbI = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 360:
                        this.zzbJ = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 370:
                        this.zzaQ = zzbyb.readString();
                        continue;
                    case 378:
                        this.zzaR = zzbyb.readString();
                        continue;
                    case 384:
                        zzaeW = zzbyb.zzafa();
                        if (zzaeW != 1000) {
                            switch (zzaeW) {
                                case 0:
                                case 1:
                                case 2:
                                    break;
                                default:
                                    continue;
                                    continue;
                            }
                        }
                        this.zzbK = Integer.valueOf(zzaeW);
                        break;
                    case 392:
                        zzaeW = zzbyb.zzafa();
                        if (zzaeW != 1000) {
                            switch (zzaeW) {
                                case 0:
                                case 1:
                                case 2:
                                    break;
                                default:
                                    continue;
                                    continue;
                            }
                        }
                        this.zzbL = Integer.valueOf(zzaeW);
                        break;
                    case FeedFragment.NEW_PASSPORT_REQUEST /*402*/:
                        if (this.zzbS == null) {
                            this.zzbS = new zza();
                        }
                        zzbyj = this.zzbS;
                        break;
                    case 408:
                        this.zzbM = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 416:
                        this.zzbN = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 424:
                        this.zzbO = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 432:
                        this.zzbP = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 440:
                        this.zzbQ = Long.valueOf(zzbyb.zzaeZ());
                        continue;
                    case 448:
                        zzaeW = zzbyb.zzafa();
                        if (zzaeW != 1000) {
                            switch (zzaeW) {
                                case 0:
                                case 1:
                                case 2:
                                    break;
                                default:
                                    continue;
                                    continue;
                            }
                        }
                        this.zzbR = Integer.valueOf(zzaeW);
                        break;
                    case 458:
                        if (this.zzbU == null) {
                            this.zzbU = new zzb();
                        }
                        zzbyj = this.zzbU;
                        break;
                    case 1610:
                        if (this.zzcb == null) {
                            this.zzcb = new zze();
                        }
                        zzbyj = this.zzcb;
                        break;
                    default:
                        if (!super.zza(zzbyb, zzaeW)) {
                            return this;
                        }
                        continue;
                }
                zzbyb.zza(zzbyj);
            }
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzbb != null) {
                zzu += zzbyc.zzr(1, this.zzbb);
            }
            if (this.zzba != null) {
                zzu += zzbyc.zzr(2, this.zzba);
            }
            if (this.zzbc != null) {
                zzu += zzbyc.zzf(3, this.zzbc.longValue());
            }
            if (this.zzbd != null) {
                zzu += zzbyc.zzf(4, this.zzbd.longValue());
            }
            if (this.zzbe != null) {
                zzu += zzbyc.zzf(5, this.zzbe.longValue());
            }
            if (this.zzbf != null) {
                zzu += zzbyc.zzf(6, this.zzbf.longValue());
            }
            if (this.zzbg != null) {
                zzu += zzbyc.zzf(7, this.zzbg.longValue());
            }
            if (this.zzbh != null) {
                zzu += zzbyc.zzf(8, this.zzbh.longValue());
            }
            if (this.zzbi != null) {
                zzu += zzbyc.zzf(9, this.zzbi.longValue());
            }
            if (this.zzbj != null) {
                zzu += zzbyc.zzf(10, this.zzbj.longValue());
            }
            if (this.zzbk != null) {
                zzu += zzbyc.zzf(11, this.zzbk.longValue());
            }
            if (this.zzbl != null) {
                zzu += zzbyc.zzf(12, this.zzbl.longValue());
            }
            if (this.zzbm != null) {
                zzu += zzbyc.zzr(13, this.zzbm);
            }
            if (this.zzbn != null) {
                zzu += zzbyc.zzf(14, this.zzbn.longValue());
            }
            if (this.zzbo != null) {
                zzu += zzbyc.zzf(15, this.zzbo.longValue());
            }
            if (this.zzbp != null) {
                zzu += zzbyc.zzf(16, this.zzbp.longValue());
            }
            if (this.zzbq != null) {
                zzu += zzbyc.zzf(17, this.zzbq.longValue());
            }
            if (this.zzbr != null) {
                zzu += zzbyc.zzf(18, this.zzbr.longValue());
            }
            if (this.zzbs != null) {
                zzu += zzbyc.zzf(19, this.zzbs.longValue());
            }
            if (this.zzbt != null) {
                zzu += zzbyc.zzf(20, this.zzbt.longValue());
            }
            if (this.zzbV != null) {
                zzu += zzbyc.zzf(21, this.zzbV.longValue());
            }
            if (this.zzbu != null) {
                zzu += zzbyc.zzf(22, this.zzbu.longValue());
            }
            if (this.zzbv != null) {
                zzu += zzbyc.zzf(23, this.zzbv.longValue());
            }
            if (this.zzbW != null) {
                zzu += zzbyc.zzr(24, this.zzbW);
            }
            if (this.zzca != null) {
                zzu += zzbyc.zzf(25, this.zzca.longValue());
            }
            if (this.zzbX != null) {
                zzu += zzbyc.zzL(26, this.zzbX.intValue());
            }
            if (this.zzaN != null) {
                zzu += zzbyc.zzr(27, this.zzaN);
            }
            if (this.zzbY != null) {
                zzu += zzbyc.zzh(28, this.zzbY.booleanValue());
            }
            if (this.zzbw != null) {
                zzu += zzbyc.zzr(29, this.zzbw);
            }
            if (this.zzbZ != null) {
                zzu += zzbyc.zzr(30, this.zzbZ);
            }
            if (this.zzbx != null) {
                zzu += zzbyc.zzf(31, this.zzbx.longValue());
            }
            if (this.zzby != null) {
                zzu += zzbyc.zzf(32, this.zzby.longValue());
            }
            if (this.zzbz != null) {
                zzu += zzbyc.zzf(33, this.zzbz.longValue());
            }
            if (this.zzaP != null) {
                zzu += zzbyc.zzr(34, this.zzaP);
            }
            if (this.zzbA != null) {
                zzu += zzbyc.zzf(35, this.zzbA.longValue());
            }
            if (this.zzbB != null) {
                zzu += zzbyc.zzf(36, this.zzbB.longValue());
            }
            if (this.zzbC != null) {
                zzu += zzbyc.zzf(37, this.zzbC.longValue());
            }
            if (this.zzbD != null) {
                zzu += zzbyc.zzc(38, this.zzbD);
            }
            if (this.zzbE != null) {
                zzu += zzbyc.zzf(39, this.zzbE.longValue());
            }
            if (this.zzbF != null) {
                zzu += zzbyc.zzf(40, this.zzbF.longValue());
            }
            if (this.zzbG != null) {
                zzu += zzbyc.zzf(41, this.zzbG.longValue());
            }
            if (this.zzbH != null) {
                zzu += zzbyc.zzf(42, this.zzbH.longValue());
            }
            if (this.zzbT != null && this.zzbT.length > 0) {
                for (zzbyj zzbyj : this.zzbT) {
                    if (zzbyj != null) {
                        zzu += zzbyc.zzc(43, zzbyj);
                    }
                }
            }
            if (this.zzbI != null) {
                zzu += zzbyc.zzf(44, this.zzbI.longValue());
            }
            if (this.zzbJ != null) {
                zzu += zzbyc.zzf(45, this.zzbJ.longValue());
            }
            if (this.zzaQ != null) {
                zzu += zzbyc.zzr(46, this.zzaQ);
            }
            if (this.zzaR != null) {
                zzu += zzbyc.zzr(47, this.zzaR);
            }
            if (this.zzbK != null) {
                zzu += zzbyc.zzL(48, this.zzbK.intValue());
            }
            if (this.zzbL != null) {
                zzu += zzbyc.zzL(49, this.zzbL.intValue());
            }
            if (this.zzbS != null) {
                zzu += zzbyc.zzc(50, this.zzbS);
            }
            if (this.zzbM != null) {
                zzu += zzbyc.zzf(51, this.zzbM.longValue());
            }
            if (this.zzbN != null) {
                zzu += zzbyc.zzf(52, this.zzbN.longValue());
            }
            if (this.zzbO != null) {
                zzu += zzbyc.zzf(53, this.zzbO.longValue());
            }
            if (this.zzbP != null) {
                zzu += zzbyc.zzf(54, this.zzbP.longValue());
            }
            if (this.zzbQ != null) {
                zzu += zzbyc.zzf(55, this.zzbQ.longValue());
            }
            if (this.zzbR != null) {
                zzu += zzbyc.zzL(56, this.zzbR.intValue());
            }
            if (this.zzbU != null) {
                zzu += zzbyc.zzc(57, this.zzbU);
            }
            return this.zzcb != null ? zzu + zzbyc.zzc(201, this.zzcb) : zzu;
        }
    }

    public static final class zzb extends zzbyd<zzb> {
        public Long zzco;
        public Integer zzcp;
        public Boolean zzcq;
        public int[] zzcr;
        public Long zzcs;

        public zzb() {
            this.zzco = null;
            this.zzcp = null;
            this.zzcq = null;
            this.zzcr = zzbym.zzcwQ;
            this.zzcs = null;
            this.zzcwL = -1;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzco != null) {
                zzbyc.zzb(1, this.zzco.longValue());
            }
            if (this.zzcp != null) {
                zzbyc.zzJ(2, this.zzcp.intValue());
            }
            if (this.zzcq != null) {
                zzbyc.zzg(3, this.zzcq.booleanValue());
            }
            if (this.zzcr != null && this.zzcr.length > 0) {
                for (int zzJ : this.zzcr) {
                    zzbyc.zzJ(4, zzJ);
                }
            }
            if (this.zzcs != null) {
                zzbyc.zza(5, this.zzcs.longValue());
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzi(zzbyb);
        }

        public final zzb zzi(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 8) {
                    this.zzco = Long.valueOf(zzbyb.zzaeZ());
                } else if (zzaeW == 16) {
                    this.zzcp = Integer.valueOf(zzbyb.zzafa());
                } else if (zzaeW == 24) {
                    this.zzcq = Boolean.valueOf(zzbyb.zzafc());
                } else if (zzaeW == 32) {
                    zzaeW = zzbym.zzb(zzbyb, 32);
                    r1 = this.zzcr == null ? 0 : this.zzcr.length;
                    Object obj = new int[(zzaeW + r1)];
                    if (r1 != 0) {
                        System.arraycopy(this.zzcr, 0, obj, 0, r1);
                    }
                    while (r1 < obj.length - 1) {
                        obj[r1] = zzbyb.zzafa();
                        zzbyb.zzaeW();
                        r1++;
                    }
                    obj[r1] = zzbyb.zzafa();
                    this.zzcr = obj;
                } else if (zzaeW == 34) {
                    zzaeW = zzbyb.zzrf(zzbyb.zzaff());
                    r1 = zzbyb.getPosition();
                    int i = 0;
                    while (zzbyb.zzafk() > 0) {
                        zzbyb.zzafa();
                        i++;
                    }
                    zzbyb.zzrh(r1);
                    r1 = this.zzcr == null ? 0 : this.zzcr.length;
                    Object obj2 = new int[(i + r1)];
                    if (r1 != 0) {
                        System.arraycopy(this.zzcr, 0, obj2, 0, r1);
                    }
                    while (r1 < obj2.length) {
                        obj2[r1] = zzbyb.zzafa();
                        r1++;
                    }
                    this.zzcr = obj2;
                    zzbyb.zzrg(zzaeW);
                } else if (zzaeW == 40) {
                    this.zzcs = Long.valueOf(zzbyb.zzaeY());
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzco != null) {
                zzu += zzbyc.zzf(1, this.zzco.longValue());
            }
            if (this.zzcp != null) {
                zzu += zzbyc.zzL(2, this.zzcp.intValue());
            }
            if (this.zzcq != null) {
                zzu += zzbyc.zzh(3, this.zzcq.booleanValue());
            }
            if (this.zzcr != null && this.zzcr.length > 0) {
                int i = 0;
                int i2 = 0;
                while (i < this.zzcr.length) {
                    i2 += zzbyc.zzrl(this.zzcr[i]);
                    i++;
                }
                zzu = (zzu + i2) + (1 * this.zzcr.length);
            }
            return this.zzcs != null ? zzu + zzbyc.zze(5, this.zzcs.longValue()) : zzu;
        }
    }

    public static final class zzc extends zzbyd<zzc> {
        public byte[] zzct;
        public byte[] zzcu;

        public zzc() {
            this.zzct = null;
            this.zzcu = null;
            this.zzcwL = -1;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzct != null) {
                zzbyc.zzb(1, this.zzct);
            }
            if (this.zzcu != null) {
                zzbyc.zzb(2, this.zzcu);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzj(zzbyb);
        }

        public final zzc zzj(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    this.zzct = zzbyb.readBytes();
                } else if (zzaeW == 18) {
                    this.zzcu = zzbyb.readBytes();
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzct != null) {
                zzu += zzbyc.zzc(1, this.zzct);
            }
            return this.zzcu != null ? zzu + zzbyc.zzc(2, this.zzcu) : zzu;
        }
    }

    public static final class zzd extends zzbyd<zzd> {
        public byte[] data;
        public byte[] zzcv;
        public byte[] zzcw;
        public byte[] zzcx;

        public zzd() {
            this.data = null;
            this.zzcv = null;
            this.zzcw = null;
            this.zzcx = null;
            this.zzcwL = -1;
        }

        public static zzd zze(byte[] bArr) throws zzbyi {
            return (zzd) zzbyj.zza(new zzd(), bArr);
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.data != null) {
                zzbyc.zzb(1, this.data);
            }
            if (this.zzcv != null) {
                zzbyc.zzb(2, this.zzcv);
            }
            if (this.zzcw != null) {
                zzbyc.zzb(3, this.zzcw);
            }
            if (this.zzcx != null) {
                zzbyc.zzb(4, this.zzcx);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzk(zzbyb);
        }

        public final zzd zzk(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    this.data = zzbyb.readBytes();
                } else if (zzaeW == 18) {
                    this.zzcv = zzbyb.readBytes();
                } else if (zzaeW == 26) {
                    this.zzcw = zzbyb.readBytes();
                } else if (zzaeW == 34) {
                    this.zzcx = zzbyb.readBytes();
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.data != null) {
                zzu += zzbyc.zzc(1, this.data);
            }
            if (this.zzcv != null) {
                zzu += zzbyc.zzc(2, this.zzcv);
            }
            if (this.zzcw != null) {
                zzu += zzbyc.zzc(3, this.zzcw);
            }
            return this.zzcx != null ? zzu + zzbyc.zzc(4, this.zzcx) : zzu;
        }
    }

    public static final class zze extends zzbyd<zze> {
        public Long zzco;
        public String zzcy;
        public byte[] zzcz;

        public zze() {
            this.zzco = null;
            this.zzcy = null;
            this.zzcz = null;
            this.zzcwL = -1;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzco != null) {
                zzbyc.zzb(1, this.zzco.longValue());
            }
            if (this.zzcy != null) {
                zzbyc.zzq(3, this.zzcy);
            }
            if (this.zzcz != null) {
                zzbyc.zzb(4, this.zzcz);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzl(zzbyb);
        }

        public final zze zzl(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 8) {
                    this.zzco = Long.valueOf(zzbyb.zzaeZ());
                } else if (zzaeW == 26) {
                    this.zzcy = zzbyb.readString();
                } else if (zzaeW == 34) {
                    this.zzcz = zzbyb.readBytes();
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzco != null) {
                zzu += zzbyc.zzf(1, this.zzco.longValue());
            }
            if (this.zzcy != null) {
                zzu += zzbyc.zzr(3, this.zzcy);
            }
            return this.zzcz != null ? zzu + zzbyc.zzc(4, this.zzcz) : zzu;
        }
    }

    public static final class zzf extends zzbyd<zzf> {
        public byte[][] zzcA;
        public Integer zzcB;
        public Integer zzcC;
        public byte[] zzcv;

        public zzf() {
            this.zzcA = zzbym.zzcwV;
            this.zzcv = null;
            this.zzcB = null;
            this.zzcC = null;
            this.zzcwL = -1;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzcA != null && this.zzcA.length > 0) {
                for (byte[] bArr : this.zzcA) {
                    if (bArr != null) {
                        zzbyc.zzb(1, bArr);
                    }
                }
            }
            if (this.zzcv != null) {
                zzbyc.zzb(2, this.zzcv);
            }
            if (this.zzcB != null) {
                zzbyc.zzJ(3, this.zzcB.intValue());
            }
            if (this.zzcC != null) {
                zzbyc.zzJ(4, this.zzcC.intValue());
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzm(zzbyb);
        }

        public final zzf zzm(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    zzaeW = zzbym.zzb(zzbyb, 10);
                    int length = this.zzcA == null ? 0 : this.zzcA.length;
                    Object obj = new byte[(zzaeW + length)][];
                    if (length != 0) {
                        System.arraycopy(this.zzcA, 0, obj, 0, length);
                    }
                    while (length < obj.length - 1) {
                        obj[length] = zzbyb.readBytes();
                        zzbyb.zzaeW();
                        length++;
                    }
                    obj[length] = zzbyb.readBytes();
                    this.zzcA = obj;
                } else if (zzaeW != 18) {
                    if (zzaeW != 24) {
                        if (zzaeW == 32) {
                            zzaeW = zzbyb.zzafa();
                            switch (zzaeW) {
                                case 0:
                                case 1:
                                    this.zzcC = Integer.valueOf(zzaeW);
                                    break;
                                default:
                                    break;
                            }
                        } else if (!super.zza(zzbyb, zzaeW)) {
                            return this;
                        }
                    } else {
                        zzaeW = zzbyb.zzafa();
                        switch (zzaeW) {
                            case 0:
                            case 1:
                                this.zzcB = Integer.valueOf(zzaeW);
                                break;
                            default:
                                break;
                        }
                    }
                } else {
                    this.zzcv = zzbyb.readBytes();
                }
            }
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzcA != null && this.zzcA.length > 0) {
                int i = 0;
                int i2 = 0;
                int i3 = i2;
                while (i < this.zzcA.length) {
                    byte[] bArr = this.zzcA[i];
                    if (bArr != null) {
                        i3++;
                        i2 += zzbyc.zzaj(bArr);
                    }
                    i++;
                }
                zzu = (zzu + i2) + (1 * i3);
            }
            if (this.zzcv != null) {
                zzu += zzbyc.zzc(2, this.zzcv);
            }
            if (this.zzcB != null) {
                zzu += zzbyc.zzL(3, this.zzcB.intValue());
            }
            return this.zzcC != null ? zzu + zzbyc.zzL(4, this.zzcC.intValue()) : zzu;
        }
    }
}
