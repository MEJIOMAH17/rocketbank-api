package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.measurement.AppMeasurement.zzd;
import com.google.android.gms.measurement.AppMeasurement.zzf;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class zzauk extends zzauh {
    protected zza zzbvp;
    private volatile zzf zzbvq;
    private zzf zzbvr;
    private long zzbvs;
    private final Map<Activity, zza> zzbvt = new ArrayMap();
    private final CopyOnWriteArrayList<zzd> zzbvu = new CopyOnWriteArrayList();
    private boolean zzbvv;
    private zzf zzbvw;
    private String zzbvx;

    static class zza extends zzf {
        public boolean zzbvC;

        public zza(zza zza) {
            this.zzbqe = zza.zzbqe;
            this.zzbqf = zza.zzbqf;
            this.zzbqg = zza.zzbqg;
            this.zzbvC = zza.zzbvC;
        }

        public zza(String str, String str2, long j) {
            this.zzbqe = str;
            this.zzbqf = str2;
            this.zzbqg = j;
            this.zzbvC = false;
        }
    }

    public zzauk(zzaue zzaue) {
        super(zzaue);
    }

    private void zza(Activity activity, zza zza, final boolean z) {
        zzf zzf = null;
        zzf zzf2 = this.zzbvq != null ? this.zzbvq : (this.zzbvr == null || Math.abs(zznR().elapsedRealtime() - this.zzbvs) >= 1000) ? null : this.zzbvr;
        if (zzf2 != null) {
            zzf = new zzf(zzf2);
        }
        int i = 1;
        this.zzbvv = true;
        try {
            Iterator it = this.zzbvu.iterator();
            while (it.hasNext()) {
                try {
                    i &= ((zzd) it.next()).zza(zzf, zza);
                } catch (Exception e) {
                    zzKl().zzLZ().zzj("onScreenChangeCallback threw exception", e);
                }
            }
        } catch (Exception e2) {
            zzKl().zzLZ().zzj("onScreenChangeCallback loop threw exception", e2);
        } catch (Throwable th) {
            this.zzbvv = false;
        }
        this.zzbvv = false;
        if (i != 0) {
            if (zza.zzbqf == null) {
                zza.zzbqf = zzfS(activity.getClass().getCanonicalName());
            }
            final zzf zza2 = new zza(zza);
            this.zzbvr = this.zzbvq;
            this.zzbvs = zznR().elapsedRealtime();
            this.zzbvq = zza2;
            zzKk().zzm(new Runnable(this) {
                final /* synthetic */ zzauk zzbvA;

                public void run() {
                    if (z && this.zzbvA.zzbvp != null) {
                        this.zzbvA.zza(this.zzbvA.zzbvp);
                    }
                    this.zzbvA.zzbvp = zza2;
                    this.zzbvA.zzKd().zza(zza2);
                }
            });
        }
    }

    private void zza(zza zza) {
        zzJY().zzW(zznR().elapsedRealtime());
        if (zzKj().zzaN(zza.zzbvC)) {
            zza.zzbvC = false;
        }
    }

    public static void zza(zzf zzf, Bundle bundle) {
        if (bundle != null && zzf != null && !bundle.containsKey("_sc")) {
            if (zzf.zzbqe != null) {
                bundle.putString("_sn", zzf.zzbqe);
            }
            bundle.putString("_sc", zzf.zzbqf);
            bundle.putLong("_si", zzf.zzbqg);
        }
    }

    static String zzfS(String str) {
        String[] split = str.split("\\.");
        if (split.length == 0) {
            return str.substring(0, 36);
        }
        str = split[split.length - 1];
        if (str.length() > 36) {
            str = str.substring(0, 36);
        }
        return str;
    }

    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (bundle != null) {
            bundle = bundle.getBundle("com.google.firebase.analytics.screen_service");
            if (bundle != null) {
                zza zzv = zzv(activity);
                zzv.zzbqg = bundle.getLong("id");
                zzv.zzbqe = bundle.getString("name");
                zzv.zzbqf = bundle.getString("referrer_name");
            }
        }
    }

    public void onActivityDestroyed(Activity activity) {
        this.zzbvt.remove(activity);
    }

    public void onActivityPaused(Activity activity) {
        final zza zzv = zzv(activity);
        this.zzbvr = this.zzbvq;
        this.zzbvs = zznR().elapsedRealtime();
        this.zzbvq = null;
        zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauk zzbvA;

            public void run() {
                this.zzbvA.zza(zzv);
                this.zzbvA.zzbvp = null;
                this.zzbvA.zzKd().zza(null);
            }
        });
    }

    public void onActivityResumed(Activity activity) {
        zza(activity, zzv(activity), false);
        zzJY().zzJU();
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        if (bundle != null) {
            zza zza = (zza) this.zzbvt.get(activity);
            if (zza != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putLong("id", zza.zzbqg);
                bundle2.putString("name", zza.zzbqe);
                bundle2.putString("referrer_name", zza.zzbqf);
                bundle.putBundle("com.google.firebase.analytics.screen_service", bundle2);
            }
        }
    }

    public void registerOnScreenChangeCallback(zzd zzd) {
        zzJW();
        if (zzd == null) {
            zzKl().zzMb().log("Attempting to register null OnScreenChangeCallback");
            return;
        }
        this.zzbvu.remove(zzd);
        this.zzbvu.add(zzd);
    }

    public void setCurrentScreen(Activity activity, String str, String str2) {
        int i = VERSION.SDK_INT;
        if (activity == null) {
            zzKl().zzMb().log("setCurrentScreen must be called with a non-null activity");
        } else if (!zzKk().zzbc()) {
            zzKl().zzMb().log("setCurrentScreen must be called from the main thread");
        } else if (this.zzbvv) {
            zzKl().zzMb().log("Cannot call setCurrentScreen from onScreenChangeCallback");
        } else if (this.zzbvq == null) {
            zzKl().zzMb().log("setCurrentScreen cannot be called while no activity active");
        } else if (this.zzbvt.get(activity) == null) {
            zzKl().zzMb().log("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            if (str2 == null) {
                str2 = zzfS(activity.getClass().getCanonicalName());
            }
            boolean equals = this.zzbvq.zzbqf.equals(str2);
            boolean z = (this.zzbvq.zzbqe == null && str == null) || (this.zzbvq.zzbqe != null && this.zzbvq.zzbqe.equals(str));
            if (equals && z) {
                zzKl().zzMc().log("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > zzKn().zzKP())) {
                zzKl().zzMb().zzj("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str2 == null || (str2.length() > 0 && str2.length() <= zzKn().zzKP())) {
                zzKl().zzMf().zze("Setting current screen to name, class", str == null ? "null" : str, str2);
                zza zza = new zza(str, str2, zzKh().zzNk());
                this.zzbvt.put(activity, zza);
                zza(activity, zza, true);
            } else {
                zzKl().zzMb().zzj("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            }
        }
    }

    public void unregisterOnScreenChangeCallback(zzd zzd) {
        zzJW();
        this.zzbvu.remove(zzd);
    }

    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    public zza zzMW() {
        zzob();
        zzmR();
        return this.zzbvp;
    }

    public zzf zzMX() {
        zzJW();
        zzf zzf = this.zzbvq;
        return zzf == null ? null : new zzf(zzf);
    }

    public void zza(String str, zzf zzf) {
        zzmR();
        synchronized (this) {
            if (this.zzbvx == null || this.zzbvx.equals(str) || zzf != null) {
                this.zzbvx = str;
                this.zzbvw = zzf;
            }
        }
    }

    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    protected void zzmS() {
    }

    public /* bridge */ /* synthetic */ zze zznR() {
        return super.zznR();
    }

    zza zzv(Activity activity) {
        zzac.zzw(activity);
        zza zza = (zza) this.zzbvt.get(activity);
        if (zza != null) {
            return zza;
        }
        zza zza2 = new zza(null, zzfS(activity.getClass().getCanonicalName()), zzKh().zzNk());
        this.zzbvt.put(activity, zza2);
        return zza2;
    }
}
