package com.google.android.gms.internal;

import java.io.IOException;

public interface zzae {

    public static final class zza extends zzbyd<zza> {
        public zzb zzaK;
        public zzc zzaL;

        public zza() {
            this.zzcwL = -1;
        }

        public static zza zzc(byte[] bArr) throws zzbyi {
            return (zza) zzbyj.zza(new zza(), bArr);
        }

        public final zza zza(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                zzbyj zzbyj;
                if (zzaeW == 10) {
                    if (this.zzaK == null) {
                        this.zzaK = new zzb();
                    }
                    zzbyj = this.zzaK;
                } else if (zzaeW == 18) {
                    if (this.zzaL == null) {
                        this.zzaL = new zzc();
                    }
                    zzbyj = this.zzaL;
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
                zzbyb.zza(zzbyj);
            }
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzaK != null) {
                zzbyc.zza(1, this.zzaK);
            }
            if (this.zzaL != null) {
                zzbyc.zza(2, this.zzaL);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zza(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzaK != null) {
                zzu += zzbyc.zzc(1, this.zzaK);
            }
            return this.zzaL != null ? zzu + zzbyc.zzc(2, this.zzaL) : zzu;
        }
    }

    public static final class zzb extends zzbyd<zzb> {
        public Integer zzaM;

        public zzb() {
            this.zzaM = null;
            this.zzcwL = -1;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzaM != null) {
                zzbyc.zzJ(27, this.zzaM.intValue());
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzc(zzbyb);
        }

        public final zzb zzc(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW != 0) {
                    if (zzaeW == 216) {
                        zzaeW = zzbyb.zzafa();
                        switch (zzaeW) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.zzaM = Integer.valueOf(zzaeW);
                                break;
                            default:
                                break;
                        }
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
            return this.zzaM != null ? zzu + zzbyc.zzL(27, this.zzaM.intValue()) : zzu;
        }
    }

    public static final class zzc extends zzbyd<zzc> {
        public String zzaN;
        public String zzaO;
        public String zzaP;
        public String zzaQ;
        public String zzaR;

        public zzc() {
            this.zzaN = null;
            this.zzaO = null;
            this.zzaP = null;
            this.zzaQ = null;
            this.zzaR = null;
            this.zzcwL = -1;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzaN != null) {
                zzbyc.zzq(1, this.zzaN);
            }
            if (this.zzaO != null) {
                zzbyc.zzq(2, this.zzaO);
            }
            if (this.zzaP != null) {
                zzbyc.zzq(3, this.zzaP);
            }
            if (this.zzaQ != null) {
                zzbyc.zzq(4, this.zzaQ);
            }
            if (this.zzaR != null) {
                zzbyc.zzq(5, this.zzaR);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzd(zzbyb);
        }

        public final zzc zzd(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    this.zzaN = zzbyb.readString();
                } else if (zzaeW == 18) {
                    this.zzaO = zzbyb.readString();
                } else if (zzaeW == 26) {
                    this.zzaP = zzbyb.readString();
                } else if (zzaeW == 34) {
                    this.zzaQ = zzbyb.readString();
                } else if (zzaeW == 42) {
                    this.zzaR = zzbyb.readString();
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzaN != null) {
                zzu += zzbyc.zzr(1, this.zzaN);
            }
            if (this.zzaO != null) {
                zzu += zzbyc.zzr(2, this.zzaO);
            }
            if (this.zzaP != null) {
                zzu += zzbyc.zzr(3, this.zzaP);
            }
            if (this.zzaQ != null) {
                zzu += zzbyc.zzr(4, this.zzaQ);
            }
            return this.zzaR != null ? zzu + zzbyc.zzr(5, this.zzaR) : zzu;
        }
    }
}
