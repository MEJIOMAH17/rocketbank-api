package com.google.android.gms.internal;

import java.io.IOException;

public interface zzbyp {

    public static final class zza extends zzbyd<zza> {
        private static volatile zza[] zzcxF;
        public String zzcxG;

        public zza() {
            zzafR();
        }

        public static zza[] zzafQ() {
            if (zzcxF == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzcxF == null) {
                        zzcxF = new zza[0];
                    }
                }
            }
            return zzcxF;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (!(this.zzcxG == null || this.zzcxG.equals(""))) {
                zzbyc.zzq(1, this.zzcxG);
            }
            super.zza(zzbyc);
        }

        public final zza zzafR() {
            this.zzcxG = "";
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzbc(zzbyb);
        }

        public final zza zzbc(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    this.zzcxG = zzbyb.readString();
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        protected final int zzu() {
            int zzu = super.zzu();
            return (this.zzcxG == null || this.zzcxG.equals("")) ? zzu : zzu + zzbyc.zzr(1, this.zzcxG);
        }
    }

    public static final class zzb extends zzbyd<zzb> {
        public String zzcxG;
        public String zzcxH;
        public long zzcxI;
        public String zzcxJ;
        public int zzcxK;
        public int zzcxL;
        public String zzcxM;
        public String zzcxN;
        public String zzcxO;
        public String zzcxP;
        public String zzcxQ;
        public int zzcxR;
        public zza[] zzcxS;

        public zzb() {
            zzafS();
        }

        public static zzb zzal(byte[] bArr) throws zzbyi {
            return (zzb) zzbyj.zza(new zzb(), bArr);
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (!(this.zzcxG == null || this.zzcxG.equals(""))) {
                zzbyc.zzq(1, this.zzcxG);
            }
            if (!(this.zzcxH == null || this.zzcxH.equals(""))) {
                zzbyc.zzq(2, this.zzcxH);
            }
            if (this.zzcxI != 0) {
                zzbyc.zzb(3, this.zzcxI);
            }
            if (!(this.zzcxJ == null || this.zzcxJ.equals(""))) {
                zzbyc.zzq(4, this.zzcxJ);
            }
            if (this.zzcxK != 0) {
                zzbyc.zzJ(5, this.zzcxK);
            }
            if (this.zzcxL != 0) {
                zzbyc.zzJ(6, this.zzcxL);
            }
            if (!(this.zzcxM == null || this.zzcxM.equals(""))) {
                zzbyc.zzq(7, this.zzcxM);
            }
            if (!(this.zzcxN == null || this.zzcxN.equals(""))) {
                zzbyc.zzq(8, this.zzcxN);
            }
            if (!(this.zzcxO == null || this.zzcxO.equals(""))) {
                zzbyc.zzq(9, this.zzcxO);
            }
            if (!(this.zzcxP == null || this.zzcxP.equals(""))) {
                zzbyc.zzq(10, this.zzcxP);
            }
            if (!(this.zzcxQ == null || this.zzcxQ.equals(""))) {
                zzbyc.zzq(11, this.zzcxQ);
            }
            if (this.zzcxR != 0) {
                zzbyc.zzJ(12, this.zzcxR);
            }
            if (this.zzcxS != null && this.zzcxS.length > 0) {
                for (zzbyj zzbyj : this.zzcxS) {
                    if (zzbyj != null) {
                        zzbyc.zza(13, zzbyj);
                    }
                }
            }
            super.zza(zzbyc);
        }

        public final zzb zzafS() {
            this.zzcxG = "";
            this.zzcxH = "";
            this.zzcxI = 0;
            this.zzcxJ = "";
            this.zzcxK = 0;
            this.zzcxL = 0;
            this.zzcxM = "";
            this.zzcxN = "";
            this.zzcxO = "";
            this.zzcxP = "";
            this.zzcxQ = "";
            this.zzcxR = 0;
            this.zzcxS = zza.zzafQ();
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzbd(zzbyb);
        }

        public final zzb zzbd(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                switch (zzaeW) {
                    case 0:
                        return this;
                    case 10:
                        this.zzcxG = zzbyb.readString();
                        break;
                    case 18:
                        this.zzcxH = zzbyb.readString();
                        break;
                    case 24:
                        this.zzcxI = zzbyb.zzaeZ();
                        break;
                    case 34:
                        this.zzcxJ = zzbyb.readString();
                        break;
                    case 40:
                        this.zzcxK = zzbyb.zzafa();
                        break;
                    case 48:
                        this.zzcxL = zzbyb.zzafa();
                        break;
                    case 58:
                        this.zzcxM = zzbyb.readString();
                        break;
                    case 66:
                        this.zzcxN = zzbyb.readString();
                        break;
                    case 74:
                        this.zzcxO = zzbyb.readString();
                        break;
                    case 82:
                        this.zzcxP = zzbyb.readString();
                        break;
                    case 90:
                        this.zzcxQ = zzbyb.readString();
                        break;
                    case 96:
                        zzaeW = zzbyb.zzafa();
                        switch (zzaeW) {
                            case 0:
                            case 1:
                            case 2:
                                this.zzcxR = zzaeW;
                                break;
                            default:
                                break;
                        }
                    case 106:
                        zzaeW = zzbym.zzb(zzbyb, 106);
                        int length = this.zzcxS == null ? 0 : this.zzcxS.length;
                        Object obj = new zza[(zzaeW + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzcxS, 0, obj, 0, length);
                        }
                        while (length < obj.length - 1) {
                            obj[length] = new zza();
                            zzbyb.zza(obj[length]);
                            zzbyb.zzaeW();
                            length++;
                        }
                        obj[length] = new zza();
                        zzbyb.zza(obj[length]);
                        this.zzcxS = obj;
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
            if (!(this.zzcxG == null || this.zzcxG.equals(""))) {
                zzu += zzbyc.zzr(1, this.zzcxG);
            }
            if (!(this.zzcxH == null || this.zzcxH.equals(""))) {
                zzu += zzbyc.zzr(2, this.zzcxH);
            }
            if (this.zzcxI != 0) {
                zzu += zzbyc.zzf(3, this.zzcxI);
            }
            if (!(this.zzcxJ == null || this.zzcxJ.equals(""))) {
                zzu += zzbyc.zzr(4, this.zzcxJ);
            }
            if (this.zzcxK != 0) {
                zzu += zzbyc.zzL(5, this.zzcxK);
            }
            if (this.zzcxL != 0) {
                zzu += zzbyc.zzL(6, this.zzcxL);
            }
            if (!(this.zzcxM == null || this.zzcxM.equals(""))) {
                zzu += zzbyc.zzr(7, this.zzcxM);
            }
            if (!(this.zzcxN == null || this.zzcxN.equals(""))) {
                zzu += zzbyc.zzr(8, this.zzcxN);
            }
            if (!(this.zzcxO == null || this.zzcxO.equals(""))) {
                zzu += zzbyc.zzr(9, this.zzcxO);
            }
            if (!(this.zzcxP == null || this.zzcxP.equals(""))) {
                zzu += zzbyc.zzr(10, this.zzcxP);
            }
            if (!(this.zzcxQ == null || this.zzcxQ.equals(""))) {
                zzu += zzbyc.zzr(11, this.zzcxQ);
            }
            if (this.zzcxR != 0) {
                zzu += zzbyc.zzL(12, this.zzcxR);
            }
            if (this.zzcxS != null && this.zzcxS.length > 0) {
                for (zzbyj zzbyj : this.zzcxS) {
                    if (zzbyj != null) {
                        zzu += zzbyc.zzc(13, zzbyj);
                    }
                }
            }
            return zzu;
        }
    }
}
