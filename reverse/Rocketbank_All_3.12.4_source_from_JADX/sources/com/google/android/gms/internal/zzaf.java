package com.google.android.gms.internal;

import java.io.IOException;

public interface zzaf {

    public static final class zza extends zzbyd<zza> {
        public String stackTrace;
        public String zzaS;
        public Long zzaT;
        public String zzaU;
        public String zzaV;
        public Long zzaW;
        public Long zzaX;
        public String zzaY;
        public Long zzaZ;
        public String zzba;

        public zza() {
            this.zzaS = null;
            this.zzaT = null;
            this.stackTrace = null;
            this.zzaU = null;
            this.zzaV = null;
            this.zzaW = null;
            this.zzaX = null;
            this.zzaY = null;
            this.zzaZ = null;
            this.zzba = null;
            this.zzcwL = -1;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzaS != null) {
                zzbyc.zzq(1, this.zzaS);
            }
            if (this.zzaT != null) {
                zzbyc.zzb(2, this.zzaT.longValue());
            }
            if (this.stackTrace != null) {
                zzbyc.zzq(3, this.stackTrace);
            }
            if (this.zzaU != null) {
                zzbyc.zzq(4, this.zzaU);
            }
            if (this.zzaV != null) {
                zzbyc.zzq(5, this.zzaV);
            }
            if (this.zzaW != null) {
                zzbyc.zzb(6, this.zzaW.longValue());
            }
            if (this.zzaX != null) {
                zzbyc.zzb(7, this.zzaX.longValue());
            }
            if (this.zzaY != null) {
                zzbyc.zzq(8, this.zzaY);
            }
            if (this.zzaZ != null) {
                zzbyc.zzb(9, this.zzaZ.longValue());
            }
            if (this.zzba != null) {
                zzbyc.zzq(10, this.zzba);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zze(zzbyb);
        }

        public final zza zze(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                switch (zzaeW) {
                    case 0:
                        return this;
                    case 10:
                        this.zzaS = zzbyb.readString();
                        break;
                    case 16:
                        this.zzaT = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 26:
                        this.stackTrace = zzbyb.readString();
                        break;
                    case 34:
                        this.zzaU = zzbyb.readString();
                        break;
                    case 42:
                        this.zzaV = zzbyb.readString();
                        break;
                    case 48:
                        this.zzaW = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 56:
                        this.zzaX = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 66:
                        this.zzaY = zzbyb.readString();
                        break;
                    case 72:
                        this.zzaZ = Long.valueOf(zzbyb.zzaeZ());
                        break;
                    case 82:
                        this.zzba = zzbyb.readString();
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
            if (this.zzaS != null) {
                zzu += zzbyc.zzr(1, this.zzaS);
            }
            if (this.zzaT != null) {
                zzu += zzbyc.zzf(2, this.zzaT.longValue());
            }
            if (this.stackTrace != null) {
                zzu += zzbyc.zzr(3, this.stackTrace);
            }
            if (this.zzaU != null) {
                zzu += zzbyc.zzr(4, this.zzaU);
            }
            if (this.zzaV != null) {
                zzu += zzbyc.zzr(5, this.zzaV);
            }
            if (this.zzaW != null) {
                zzu += zzbyc.zzf(6, this.zzaW.longValue());
            }
            if (this.zzaX != null) {
                zzu += zzbyc.zzf(7, this.zzaX.longValue());
            }
            if (this.zzaY != null) {
                zzu += zzbyc.zzr(8, this.zzaY);
            }
            if (this.zzaZ != null) {
                zzu += zzbyc.zzf(9, this.zzaZ.longValue());
            }
            return this.zzba != null ? zzu + zzbyc.zzr(10, this.zzba) : zzu;
        }
    }
}
