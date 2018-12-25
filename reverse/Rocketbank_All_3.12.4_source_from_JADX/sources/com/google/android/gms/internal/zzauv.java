package com.google.android.gms.internal;

import java.io.IOException;

public interface zzauv {

    public static final class zza extends zzbyd<zza> {
        private static volatile zza[] zzbwN;
        public String name;
        public Boolean zzbwO;
        public Boolean zzbwP;

        public zza() {
            zzNw();
        }

        public static zza[] zzNv() {
            if (zzbwN == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbwN == null) {
                        zzbwN = new zza[0];
                    }
                }
            }
            return zzbwN;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zza = (zza) obj;
            if (this.name == null) {
                if (zza.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zza.name)) {
                return false;
            }
            if (this.zzbwO == null) {
                if (zza.zzbwO != null) {
                    return false;
                }
            } else if (!this.zzbwO.equals(zza.zzbwO)) {
                return false;
            }
            if (this.zzbwP == null) {
                if (zza.zzbwP != null) {
                    return false;
                }
            } else if (!this.zzbwP.equals(zza.zzbwP)) {
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
            int hashCode = (((((((527 + getClass().getName().hashCode()) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzbwO == null ? 0 : this.zzbwO.hashCode())) * 31) + (this.zzbwP == null ? 0 : this.zzbwP.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zza zzM(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 10) {
                    this.name = zzbyb.readString();
                } else if (zzaeW == 16) {
                    this.zzbwO = Boolean.valueOf(zzbyb.zzafc());
                } else if (zzaeW == 24) {
                    this.zzbwP = Boolean.valueOf(zzbyb.zzafc());
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final zza zzNw() {
            this.name = null;
            this.zzbwO = null;
            this.zzbwP = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.name != null) {
                zzbyc.zzq(1, this.name);
            }
            if (this.zzbwO != null) {
                zzbyc.zzg(2, this.zzbwO.booleanValue());
            }
            if (this.zzbwP != null) {
                zzbyc.zzg(3, this.zzbwP.booleanValue());
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzM(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.name != null) {
                zzu += zzbyc.zzr(1, this.name);
            }
            if (this.zzbwO != null) {
                zzu += zzbyc.zzh(2, this.zzbwO.booleanValue());
            }
            return this.zzbwP != null ? zzu + zzbyc.zzh(3, this.zzbwP.booleanValue()) : zzu;
        }
    }

    public static final class zzb extends zzbyd<zzb> {
        public String zzbqK;
        public Long zzbwQ;
        public Integer zzbwR;
        public zzc[] zzbwS;
        public zza[] zzbwT;
        public com.google.android.gms.internal.zzauu.zza[] zzbwU;

        public zzb() {
            zzNx();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzb = (zzb) obj;
            if (this.zzbwQ == null) {
                if (zzb.zzbwQ != null) {
                    return false;
                }
            } else if (!this.zzbwQ.equals(zzb.zzbwQ)) {
                return false;
            }
            if (this.zzbqK == null) {
                if (zzb.zzbqK != null) {
                    return false;
                }
            } else if (!this.zzbqK.equals(zzb.zzbqK)) {
                return false;
            }
            if (this.zzbwR == null) {
                if (zzb.zzbwR != null) {
                    return false;
                }
            } else if (!this.zzbwR.equals(zzb.zzbwR)) {
                return false;
            }
            if (!zzbyh.equals(this.zzbwS, zzb.zzbwS) || !zzbyh.equals(this.zzbwT, zzb.zzbwT) || !zzbyh.equals(this.zzbwU, zzb.zzbwU)) {
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
            int hashCode = (((((((((((((527 + getClass().getName().hashCode()) * 31) + (this.zzbwQ == null ? 0 : this.zzbwQ.hashCode())) * 31) + (this.zzbqK == null ? 0 : this.zzbqK.hashCode())) * 31) + (this.zzbwR == null ? 0 : this.zzbwR.hashCode())) * 31) + zzbyh.hashCode(this.zzbwS)) * 31) + zzbyh.hashCode(this.zzbwT)) * 31) + zzbyh.hashCode(this.zzbwU)) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zzb zzN(zzbyb zzbyb) throws IOException {
            while (true) {
                int zzaeW = zzbyb.zzaeW();
                if (zzaeW == 0) {
                    return this;
                }
                if (zzaeW == 8) {
                    this.zzbwQ = Long.valueOf(zzbyb.zzaeZ());
                } else if (zzaeW == 18) {
                    this.zzbqK = zzbyb.readString();
                } else if (zzaeW == 24) {
                    this.zzbwR = Integer.valueOf(zzbyb.zzafa());
                } else if (zzaeW == 34) {
                    zzaeW = zzbym.zzb(zzbyb, 34);
                    r1 = this.zzbwS == null ? 0 : this.zzbwS.length;
                    r0 = new zzc[(zzaeW + r1)];
                    if (r1 != 0) {
                        System.arraycopy(this.zzbwS, 0, r0, 0, r1);
                    }
                    while (r1 < r0.length - 1) {
                        r0[r1] = new zzc();
                        zzbyb.zza(r0[r1]);
                        zzbyb.zzaeW();
                        r1++;
                    }
                    r0[r1] = new zzc();
                    zzbyb.zza(r0[r1]);
                    this.zzbwS = r0;
                } else if (zzaeW == 42) {
                    zzaeW = zzbym.zzb(zzbyb, 42);
                    r1 = this.zzbwT == null ? 0 : this.zzbwT.length;
                    r0 = new zza[(zzaeW + r1)];
                    if (r1 != 0) {
                        System.arraycopy(this.zzbwT, 0, r0, 0, r1);
                    }
                    while (r1 < r0.length - 1) {
                        r0[r1] = new zza();
                        zzbyb.zza(r0[r1]);
                        zzbyb.zzaeW();
                        r1++;
                    }
                    r0[r1] = new zza();
                    zzbyb.zza(r0[r1]);
                    this.zzbwT = r0;
                } else if (zzaeW == 50) {
                    zzaeW = zzbym.zzb(zzbyb, 50);
                    r1 = this.zzbwU == null ? 0 : this.zzbwU.length;
                    r0 = new com.google.android.gms.internal.zzauu.zza[(zzaeW + r1)];
                    if (r1 != 0) {
                        System.arraycopy(this.zzbwU, 0, r0, 0, r1);
                    }
                    while (r1 < r0.length - 1) {
                        r0[r1] = new com.google.android.gms.internal.zzauu.zza();
                        zzbyb.zza(r0[r1]);
                        zzbyb.zzaeW();
                        r1++;
                    }
                    r0[r1] = new com.google.android.gms.internal.zzauu.zza();
                    zzbyb.zza(r0[r1]);
                    this.zzbwU = r0;
                } else if (!super.zza(zzbyb, zzaeW)) {
                    return this;
                }
            }
        }

        public final zzb zzNx() {
            this.zzbwQ = null;
            this.zzbqK = null;
            this.zzbwR = null;
            this.zzbwS = zzc.zzNy();
            this.zzbwT = zza.zzNv();
            this.zzbwU = com.google.android.gms.internal.zzauu.zza.zzNl();
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzbwQ != null) {
                zzbyc.zzb(1, this.zzbwQ.longValue());
            }
            if (this.zzbqK != null) {
                zzbyc.zzq(2, this.zzbqK);
            }
            if (this.zzbwR != null) {
                zzbyc.zzJ(3, this.zzbwR.intValue());
            }
            int i = 0;
            if (this.zzbwS != null && this.zzbwS.length > 0) {
                for (zzbyj zzbyj : this.zzbwS) {
                    if (zzbyj != null) {
                        zzbyc.zza(4, zzbyj);
                    }
                }
            }
            if (this.zzbwT != null && this.zzbwT.length > 0) {
                for (zzbyj zzbyj2 : this.zzbwT) {
                    if (zzbyj2 != null) {
                        zzbyc.zza(5, zzbyj2);
                    }
                }
            }
            if (this.zzbwU != null && this.zzbwU.length > 0) {
                while (i < this.zzbwU.length) {
                    zzbyj zzbyj3 = this.zzbwU[i];
                    if (zzbyj3 != null) {
                        zzbyc.zza(6, zzbyj3);
                    }
                    i++;
                }
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzN(zzbyb);
        }

        protected final int zzu() {
            int i;
            int zzu = super.zzu();
            if (this.zzbwQ != null) {
                zzu += zzbyc.zzf(1, this.zzbwQ.longValue());
            }
            if (this.zzbqK != null) {
                zzu += zzbyc.zzr(2, this.zzbqK);
            }
            if (this.zzbwR != null) {
                zzu += zzbyc.zzL(3, this.zzbwR.intValue());
            }
            int i2 = 0;
            if (this.zzbwS != null && this.zzbwS.length > 0) {
                i = zzu;
                for (zzbyj zzbyj : this.zzbwS) {
                    if (zzbyj != null) {
                        i += zzbyc.zzc(4, zzbyj);
                    }
                }
                zzu = i;
            }
            if (this.zzbwT != null && this.zzbwT.length > 0) {
                i = zzu;
                for (zzbyj zzbyj2 : this.zzbwT) {
                    if (zzbyj2 != null) {
                        i += zzbyc.zzc(5, zzbyj2);
                    }
                }
                zzu = i;
            }
            if (this.zzbwU != null && this.zzbwU.length > 0) {
                while (i2 < this.zzbwU.length) {
                    zzbyj zzbyj3 = this.zzbwU[i2];
                    if (zzbyj3 != null) {
                        zzu += zzbyc.zzc(6, zzbyj3);
                    }
                    i2++;
                }
            }
            return zzu;
        }
    }

    public static final class zzc extends zzbyd<zzc> {
        private static volatile zzc[] zzbwV;
        public String value;
        public String zzaB;

        public zzc() {
            zzNz();
        }

        public static zzc[] zzNy() {
            if (zzbwV == null) {
                synchronized (zzbyh.zzcwK) {
                    if (zzbwV == null) {
                        zzbwV = new zzc[0];
                    }
                }
            }
            return zzbwV;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzc = (zzc) obj;
            if (this.zzaB == null) {
                if (zzc.zzaB != null) {
                    return false;
                }
            } else if (!this.zzaB.equals(zzc.zzaB)) {
                return false;
            }
            if (this.value == null) {
                if (zzc.value != null) {
                    return false;
                }
            } else if (!this.value.equals(zzc.value)) {
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
            int hashCode = (((((527 + getClass().getName().hashCode()) * 31) + (this.zzaB == null ? 0 : this.zzaB.hashCode())) * 31) + (this.value == null ? 0 : this.value.hashCode())) * 31;
            if (this.zzcwC != null) {
                if (!this.zzcwC.isEmpty()) {
                    i = this.zzcwC.hashCode();
                }
            }
            return hashCode + i;
        }

        public final zzc zzNz() {
            this.zzaB = null;
            this.value = null;
            this.zzcwC = null;
            this.zzcwL = -1;
            return this;
        }

        public final zzc zzO(zzbyb zzbyb) throws IOException {
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

        public final void zza(zzbyc zzbyc) throws IOException {
            if (this.zzaB != null) {
                zzbyc.zzq(1, this.zzaB);
            }
            if (this.value != null) {
                zzbyc.zzq(2, this.value);
            }
            super.zza(zzbyc);
        }

        public final /* synthetic */ zzbyj zzb(zzbyb zzbyb) throws IOException {
            return zzO(zzbyb);
        }

        protected final int zzu() {
            int zzu = super.zzu();
            if (this.zzaB != null) {
                zzu += zzbyc.zzr(1, this.zzaB);
            }
            return this.value != null ? zzu + zzbyc.zzr(2, this.value) : zzu;
        }
    }
}
