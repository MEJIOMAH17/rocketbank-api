package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.measurement.AppMeasurement;

public class zzatx extends zzauh {
    private final String zzaGr = zzKn().zzKK();
    private final long zzbqw = zzKn().zzKv();
    private final char zzbsC;
    private final zza zzbsD;
    private final zza zzbsE;
    private final zza zzbsF;
    private final zza zzbsG;
    private final zza zzbsH;
    private final zza zzbsI;
    private final zza zzbsJ;
    private final zza zzbsK;
    private final zza zzbsL;

    public class zza {
        private final int mPriority;
        final /* synthetic */ zzatx zzbsN;
        private final boolean zzbsO;
        private final boolean zzbsP;

        zza(zzatx zzatx, int i, boolean z, boolean z2) {
            this.zzbsN = zzatx;
            this.mPriority = i;
            this.zzbsO = z;
            this.zzbsP = z2;
        }

        public void log(String str) {
            this.zzbsN.zza(this.mPriority, this.zzbsO, this.zzbsP, str, null, null, null);
        }

        public void zzd(String str, Object obj, Object obj2, Object obj3) {
            this.zzbsN.zza(this.mPriority, this.zzbsO, this.zzbsP, str, obj, obj2, obj3);
        }

        public void zze(String str, Object obj, Object obj2) {
            this.zzbsN.zza(this.mPriority, this.zzbsO, this.zzbsP, str, obj, obj2, null);
        }

        public void zzj(String str, Object obj) {
            this.zzbsN.zza(this.mPriority, this.zzbsO, this.zzbsP, str, obj, null, null);
        }
    }

    private static class zzb {
        private final String zzbsQ;

        public zzb(String str) {
            this.zzbsQ = str;
        }
    }

    zzatx(zzaue zzaue) {
        char c;
        super(zzaue);
        if (zzKn().zzoW()) {
            zzKn().zzLh();
            c = 'C';
        } else {
            zzKn().zzLh();
            c = 'c';
        }
        this.zzbsC = c;
        this.zzbsD = new zza(this, 6, false, false);
        this.zzbsE = new zza(this, 6, true, false);
        this.zzbsF = new zza(this, 6, false, true);
        this.zzbsG = new zza(this, 5, false, false);
        this.zzbsH = new zza(this, 5, true, false);
        this.zzbsI = new zza(this, 5, false, true);
        this.zzbsJ = new zza(this, 4, false, false);
        this.zzbsK = new zza(this, 3, false, false);
        this.zzbsL = new zza(this, 2, false, false);
    }

    static String zza(boolean z, String str, Object obj, Object obj2, Object obj3) {
        if (str == null) {
            Object obj4 = "";
        }
        obj = zzc(z, obj);
        obj2 = zzc(z, obj2);
        Object zzc = zzc(z, obj3);
        StringBuilder stringBuilder = new StringBuilder();
        String str2 = "";
        if (!TextUtils.isEmpty(obj4)) {
            stringBuilder.append(obj4);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(obj)) {
            stringBuilder.append(str2);
            stringBuilder.append(obj);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(obj2)) {
            stringBuilder.append(str2);
            stringBuilder.append(obj2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(zzc)) {
            stringBuilder.append(str2);
            stringBuilder.append(zzc);
        }
        return stringBuilder.toString();
    }

    static String zzc(boolean z, Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf((long) ((Integer) obj).intValue());
        }
        int i = 0;
        String valueOf;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            valueOf = String.valueOf(Math.abs(l.longValue()));
            long round = Math.round(Math.pow(10.0d, (double) (valueOf.length() - 1)));
            long round2 = Math.round(Math.pow(10.0d, (double) valueOf.length()) - 1.0d);
            StringBuilder stringBuilder = new StringBuilder((43 + String.valueOf(str).length()) + String.valueOf(str).length());
            stringBuilder.append(str);
            stringBuilder.append(round);
            stringBuilder.append("...");
            stringBuilder.append(str);
            stringBuilder.append(round2);
            return stringBuilder.toString();
        } else if (obj instanceof Boolean) {
            return String.valueOf(obj);
        } else {
            if (!(obj instanceof Throwable)) {
                return obj instanceof zzb ? ((zzb) obj).zzbsQ : z ? "-" : String.valueOf(obj);
            } else {
                Throwable th = (Throwable) obj;
                StringBuilder stringBuilder2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
                valueOf = zzfF(AppMeasurement.class.getCanonicalName());
                String zzfF = zzfF(zzaue.class.getCanonicalName());
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                while (i < length) {
                    StackTraceElement stackTraceElement = stackTrace[i];
                    if (!stackTraceElement.isNativeMethod()) {
                        String className = stackTraceElement.getClassName();
                        if (className != null) {
                            className = zzfF(className);
                            if (className.equals(valueOf) || className.equals(zzfF)) {
                                stringBuilder2.append(": ");
                                stringBuilder2.append(stackTraceElement);
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                    i++;
                }
                return stringBuilder2.toString();
            }
        }
    }

    protected static Object zzfE(String str) {
        return str == null ? null : new zzb(str);
    }

    private static String zzfF(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
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

    public zza zzLZ() {
        return this.zzbsD;
    }

    public zza zzMa() {
        return this.zzbsE;
    }

    public zza zzMb() {
        return this.zzbsG;
    }

    public zza zzMc() {
        return this.zzbsI;
    }

    public zza zzMd() {
        return this.zzbsJ;
    }

    public zza zzMe() {
        return this.zzbsK;
    }

    public zza zzMf() {
        return this.zzbsL;
    }

    public String zzMg() {
        Pair zzqm = zzKm().zzbta.zzqm();
        if (zzqm != null) {
            if (zzqm != zzaua.zzbsZ) {
                String valueOf = String.valueOf(String.valueOf(zzqm.second));
                String str = (String) zzqm.first;
                StringBuilder stringBuilder = new StringBuilder((1 + String.valueOf(valueOf).length()) + String.valueOf(str).length());
                stringBuilder.append(valueOf);
                stringBuilder.append(":");
                stringBuilder.append(str);
                return stringBuilder.toString();
            }
        }
        return null;
    }

    protected void zza(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && zzak(i)) {
            zzn(i, zza(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            zzb(i, str, obj, obj2, obj3);
        }
    }

    protected boolean zzak(int i) {
        return Log.isLoggable(this.zzaGr, i);
    }

    public void zzb(int i, String str, Object obj, Object obj2, Object obj3) {
        zzac.zzw(str);
        zzaud zzMw = this.zzbqb.zzMw();
        if (zzMw == null) {
            zzn(6, "Scheduler not set. Not logging error/warn");
        } else if (zzMw.isInitialized()) {
            if (i < 0) {
                i = 0;
            }
            if (i >= 9) {
                i = 8;
            }
            String valueOf = String.valueOf("2");
            char charAt = "01VDIWEA?".charAt(i);
            char c = this.zzbsC;
            long j = this.zzbqw;
            String valueOf2 = String.valueOf(zza(true, str, obj, obj2, obj3));
            StringBuilder stringBuilder = new StringBuilder((23 + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
            stringBuilder.append(valueOf);
            stringBuilder.append(charAt);
            stringBuilder.append(c);
            stringBuilder.append(j);
            stringBuilder.append(":");
            stringBuilder.append(valueOf2);
            String stringBuilder2 = stringBuilder.toString();
            if (stringBuilder2.length() > 1024) {
                stringBuilder2 = str.substring(0, 1024);
            }
            zzMw.zzm(new Runnable(this) {
                final /* synthetic */ zzatx zzbsN;

                public void run() {
                    zzaua zzKm = this.zzbsN.zzbqb.zzKm();
                    if (zzKm.isInitialized()) {
                        zzKm.zzbta.zzcc(stringBuilder2);
                    } else {
                        this.zzbsN.zzn(6, "Persisted config not initialized. Not logging error/warn");
                    }
                }
            });
        } else {
            zzn(6, "Scheduler not initialized. Not logging error/warn");
        }
    }

    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    protected void zzmS() {
    }

    protected void zzn(int i, String str) {
        Log.println(i, this.zzaGr, str);
    }

    public /* bridge */ /* synthetic */ zze zznR() {
        return super.zznR();
    }
}
