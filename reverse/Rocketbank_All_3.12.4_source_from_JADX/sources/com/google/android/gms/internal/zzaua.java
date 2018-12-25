package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.internal.zzac;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Locale;

class zzaua extends zzauh {
    static final Pair<String, Long> zzbsZ = new Pair("", Long.valueOf(0));
    private SharedPreferences zzagD;
    public final zzc zzbta = new zzc("health_monitor", zzKn().zzpz());
    public final zzb zzbtb = new zzb(this, "last_upload", 0);
    public final zzb zzbtc = new zzb(this, "last_upload_attempt", 0);
    public final zzb zzbtd = new zzb(this, "backoff", 0);
    public final zzb zzbte = new zzb(this, "last_delete_stale", 0);
    public final zzb zzbtf = new zzb(this, "midnight_offset", 0);
    private String zzbtg;
    private boolean zzbth;
    private long zzbti;
    private String zzbtj;
    private long zzbtk;
    private final Object zzbtl = new Object();
    private SecureRandom zzbtm;
    public final zzb zzbtn = new zzb(this, "time_before_start", 10000);
    public final zzb zzbto = new zzb(this, "session_timeout", 1800000);
    public final zza zzbtp = new zza(this, "start_new_session", true);
    public final zzb zzbtq = new zzb(this, "last_pause_time", 0);
    public final zzb zzbtr = new zzb(this, "time_active", 0);
    public boolean zzbts;

    public final class zza {
        private final String zzAX;
        private boolean zzayS;
        private final boolean zzbtt;
        private boolean zzbtu;
        final /* synthetic */ zzaua zzbtv;

        public zza(zzaua zzaua, String str, boolean z) {
            this.zzbtv = zzaua;
            zzac.zzdr(str);
            this.zzAX = str;
            this.zzbtt = z;
        }

        private void zzMq() {
            if (!this.zzbtu) {
                this.zzbtu = true;
                this.zzayS = this.zzbtv.zzagD.getBoolean(this.zzAX, this.zzbtt);
            }
        }

        public final boolean get() {
            zzMq();
            return this.zzayS;
        }

        public final void set(boolean z) {
            Editor edit = this.zzbtv.zzagD.edit();
            edit.putBoolean(this.zzAX, z);
            edit.apply();
            this.zzayS = z;
        }
    }

    public final class zzb {
        private final String zzAX;
        private long zzadd;
        private boolean zzbtu;
        final /* synthetic */ zzaua zzbtv;
        private final long zzbtw;

        public zzb(zzaua zzaua, String str, long j) {
            this.zzbtv = zzaua;
            zzac.zzdr(str);
            this.zzAX = str;
            this.zzbtw = j;
        }

        private void zzMq() {
            if (!this.zzbtu) {
                this.zzbtu = true;
                this.zzadd = this.zzbtv.zzagD.getLong(this.zzAX, this.zzbtw);
            }
        }

        public final long get() {
            zzMq();
            return this.zzadd;
        }

        public final void set(long j) {
            Editor edit = this.zzbtv.zzagD.edit();
            edit.putLong(this.zzAX, j);
            edit.apply();
            this.zzadd = j;
        }
    }

    public final class zzc {
        private final long zzagH;
        final /* synthetic */ zzaua zzbtv;
        final String zzbtx;
        private final String zzbty;
        private final String zzbtz;

        private zzc(zzaua zzaua, String str, long j) {
            this.zzbtv = zzaua;
            zzac.zzdr(str);
            zzac.zzaw(j > 0);
            this.zzbtx = String.valueOf(str).concat(":start");
            this.zzbty = String.valueOf(str).concat(":count");
            this.zzbtz = String.valueOf(str).concat(":value");
            this.zzagH = j;
        }

        private void zzqk() {
            this.zzbtv.zzmR();
            long currentTimeMillis = this.zzbtv.zznR().currentTimeMillis();
            Editor edit = this.zzbtv.zzagD.edit();
            edit.remove(this.zzbty);
            edit.remove(this.zzbtz);
            edit.putLong(this.zzbtx, currentTimeMillis);
            edit.apply();
        }

        private long zzql() {
            this.zzbtv.zzmR();
            long zzqn = zzqn();
            if (zzqn != 0) {
                return Math.abs(zzqn - this.zzbtv.zznR().currentTimeMillis());
            }
            zzqk();
            return 0;
        }

        private long zzqn() {
            return this.zzbtv.zzMk().getLong(this.zzbtx, 0);
        }

        public final void zzcc(String str) {
            zzk(str, 1);
        }

        public final void zzk(String str, long j) {
            this.zzbtv.zzmR();
            if (zzqn() == 0) {
                zzqk();
            }
            if (str == null) {
                str = "";
            }
            long j2 = this.zzbtv.zzagD.getLong(this.zzbty, 0);
            if (j2 <= 0) {
                Editor edit = this.zzbtv.zzagD.edit();
                edit.putString(this.zzbtz, str);
                edit.putLong(this.zzbty, j);
                edit.apply();
                return;
            }
            long j3 = j2 + j;
            Object obj = (this.zzbtv.zzMh().nextLong() & Long.MAX_VALUE) < (Long.MAX_VALUE / j3) * j ? 1 : null;
            Editor edit2 = this.zzbtv.zzagD.edit();
            if (obj != null) {
                edit2.putString(this.zzbtz, str);
            }
            edit2.putLong(this.zzbty, j3);
            edit2.apply();
        }

        public final Pair<String, Long> zzqm() {
            this.zzbtv.zzmR();
            long zzql = zzql();
            if (zzql < this.zzagH) {
                return null;
            }
            if (zzql > (this.zzagH << 1)) {
                zzqk();
                return null;
            }
            String string = this.zzbtv.zzMk().getString(this.zzbtz, null);
            long j = this.zzbtv.zzMk().getLong(this.zzbty, 0);
            zzqk();
            if (string != null) {
                if (j > 0) {
                    return new Pair(string, Long.valueOf(j));
                }
            }
            return zzaua.zzbsZ;
        }
    }

    zzaua(zzaue zzaue) {
        super(zzaue);
    }

    private SharedPreferences zzMk() {
        zzmR();
        zzob();
        return this.zzagD;
    }

    void setMeasurementEnabled(boolean z) {
        zzmR();
        zzKl().zzMf().zzj("Setting measurementEnabled", Boolean.valueOf(z));
        Editor edit = zzMk().edit();
        edit.putBoolean("measurement_enabled", z);
        edit.apply();
    }

    java.lang.String zzKq() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r2.zzmR();
        r0 = android.support.v4.util.Preconditions.zzabN$ec61dce();	 Catch:{ IllegalStateException -> 0x000c }
        r0 = r0.getId();	 Catch:{ IllegalStateException -> 0x000c }
        return r0;
    L_0x000c:
        r0 = r2.zzKl();
        r0 = r0.zzMb();
        r1 = "Failed to retrieve Firebase Instance Id";
        r0.log(r1);
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaua.zzKq():java.lang.String");
    }

    protected SecureRandom zzMh() {
        zzmR();
        if (this.zzbtm == null) {
            this.zzbtm = new SecureRandom();
        }
        return this.zzbtm;
    }

    String zzMi() {
        zzMh().nextBytes(new byte[16]);
        return String.format(Locale.US, "%032x", new Object[]{new BigInteger(1, r0)});
    }

    long zzMj() {
        zzob();
        zzmR();
        long j = this.zzbtf.get();
        if (j != 0) {
            return j;
        }
        j = (long) (1 + zzMh().nextInt(86400000));
        this.zzbtf.set(j);
        return j;
    }

    String zzMl() {
        zzmR();
        return zzMk().getString("gmp_app_id", null);
    }

    String zzMm() {
        synchronized (this.zzbtl) {
            if (Math.abs(zznR().elapsedRealtime() - this.zzbtk) < 1000) {
                String str = this.zzbtj;
                return str;
            }
            return null;
        }
    }

    Boolean zzMn() {
        zzmR();
        return !zzMk().contains("use_service") ? null : Boolean.valueOf(zzMk().getBoolean("use_service", false));
    }

    void zzMo() {
        zzmR();
        zzKl().zzMf().log("Clearing collection preferences.");
        boolean contains = zzMk().contains("measurement_enabled");
        boolean z = true;
        if (contains) {
            z = zzaK(true);
        }
        Editor edit = zzMk().edit();
        edit.clear();
        edit.apply();
        if (contains) {
            setMeasurementEnabled(z);
        }
    }

    protected String zzMp() {
        zzmR();
        String string = zzMk().getString("previous_os_version", null);
        String zzLS = zzKc().zzLS();
        if (!(TextUtils.isEmpty(zzLS) || zzLS.equals(string))) {
            Editor edit = zzMk().edit();
            edit.putString("previous_os_version", zzLS);
            edit.apply();
        }
        return string;
    }

    void zzaJ(boolean z) {
        zzmR();
        zzKl().zzMf().zzj("Setting useService", Boolean.valueOf(z));
        Editor edit = zzMk().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    boolean zzaK(boolean z) {
        zzmR();
        return zzMk().getBoolean("measurement_enabled", z);
    }

    Pair<String, Boolean> zzfG(String str) {
        zzmR();
        long elapsedRealtime = zznR().elapsedRealtime();
        if (this.zzbtg != null && elapsedRealtime < this.zzbti) {
            return new Pair(this.zzbtg, Boolean.valueOf(this.zzbth));
        }
        this.zzbti = elapsedRealtime + zzKn().zzfm(str);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(getContext());
            this.zzbtg = advertisingIdInfo.getId();
            if (this.zzbtg == null) {
                this.zzbtg = "";
            }
            this.zzbth = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Throwable th) {
            zzKl().zzMe().zzj("Unable to get advertising id", th);
            this.zzbtg = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair(this.zzbtg, Boolean.valueOf(this.zzbth));
    }

    String zzfH(String str) {
        zzmR();
        str = (String) zzfG(str).first;
        if (zzaut.zzch("MD5") == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new Object[]{new BigInteger(1, zzaut.zzch("MD5").digest(str.getBytes()))});
    }

    void zzfI(String str) {
        zzmR();
        Editor edit = zzMk().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    void zzfJ(String str) {
        synchronized (this.zzbtl) {
            this.zzbtj = str;
            this.zzbtk = zznR().elapsedRealtime();
        }
    }

    protected void zzmS() {
        this.zzagD = getContext().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.zzbts = this.zzagD.getBoolean("has_been_opened", false);
        if (!this.zzbts) {
            Editor edit = this.zzagD.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
    }
}
