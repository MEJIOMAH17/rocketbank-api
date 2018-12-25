package com.google.android.gms.internal;

import android.os.Binder;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzy;
import com.google.android.gms.common.zzg;
import com.google.android.gms.common.zzh;
import com.google.android.gms.internal.zzatt.zza;
import com.google.android.gms.measurement.AppMeasurement.zzf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

public class zzauf extends zza {
    private final zzaue zzbqb;
    private Boolean zzbuM;
    private String zzbuN;

    public zzauf(zzaue zzaue) {
        this(zzaue, null);
    }

    public zzauf(zzaue zzaue, String str) {
        zzac.zzw(zzaue);
        this.zzbqb = zzaue;
        this.zzbuN = str;
    }

    private void zzb(zzatd zzatd, boolean z) {
        zzac.zzw(zzatd);
        zzm(zzatd.packageName, z);
        this.zzbqb.zzKh().zzga(zzatd.zzbqK);
    }

    private void zzm(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            this.zzbqb.zzKl().zzLZ().log("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        try {
            zzn(str, z);
        } catch (SecurityException e) {
            this.zzbqb.zzKl().zzLZ().zzj("Measurement Service called with invalid calling package. appId", zzatx.zzfE(str));
            throw e;
        }
    }

    public List<zzauq> zza(final zzatd zzatd, boolean z) {
        zzb(zzatd, false);
        try {
            List<zzaus> list = (List) this.zzbqb.zzKk().zzd(new Callable<List<zzaus>>(this) {
                final /* synthetic */ zzauf zzbuP;

                public /* synthetic */ Object call() throws Exception {
                    return zzMP();
                }

                public List<zzaus> zzMP() throws Exception {
                    this.zzbuP.zzbqb.zzMN();
                    return this.zzbuP.zzbqb.zzKg().zzft(zzatd.packageName);
                }
            }).get();
            List<zzauq> arrayList = new ArrayList(list.size());
            for (zzaus zzaus : list) {
                if (z || !zzaut.zzgd(zzaus.mName)) {
                    arrayList.add(new zzauq(zzaus));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            this.zzbqb.zzKl().zzLZ().zze("Failed to get user attributes. appId", zzatx.zzfE(zzatd.packageName), e);
            return null;
        }
    }

    public List<zzatg> zza(final String str, final String str2, final zzatd zzatd) {
        zzb(zzatd, false);
        try {
            return (List) this.zzbqb.zzKk().zzd(new Callable<List<zzatg>>(this) {
                final /* synthetic */ zzauf zzbuP;

                public /* synthetic */ Object call() throws Exception {
                    return zzMP();
                }

                public List<zzatg> zzMP() throws Exception {
                    this.zzbuP.zzbqb.zzMN();
                    return this.zzbuP.zzbqb.zzKg().zzl(zzatd.packageName, str, str2);
                }
            }).get();
        } catch (InterruptedException e) {
            this.zzbqb.zzKl().zzLZ().zzj("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    public List<zzauq> zza(final String str, final String str2, final String str3, boolean z) {
        zzm(str, true);
        try {
            List<zzaus> list = (List) this.zzbqb.zzKk().zzd(new Callable<List<zzaus>>(this) {
                final /* synthetic */ zzauf zzbuP;

                public /* synthetic */ Object call() throws Exception {
                    return zzMP();
                }

                public List<zzaus> zzMP() throws Exception {
                    this.zzbuP.zzbqb.zzMN();
                    return this.zzbuP.zzbqb.zzKg().zzk(str, str2, str3);
                }
            }).get();
            List<zzauq> arrayList = new ArrayList(list.size());
            for (zzaus zzaus : list) {
                if (z || !zzaut.zzgd(zzaus.mName)) {
                    arrayList.add(new zzauq(zzaus));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            this.zzbqb.zzKl().zzLZ().zze("Failed to get user attributes. appId", zzatx.zzfE(str), e);
            return Collections.emptyList();
        }
    }

    public List<zzauq> zza(final String str, final String str2, boolean z, final zzatd zzatd) {
        zzb(zzatd, false);
        try {
            List<zzaus> list = (List) this.zzbqb.zzKk().zzd(new Callable<List<zzaus>>(this) {
                final /* synthetic */ zzauf zzbuP;

                public /* synthetic */ Object call() throws Exception {
                    return zzMP();
                }

                public List<zzaus> zzMP() throws Exception {
                    this.zzbuP.zzbqb.zzMN();
                    return this.zzbuP.zzbqb.zzKg().zzk(zzatd.packageName, str, str2);
                }
            }).get();
            List<zzauq> arrayList = new ArrayList(list.size());
            for (zzaus zzaus : list) {
                if (z || !zzaut.zzgd(zzaus.mName)) {
                    arrayList.add(new zzauq(zzaus));
                }
            }
            return arrayList;
        } catch (InterruptedException e) {
            this.zzbqb.zzKl().zzLZ().zze("Failed to get user attributes. appId", zzatx.zzfE(zzatd.packageName), e);
            return Collections.emptyList();
        }
    }

    public void zza(long j, String str, String str2, String str3) {
        final String str4 = str2;
        final String str5 = str3;
        final String str6 = str;
        final long j2 = j;
        this.zzbqb.zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauf zzbuP;

            public void run() {
                if (str4 == null) {
                    this.zzbuP.zzbqb.zzKe().zza(str5, null);
                    return;
                }
                zzf zzf = new zzf();
                zzf.zzbqe = str6;
                zzf.zzbqf = str4;
                zzf.zzbqg = j2;
                this.zzbuP.zzbqb.zzKe().zza(str5, zzf);
            }
        });
    }

    public void zza(final zzatd zzatd) {
        zzb(zzatd, false);
        this.zzbqb.zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauf zzbuP;

            public void run() {
                this.zzbuP.zzbqb.zzMN();
                this.zzbuP.zzbqb.zze(zzatd);
            }
        });
    }

    public void zza(zzatg zzatg, final zzatd zzatd) {
        zzaud zzKk;
        Runnable c05822;
        zzac.zzw(zzatg);
        zzac.zzw(zzatg.zzbqX);
        zzb(zzatd, false);
        final zzatg zzatg2 = new zzatg(zzatg);
        zzatg2.packageName = zzatd.packageName;
        if (zzatg.zzbqX.getValue() == null) {
            zzKk = this.zzbqb.zzKk();
            c05822 = new Runnable(this) {
                final /* synthetic */ zzauf zzbuP;

                public void run() {
                    this.zzbuP.zzbqb.zzMN();
                    this.zzbuP.zzbqb.zzc(zzatg2, zzatd);
                }
            };
        } else {
            zzKk = this.zzbqb.zzKk();
            c05822 = new Runnable(this) {
                final /* synthetic */ zzauf zzbuP;

                public void run() {
                    this.zzbuP.zzbqb.zzMN();
                    this.zzbuP.zzbqb.zzb(zzatg2, zzatd);
                }
            };
        }
        zzKk.zzm(c05822);
    }

    public void zza(final zzatq zzatq, final zzatd zzatd) {
        zzac.zzw(zzatq);
        zzb(zzatd, false);
        this.zzbqb.zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauf zzbuP;

            public void run() {
                this.zzbuP.zzbqb.zzMN();
                this.zzbuP.zzbqb.zzb(zzatq, zzatd);
            }
        });
    }

    public void zza(final zzatq zzatq, final String str, String str2) {
        zzac.zzw(zzatq);
        zzac.zzdr(str);
        zzm(str, true);
        this.zzbqb.zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauf zzbuP;

            public void run() {
                this.zzbuP.zzbqb.zzMN();
                this.zzbuP.zzbqb.zzb(zzatq, str);
            }
        });
    }

    public void zza(final zzauq zzauq, final zzatd zzatd) {
        zzaud zzKk;
        Runnable anonymousClass13;
        zzac.zzw(zzauq);
        zzb(zzatd, false);
        if (zzauq.getValue() == null) {
            zzKk = this.zzbqb.zzKk();
            anonymousClass13 = new Runnable(this) {
                final /* synthetic */ zzauf zzbuP;

                public void run() {
                    this.zzbuP.zzbqb.zzMN();
                    this.zzbuP.zzbqb.zzc(zzauq, zzatd);
                }
            };
        } else {
            zzKk = this.zzbqb.zzKk();
            anonymousClass13 = new Runnable(this) {
                final /* synthetic */ zzauf zzbuP;

                public void run() {
                    this.zzbuP.zzbqb.zzMN();
                    this.zzbuP.zzbqb.zzb(zzauq, zzatd);
                }
            };
        }
        zzKk.zzm(anonymousClass13);
    }

    public byte[] zza(final zzatq zzatq, final String str) {
        zzac.zzdr(str);
        zzac.zzw(zzatq);
        zzm(str, true);
        this.zzbqb.zzKl().zzMe().zzj("Log and bundle. event", zzatq.name);
        long nanoTime = this.zzbqb.zznR().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zzbqb.zzKk().zze(new Callable<byte[]>(this) {
                final /* synthetic */ zzauf zzbuP;

                public /* synthetic */ Object call() throws Exception {
                    return zzMQ();
                }

                public byte[] zzMQ() throws Exception {
                    this.zzbuP.zzbqb.zzMN();
                    return this.zzbuP.zzbqb.zza(zzatq, str);
                }
            }).get();
            if (bArr == null) {
                this.zzbqb.zzKl().zzLZ().zzj("Log and bundle returned null. appId", zzatx.zzfE(str));
                bArr = new byte[0];
            }
            this.zzbqb.zzKl().zzMe().zzd("Log and bundle processed. event, size, time_ms", zzatq.name, Integer.valueOf(bArr.length), Long.valueOf((this.zzbqb.zznR().nanoTime() / 1000000) - nanoTime));
            return bArr;
        } catch (InterruptedException e) {
            this.zzbqb.zzKl().zzLZ().zzd("Failed to log and bundle. appId, event, error", zzatx.zzfE(str), zzatq.name, e);
            return null;
        }
    }

    public void zzb(final zzatd zzatd) {
        zzb(zzatd, false);
        this.zzbqb.zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauf zzbuP;

            public void run() {
                this.zzbuP.zzbqb.zzMN();
                this.zzbuP.zzbqb.zzd(zzatd);
            }
        });
    }

    public void zzb(zzatg zzatg) {
        zzaud zzKk;
        Runnable c05844;
        zzac.zzw(zzatg);
        zzac.zzw(zzatg.zzbqX);
        zzm(zzatg.packageName, true);
        final zzatg zzatg2 = new zzatg(zzatg);
        if (zzatg.zzbqX.getValue() == null) {
            zzKk = this.zzbqb.zzKk();
            c05844 = new Runnable(this) {
                final /* synthetic */ zzauf zzbuP;

                public void run() {
                    this.zzbuP.zzbqb.zzMN();
                    this.zzbuP.zzbqb.zze(zzatg2);
                }
            };
        } else {
            zzKk = this.zzbqb.zzKk();
            c05844 = new Runnable(this) {
                final /* synthetic */ zzauf zzbuP;

                public void run() {
                    this.zzbuP.zzbqb.zzMN();
                    this.zzbuP.zzbqb.zzd(zzatg2);
                }
            };
        }
        zzKk.zzm(c05844);
    }

    public String zzc(zzatd zzatd) {
        zzb(zzatd, false);
        return this.zzbqb.zzfP(zzatd.packageName);
    }

    public List<zzatg> zzn(final String str, final String str2, final String str3) {
        zzm(str, true);
        try {
            return (List) this.zzbqb.zzKk().zzd(new Callable<List<zzatg>>(this) {
                final /* synthetic */ zzauf zzbuP;

                public /* synthetic */ Object call() throws Exception {
                    return zzMP();
                }

                public List<zzatg> zzMP() throws Exception {
                    this.zzbuP.zzbqb.zzMN();
                    return this.zzbuP.zzbqb.zzKg().zzl(str, str2, str3);
                }
            }).get();
        } catch (InterruptedException e) {
            this.zzbqb.zzKl().zzLZ().zzj("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    protected void zzn(String str, boolean z) throws SecurityException {
        if (z) {
            if (this.zzbuM == null) {
                if (!("com.google.android.gms".equals(this.zzbuN) || zzy.zzf(this.zzbqb.getContext(), Binder.getCallingUid()))) {
                    if (!zzh.zzaN(this.zzbqb.getContext()).zza(this.zzbqb.getContext().getPackageManager(), Binder.getCallingUid())) {
                        z = false;
                        this.zzbuM = Boolean.valueOf(z);
                    }
                }
                z = true;
                this.zzbuM = Boolean.valueOf(z);
            }
            if (this.zzbuM.booleanValue()) {
                return;
            }
        }
        if (this.zzbuN == null && zzg.zzc(this.zzbqb.getContext(), Binder.getCallingUid(), str)) {
            this.zzbuN = str;
        }
        if (!str.equals(this.zzbuN)) {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", new Object[]{str}));
        }
    }
}
