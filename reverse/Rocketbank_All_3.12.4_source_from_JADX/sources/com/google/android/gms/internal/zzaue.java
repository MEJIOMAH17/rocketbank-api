package com.google.android.gms.internal;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.sqlite.SQLiteException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.internal.zzauw.zzb;
import com.google.android.gms.internal.zzauw.zzc;
import com.google.android.gms.internal.zzauw.zzd;
import com.google.android.gms.internal.zzauw.zzg;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.analytics.FirebaseAnalytics.Event;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class zzaue {
    private static volatile zzaue zzbub;
    private final Context mContext;
    private final boolean zzadP;
    private FileLock zzbuA;
    private FileChannel zzbuB;
    private List<Long> zzbuC;
    private int zzbuD;
    private int zzbuE;
    private long zzbuF = -1;
    protected long zzbuG;
    private final long zzbuH;
    private final zzati zzbuc;
    private final zzaua zzbud;
    private final zzatx zzbue;
    private final zzaud zzbuf;
    private final zzaun zzbug;
    private final zzauc zzbuh;
    private final AppMeasurement zzbui;
    private final FirebaseAnalytics zzbuj;
    private final zzaut zzbuk;
    private final zzatj zzbul;
    private final zzatv zzbum;
    private final zzaty zzbun;
    private final zzauk zzbuo;
    private final zzaul zzbup;
    private final zzatl zzbuq;
    private final zzauj zzbur;
    private final zzatu zzbus;
    private final zzatz zzbut;
    private final zzaup zzbuu;
    private final zzatf zzbuv;
    private final zzatb zzbuw;
    private boolean zzbux;
    private Boolean zzbuy;
    private long zzbuz;
    private final zze zzuP;

    /* renamed from: com.google.android.gms.internal.zzaue$1 */
    class C05791 implements Runnable {
        final /* synthetic */ zzaue zzbuI;

        C05791(zzaue zzaue) {
            this.zzbuI = zzaue;
        }

        public void run() {
            this.zzbuI.start();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaue$3 */
    class C12043 implements zza {
        final /* synthetic */ zzaue zzbuI;

        C12043(zzaue zzaue) {
            this.zzbuI = zzaue;
        }

        public void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
            this.zzbuI.zza(i, th, bArr);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaue$4 */
    class C12054 implements zza {
        final /* synthetic */ zzaue zzbuI;

        C12054(zzaue zzaue) {
            this.zzbuI = zzaue;
        }

        public void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
            this.zzbuI.zzb(str, i, th, bArr, map);
        }
    }

    private class zza implements zzb {
        final /* synthetic */ zzaue zzbuI;
        zzauw.zze zzbuJ;
        List<Long> zzbuK;
        long zzbuL;
        List<zzb> zzth;

        private zza(zzaue zzaue) {
            this.zzbuI = zzaue;
        }

        private long zza(zzb zzb) {
            return ((zzb.zzbxc.longValue() / 1000) / 60) / 60;
        }

        boolean isEmpty() {
            if (this.zzth != null) {
                if (!this.zzth.isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        public boolean zza(long j, zzb zzb) {
            zzac.zzw(zzb);
            if (this.zzth == null) {
                this.zzth = new ArrayList();
            }
            if (this.zzbuK == null) {
                this.zzbuK = new ArrayList();
            }
            if (this.zzth.size() > 0 && zza((zzb) this.zzth.get(0)) != zza(zzb)) {
                return false;
            }
            long zzafB = this.zzbuL + ((long) zzb.zzafB());
            if (zzafB >= ((long) this.zzbuI.zzKn().zzLo())) {
                return false;
            }
            this.zzbuL = zzafB;
            this.zzth.add(zzb);
            this.zzbuK.add(Long.valueOf(j));
            return this.zzth.size() < this.zzbuI.zzKn().zzLp();
        }

        public void zzb(zzauw.zze zze) {
            zzac.zzw(zze);
            this.zzbuJ = zze;
        }
    }

    zzaue(zzaui zzaui) {
        com.google.android.gms.internal.zzatx.zza zzMd;
        zzac.zzw(zzaui);
        this.mContext = zzaui.mContext;
        this.zzuP = zzaui.zzn(this);
        this.zzbuH = this.zzuP.currentTimeMillis();
        this.zzbuc = zzaui.zza(this);
        zzaua zzb = zzaui.zzb(this);
        zzb.initialize();
        this.zzbud = zzb;
        zzatx zzc = zzaui.zzc(this);
        zzc.initialize();
        this.zzbue = zzc;
        zzKl().zzMd().zzj("App measurement is starting up, version", Long.valueOf(zzKn().zzKv()));
        zzKn().zzLh();
        zzKl().zzMd().log("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        zzaut zzj = zzaui.zzj(this);
        zzj.initialize();
        this.zzbuk = zzj;
        zzatl zzq = zzaui.zzq(this);
        zzq.initialize();
        this.zzbuq = zzq;
        zzatu zzr = zzaui.zzr(this);
        zzr.initialize();
        this.zzbus = zzr;
        zzKn().zzLh();
        String zzke = zzr.zzke();
        if (zzKh().zzge(zzke)) {
            zzMd = zzKl().zzMd();
            zzke = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
        } else {
            zzMd = zzKl().zzMd();
            String str = "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ";
            zzke = String.valueOf(zzke);
            zzke = zzke.length() != 0 ? str.concat(zzke) : new String(str);
        }
        zzMd.log(zzke);
        zzKl().zzMe().log("Debug-level message logging enabled");
        zzatj zzk = zzaui.zzk(this);
        zzk.initialize();
        this.zzbul = zzk;
        zzatv zzl = zzaui.zzl(this);
        zzl.initialize();
        this.zzbum = zzl;
        zzatf zzu = zzaui.zzu(this);
        zzu.initialize();
        this.zzbuv = zzu;
        this.zzbuw = zzaui.zzv(this);
        zzaty zzm = zzaui.zzm(this);
        zzm.initialize();
        this.zzbun = zzm;
        zzauk zzo = zzaui.zzo(this);
        zzo.initialize();
        this.zzbuo = zzo;
        zzaul zzp = zzaui.zzp(this);
        zzp.initialize();
        this.zzbup = zzp;
        zzauj zzi = zzaui.zzi(this);
        zzi.initialize();
        this.zzbur = zzi;
        zzaup zzt = zzaui.zzt(this);
        zzt.initialize();
        this.zzbuu = zzt;
        this.zzbut = zzaui.zzs(this);
        this.zzbui = zzaui.zzh(this);
        this.zzbuj = zzaui.zzg(this);
        zzaun zze = zzaui.zze(this);
        zze.initialize();
        this.zzbug = zze;
        zzauc zzf = zzaui.zzf(this);
        zzf.initialize();
        this.zzbuh = zzf;
        zzaud zzd = zzaui.zzd(this);
        zzd.initialize();
        this.zzbuf = zzd;
        if (this.zzbuD != this.zzbuE) {
            zzKl().zzLZ().zze("Not all components initialized", Integer.valueOf(this.zzbuD), Integer.valueOf(this.zzbuE));
        }
        this.zzadP = true;
        this.zzbuc.zzLh();
        if (this.mContext.getApplicationContext() instanceof Application) {
            int i = VERSION.SDK_INT;
            zzKa().zzMS();
        } else {
            zzKl().zzMb().log("Application context is not an Application");
        }
        this.zzbuf.zzm(new C05791(this));
    }

    private boolean zzMJ() {
        zzmR();
        zzob();
        if (!zzKg().zzLK()) {
            if (TextUtils.isEmpty(zzKg().zzLE())) {
                return false;
            }
        }
        return true;
    }

    private void zzMK() {
        zzmR();
        zzob();
        if (zzMO()) {
            long abs;
            if (this.zzbuG > 0) {
                abs = 3600000 - Math.abs(zznR().elapsedRealtime() - this.zzbuG);
                if (abs > 0) {
                    zzKl().zzMf().zzj("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(abs));
                    zzMA().unregister();
                    zzMB().cancel();
                    return;
                }
                this.zzbuG = 0;
            }
            if (zzMu()) {
                if (zzMJ()) {
                    long zzML = zzML();
                    if (zzML == 0) {
                        zzMA().unregister();
                        zzMB().cancel();
                        return;
                    } else if (zzMz().zzqa()) {
                        long j = zzKm().zzbtd.get();
                        abs = zzKn().zzLt();
                        if (!zzKh().zzh(j, abs)) {
                            zzML = Math.max(zzML, j + abs);
                        }
                        zzMA().unregister();
                        abs = zzML - zznR().currentTimeMillis();
                        if (abs <= 0) {
                            abs = zzKn().zzLx();
                            zzKm().zzbtb.set(zznR().currentTimeMillis());
                        }
                        zzKl().zzMf().zzj("Upload scheduled in approximately ms", Long.valueOf(abs));
                        zzMB().zzy(abs);
                        return;
                    } else {
                        zzMA().zzpX();
                        zzMB().cancel();
                        return;
                    }
                }
            }
            zzMA().unregister();
            zzMB().cancel();
        }
    }

    private long zzML() {
        Object obj;
        long zzLv;
        long j;
        long j2;
        long max;
        long abs;
        long currentTimeMillis = zznR().currentTimeMillis();
        long zzLA = zzKn().zzLA();
        if (!zzKg().zzLL()) {
            if (!zzKg().zzLF()) {
                obj = null;
                if (obj == null) {
                    CharSequence zzLD = zzKn().zzLD();
                    zzLv = (TextUtils.isEmpty(zzLD) || ".none.".equals(zzLD)) ? zzKn().zzLv() : zzKn().zzLw();
                } else {
                    zzLv = zzKn().zzLu();
                }
                j = zzKm().zzbtb.get();
                j2 = zzKm().zzbtc.get();
                max = Math.max(zzKg().zzLI(), zzKg().zzLJ());
                if (max == 0) {
                    return 0;
                }
                abs = currentTimeMillis - Math.abs(max - currentTimeMillis);
                j2 = currentTimeMillis - Math.abs(j2 - currentTimeMillis);
                currentTimeMillis = Math.max(currentTimeMillis - Math.abs(j - currentTimeMillis), j2);
                max = abs + zzLA;
                if (obj != null && currentTimeMillis > 0) {
                    max = Math.min(abs, currentTimeMillis) + zzLv;
                }
                if (!zzKh().zzh(currentTimeMillis, zzLv)) {
                    max = currentTimeMillis + zzLv;
                }
                if (j2 != 0 || j2 < abs) {
                    return max;
                }
                int i = 0;
                while (i < zzKn().zzLC()) {
                    zzLA = max + (zzKn().zzLB() * ((long) (1 << i)));
                    if (zzLA > j2) {
                        return zzLA;
                    }
                    i++;
                    max = zzLA;
                }
                return 0;
            }
        }
        obj = 1;
        if (obj == null) {
            zzLv = zzKn().zzLu();
        } else {
            CharSequence zzLD2 = zzKn().zzLD();
            if (!TextUtils.isEmpty(zzLD2)) {
            }
        }
        j = zzKm().zzbtb.get();
        j2 = zzKm().zzbtc.get();
        max = Math.max(zzKg().zzLI(), zzKg().zzLJ());
        if (max == 0) {
            return 0;
        }
        abs = currentTimeMillis - Math.abs(max - currentTimeMillis);
        j2 = currentTimeMillis - Math.abs(j2 - currentTimeMillis);
        currentTimeMillis = Math.max(currentTimeMillis - Math.abs(j - currentTimeMillis), j2);
        max = abs + zzLA;
        max = Math.min(abs, currentTimeMillis) + zzLv;
        if (zzKh().zzh(currentTimeMillis, zzLv)) {
            max = currentTimeMillis + zzLv;
        }
        if (j2 != 0) {
        }
        return max;
    }

    private void zza(zzaug zzaug) {
        if (zzaug == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private void zza(zzauh zzauh) {
        if (zzauh == null) {
            throw new IllegalStateException("Component not created");
        } else if (!zzauh.isInitialized()) {
            throw new IllegalStateException("Component not initialized");
        }
    }

    private boolean zza(zzatm zzatm) {
        if (zzatm.zzbrA == null) {
            return false;
        }
        Iterator it = zzatm.zzbrA.iterator();
        while (it.hasNext()) {
            if ("_r".equals((String) it.next())) {
                return true;
            }
        }
        return zzKi().zzab(zzatm.mAppId, zzatm.mName) && zzKg().zza(zzMG(), zzatm.mAppId, false, false, false, false, false).zzbrs < ((long) zzKn().zzfl(zzatm.mAppId));
    }

    private com.google.android.gms.internal.zzauw.zza[] zza(String str, zzg[] zzgArr, zzb[] zzbArr) {
        zzac.zzdr(str);
        return zzJZ().zza(str, zzbArr, zzgArr);
    }

    public static zzaue zzbM(Context context) {
        zzac.zzw(context);
        zzac.zzw(context.getApplicationContext());
        if (zzbub == null) {
            synchronized (zzaue.class) {
                if (zzbub == null) {
                    zzbub = new zzaui(context).zzMR();
                }
            }
        }
        return zzbub;
    }

    private void zzf(zzatd zzatd) {
        Object obj;
        zzmR();
        zzob();
        zzac.zzw(zzatd);
        zzac.zzdr(zzatd.packageName);
        zzatc zzfu = zzKg().zzfu(zzatd.packageName);
        String zzfH = zzKm().zzfH(zzatd.packageName);
        if (zzfu == null) {
            zzfu = new zzatc(this, zzatd.packageName);
            zzfu.zzfd(zzKm().zzMi());
            zzfu.zzff(zzfH);
        } else if (zzfH.equals(zzfu.zzKp())) {
            obj = null;
            if (!(TextUtils.isEmpty(zzatd.zzbqK) || zzatd.zzbqK.equals(zzfu.getGmpAppId()))) {
                zzfu.zzfe(zzatd.zzbqK);
                obj = 1;
            }
            if (!(TextUtils.isEmpty(zzatd.zzbqS) || zzatd.zzbqS.equals(zzfu.zzKq()))) {
                zzfu.zzfg(zzatd.zzbqS);
                obj = 1;
            }
            if (!(zzatd.zzbqM == 0 || zzatd.zzbqM == zzfu.zzKv())) {
                zzfu.zzab(zzatd.zzbqM);
                obj = 1;
            }
            if (!(TextUtils.isEmpty(zzatd.zzbhN) || zzatd.zzbhN.equals(zzfu.zzmZ()))) {
                zzfu.setAppVersion(zzatd.zzbhN);
                obj = 1;
            }
            if (zzatd.zzbqR != zzfu.zzKt()) {
                zzfu.zzaa(zzatd.zzbqR);
                obj = 1;
            }
            if (!(zzatd.zzbqL == null || zzatd.zzbqL.equals(zzfu.zzKu()))) {
                zzfu.zzfh(zzatd.zzbqL);
                obj = 1;
            }
            if (zzatd.zzbqN != zzfu.zzKw()) {
                zzfu.zzac(zzatd.zzbqN);
                obj = 1;
            }
            if (zzatd.zzbqP != zzfu.zzKx()) {
                zzfu.setMeasurementEnabled(zzatd.zzbqP);
                obj = 1;
            }
            if (!(TextUtils.isEmpty(zzatd.zzbqO) || zzatd.zzbqO.equals(zzfu.zzKI()))) {
                zzfu.zzfi(zzatd.zzbqO);
                obj = 1;
            }
            if (zzatd.zzbqT != zzfu.zzuW()) {
                zzfu.zzam(zzatd.zzbqT);
                obj = 1;
            }
            if (obj != null) {
                zzKg().zza(zzfu);
            }
        } else {
            zzfu.zzff(zzfH);
            zzfu.zzfd(zzKm().zzMi());
        }
        obj = 1;
        zzfu.zzfe(zzatd.zzbqK);
        obj = 1;
        zzfu.zzfg(zzatd.zzbqS);
        obj = 1;
        zzfu.zzab(zzatd.zzbqM);
        obj = 1;
        zzfu.setAppVersion(zzatd.zzbhN);
        obj = 1;
        if (zzatd.zzbqR != zzfu.zzKt()) {
            zzfu.zzaa(zzatd.zzbqR);
            obj = 1;
        }
        zzfu.zzfh(zzatd.zzbqL);
        obj = 1;
        if (zzatd.zzbqN != zzfu.zzKw()) {
            zzfu.zzac(zzatd.zzbqN);
            obj = 1;
        }
        if (zzatd.zzbqP != zzfu.zzKx()) {
            zzfu.setMeasurementEnabled(zzatd.zzbqP);
            obj = 1;
        }
        zzfu.zzfi(zzatd.zzbqO);
        obj = 1;
        if (zzatd.zzbqT != zzfu.zzuW()) {
            zzfu.zzam(zzatd.zzbqT);
            obj = 1;
        }
        if (obj != null) {
            zzKg().zza(zzfu);
        }
    }

    private boolean zzl(String str, long j) {
        zzaue zzaue = this;
        zzKg().beginTransaction();
        try {
            zza zza = new zza();
            zzKg().zza(str, j, zzaue.zzbuF, zza);
            int i = 0;
            if (zza.isEmpty()) {
                zzKg().setTransactionSuccessful();
                zzKg().endTransaction();
                return false;
            }
            zzauw.zze zze = zza.zzbuJ;
            zze.zzbxj = new zzb[zza.zzth.size()];
            int i2 = 0;
            boolean z = i2;
            int i3 = z;
            while (i2 < zza.zzth.size()) {
                int i4;
                if (zzKi().zzaa(zza.zzbuJ.zzaS, ((zzb) zza.zzth.get(i2)).name)) {
                    zzKl().zzMb().zze("Dropping blacklisted raw event. appId", zzatx.zzfE(zza.zzbuJ.zzaS), ((zzb) zza.zzth.get(i2)).name);
                    if (!zzKh().zzgg(zza.zzbuJ.zzaS)) {
                        if (!zzKh().zzgh(zza.zzbuJ.zzaS)) {
                            i4 = i;
                            if (i4 == 0 && !"_err".equals(((zzb) zza.zzth.get(i2)).name)) {
                                zzKh().zza(11, "_ev", ((zzb) zza.zzth.get(i2)).name, i);
                            }
                        }
                    }
                    i4 = 1;
                    zzKh().zza(11, "_ev", ((zzb) zza.zzth.get(i2)).name, i);
                } else {
                    boolean zzab = zzKi().zzab(zza.zzbuJ.zzaS, ((zzb) zza.zzth.get(i2)).name);
                    if (zzab || zzKh().zzgi(((zzb) zza.zzth.get(i2)).name)) {
                        zzc[] zzcArr;
                        zzc zzc;
                        zzb zzb;
                        if (((zzb) zza.zzth.get(i2)).zzbxb == null) {
                            ((zzb) zza.zzth.get(i2)).zzbxb = new zzc[i];
                        }
                        zzc[] zzcArr2 = ((zzb) zza.zzth.get(i2)).zzbxb;
                        int length = zzcArr2.length;
                        int i5 = i;
                        int i6 = i5;
                        int i7 = i6;
                        while (i5 < length) {
                            zzc zzc2 = zzcArr2[i5];
                            if ("_c".equals(zzc2.name)) {
                                zzc2.zzbxf = Long.valueOf(1);
                                i6 = 1;
                            } else if ("_r".equals(zzc2.name)) {
                                zzc2.zzbxf = Long.valueOf(1);
                                i7 = 1;
                            }
                            i5++;
                        }
                        if (i6 == 0 && zzab) {
                            zzKl().zzMf().zzj("Marking event as conversion", ((zzb) zza.zzth.get(i2)).name);
                            zzcArr = (zzc[]) Arrays.copyOf(((zzb) zza.zzth.get(i2)).zzbxb, ((zzb) zza.zzth.get(i2)).zzbxb.length + 1);
                            zzc = new zzc();
                            zzc.name = "_c";
                            zzc.zzbxf = Long.valueOf(1);
                            zzcArr[zzcArr.length - 1] = zzc;
                            ((zzb) zza.zzth.get(i2)).zzbxb = zzcArr;
                        }
                        if (i7 == 0) {
                            zzKl().zzMf().zzj("Marking event as real-time", ((zzb) zza.zzth.get(i2)).name);
                            zzcArr = (zzc[]) Arrays.copyOf(((zzb) zza.zzth.get(i2)).zzbxb, ((zzb) zza.zzth.get(i2)).zzbxb.length + 1);
                            zzc = new zzc();
                            zzc.name = "_r";
                            zzc.zzbxf = Long.valueOf(1);
                            zzcArr[zzcArr.length - 1] = zzc;
                            ((zzb) zza.zzth.get(i2)).zzbxb = zzcArr;
                        }
                        if (zzKg().zza(zzMG(), zza.zzbuJ.zzaS, false, false, false, false, true).zzbrs > ((long) zzKn().zzfl(zza.zzbuJ.zzaS))) {
                            zzb = (zzb) zza.zzth.get(i2);
                            i4 = 0;
                            while (i4 < zzb.zzbxb.length) {
                                if ("_r".equals(zzb.zzbxb[i4].name)) {
                                    Object obj = new zzc[(zzb.zzbxb.length - 1)];
                                    if (i4 > 0) {
                                        System.arraycopy(zzb.zzbxb, 0, obj, 0, i4);
                                    }
                                    if (i4 < obj.length) {
                                        System.arraycopy(zzb.zzbxb, i4 + 1, obj, i4, obj.length - i4);
                                    }
                                    zzb.zzbxb = obj;
                                } else {
                                    i4++;
                                }
                            }
                        } else {
                            z = true;
                        }
                        if (zzaut.zzfT(((zzb) zza.zzth.get(i2)).name) && zzab && zzKg().zza(zzMG(), zza.zzbuJ.zzaS, false, false, true, false, false).zzbrq > ((long) zzKn().zzfk(zza.zzbuJ.zzaS))) {
                            zzKl().zzMb().zzj("Too many conversions. Not logging as conversion. appId", zzatx.zzfE(zza.zzbuJ.zzaS));
                            zzb = (zzb) zza.zzth.get(i2);
                            Object obj2 = null;
                            zzc zzc3 = null;
                            for (zzc zzc4 : zzb.zzbxb) {
                                if ("_c".equals(zzc4.name)) {
                                    zzc3 = zzc4;
                                } else if ("_err".equals(zzc4.name)) {
                                    obj2 = 1;
                                }
                            }
                            if (obj2 != null && zzc3 != null) {
                                zzc[] zzcArr3 = new zzc[(zzb.zzbxb.length - 1)];
                                i5 = 0;
                                for (zzc zzc5 : zzb.zzbxb) {
                                    if (zzc5 != zzc3) {
                                        i7 = i5 + 1;
                                        zzcArr3[i5] = zzc5;
                                        i5 = i7;
                                    }
                                }
                                zzb.zzbxb = zzcArr3;
                            } else if (zzc3 != null) {
                                zzc3.name = "_err";
                                zzc3.zzbxf = Long.valueOf(10);
                            } else {
                                zzKl().zzLZ().zzj("Did not find conversion parameter. appId", zzatx.zzfE(zza.zzbuJ.zzaS));
                            }
                        }
                    }
                    int i8 = i3 + 1;
                    zze.zzbxj[i3] = (zzb) zza.zzth.get(i2);
                    i3 = i8;
                }
                i2++;
                i = 0;
            }
            if (i3 < zza.zzth.size()) {
                zze.zzbxj = (zzb[]) Arrays.copyOf(zze.zzbxj, i3);
            }
            zze.zzbxC = zza(zza.zzbuJ.zzaS, zza.zzbuJ.zzbxk, zze.zzbxj);
            zze.zzbxm = Long.valueOf(Long.MAX_VALUE);
            zze.zzbxn = Long.valueOf(Long.MIN_VALUE);
            for (zzb zzb2 : zze.zzbxj) {
                if (zzb2.zzbxc.longValue() < zze.zzbxm.longValue()) {
                    zze.zzbxm = zzb2.zzbxc;
                }
                if (zzb2.zzbxc.longValue() > zze.zzbxn.longValue()) {
                    zze.zzbxn = zzb2.zzbxc;
                }
            }
            String str2 = zza.zzbuJ.zzaS;
            zzatc zzfu = zzKg().zzfu(str2);
            if (zzfu == null) {
                zzKl().zzLZ().zzj("Bundling raw events w/o app info. appId", zzatx.zzfE(zza.zzbuJ.zzaS));
            } else if (zze.zzbxj.length > 0) {
                long zzKs = zzfu.zzKs();
                zze.zzbxp = zzKs != 0 ? Long.valueOf(zzKs) : null;
                long zzKr = zzfu.zzKr();
                if (zzKr == 0) {
                    zzKr = zzKs;
                }
                zze.zzbxo = zzKr != 0 ? Long.valueOf(zzKr) : null;
                zzfu.zzKB();
                zze.zzbxA = Integer.valueOf((int) zzfu.zzKy());
                zzfu.zzY(zze.zzbxm.longValue());
                zzfu.zzZ(zze.zzbxn.longValue());
                zze.zzbqO = zzfu.zzKJ();
                zzKg().zza(zzfu);
            }
            if (zze.zzbxj.length > 0) {
                Long l;
                zzKn().zzLh();
                zzauv.zzb zzfL = zzKi().zzfL(zza.zzbuJ.zzaS);
                if (zzfL != null) {
                    if (zzfL.zzbwQ != null) {
                        l = zzfL.zzbwQ;
                        zze.zzbxH = l;
                        zzKg().zza(zze, z);
                    }
                }
                if (TextUtils.isEmpty(zza.zzbuJ.zzbqK)) {
                    l = Long.valueOf(-1);
                    zze.zzbxH = l;
                    zzKg().zza(zze, z);
                } else {
                    zzKl().zzMb().zzj("Did not find measurement config or missing version info. appId", zzatx.zzfE(zza.zzbuJ.zzaS));
                    zzKg().zza(zze, z);
                }
            }
            zzKg().zzJ(zza.zzbuK);
            zzKg().zzfB(str2);
            zzKg().setTransactionSuccessful();
            boolean z2 = zze.zzbxj.length > 0;
            zzKg().endTransaction();
            return z2;
        } catch (Throwable th) {
            Throwable th2 = th;
            zzKg().endTransaction();
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public boolean isEnabled() {
        zzmR();
        zzob();
        boolean z = false;
        if (zzKn().zzLi()) {
            return false;
        }
        Boolean zzLj = zzKn().zzLj();
        if (zzLj != null) {
            z = zzLj.booleanValue();
        } else if (!zzKn().zzwR()) {
            z = true;
        }
        return zzKm().zzaK(z);
    }

    protected void start() {
        zzmR();
        zzKg().zzLG();
        if (zzKm().zzbtb.get() == 0) {
            zzKm().zzbtb.set(zznR().currentTimeMillis());
        }
        if (zzMu()) {
            zzKn().zzLh();
            if (!TextUtils.isEmpty(zzKb().getGmpAppId())) {
                String zzMl = zzKm().zzMl();
                if (zzMl != null) {
                    if (!zzMl.equals(zzKb().getGmpAppId())) {
                        zzKl().zzMd().log("Rechecking which service to use due to a GMP App Id change");
                        zzKm().zzMo();
                        this.zzbup.disconnect();
                        this.zzbup.zzoD();
                    }
                }
                zzKm().zzfI(zzKb().getGmpAppId());
            }
            zzKn().zzLh();
            if (!TextUtils.isEmpty(zzKb().getGmpAppId())) {
                zzKa().zzMT();
            }
        } else if (isEnabled()) {
            if (!zzKh().zzbW("android.permission.INTERNET")) {
                zzKl().zzLZ().log("App is missing INTERNET permission");
            }
            if (!zzKh().zzbW("android.permission.ACCESS_NETWORK_STATE")) {
                zzKl().zzLZ().log("App is missing ACCESS_NETWORK_STATE permission");
            }
            zzKn().zzLh();
            if (!zzadg.zzbi(getContext()).zzzx()) {
                if (!zzaub.zzi(getContext(), false)) {
                    zzKl().zzLZ().log("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzaum.zzj(getContext(), false)) {
                    zzKl().zzLZ().log("AppMeasurementService not registered/enabled");
                }
            }
            zzKl().zzLZ().log("Uploading is not possible. App measurement disabled");
        }
        zzMK();
    }

    void zzJV() {
        zzKn().zzLh();
        throw new IllegalStateException("Unexpected call on client side");
    }

    void zzJW() {
        zzKn().zzLh();
    }

    public zzatb zzJY() {
        zza(this.zzbuw);
        return this.zzbuw;
    }

    public zzatf zzJZ() {
        zza(this.zzbuv);
        return this.zzbuv;
    }

    protected void zzK(List<Long> list) {
        zzac.zzaw(list.isEmpty() ^ 1);
        if (this.zzbuC != null) {
            zzKl().zzLZ().log("Set uploading progress before finishing the previous upload");
        } else {
            this.zzbuC = new ArrayList(list);
        }
    }

    public zzauj zzKa() {
        zza(this.zzbur);
        return this.zzbur;
    }

    public zzatu zzKb() {
        zza(this.zzbus);
        return this.zzbus;
    }

    public zzatl zzKc() {
        zza(this.zzbuq);
        return this.zzbuq;
    }

    public zzaul zzKd() {
        zza(this.zzbup);
        return this.zzbup;
    }

    public zzauk zzKe() {
        zza(this.zzbuo);
        return this.zzbuo;
    }

    public zzatv zzKf() {
        zza(this.zzbum);
        return this.zzbum;
    }

    public zzatj zzKg() {
        zza(this.zzbul);
        return this.zzbul;
    }

    public zzaut zzKh() {
        zza(this.zzbuk);
        return this.zzbuk;
    }

    public zzauc zzKi() {
        zza(this.zzbuh);
        return this.zzbuh;
    }

    public zzaun zzKj() {
        zza(this.zzbug);
        return this.zzbug;
    }

    public zzaud zzKk() {
        zza(this.zzbuf);
        return this.zzbuf;
    }

    public zzatx zzKl() {
        zza(this.zzbue);
        return this.zzbue;
    }

    public zzaua zzKm() {
        zza(this.zzbud);
        return this.zzbud;
    }

    public zzati zzKn() {
        return this.zzbuc;
    }

    public zzatz zzMA() {
        if (this.zzbut != null) {
            return this.zzbut;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public zzaup zzMB() {
        zza(this.zzbuu);
        return this.zzbuu;
    }

    FileChannel zzMC() {
        return this.zzbuB;
    }

    void zzMD() {
        zzmR();
        zzob();
        if (zzMO() && zzME()) {
            zzy(zza(zzMC()), zzKb().zzLX());
        }
    }

    boolean zzME() {
        Object e;
        com.google.android.gms.internal.zzatx.zza zzLZ;
        String str;
        zzmR();
        try {
            this.zzbuB = new RandomAccessFile(new File(getContext().getFilesDir(), this.zzbul.zzow()), "rw").getChannel();
            this.zzbuA = this.zzbuB.tryLock();
            if (this.zzbuA != null) {
                zzKl().zzMf().log("Storage concurrent access okay");
                return true;
            }
            zzKl().zzLZ().log("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e2) {
            e = e2;
            zzLZ = zzKl().zzLZ();
            str = "Failed to acquire storage lock";
            zzLZ.zzj(str, e);
            return false;
        } catch (IOException e3) {
            e = e3;
            zzLZ = zzKl().zzLZ();
            str = "Failed to access storage lock file";
            zzLZ.zzj(str, e);
            return false;
        }
    }

    long zzMF() {
        return this.zzbuH;
    }

    long zzMG() {
        return ((((zznR().currentTimeMillis() + zzKm().zzMj()) / 1000) / 60) / 60) / 24;
    }

    protected boolean zzMH() {
        zzmR();
        return this.zzbuC != null;
    }

    public void zzMI() {
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
        r12 = this;
        r12.zzmR();
        r12.zzob();
        r0 = r12.zzKn();
        r0.zzLh();
        r0 = r12.zzKm();
        r0 = r0.zzMn();
        if (r0 != 0) goto L_0x0025;
    L_0x0017:
        r0 = r12.zzKl();
        r0 = r0.zzMb();
        r1 = "Upload data called on the client side before use of service was decided";
        r0.log(r1);
        return;
    L_0x0025:
        r0 = r0.booleanValue();
        if (r0 == 0) goto L_0x0039;
    L_0x002b:
        r0 = r12.zzKl();
        r0 = r0.zzLZ();
        r1 = "Upload called in the client side when service should be used";
        r0.log(r1);
        return;
    L_0x0039:
        r0 = r12.zzbuG;
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r4 <= 0) goto L_0x0045;
    L_0x0041:
        r12.zzMK();
        return;
    L_0x0045:
        r0 = r12.zzMH();
        if (r0 == 0) goto L_0x0059;
    L_0x004b:
        r0 = r12.zzKl();
        r0 = r0.zzMb();
        r1 = "Uploading requested multiple times";
        r0.log(r1);
        return;
    L_0x0059:
        r0 = r12.zzMz();
        r0 = r0.zzqa();
        if (r0 != 0) goto L_0x0074;
    L_0x0063:
        r0 = r12.zzKl();
        r0 = r0.zzMb();
        r1 = "Network not connected, ignoring upload request";
        r0.log(r1);
        r12.zzMK();
        return;
    L_0x0074:
        r0 = r12.zznR();
        r0 = r0.currentTimeMillis();
        r4 = r12.zzKn();
        r4 = r4.zzLs();
        r6 = r0 - r4;
        r12.zzaq(r6);
        r4 = r12.zzKm();
        r4 = r4.zzbtb;
        r4 = r4.get();
        r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r6 == 0) goto L_0x00ae;
    L_0x0097:
        r2 = r12.zzKl();
        r2 = r2.zzMe();
        r3 = "Uploading events. Elapsed time since last upload attempt (ms)";
        r6 = r0 - r4;
        r4 = java.lang.Math.abs(r6);
        r4 = java.lang.Long.valueOf(r4);
        r2.zzj(r3, r4);
    L_0x00ae:
        r2 = r12.zzKg();
        r2 = r2.zzLE();
        r3 = android.text.TextUtils.isEmpty(r2);
        r4 = -1;
        if (r3 != 0) goto L_0x0214;
    L_0x00be:
        r6 = r12.zzbuF;
        r3 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1));
        if (r3 != 0) goto L_0x00ce;
    L_0x00c4:
        r3 = r12.zzKg();
        r3 = r3.zzLM();
        r12.zzbuF = r3;
    L_0x00ce:
        r3 = r12.zzKn();
        r3 = r3.zzfq(r2);
        r4 = r12.zzKn();
        r4 = r4.zzfr(r2);
        r5 = r12.zzKg();
        r3 = r5.zzn(r2, r3, r4);
        r4 = r3.isEmpty();
        if (r4 != 0) goto L_0x0213;
    L_0x00ec:
        r4 = r3.iterator();
    L_0x00f0:
        r5 = r4.hasNext();
        r6 = 0;
        if (r5 == 0) goto L_0x010c;
    L_0x00f7:
        r5 = r4.next();
        r5 = (android.util.Pair) r5;
        r5 = r5.first;
        r5 = (com.google.android.gms.internal.zzauw.zze) r5;
        r7 = r5.zzbxw;
        r7 = android.text.TextUtils.isEmpty(r7);
        if (r7 != 0) goto L_0x00f0;
    L_0x0109:
        r4 = r5.zzbxw;
        goto L_0x010d;
    L_0x010c:
        r4 = r6;
    L_0x010d:
        r5 = 0;
        if (r4 == 0) goto L_0x0139;
    L_0x0110:
        r7 = r5;
    L_0x0111:
        r8 = r3.size();
        if (r7 >= r8) goto L_0x0139;
    L_0x0117:
        r8 = r3.get(r7);
        r8 = (android.util.Pair) r8;
        r8 = r8.first;
        r8 = (com.google.android.gms.internal.zzauw.zze) r8;
        r9 = r8.zzbxw;
        r9 = android.text.TextUtils.isEmpty(r9);
        if (r9 != 0) goto L_0x0136;
    L_0x0129:
        r8 = r8.zzbxw;
        r8 = r8.equals(r4);
        if (r8 != 0) goto L_0x0136;
    L_0x0131:
        r3 = r3.subList(r5, r7);
        goto L_0x0139;
    L_0x0136:
        r7 = r7 + 1;
        goto L_0x0111;
    L_0x0139:
        r4 = new com.google.android.gms.internal.zzauw$zzd;
        r4.<init>();
        r7 = r3.size();
        r7 = new com.google.android.gms.internal.zzauw.zze[r7];
        r4.zzbxg = r7;
        r7 = new java.util.ArrayList;
        r8 = r3.size();
        r7.<init>(r8);
        r8 = r5;
    L_0x0150:
        r9 = r4.zzbxg;
        r9 = r9.length;
        if (r8 >= r9) goto L_0x01a1;
    L_0x0155:
        r9 = r4.zzbxg;
        r10 = r3.get(r8);
        r10 = (android.util.Pair) r10;
        r10 = r10.first;
        r10 = (com.google.android.gms.internal.zzauw.zze) r10;
        r9[r8] = r10;
        r9 = r3.get(r8);
        r9 = (android.util.Pair) r9;
        r9 = r9.second;
        r9 = (java.lang.Long) r9;
        r7.add(r9);
        r9 = r4.zzbxg;
        r9 = r9[r8];
        r10 = r12.zzKn();
        r10 = r10.zzKv();
        r10 = java.lang.Long.valueOf(r10);
        r9.zzbxv = r10;
        r9 = r4.zzbxg;
        r9 = r9[r8];
        r10 = java.lang.Long.valueOf(r0);
        r9.zzbxl = r10;
        r9 = r4.zzbxg;
        r9 = r9[r8];
        r10 = r12.zzKn();
        r10 = r10.zzLh();
        r10 = java.lang.Boolean.valueOf(r10);
        r9.zzbxB = r10;
        r8 = r8 + 1;
        goto L_0x0150;
    L_0x01a1:
        r3 = r12.zzKl();
        r8 = 2;
        r3 = r3.zzak(r8);
        if (r3 == 0) goto L_0x01b0;
    L_0x01ac:
        r6 = com.google.android.gms.internal.zzaut.zzb(r4);
    L_0x01b0:
        r3 = r12.zzKh();
        r8 = r3.zza(r4);
        r3 = r12.zzKn();
        r9 = r3.zzLr();
        r10 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0202 }
        r10.<init>(r9);	 Catch:{ MalformedURLException -> 0x0202 }
        r12.zzK(r7);	 Catch:{ MalformedURLException -> 0x0202 }
        r3 = r12.zzKm();	 Catch:{ MalformedURLException -> 0x0202 }
        r3 = r3.zzbtc;	 Catch:{ MalformedURLException -> 0x0202 }
        r3.set(r0);	 Catch:{ MalformedURLException -> 0x0202 }
        r0 = "?";	 Catch:{ MalformedURLException -> 0x0202 }
        r1 = r4.zzbxg;	 Catch:{ MalformedURLException -> 0x0202 }
        r1 = r1.length;	 Catch:{ MalformedURLException -> 0x0202 }
        if (r1 <= 0) goto L_0x01de;	 Catch:{ MalformedURLException -> 0x0202 }
    L_0x01d8:
        r0 = r4.zzbxg;	 Catch:{ MalformedURLException -> 0x0202 }
        r0 = r0[r5];	 Catch:{ MalformedURLException -> 0x0202 }
        r0 = r0.zzaS;	 Catch:{ MalformedURLException -> 0x0202 }
    L_0x01de:
        r1 = r12.zzKl();	 Catch:{ MalformedURLException -> 0x0202 }
        r1 = r1.zzMf();	 Catch:{ MalformedURLException -> 0x0202 }
        r3 = "Uploading data. app, uncompressed size, data";	 Catch:{ MalformedURLException -> 0x0202 }
        r4 = r8.length;	 Catch:{ MalformedURLException -> 0x0202 }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ MalformedURLException -> 0x0202 }
        r1.zzd(r3, r0, r4, r6);	 Catch:{ MalformedURLException -> 0x0202 }
        r3 = r12.zzMz();	 Catch:{ MalformedURLException -> 0x0202 }
        r7 = 0;	 Catch:{ MalformedURLException -> 0x0202 }
        r0 = new com.google.android.gms.internal.zzaue$3;	 Catch:{ MalformedURLException -> 0x0202 }
        r0.<init>(r12);	 Catch:{ MalformedURLException -> 0x0202 }
        r4 = r2;	 Catch:{ MalformedURLException -> 0x0202 }
        r5 = r10;	 Catch:{ MalformedURLException -> 0x0202 }
        r6 = r8;	 Catch:{ MalformedURLException -> 0x0202 }
        r8 = r0;	 Catch:{ MalformedURLException -> 0x0202 }
        r3.zza(r4, r5, r6, r7, r8);	 Catch:{ MalformedURLException -> 0x0202 }
        return;
    L_0x0202:
        r0 = r12.zzKl();
        r0 = r0.zzLZ();
        r1 = "Failed to parse upload URL. Not uploading. appId";
        r2 = com.google.android.gms.internal.zzatx.zzfE(r2);
        r0.zze(r1, r2, r9);
    L_0x0213:
        return;
    L_0x0214:
        r12.zzbuF = r4;
        r2 = r12.zzKg();
        r3 = r12.zzKn();
        r3 = r3.zzLs();
        r5 = r0 - r3;
        r0 = r2.zzao(r5);
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 != 0) goto L_0x023b;
    L_0x022e:
        r1 = r12.zzKg();
        r0 = r1.zzfu(r0);
        if (r0 == 0) goto L_0x023b;
    L_0x0238:
        r12.zzb(r0);
    L_0x023b:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaue.zzMI():void");
    }

    void zzMM() {
        this.zzbuE++;
    }

    void zzMN() {
        zzmR();
        zzob();
        if (!this.zzbux) {
            zzKl().zzMd().log("This instance being marked as an uploader");
            zzMD();
        }
        this.zzbux = true;
    }

    boolean zzMO() {
        zzmR();
        zzob();
        return this.zzbux;
    }

    protected boolean zzMu() {
        zzob();
        zzmR();
        if (this.zzbuy == null || this.zzbuz == 0 || !(this.zzbuy == null || this.zzbuy.booleanValue() || Math.abs(zznR().elapsedRealtime() - this.zzbuz) <= 1000)) {
            this.zzbuz = zznR().elapsedRealtime();
            zzKn().zzLh();
            boolean z = false;
            if (zzKh().zzbW("android.permission.INTERNET") && zzKh().zzbW("android.permission.ACCESS_NETWORK_STATE") && (zzadg.zzbi(getContext()).zzzx() || (zzaub.zzi(getContext(), false) && zzaum.zzj(getContext(), false)))) {
                z = true;
            }
            this.zzbuy = Boolean.valueOf(z);
            if (this.zzbuy.booleanValue()) {
                this.zzbuy = Boolean.valueOf(zzKh().zzga(zzKb().getGmpAppId()));
            }
        }
        return this.zzbuy.booleanValue();
    }

    public zzatx zzMv() {
        return (this.zzbue == null || !this.zzbue.isInitialized()) ? null : this.zzbue;
    }

    zzaud zzMw() {
        return this.zzbuf;
    }

    public AppMeasurement zzMx() {
        return this.zzbui;
    }

    public FirebaseAnalytics zzMy() {
        return this.zzbuj;
    }

    public zzaty zzMz() {
        zza(this.zzbun);
        return this.zzbun;
    }

    public void zzV(boolean z) {
        zzMK();
    }

    int zza(FileChannel fileChannel) {
        zzmR();
        if (fileChannel != null) {
            if (fileChannel.isOpen()) {
                ByteBuffer allocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0);
                    int read = fileChannel.read(allocate);
                    if (read != 4) {
                        if (read != -1) {
                            zzKl().zzMb().zzj("Unexpected data length. Bytes read", Integer.valueOf(read));
                        }
                        return 0;
                    }
                    allocate.flip();
                    return allocate.getInt();
                } catch (IOException e) {
                    zzKl().zzLZ().zzj("Failed to read from channel", e);
                    return 0;
                }
            }
        }
        zzKl().zzLZ().log("Bad chanel to read from");
        return 0;
    }

    protected void zza(int i, Throwable th, byte[] bArr) {
        zzmR();
        zzob();
        int i2 = 0;
        if (bArr == null) {
            bArr = new byte[0];
        }
        List<Long> list = this.zzbuC;
        this.zzbuC = null;
        if ((i == Callback.DEFAULT_DRAG_ANIMATION_DURATION || i == 204) && th == null) {
            try {
                zzKm().zzbtb.set(zznR().currentTimeMillis());
                zzKm().zzbtc.set(0);
                zzMK();
                zzKl().zzMf().zze("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                zzKg().beginTransaction();
                for (Long longValue : list) {
                    zzKg().zzan(longValue.longValue());
                }
                zzKg().setTransactionSuccessful();
                zzKg().endTransaction();
                if (zzMz().zzqa() && zzMJ()) {
                    zzMI();
                } else {
                    this.zzbuF = -1;
                    zzMK();
                }
                this.zzbuG = 0;
                return;
            } catch (SQLiteException e) {
                zzKl().zzLZ().zzj("Database error while trying to delete uploaded bundles", e);
                this.zzbuG = zznR().elapsedRealtime();
                zzKl().zzMf().zzj("Disable upload, time", Long.valueOf(this.zzbuG));
                return;
            } catch (Throwable th2) {
                zzKg().endTransaction();
            }
        }
        zzKl().zzMf().zze("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
        zzKm().zzbtc.set(zznR().currentTimeMillis());
        if (i == 503 || i == 429) {
            i2 = 1;
        }
        if (i2 != 0) {
            zzKm().zzbtd.set(zznR().currentTimeMillis());
        }
        zzMK();
    }

    void zza(zzatd zzatd, long j) {
        zzatc zzfu = zzKg().zzfu(zzatd.packageName);
        if (!(zzfu == null || zzfu.getGmpAppId() == null || zzfu.getGmpAppId().equals(zzatd.zzbqK))) {
            zzKl().zzMb().zzj("New GMP App Id passed in. Removing cached database data. appId", zzatx.zzfE(zzfu.zzke()));
            zzKg().zzfz(zzfu.zzke());
            zzfu = null;
        }
        if (zzfu != null && zzfu.zzmZ() != null && !zzfu.zzmZ().equals(zzatd.zzbhN)) {
            Bundle bundle = new Bundle();
            bundle.putString("_pv", zzfu.zzmZ());
            zzb(new zzatq("_au", new zzato(bundle), "auto", j), zzatd);
        }
    }

    void zza(zzatm zzatm, zzatd zzatd) {
        zzmR();
        zzob();
        zzac.zzw(zzatm);
        zzac.zzw(zzatd);
        zzac.zzdr(zzatm.mAppId);
        zzac.zzaw(zzatm.mAppId.equals(zzatd.packageName));
        zzauw.zze zze = new zzauw.zze();
        zze.zzbxi = Integer.valueOf(1);
        zze.zzbxq = AbstractSpiCall.ANDROID_CLIENT_TYPE;
        zze.zzaS = zzatd.packageName;
        zze.zzbqL = zzatd.zzbqL;
        zze.zzbhN = zzatd.zzbhN;
        zze.zzbxD = Integer.valueOf((int) zzatd.zzbqR);
        zze.zzbxu = Long.valueOf(zzatd.zzbqM);
        zze.zzbqK = zzatd.zzbqK;
        zze.zzbxz = zzatd.zzbqN == 0 ? null : Long.valueOf(zzatd.zzbqN);
        Pair zzfG = zzKm().zzfG(zzatd.packageName);
        if (!TextUtils.isEmpty((CharSequence) zzfG.first)) {
            zze.zzbxw = (String) zzfG.first;
            zze.zzbxx = (Boolean) zzfG.second;
        } else if (!zzKc().zzbL(this.mContext)) {
            String string = Secure.getString(this.mContext.getContentResolver(), "android_id");
            if (string == null) {
                zzKl().zzMb().zzj("null secure ID. appId", zzatx.zzfE(zze.zzaS));
                string = "null";
            } else if (string.isEmpty()) {
                zzKl().zzMb().zzj("empty secure ID. appId", zzatx.zzfE(zze.zzaS));
            }
            zze.zzbxG = string;
        }
        zze.zzbxr = zzKc().zzkN();
        zze.zzbb = zzKc().zzLS();
        zze.zzbxt = Integer.valueOf((int) zzKc().zzLT());
        zze.zzbxs = zzKc().zzLU();
        zze.zzbxv = null;
        zze.zzbxl = null;
        zze.zzbxm = null;
        zze.zzbxn = null;
        zze.zzbxI = Long.valueOf(zzatd.zzbqT);
        zzatc zzfu = zzKg().zzfu(zzatd.packageName);
        if (zzfu == null) {
            zzfu = new zzatc(this, zzatd.packageName);
            zzfu.zzfd(zzKm().zzMi());
            zzfu.zzfg(zzatd.zzbqS);
            zzfu.zzfe(zzatd.zzbqK);
            zzfu.zzff(zzKm().zzfH(zzatd.packageName));
            zzfu.zzad(0);
            zzfu.zzY(0);
            zzfu.zzZ(0);
            zzfu.setAppVersion(zzatd.zzbhN);
            zzfu.zzaa(zzatd.zzbqR);
            zzfu.zzfh(zzatd.zzbqL);
            zzfu.zzab(zzatd.zzbqM);
            zzfu.zzac(zzatd.zzbqN);
            zzfu.setMeasurementEnabled(zzatd.zzbqP);
            zzfu.zzam(zzatd.zzbqT);
            zzKg().zza(zzfu);
        }
        zze.zzbxy = zzfu.getAppInstanceId();
        zze.zzbqS = zzfu.zzKq();
        List zzft = zzKg().zzft(zzatd.packageName);
        zze.zzbxk = new zzg[zzft.size()];
        for (int i = 0; i < zzft.size(); i++) {
            zzg zzg = new zzg();
            zze.zzbxk[i] = zzg;
            zzg.name = ((zzaus) zzft.get(i)).mName;
            zzg.zzbxM = Long.valueOf(((zzaus) zzft.get(i)).zzbwj);
            zzKh().zza(zzg, ((zzaus) zzft.get(i)).mValue);
        }
        try {
            if (zzKg().zza(zzatm, zzKg().zza(zze), zza(zzatm))) {
                this.zzbuG = 0;
            }
        } catch (IOException e) {
            zzKl().zzLZ().zze("Data loss. Failed to insert raw event metadata. appId", zzatx.zzfE(zze.zzaS), e);
        }
    }

    boolean zza(int i, FileChannel fileChannel) {
        zzmR();
        if (fileChannel != null) {
            if (fileChannel.isOpen()) {
                ByteBuffer allocate = ByteBuffer.allocate(4);
                allocate.putInt(i);
                allocate.flip();
                try {
                    fileChannel.truncate(0);
                    fileChannel.write(allocate);
                    fileChannel.force(true);
                    if (fileChannel.size() != 4) {
                        zzKl().zzLZ().zzj("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
                    }
                    return true;
                } catch (IOException e) {
                    zzKl().zzLZ().zzj("Failed to write to channel", e);
                    return false;
                }
            }
        }
        zzKl().zzLZ().log("Bad chanel to read from");
        return false;
    }

    public byte[] zza(zzatq zzatq, String str) {
        Throwable th;
        Throwable th2;
        zzatq zzatq2 = zzatq;
        String str2 = str;
        zzob();
        zzmR();
        zzJV();
        zzac.zzw(zzatq);
        zzac.zzdr(str);
        zzd zzd = new zzd();
        zzKg().beginTransaction();
        try {
            zzatc zzfu = zzKg().zzfu(str2);
            if (zzfu == null) {
                zzKl().zzMe().zzj("Log and bundle not available. package_name", str2);
            } else if (zzfu.zzKx()) {
                int i;
                Bundle bundle;
                zzd zzd2;
                int i2;
                long j;
                zzauw.zze zze = new zzauw.zze();
                zzd.zzbxg = new zzauw.zze[]{zze};
                zze.zzbxi = Integer.valueOf(1);
                zze.zzbxq = AbstractSpiCall.ANDROID_CLIENT_TYPE;
                zze.zzaS = zzfu.zzke();
                zze.zzbqL = zzfu.zzKu();
                zze.zzbhN = zzfu.zzmZ();
                zze.zzbxD = Integer.valueOf((int) zzfu.zzKt());
                zze.zzbxu = Long.valueOf(zzfu.zzKv());
                zze.zzbqK = zzfu.getGmpAppId();
                zze.zzbxz = Long.valueOf(zzfu.zzKw());
                Pair zzfG = zzKm().zzfG(zzfu.zzke());
                if (!TextUtils.isEmpty((CharSequence) zzfG.first)) {
                    zze.zzbxw = (String) zzfG.first;
                    zze.zzbxx = (Boolean) zzfG.second;
                }
                zze.zzbxr = zzKc().zzkN();
                zze.zzbb = zzKc().zzLS();
                zze.zzbxt = Integer.valueOf((int) zzKc().zzLT());
                zze.zzbxs = zzKc().zzLU();
                zze.zzbxy = zzfu.getAppInstanceId();
                zze.zzbqS = zzfu.zzKq();
                List zzft = zzKg().zzft(zzfu.zzke());
                zze.zzbxk = new zzg[zzft.size()];
                for (i = 0; i < zzft.size(); i++) {
                    zzg zzg = new zzg();
                    zze.zzbxk[i] = zzg;
                    zzg.name = ((zzaus) zzft.get(i)).mName;
                    zzg.zzbxM = Long.valueOf(((zzaus) zzft.get(i)).zzbwj);
                    zzKh().zza(zzg, ((zzaus) zzft.get(i)).mValue);
                }
                Bundle zzLW = zzatq2.zzbrH.zzLW();
                if ("_iap".equals(zzatq2.name)) {
                    zzLW.putLong("_c", 1);
                    zzKl().zzMe().log("Marking in-app purchase as real-time");
                    zzLW.putLong("_r", 1);
                }
                zzLW.putString("_o", zzatq2.zzbqW);
                if (zzKh().zzge(zze.zzaS)) {
                    zzKh().zza(zzLW, "_dbg", Long.valueOf(1));
                    zzKh().zza(zzLW, "_r", Long.valueOf(1));
                }
                zzatn zzQ = zzKg().zzQ(str2, zzatq2.name);
                if (zzQ == null) {
                    zzatn zzatn = zzQ;
                    bundle = zzLW;
                    zzd2 = zzd;
                    i2 = 1;
                    zzQ = new zzatn(str2, zzatq2.name, 1, 0, zzatq2.zzbrI);
                    zzKg().zza(zzatn);
                    j = 0;
                } else {
                    bundle = zzLW;
                    zzd2 = zzd;
                    i2 = 1;
                    long j2 = zzQ.zzbrD;
                    zzKg().zza(zzQ.zzap(zzatq2.zzbrI).zzLV());
                    j = j2;
                }
                zzatm zzatm = new zzatm(this, zzatq2.zzbqW, str2, zzatq2.name, zzatq2.zzbrI, j, bundle);
                zzb zzb = new zzb();
                zzb[] zzbArr = new zzb[i2];
                i = 0;
                zzbArr[0] = zzb;
                zze.zzbxj = zzbArr;
                zzb.zzbxc = Long.valueOf(zzatm.zzaxb);
                zzb.name = zzatm.mName;
                zzb.zzbxd = Long.valueOf(zzatm.zzbrz);
                zzb.zzbxb = new zzc[zzatm.zzbrA.size()];
                Iterator it = zzatm.zzbrA.iterator();
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    zzc zzc = new zzc();
                    int i3 = i + 1;
                    zzb.zzbxb[i] = zzc;
                    zzc.name = str3;
                    zzKh().zza(zzc, zzatm.zzbrA.get(str3));
                    i = i3;
                }
                try {
                    zze.zzbxC = zza(zzfu.zzke(), zze.zzbxk, zze.zzbxj);
                    zze.zzbxm = zzb.zzbxc;
                    zze.zzbxn = zzb.zzbxc;
                    long zzKs = zzfu.zzKs();
                    zze.zzbxp = zzKs != 0 ? Long.valueOf(zzKs) : null;
                    long zzKr = zzfu.zzKr();
                    if (zzKr != 0) {
                        zzKs = zzKr;
                    }
                    zze.zzbxo = zzKs != 0 ? Long.valueOf(zzKs) : null;
                    zzfu.zzKB();
                    zze.zzbxA = Integer.valueOf((int) zzfu.zzKy());
                    zze.zzbxv = Long.valueOf(zzKn().zzKv());
                    zze.zzbxl = Long.valueOf(zznR().currentTimeMillis());
                    zze.zzbxB = Boolean.TRUE;
                    zzfu.zzY(zze.zzbxm.longValue());
                    zzfu.zzZ(zze.zzbxn.longValue());
                    zzKg().zza(zzfu);
                    zzKg().setTransactionSuccessful();
                    zzKg().endTransaction();
                    zzd zzd3 = zzd2;
                    try {
                        byte[] bArr = new byte[zzd3.zzafB()];
                        zzbyc zzah = zzbyc.zzah(bArr);
                        zzd3.zza(zzah);
                        zzah.zzafo();
                        return zzKh().zzk(bArr);
                    } catch (IOException e) {
                        zzKl().zzLZ().zze("Data loss. Failed to bundle and serialize. appId", zzatx.zzfE(str), e);
                        return null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    th2 = th;
                    zzKg().endTransaction();
                    throw th2;
                }
            } else {
                zzKl().zzMe().zzj("Log and bundle disabled. package_name", str2);
            }
            byte[] bArr2 = new byte[0];
            zzKg().endTransaction();
            return bArr2;
        } catch (Throwable th4) {
            th = th4;
            zzaue zzaue = this;
            th2 = th;
            zzKg().endTransaction();
            throw th2;
        }
    }

    boolean zzaq(long j) {
        return zzl(null, j);
    }

    void zzb(com.google.android.gms.internal.zzatc r8) {
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
        r7 = this;
        r0 = r8.getGmpAppId();
        r0 = android.text.TextUtils.isEmpty(r0);
        if (r0 == 0) goto L_0x0018;
    L_0x000a:
        r2 = r8.zzke();
        r3 = 204; // 0xcc float:2.86E-43 double:1.01E-321;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r1 = r7;
        r1.zzb(r2, r3, r4, r5, r6);
        return;
    L_0x0018:
        r0 = r7.zzKn();
        r1 = r8.getGmpAppId();
        r2 = r8.getAppInstanceId();
        r0 = r0.zzP(r1, r2);
        r1 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x007a }
        r1.<init>(r0);	 Catch:{ MalformedURLException -> 0x007a }
        r2 = r7.zzKl();	 Catch:{ MalformedURLException -> 0x007a }
        r2 = r2.zzMf();	 Catch:{ MalformedURLException -> 0x007a }
        r3 = "Fetching remote configuration";	 Catch:{ MalformedURLException -> 0x007a }
        r4 = r8.zzke();	 Catch:{ MalformedURLException -> 0x007a }
        r2.zzj(r3, r4);	 Catch:{ MalformedURLException -> 0x007a }
        r2 = r7.zzKi();	 Catch:{ MalformedURLException -> 0x007a }
        r3 = r8.zzke();	 Catch:{ MalformedURLException -> 0x007a }
        r2 = r2.zzfL(r3);	 Catch:{ MalformedURLException -> 0x007a }
        r3 = 0;	 Catch:{ MalformedURLException -> 0x007a }
        r4 = r7.zzKi();	 Catch:{ MalformedURLException -> 0x007a }
        r5 = r8.zzke();	 Catch:{ MalformedURLException -> 0x007a }
        r4 = r4.zzfM(r5);	 Catch:{ MalformedURLException -> 0x007a }
        if (r2 == 0) goto L_0x0069;	 Catch:{ MalformedURLException -> 0x007a }
    L_0x0059:
        r2 = android.text.TextUtils.isEmpty(r4);	 Catch:{ MalformedURLException -> 0x007a }
        if (r2 != 0) goto L_0x0069;	 Catch:{ MalformedURLException -> 0x007a }
    L_0x005f:
        r3 = new android.support.v4.util.ArrayMap;	 Catch:{ MalformedURLException -> 0x007a }
        r3.<init>();	 Catch:{ MalformedURLException -> 0x007a }
        r2 = "If-Modified-Since";	 Catch:{ MalformedURLException -> 0x007a }
        r3.put(r2, r4);	 Catch:{ MalformedURLException -> 0x007a }
    L_0x0069:
        r2 = r7.zzMz();	 Catch:{ MalformedURLException -> 0x007a }
        r4 = r8.zzke();	 Catch:{ MalformedURLException -> 0x007a }
        r5 = new com.google.android.gms.internal.zzaue$4;	 Catch:{ MalformedURLException -> 0x007a }
        r5.<init>(r7);	 Catch:{ MalformedURLException -> 0x007a }
        r2.zza(r4, r1, r3, r5);	 Catch:{ MalformedURLException -> 0x007a }
        return;
    L_0x007a:
        r1 = r7.zzKl();
        r1 = r1.zzLZ();
        r2 = "Failed to parse config URL. Not fetching. appId";
        r8 = r8.zzke();
        r8 = com.google.android.gms.internal.zzatx.zzfE(r8);
        r1.zze(r2, r8, r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaue.zzb(com.google.android.gms.internal.zzatc):void");
    }

    void zzb(zzatd zzatd, long j) {
        zzmR();
        zzob();
        Bundle bundle = new Bundle();
        bundle.putLong("_c", 1);
        bundle.putLong("_r", 1);
        zzb(new zzatq("_v", new zzato(bundle), "auto", j), zzatd);
    }

    void zzb(zzatg zzatg, zzatd zzatd) {
        zzac.zzw(zzatg);
        zzac.zzdr(zzatg.packageName);
        zzac.zzw(zzatg.zzbqW);
        zzac.zzw(zzatg.zzbqX);
        zzac.zzdr(zzatg.zzbqX.name);
        zzmR();
        zzob();
        if (!TextUtils.isEmpty(zzatd.zzbqK)) {
            if (zzatd.zzbqP) {
                zzatg zzatg2 = new zzatg(zzatg);
                zzKg().beginTransaction();
                boolean z = false;
                try {
                    com.google.android.gms.internal.zzatx.zza zzMe;
                    String str;
                    Object obj;
                    Object obj2;
                    Object value;
                    zzatg zzT = zzKg().zzT(zzatg2.packageName, zzatg2.zzbqX.name);
                    if (zzT != null && zzT.zzbqZ) {
                        zzatg2.zzbqW = zzT.zzbqW;
                        zzatg2.zzbqY = zzT.zzbqY;
                        zzatg2.zzbra = zzT.zzbra;
                        zzatg2.zzbrd = zzT.zzbrd;
                    } else if (TextUtils.isEmpty(zzatg2.zzbra)) {
                        zzauq zzauq = zzatg2.zzbqX;
                        zzatg2.zzbqX = new zzauq(zzauq.name, zzatg2.zzbqY, zzauq.getValue(), zzauq.zzbqW);
                        zzatg2.zzbqZ = true;
                        z = true;
                    }
                    if (zzatg2.zzbqZ) {
                        com.google.android.gms.internal.zzatx.zza zzMe2;
                        String str2;
                        Object obj3;
                        Object obj4;
                        Object obj5;
                        zzauq zzauq2 = zzatg2.zzbqX;
                        zzaus zzaus = new zzaus(zzatg2.packageName, zzatg2.zzbqW, zzauq2.name, zzauq2.zzbwf, zzauq2.getValue());
                        if (zzKg().zza(zzaus)) {
                            zzMe2 = zzKl().zzMe();
                            str2 = "User property updated immediately";
                            obj3 = zzatg2.packageName;
                            obj4 = zzaus.mName;
                            obj5 = zzaus.mValue;
                        } else {
                            zzMe2 = zzKl().zzLZ();
                            str2 = "(2)Too many active user properties, ignoring";
                            obj3 = zzatx.zzfE(zzatg2.packageName);
                            obj4 = zzaus.mName;
                            obj5 = zzaus.mValue;
                        }
                        zzMe2.zzd(str2, obj3, obj4, obj5);
                        if (z && zzatg2.zzbrd != null) {
                            zzc(new zzatq(zzatg2.zzbrd, zzatg2.zzbqY), zzatd);
                        }
                    }
                    if (zzKg().zza(zzatg2)) {
                        zzMe = zzKl().zzMe();
                        str = "Conditional property added";
                        obj = zzatg2.packageName;
                        obj2 = zzatg2.zzbqX.name;
                        value = zzatg2.zzbqX.getValue();
                    } else {
                        zzMe = zzKl().zzLZ();
                        str = "Too many conditional properties, ignoring";
                        obj = zzatx.zzfE(zzatg2.packageName);
                        obj2 = zzatg2.zzbqX.name;
                        value = zzatg2.zzbqX.getValue();
                    }
                    zzMe.zzd(str, obj, obj2, value);
                    zzKg().setTransactionSuccessful();
                } finally {
                    zzKg().endTransaction();
                }
            } else {
                zzf(zzatd);
            }
        }
    }

    void zzb(zzatq zzatq, zzatd zzatd) {
        zzac.zzw(zzatd);
        zzac.zzdr(zzatd.packageName);
        zzmR();
        zzob();
        String str = zzatd.packageName;
        long j = zzatq.zzbrI;
        if (!zzKh().zzd(zzatq, zzatd)) {
            return;
        }
        if (zzatd.zzbqP) {
            zzKg().beginTransaction();
            try {
                for (zzatg zzatg : zzKg().zzh(str, j)) {
                    if (zzatg != null) {
                        zzKl().zzMe().zzd("User property timed out", zzatg.packageName, zzatg.zzbqX.name, zzatg.zzbqX.getValue());
                        if (zzatg.zzbrb != null) {
                            zzc(new zzatq(zzatg.zzbrb, j), zzatd);
                        }
                        zzKg().zzU(str, zzatg.zzbqX.name);
                    }
                }
                List<zzatg> zzi = zzKg().zzi(str, j);
                List<zzatq> arrayList = new ArrayList(zzi.size());
                for (zzatg zzatg2 : zzi) {
                    if (zzatg2 != null) {
                        zzKl().zzMe().zzd("User property expired", zzatg2.packageName, zzatg2.zzbqX.name, zzatg2.zzbqX.getValue());
                        zzKg().zzR(str, zzatg2.zzbqX.name);
                        if (zzatg2.zzbrf != null) {
                            arrayList.add(zzatg2.zzbrf);
                        }
                        zzKg().zzU(str, zzatg2.zzbqX.name);
                    }
                }
                for (zzatq zzatq2 : arrayList) {
                    zzc(new zzatq(zzatq2, j), zzatd);
                }
                List<zzatg> zzc = zzKg().zzc(str, zzatq.name, j);
                List<zzatq> arrayList2 = new ArrayList(zzc.size());
                for (zzatg zzatg3 : zzc) {
                    if (zzatg3 != null) {
                        com.google.android.gms.internal.zzatx.zza zzMe;
                        String str2;
                        Object obj;
                        Object obj2;
                        Object obj3;
                        zzauq zzauq = zzatg3.zzbqX;
                        zzaus zzaus = new zzaus(zzatg3.packageName, zzatg3.zzbqW, zzauq.name, j, zzauq.getValue());
                        if (zzKg().zza(zzaus)) {
                            zzMe = zzKl().zzMe();
                            str2 = "User property triggered";
                            obj = zzatg3.packageName;
                            obj2 = zzaus.mName;
                            obj3 = zzaus.mValue;
                        } else {
                            zzMe = zzKl().zzLZ();
                            str2 = "Too many active user properties, ignoring";
                            obj = zzatx.zzfE(zzatg3.packageName);
                            obj2 = zzaus.mName;
                            obj3 = zzaus.mValue;
                        }
                        zzMe.zzd(str2, obj, obj2, obj3);
                        if (zzatg3.zzbrd != null) {
                            arrayList2.add(zzatg3.zzbrd);
                        }
                        zzatg3.zzbqX = new zzauq(zzaus);
                        zzatg3.zzbqZ = true;
                        zzKg().zza(zzatg3);
                    }
                }
                zzc(zzatq, zzatd);
                for (zzatq zzatq3 : arrayList2) {
                    zzc(new zzatq(zzatq3, j), zzatd);
                }
                zzKg().setTransactionSuccessful();
            } finally {
                zzKg().endTransaction();
            }
        } else {
            zzf(zzatd);
        }
    }

    void zzb(com.google.android.gms.internal.zzatq r24, java.lang.String r25) {
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
        r23 = this;
        r0 = r24;
        r2 = r25;
        r1 = r23.zzKg();
        r1 = r1.zzfu(r2);
        if (r1 == 0) goto L_0x00a8;
    L_0x000e:
        r3 = r1.zzmZ();
        r3 = android.text.TextUtils.isEmpty(r3);
        if (r3 == 0) goto L_0x001a;
    L_0x0018:
        goto L_0x00a8;
    L_0x001a:
        r3 = r23.getContext();	 Catch:{ NameNotFoundException -> 0x004b }
        r3 = com.google.android.gms.internal.zzadg.zzbi(r3);	 Catch:{ NameNotFoundException -> 0x004b }
        r4 = 0;	 Catch:{ NameNotFoundException -> 0x004b }
        r3 = r3.getPackageInfo(r2, r4);	 Catch:{ NameNotFoundException -> 0x004b }
        r3 = r3.versionName;	 Catch:{ NameNotFoundException -> 0x004b }
        r4 = r1.zzmZ();	 Catch:{ NameNotFoundException -> 0x004b }
        if (r4 == 0) goto L_0x0066;	 Catch:{ NameNotFoundException -> 0x004b }
    L_0x002f:
        r4 = r1.zzmZ();	 Catch:{ NameNotFoundException -> 0x004b }
        r3 = r4.equals(r3);	 Catch:{ NameNotFoundException -> 0x004b }
        if (r3 != 0) goto L_0x0066;	 Catch:{ NameNotFoundException -> 0x004b }
    L_0x0039:
        r3 = r23.zzKl();	 Catch:{ NameNotFoundException -> 0x004b }
        r3 = r3.zzMb();	 Catch:{ NameNotFoundException -> 0x004b }
        r4 = "App version does not match; dropping event. appId";	 Catch:{ NameNotFoundException -> 0x004b }
        r5 = com.google.android.gms.internal.zzatx.zzfE(r25);	 Catch:{ NameNotFoundException -> 0x004b }
        r3.zzj(r4, r5);	 Catch:{ NameNotFoundException -> 0x004b }
        return;
    L_0x004b:
        r3 = "_ui";
        r4 = r0.name;
        r3 = r3.equals(r4);
        if (r3 != 0) goto L_0x0066;
    L_0x0055:
        r3 = r23.zzKl();
        r3 = r3.zzMb();
        r4 = "Could not find package. appId";
        r5 = com.google.android.gms.internal.zzatx.zzfE(r25);
        r3.zzj(r4, r5);
    L_0x0066:
        r15 = new com.google.android.gms.internal.zzatd;
        r3 = r1.getGmpAppId();
        r4 = r1.zzmZ();
        r5 = r1.zzKt();
        r7 = r1.zzKu();
        r8 = r1.zzKv();
        r10 = r1.zzKw();
        r12 = 0;
        r13 = r1.zzKx();
        r14 = 0;
        r16 = r1.zzKq();
        r17 = r1.zzuW();
        r19 = 0;
        r21 = 0;
        r1 = r15;
        r22 = r15;
        r15 = r16;
        r16 = r17;
        r18 = r19;
        r20 = r21;
        r1.<init>(r2, r3, r4, r5, r7, r8, r10, r12, r13, r14, r15, r16, r18, r20);
        r1 = r23;
        r2 = r22;
        r1.zzb(r0, r2);
        return;
    L_0x00a8:
        r1 = r23;
        r0 = r23.zzKl();
        r0 = r0.zzMe();
        r3 = "No app data available; dropping event";
        r0.zzj(r3, r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaue.zzb(com.google.android.gms.internal.zzatq, java.lang.String):void");
    }

    void zzb(zzauh zzauh) {
        this.zzbuD++;
    }

    void zzb(zzauq zzauq, zzatd zzatd) {
        zzmR();
        zzob();
        if (!TextUtils.isEmpty(zzatd.zzbqK)) {
            if (zzatd.zzbqP) {
                int zzfX = zzKh().zzfX(zzauq.name);
                int i = 0;
                String zza;
                if (zzfX != 0) {
                    zza = zzKh().zza(zzauq.name, zzKn().zzKN(), true);
                    if (zzauq.name != null) {
                        i = zzauq.name.length();
                    }
                    zzKh().zza(zzfX, "_ev", zza, i);
                    return;
                }
                zzfX = zzKh().zzl(zzauq.name, zzauq.getValue());
                if (zzfX != 0) {
                    zza = zzKh().zza(zzauq.name, zzKn().zzKN(), true);
                    Object value = zzauq.getValue();
                    if (value != null && ((value instanceof String) || (value instanceof CharSequence))) {
                        i = String.valueOf(value).length();
                    }
                    zzKh().zza(zzfX, "_ev", zza, i);
                    return;
                }
                Object zzm = zzKh().zzm(zzauq.name, zzauq.getValue());
                if (zzm != null) {
                    zzaus zzaus = new zzaus(zzatd.packageName, zzauq.zzbqW, zzauq.name, zzauq.zzbwf, zzm);
                    zzKl().zzMe().zze("Setting user property", zzaus.mName, zzm);
                    zzKg().beginTransaction();
                    try {
                        zzf(zzatd);
                        boolean zza2 = zzKg().zza(zzaus);
                        zzKg().setTransactionSuccessful();
                        if (zza2) {
                            zzKl().zzMe().zze("User property set", zzaus.mName, zzaus.mValue);
                        } else {
                            zzKl().zzLZ().zze("Too many unique user properties are set. Ignoring user property", zzaus.mName, zzaus.mValue);
                            zzKh().zza(9, null, null, 0);
                        }
                        zzKg().endTransaction();
                        return;
                    } catch (Throwable th) {
                        zzKg().endTransaction();
                    }
                } else {
                    return;
                }
            }
            zzf(zzatd);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void zzb(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11) {
        /*
        r6 = this;
        r6.zzmR();
        r6.zzob();
        com.google.android.gms.common.internal.zzac.zzdr(r7);
        r0 = 0;
        if (r10 != 0) goto L_0x000e;
    L_0x000c:
        r10 = new byte[r0];
    L_0x000e:
        r1 = r6.zzKg();
        r1.beginTransaction();
        r1 = r6.zzKg();	 Catch:{ all -> 0x0143 }
        r1 = r1.zzfu(r7);	 Catch:{ all -> 0x0143 }
        r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r3 = 1;
        r4 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        if (r8 == r2) goto L_0x002a;
    L_0x0024:
        r2 = 204; // 0xcc float:2.86E-43 double:1.01E-321;
        if (r8 == r2) goto L_0x002a;
    L_0x0028:
        if (r8 != r4) goto L_0x002e;
    L_0x002a:
        if (r9 != 0) goto L_0x002e;
    L_0x002c:
        r2 = r3;
        goto L_0x002f;
    L_0x002e:
        r2 = r0;
    L_0x002f:
        if (r1 != 0) goto L_0x0044;
    L_0x0031:
        r8 = r6.zzKl();	 Catch:{ all -> 0x0143 }
        r8 = r8.zzMb();	 Catch:{ all -> 0x0143 }
        r9 = "App does not exist in onConfigFetched. appId";
        r7 = com.google.android.gms.internal.zzatx.zzfE(r7);	 Catch:{ all -> 0x0143 }
        r8.zzj(r9, r7);	 Catch:{ all -> 0x0143 }
        goto L_0x013b;
    L_0x0044:
        r5 = 404; // 0x194 float:5.66E-43 double:1.996E-321;
        if (r2 != 0) goto L_0x00a7;
    L_0x0048:
        if (r8 != r5) goto L_0x004b;
    L_0x004a:
        goto L_0x00a7;
    L_0x004b:
        r10 = r6.zznR();	 Catch:{ all -> 0x0143 }
        r10 = r10.currentTimeMillis();	 Catch:{ all -> 0x0143 }
        r1.zzaf(r10);	 Catch:{ all -> 0x0143 }
        r10 = r6.zzKg();	 Catch:{ all -> 0x0143 }
        r10.zza(r1);	 Catch:{ all -> 0x0143 }
        r10 = r6.zzKl();	 Catch:{ all -> 0x0143 }
        r10 = r10.zzMf();	 Catch:{ all -> 0x0143 }
        r11 = "Fetching config failed. code, error";
        r1 = java.lang.Integer.valueOf(r8);	 Catch:{ all -> 0x0143 }
        r10.zze(r11, r1, r9);	 Catch:{ all -> 0x0143 }
        r9 = r6.zzKi();	 Catch:{ all -> 0x0143 }
        r9.zzfN(r7);	 Catch:{ all -> 0x0143 }
        r7 = r6.zzKm();	 Catch:{ all -> 0x0143 }
        r7 = r7.zzbtc;	 Catch:{ all -> 0x0143 }
        r9 = r6.zznR();	 Catch:{ all -> 0x0143 }
        r9 = r9.currentTimeMillis();	 Catch:{ all -> 0x0143 }
        r7.set(r9);	 Catch:{ all -> 0x0143 }
        r7 = 503; // 0x1f7 float:7.05E-43 double:2.485E-321;
        if (r8 == r7) goto L_0x008e;
    L_0x008a:
        r7 = 429; // 0x1ad float:6.01E-43 double:2.12E-321;
        if (r8 != r7) goto L_0x008f;
    L_0x008e:
        r0 = r3;
    L_0x008f:
        if (r0 == 0) goto L_0x00a2;
    L_0x0091:
        r7 = r6.zzKm();	 Catch:{ all -> 0x0143 }
        r7 = r7.zzbtd;	 Catch:{ all -> 0x0143 }
        r8 = r6.zznR();	 Catch:{ all -> 0x0143 }
        r8 = r8.currentTimeMillis();	 Catch:{ all -> 0x0143 }
        r7.set(r8);	 Catch:{ all -> 0x0143 }
    L_0x00a2:
        r6.zzMK();	 Catch:{ all -> 0x0143 }
        goto L_0x013b;
    L_0x00a7:
        r9 = 0;
        if (r11 == 0) goto L_0x00b3;
    L_0x00aa:
        r2 = "Last-Modified";
        r11 = r11.get(r2);	 Catch:{ all -> 0x0143 }
        r11 = (java.util.List) r11;	 Catch:{ all -> 0x0143 }
        goto L_0x00b4;
    L_0x00b3:
        r11 = r9;
    L_0x00b4:
        if (r11 == 0) goto L_0x00c3;
    L_0x00b6:
        r2 = r11.size();	 Catch:{ all -> 0x0143 }
        if (r2 <= 0) goto L_0x00c3;
    L_0x00bc:
        r11 = r11.get(r0);	 Catch:{ all -> 0x0143 }
        r11 = (java.lang.String) r11;	 Catch:{ all -> 0x0143 }
        goto L_0x00c4;
    L_0x00c3:
        r11 = r9;
    L_0x00c4:
        if (r8 == r5) goto L_0x00db;
    L_0x00c6:
        if (r8 != r4) goto L_0x00c9;
    L_0x00c8:
        goto L_0x00db;
    L_0x00c9:
        r9 = r6.zzKi();	 Catch:{ all -> 0x0143 }
        r9 = r9.zzb(r7, r10, r11);	 Catch:{ all -> 0x0143 }
        if (r9 != 0) goto L_0x00f0;
    L_0x00d3:
        r7 = r6.zzKg();
        r7.endTransaction();
        return;
    L_0x00db:
        r11 = r6.zzKi();	 Catch:{ all -> 0x0143 }
        r11 = r11.zzfL(r7);	 Catch:{ all -> 0x0143 }
        if (r11 != 0) goto L_0x00f0;
    L_0x00e5:
        r11 = r6.zzKi();	 Catch:{ all -> 0x0143 }
        r9 = r11.zzb(r7, r9, r9);	 Catch:{ all -> 0x0143 }
        if (r9 != 0) goto L_0x00f0;
    L_0x00ef:
        goto L_0x00d3;
    L_0x00f0:
        r9 = r6.zznR();	 Catch:{ all -> 0x0143 }
        r2 = r9.currentTimeMillis();	 Catch:{ all -> 0x0143 }
        r1.zzae(r2);	 Catch:{ all -> 0x0143 }
        r9 = r6.zzKg();	 Catch:{ all -> 0x0143 }
        r9.zza(r1);	 Catch:{ all -> 0x0143 }
        if (r8 != r5) goto L_0x0112;
    L_0x0104:
        r8 = r6.zzKl();	 Catch:{ all -> 0x0143 }
        r8 = r8.zzMc();	 Catch:{ all -> 0x0143 }
        r9 = "Config not found. Using empty config. appId";
        r8.zzj(r9, r7);	 Catch:{ all -> 0x0143 }
        goto L_0x0128;
    L_0x0112:
        r7 = r6.zzKl();	 Catch:{ all -> 0x0143 }
        r7 = r7.zzMf();	 Catch:{ all -> 0x0143 }
        r9 = "Successfully fetched config. Got network response. code, size";
        r8 = java.lang.Integer.valueOf(r8);	 Catch:{ all -> 0x0143 }
        r10 = r10.length;	 Catch:{ all -> 0x0143 }
        r10 = java.lang.Integer.valueOf(r10);	 Catch:{ all -> 0x0143 }
        r7.zze(r9, r8, r10);	 Catch:{ all -> 0x0143 }
    L_0x0128:
        r7 = r6.zzMz();	 Catch:{ all -> 0x0143 }
        r7 = r7.zzqa();	 Catch:{ all -> 0x0143 }
        if (r7 == 0) goto L_0x00a2;
    L_0x0132:
        r7 = r6.zzMJ();	 Catch:{ all -> 0x0143 }
        if (r7 == 0) goto L_0x00a2;
    L_0x0138:
        r6.zzMI();	 Catch:{ all -> 0x0143 }
    L_0x013b:
        r7 = r6.zzKg();	 Catch:{ all -> 0x0143 }
        r7.setTransactionSuccessful();	 Catch:{ all -> 0x0143 }
        goto L_0x00d3;
    L_0x0143:
        r7 = move-exception;
        r8 = r6.zzKg();
        r8.endTransaction();
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaue.zzb(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    void zzc(zzatd zzatd, long j) {
        zzmR();
        zzob();
        zzatc zzfu = zzKg().zzfu(zzatd.packageName);
        if (!(zzfu == null || !TextUtils.isEmpty(zzfu.getGmpAppId()) || zzatd == null || TextUtils.isEmpty(zzatd.zzbqK))) {
            zzfu.zzae(0);
            zzKg().zza(zzfu);
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_c", 1);
        bundle.putLong("_r", 1);
        bundle.putLong("_uwa", 0);
        bundle.putLong("_pfo", 0);
        bundle.putLong("_sys", 0);
        bundle.putLong("_sysu", 0);
        if (getContext().getPackageManager() == null) {
            zzKl().zzLZ().zzj("PackageManager is null, first open report might be inaccurate. appId", zzatx.zzfE(zzatd.packageName));
        } else {
            PackageInfo packageInfo;
            ApplicationInfo applicationInfo;
            try {
                packageInfo = zzadg.zzbi(getContext()).getPackageInfo(zzatd.packageName, 0);
            } catch (NameNotFoundException e) {
                zzKl().zzLZ().zze("Package info is null, first open report might be inaccurate. appId", zzatx.zzfE(zzatd.packageName), e);
                packageInfo = null;
            }
            if (!(packageInfo == null || packageInfo.firstInstallTime == 0 || packageInfo.firstInstallTime == packageInfo.lastUpdateTime)) {
                bundle.putLong("_uwa", 1);
            }
            try {
                applicationInfo = zzadg.zzbi(getContext()).getApplicationInfo(zzatd.packageName, 0);
            } catch (NameNotFoundException e2) {
                zzKl().zzLZ().zze("Application info is null, first open report might be inaccurate. appId", zzatx.zzfE(zzatd.packageName), e2);
                applicationInfo = null;
            }
            if (applicationInfo != null) {
                if ((applicationInfo.flags & 1) != 0) {
                    bundle.putLong("_sys", 1);
                }
                if ((applicationInfo.flags & 128) != 0) {
                    bundle.putLong("_sysu", 1);
                }
            }
        }
        long zzfA = zzKg().zzfA(zzatd.packageName);
        if (zzfA >= 0) {
            bundle.putLong("_pfo", zzfA);
        }
        zzb(new zzatq("_f", new zzato(bundle), "auto", j), zzatd);
    }

    void zzc(zzatg zzatg, zzatd zzatd) {
        zzac.zzw(zzatg);
        zzac.zzdr(zzatg.packageName);
        zzac.zzw(zzatg.zzbqX);
        zzac.zzdr(zzatg.zzbqX.name);
        zzmR();
        zzob();
        if (!TextUtils.isEmpty(zzatd.zzbqK)) {
            if (zzatd.zzbqP) {
                zzKg().beginTransaction();
                try {
                    zzf(zzatd);
                    zzatg zzT = zzKg().zzT(zzatg.packageName, zzatg.zzbqX.name);
                    if (zzT != null) {
                        zzKl().zzMe().zze("Removing conditional user property", zzatg.packageName, zzatg.zzbqX.name);
                        zzKg().zzU(zzatg.packageName, zzatg.zzbqX.name);
                        if (zzT.zzbqZ) {
                            zzKg().zzR(zzatg.packageName, zzatg.zzbqX.name);
                        }
                        if (zzatg.zzbrf != null) {
                            Bundle bundle = null;
                            if (zzatg.zzbrf.zzbrH != null) {
                                bundle = zzatg.zzbrf.zzbrH.zzLW();
                            }
                            Bundle bundle2 = bundle;
                            zzc(zzKh().zza(zzatg.zzbrf.name, bundle2, zzT.zzbqW, zzatg.zzbrf.zzbrI, true, false), zzatd);
                        }
                    } else {
                        zzKl().zzMb().zze("Conditional user property doesn't exist", zzatx.zzfE(zzatg.packageName), zzatg.zzbqX.name);
                    }
                    zzKg().setTransactionSuccessful();
                } finally {
                    zzKg().endTransaction();
                }
            } else {
                zzf(zzatd);
            }
        }
    }

    void zzc(zzatq zzatq, zzatd zzatd) {
        zzaue zzaue;
        Throwable th;
        Throwable th2;
        zzaue zzaue2 = this;
        zzatq zzatq2 = zzatq;
        zzatd zzatd2 = zzatd;
        zzac.zzw(zzatd);
        zzac.zzdr(zzatd2.packageName);
        long nanoTime = System.nanoTime();
        zzmR();
        zzob();
        String str = zzatd2.packageName;
        if (!zzKh().zzd(zzatq2, zzatd2)) {
            return;
        }
        if (zzatd2.zzbqP) {
            int i = 1;
            if (zzKi().zzaa(str, zzatq2.name)) {
                zzKl().zzMb().zze("Dropping blacklisted event. appId", zzatx.zzfE(str), zzatq2.name);
                if (!zzKh().zzgg(str)) {
                    if (!zzKh().zzgh(str)) {
                        i = 0;
                    }
                }
                if (i == 0 && !"_err".equals(zzatq2.name)) {
                    zzKh().zza(11, "_ev", zzatq2.name, 0);
                }
                if (i != 0) {
                    zzatc zzfu = zzKg().zzfu(str);
                    if (zzfu != null) {
                        if (Math.abs(zznR().currentTimeMillis() - Math.max(zzfu.zzKA(), zzfu.zzKz())) > zzKn().zzLm()) {
                            zzKl().zzMe().log("Fetching config for blacklisted app");
                            zzb(zzfu);
                        }
                    }
                }
                return;
            }
            if (zzKl().zzak(2)) {
                zzKl().zzMf().zzj("Logging event", zzatq2);
            }
            zzKg().beginTransaction();
            zzaue zzaue3;
            try {
                Bundle bundle;
                int i2;
                boolean zzfT;
                boolean equals;
                Bundle bundle2;
                long j;
                int i3;
                com.google.android.gms.internal.zzatj.zza zza;
                long zzKV;
                long zzKW;
                long zzfj;
                long zzfv;
                zzatm zzatm;
                zzatn zzQ;
                long zzfC;
                zzatm zza2;
                zzatn zzap;
                long round;
                Bundle zzLW = zzatq2.zzbrH.zzLW();
                zzf(zzatd2);
                if (!"_iap".equals(zzatq2.name)) {
                    try {
                        if (Event.ECOMMERCE_PURCHASE.equals(zzatq2.name)) {
                        }
                        zzaue = zzaue2;
                        bundle = zzLW;
                        i2 = 0;
                        zzfT = zzaut.zzfT(zzatq2.name);
                        equals = "_err".equals(zzatq2.name);
                        bundle2 = bundle;
                        j = nanoTime;
                        i3 = i2;
                        zza = zzKg().zza(zzMG(), str, true, zzfT, false, equals, false);
                        zzKV = zza.zzbrp - zzKn().zzKV();
                        if (zzKV <= 0) {
                            if (zzKV % 1000 == 1) {
                                zzKl().zzLZ().zze("Data loss. Too many events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbrp));
                            }
                            zzKh().zza(16, "_ev", zzatq2.name, i3);
                            zzKg().setTransactionSuccessful();
                            zzKg().endTransaction();
                            return;
                        }
                        if (zzfT) {
                            zzKW = zza.zzbro - zzKn().zzKW();
                            if (zzKW > 0) {
                                if (zzKW % 1000 == 1) {
                                    zzKl().zzLZ().zze("Data loss. Too many public events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbro));
                                }
                                zzKh().zza(16, "_ev", zzatq2.name, i3);
                                zzKg().setTransactionSuccessful();
                                zzKg().endTransaction();
                                return;
                            }
                        }
                        if (equals) {
                            zzfj = zza.zzbrr - ((long) zzKn().zzfj(zzatd2.packageName));
                            if (zzfj > 0) {
                                if (zzfj == 1) {
                                    zzKl().zzLZ().zze("Too many error events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbrr));
                                }
                                zzKg().setTransactionSuccessful();
                                zzKg().endTransaction();
                                return;
                            }
                        }
                        zzKh().zza(bundle2, "_o", zzatq2.zzbqW);
                        if (zzKh().zzge(str)) {
                            zzKh().zza(bundle2, "_dbg", Long.valueOf(1));
                            zzKh().zza(bundle2, "_r", Long.valueOf(1));
                        }
                        zzfv = zzKg().zzfv(str);
                        if (zzfv > 0) {
                            zzKl().zzMb().zze("Data lost. Too many events stored on disk, deleted. appId", zzatx.zzfE(str), Long.valueOf(zzfv));
                        }
                        zzatm = new zzatm(this, zzatq2.zzbqW, str, zzatq2.name, zzatq2.zzbrI, 0, bundle2);
                        zzQ = zzKg().zzQ(str, zzatm.mName);
                        if (zzQ != null) {
                            zzfC = zzKg().zzfC(str);
                            zzKn().zzKU();
                            if (zzfC < 500) {
                                zzKl().zzLZ().zzd("Too many event names used, ignoring event. appId, name, supported count", zzatx.zzfE(str), zzatm.mName, Integer.valueOf(zzKn().zzKU()));
                                zzKh().zza(8, null, null, i3);
                                zzKg().endTransaction();
                                return;
                            }
                            zzQ = new zzatn(str, zzatm.mName, 0, 0, zzatm.zzaxb);
                            zzaue3 = this;
                        } else {
                            try {
                                zza2 = zzatm.zza(this, zzQ.zzbrD);
                                zzap = zzQ.zzap(zza2.zzaxb);
                            } catch (Throwable th3) {
                                th = th3;
                                th2 = th;
                                zzKg().endTransaction();
                                throw th2;
                            }
                        }
                        zzKg().zza(zzap);
                        zzaue3.zza(zza2, zzatd2);
                        zzKg().setTransactionSuccessful();
                        if (zzKl().zzak(2)) {
                            zzKl().zzMf().zzj("Event recorded", zza2);
                        }
                        zzKg().endTransaction();
                        zzMK();
                        zzKl().zzMf().zzj("Background event processing time, ms", Long.valueOf(((System.nanoTime() - j) + 500000) / 1000000));
                        return;
                    } catch (Throwable th4) {
                        th2 = th4;
                        zzaue3 = zzaue2;
                        zzKg().endTransaction();
                        throw th2;
                    }
                }
                Object string = zzLW.getString(Param.CURRENCY);
                if (Event.ECOMMERCE_PURCHASE.equals(zzatq2.name)) {
                    double d = zzLW.getDouble("value") * 1000000.0d;
                    if (d == 0.0d) {
                        d = ((double) zzLW.getLong("value")) * 1000000.0d;
                    }
                    if (d > 9.223372036854776E18d || d < -9.223372036854776E18d) {
                        zzKl().zzMb().zze("Data lost. Currency value is too big. appId", zzatx.zzfE(str), Double.valueOf(d));
                        zzKg().setTransactionSuccessful();
                        zzKg().endTransaction();
                        return;
                    }
                    round = Math.round(d);
                } else {
                    round = zzLW.getLong("value");
                }
                if (!TextUtils.isEmpty(string)) {
                    String toUpperCase = string.toUpperCase(Locale.US);
                    if (toUpperCase.matches("[A-Z]{3}")) {
                        String str2;
                        String valueOf = String.valueOf("_ltv_");
                        toUpperCase = String.valueOf(toUpperCase);
                        valueOf = toUpperCase.length() != 0 ? valueOf.concat(toUpperCase) : new String(valueOf);
                        zzaus zzS = zzKg().zzS(str, valueOf);
                        if (zzS == null) {
                            bundle = zzLW;
                            str2 = null;
                            zzaue = this;
                        } else if (zzS.mValue instanceof Long) {
                            try {
                                str2 = null;
                                bundle = zzLW;
                                zzS = new zzaus(str, zzatq2.zzbqW, valueOf, zznR().currentTimeMillis(), Long.valueOf(((Long) zzS.mValue).longValue() + round));
                                zzaue = this;
                                if (zzKg().zza(zzS)) {
                                    zzKl().zzLZ().zzd("Too many unique user properties are set. Ignoring user property. appId", zzatx.zzfE(str), zzS.mName, zzS.mValue);
                                    i2 = 0;
                                    zzKh().zza(9, str2, str2, 0);
                                } else {
                                    i2 = 0;
                                }
                                zzfT = zzaut.zzfT(zzatq2.name);
                                equals = "_err".equals(zzatq2.name);
                                bundle2 = bundle;
                                j = nanoTime;
                                i3 = i2;
                                zza = zzKg().zza(zzMG(), str, true, zzfT, false, equals, false);
                                zzKV = zza.zzbrp - zzKn().zzKV();
                                if (zzKV <= 0) {
                                    if (zzfT) {
                                        zzKW = zza.zzbro - zzKn().zzKW();
                                        if (zzKW > 0) {
                                            if (zzKW % 1000 == 1) {
                                                zzKl().zzLZ().zze("Data loss. Too many public events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbro));
                                            }
                                            zzKh().zza(16, "_ev", zzatq2.name, i3);
                                            zzKg().setTransactionSuccessful();
                                            zzKg().endTransaction();
                                            return;
                                        }
                                    }
                                    if (equals) {
                                        zzfj = zza.zzbrr - ((long) zzKn().zzfj(zzatd2.packageName));
                                        if (zzfj > 0) {
                                            if (zzfj == 1) {
                                                zzKl().zzLZ().zze("Too many error events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbrr));
                                            }
                                            zzKg().setTransactionSuccessful();
                                            zzKg().endTransaction();
                                            return;
                                        }
                                    }
                                    zzKh().zza(bundle2, "_o", zzatq2.zzbqW);
                                    if (zzKh().zzge(str)) {
                                        zzKh().zza(bundle2, "_dbg", Long.valueOf(1));
                                        zzKh().zza(bundle2, "_r", Long.valueOf(1));
                                    }
                                    zzfv = zzKg().zzfv(str);
                                    if (zzfv > 0) {
                                        zzKl().zzMb().zze("Data lost. Too many events stored on disk, deleted. appId", zzatx.zzfE(str), Long.valueOf(zzfv));
                                    }
                                    zzatm = new zzatm(this, zzatq2.zzbqW, str, zzatq2.name, zzatq2.zzbrI, 0, bundle2);
                                    zzQ = zzKg().zzQ(str, zzatm.mName);
                                    if (zzQ != null) {
                                        zza2 = zzatm.zza(this, zzQ.zzbrD);
                                        zzap = zzQ.zzap(zza2.zzaxb);
                                    } else {
                                        zzfC = zzKg().zzfC(str);
                                        zzKn().zzKU();
                                        if (zzfC < 500) {
                                            zzQ = new zzatn(str, zzatm.mName, 0, 0, zzatm.zzaxb);
                                            zzaue3 = this;
                                        } else {
                                            zzKl().zzLZ().zzd("Too many event names used, ignoring event. appId, name, supported count", zzatx.zzfE(str), zzatm.mName, Integer.valueOf(zzKn().zzKU()));
                                            zzKh().zza(8, null, null, i3);
                                            zzKg().endTransaction();
                                            return;
                                        }
                                    }
                                    zzKg().zza(zzap);
                                    zzaue3.zza(zza2, zzatd2);
                                    zzKg().setTransactionSuccessful();
                                    if (zzKl().zzak(2)) {
                                        zzKl().zzMf().zzj("Event recorded", zza2);
                                    }
                                    zzKg().endTransaction();
                                    zzMK();
                                    zzKl().zzMf().zzj("Background event processing time, ms", Long.valueOf(((System.nanoTime() - j) + 500000) / 1000000));
                                    return;
                                }
                                if (zzKV % 1000 == 1) {
                                    zzKl().zzLZ().zze("Data loss. Too many events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbrp));
                                }
                                zzKh().zza(16, "_ev", zzatq2.name, i3);
                                zzKg().setTransactionSuccessful();
                                zzKg().endTransaction();
                                return;
                            } catch (Throwable th42) {
                                th2 = th42;
                                zzaue3 = this;
                                zzKg().endTransaction();
                                throw th2;
                            }
                        } else {
                            bundle = zzLW;
                            zzaue = zzaue2;
                            str2 = null;
                        }
                        try {
                            zzKg().zzz(str, zzKn().zzfn(str) - 1);
                            zzS = new zzaus(str, zzatq2.zzbqW, valueOf, zznR().currentTimeMillis(), Long.valueOf(round));
                            if (zzKg().zza(zzS)) {
                                i2 = 0;
                            } else {
                                zzKl().zzLZ().zzd("Too many unique user properties are set. Ignoring user property. appId", zzatx.zzfE(str), zzS.mName, zzS.mValue);
                                i2 = 0;
                                zzKh().zza(9, str2, str2, 0);
                            }
                            zzfT = zzaut.zzfT(zzatq2.name);
                            equals = "_err".equals(zzatq2.name);
                            bundle2 = bundle;
                            j = nanoTime;
                            i3 = i2;
                            zza = zzKg().zza(zzMG(), str, true, zzfT, false, equals, false);
                            zzKV = zza.zzbrp - zzKn().zzKV();
                            if (zzKV <= 0) {
                                if (zzKV % 1000 == 1) {
                                    zzKl().zzLZ().zze("Data loss. Too many events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbrp));
                                }
                                zzKh().zza(16, "_ev", zzatq2.name, i3);
                                zzKg().setTransactionSuccessful();
                                zzKg().endTransaction();
                                return;
                            }
                            if (zzfT) {
                                zzKW = zza.zzbro - zzKn().zzKW();
                                if (zzKW > 0) {
                                    if (zzKW % 1000 == 1) {
                                        zzKl().zzLZ().zze("Data loss. Too many public events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbro));
                                    }
                                    zzKh().zza(16, "_ev", zzatq2.name, i3);
                                    zzKg().setTransactionSuccessful();
                                    zzKg().endTransaction();
                                    return;
                                }
                            }
                            if (equals) {
                                zzfj = zza.zzbrr - ((long) zzKn().zzfj(zzatd2.packageName));
                                if (zzfj > 0) {
                                    if (zzfj == 1) {
                                        zzKl().zzLZ().zze("Too many error events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbrr));
                                    }
                                    zzKg().setTransactionSuccessful();
                                    zzKg().endTransaction();
                                    return;
                                }
                            }
                            zzKh().zza(bundle2, "_o", zzatq2.zzbqW);
                            if (zzKh().zzge(str)) {
                                zzKh().zza(bundle2, "_dbg", Long.valueOf(1));
                                zzKh().zza(bundle2, "_r", Long.valueOf(1));
                            }
                            zzfv = zzKg().zzfv(str);
                            if (zzfv > 0) {
                                zzKl().zzMb().zze("Data lost. Too many events stored on disk, deleted. appId", zzatx.zzfE(str), Long.valueOf(zzfv));
                            }
                            zzatm = new zzatm(this, zzatq2.zzbqW, str, zzatq2.name, zzatq2.zzbrI, 0, bundle2);
                            zzQ = zzKg().zzQ(str, zzatm.mName);
                            if (zzQ != null) {
                                zzfC = zzKg().zzfC(str);
                                zzKn().zzKU();
                                if (zzfC < 500) {
                                    zzKl().zzLZ().zzd("Too many event names used, ignoring event. appId, name, supported count", zzatx.zzfE(str), zzatm.mName, Integer.valueOf(zzKn().zzKU()));
                                    zzKh().zza(8, null, null, i3);
                                    zzKg().endTransaction();
                                    return;
                                }
                                zzQ = new zzatn(str, zzatm.mName, 0, 0, zzatm.zzaxb);
                                zzaue3 = this;
                            } else {
                                zza2 = zzatm.zza(this, zzQ.zzbrD);
                                zzap = zzQ.zzap(zza2.zzaxb);
                            }
                            zzKg().zza(zzap);
                            zzaue3.zza(zza2, zzatd2);
                            zzKg().setTransactionSuccessful();
                            if (zzKl().zzak(2)) {
                                zzKl().zzMf().zzj("Event recorded", zza2);
                            }
                            zzKg().endTransaction();
                            zzMK();
                            zzKl().zzMf().zzj("Background event processing time, ms", Long.valueOf(((System.nanoTime() - j) + 500000) / 1000000));
                            return;
                        } catch (Throwable th422) {
                            th2 = th422;
                            zzaue3 = zzaue;
                            zzKg().endTransaction();
                            throw th2;
                        }
                    }
                }
                zzaue = zzaue2;
                bundle = zzLW;
                i2 = 0;
                try {
                    zzfT = zzaut.zzfT(zzatq2.name);
                    equals = "_err".equals(zzatq2.name);
                    bundle2 = bundle;
                    j = nanoTime;
                    i3 = i2;
                } catch (Throwable th5) {
                    th422 = th5;
                    zzaue3 = zzaue;
                    th2 = th422;
                    zzKg().endTransaction();
                    throw th2;
                }
                try {
                    zza = zzKg().zza(zzMG(), str, true, zzfT, false, equals, false);
                    zzKV = zza.zzbrp - zzKn().zzKV();
                    if (zzKV <= 0) {
                        if (zzfT) {
                            zzKW = zza.zzbro - zzKn().zzKW();
                            if (zzKW > 0) {
                                if (zzKW % 1000 == 1) {
                                    zzKl().zzLZ().zze("Data loss. Too many public events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbro));
                                }
                                zzKh().zza(16, "_ev", zzatq2.name, i3);
                                zzKg().setTransactionSuccessful();
                                zzKg().endTransaction();
                                return;
                            }
                        }
                        if (equals) {
                            zzfj = zza.zzbrr - ((long) zzKn().zzfj(zzatd2.packageName));
                            if (zzfj > 0) {
                                if (zzfj == 1) {
                                    zzKl().zzLZ().zze("Too many error events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbrr));
                                }
                                zzKg().setTransactionSuccessful();
                                zzKg().endTransaction();
                                return;
                            }
                        }
                        zzKh().zza(bundle2, "_o", zzatq2.zzbqW);
                        if (zzKh().zzge(str)) {
                            zzKh().zza(bundle2, "_dbg", Long.valueOf(1));
                            zzKh().zza(bundle2, "_r", Long.valueOf(1));
                        }
                        zzfv = zzKg().zzfv(str);
                        if (zzfv > 0) {
                            zzKl().zzMb().zze("Data lost. Too many events stored on disk, deleted. appId", zzatx.zzfE(str), Long.valueOf(zzfv));
                        }
                        zzatm = new zzatm(this, zzatq2.zzbqW, str, zzatq2.name, zzatq2.zzbrI, 0, bundle2);
                        zzQ = zzKg().zzQ(str, zzatm.mName);
                        if (zzQ != null) {
                            zza2 = zzatm.zza(this, zzQ.zzbrD);
                            zzap = zzQ.zzap(zza2.zzaxb);
                        } else {
                            zzfC = zzKg().zzfC(str);
                            zzKn().zzKU();
                            if (zzfC < 500) {
                                zzQ = new zzatn(str, zzatm.mName, 0, 0, zzatm.zzaxb);
                                zzaue3 = this;
                            } else {
                                zzKl().zzLZ().zzd("Too many event names used, ignoring event. appId, name, supported count", zzatx.zzfE(str), zzatm.mName, Integer.valueOf(zzKn().zzKU()));
                                zzKh().zza(8, null, null, i3);
                                zzKg().endTransaction();
                                return;
                            }
                        }
                        zzKg().zza(zzap);
                        zzaue3.zza(zza2, zzatd2);
                        zzKg().setTransactionSuccessful();
                        if (zzKl().zzak(2)) {
                            zzKl().zzMf().zzj("Event recorded", zza2);
                        }
                        zzKg().endTransaction();
                        zzMK();
                        zzKl().zzMf().zzj("Background event processing time, ms", Long.valueOf(((System.nanoTime() - j) + 500000) / 1000000));
                        return;
                    }
                    if (zzKV % 1000 == 1) {
                        zzKl().zzLZ().zze("Data loss. Too many events logged. appId, count", zzatx.zzfE(str), Long.valueOf(zza.zzbrp));
                    }
                    zzKh().zza(16, "_ev", zzatq2.name, i3);
                    zzKg().setTransactionSuccessful();
                    zzKg().endTransaction();
                    return;
                } catch (Throwable th6) {
                    th422 = th6;
                    zzaue3 = this;
                    th2 = th422;
                    zzKg().endTransaction();
                    throw th2;
                }
            } catch (Throwable th7) {
                th422 = th7;
                zzaue3 = zzaue2;
                th2 = th422;
                zzKg().endTransaction();
                throw th2;
            }
        }
        zzf(zzatd2);
    }

    void zzc(zzauq zzauq, zzatd zzatd) {
        zzmR();
        zzob();
        if (!TextUtils.isEmpty(zzatd.zzbqK)) {
            if (zzatd.zzbqP) {
                zzKl().zzMe().zzj("Removing user property", zzauq.name);
                zzKg().beginTransaction();
                try {
                    zzf(zzatd);
                    zzKg().zzR(zzatd.packageName, zzauq.name);
                    zzKg().setTransactionSuccessful();
                    zzKl().zzMe().zzj("User property removed", zzauq.name);
                } finally {
                    zzKg().endTransaction();
                }
            } else {
                zzf(zzatd);
            }
        }
    }

    void zzd(zzatd zzatd) {
        zzmR();
        zzob();
        zzac.zzdr(zzatd.packageName);
        zzf(zzatd);
    }

    void zzd(zzatd zzatd, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("_et", 1);
        zzb(new zzatq("_e", new zzato(bundle), "auto", j), zzatd);
    }

    void zzd(zzatg zzatg) {
        zzatd zzfO = zzfO(zzatg.packageName);
        if (zzfO != null) {
            zzb(zzatg, zzfO);
        }
    }

    public void zze(zzatd zzatd) {
        zzmR();
        zzob();
        zzac.zzw(zzatd);
        zzac.zzdr(zzatd.packageName);
        if (!TextUtils.isEmpty(zzatd.zzbqK)) {
            if (zzatd.zzbqP) {
                long j = zzatd.zzbqU;
                if (j == 0) {
                    j = zznR().currentTimeMillis();
                }
                int i = zzatd.zzbqV;
                if (!(i == 0 || i == 1)) {
                    zzKl().zzMb().zze("Incorrect app type, assuming installed app. appId, appType", zzatx.zzfE(zzatd.packageName), Integer.valueOf(i));
                    i = 0;
                }
                zzKg().beginTransaction();
                try {
                    zzatj zzKg;
                    String str;
                    String str2;
                    long j2;
                    zza(zzatd, j);
                    zzf(zzatd);
                    zzatn zzatn = null;
                    if (i == 0) {
                        zzKg = zzKg();
                        str = zzatd.packageName;
                        str2 = "_f";
                    } else {
                        if (i == 1) {
                            zzKg = zzKg();
                            str = zzatd.packageName;
                            str2 = "_v";
                        }
                        if (zzatn == null) {
                            j2 = (1 + (j / 3600000)) * 3600000;
                            if (i == 0) {
                                zzb(new zzauq("_fot", j, Long.valueOf(j2), "auto"), zzatd);
                                zzc(zzatd, j);
                            } else if (i == 1) {
                                zzb(new zzauq("_fvt", j, Long.valueOf(j2), "auto"), zzatd);
                                zzb(zzatd, j);
                            }
                            zzd(zzatd, j);
                        } else if (zzatd.zzbqQ) {
                            zze(zzatd, j);
                        }
                        zzKg().setTransactionSuccessful();
                    }
                    zzatn = zzKg.zzQ(str, str2);
                    if (zzatn == null) {
                        j2 = (1 + (j / 3600000)) * 3600000;
                        if (i == 0) {
                            zzb(new zzauq("_fot", j, Long.valueOf(j2), "auto"), zzatd);
                            zzc(zzatd, j);
                        } else if (i == 1) {
                            zzb(new zzauq("_fvt", j, Long.valueOf(j2), "auto"), zzatd);
                            zzb(zzatd, j);
                        }
                        zzd(zzatd, j);
                    } else if (zzatd.zzbqQ) {
                        zze(zzatd, j);
                    }
                    zzKg().setTransactionSuccessful();
                } finally {
                    zzKg().endTransaction();
                }
            } else {
                zzf(zzatd);
            }
        }
    }

    void zze(zzatd zzatd, long j) {
        zzb(new zzatq("_cd", new zzato(new Bundle()), "auto", j), zzatd);
    }

    void zze(zzatg zzatg) {
        zzatd zzfO = zzfO(zzatg.packageName);
        if (zzfO != null) {
            zzc(zzatg, zzfO);
        }
    }

    com.google.android.gms.internal.zzatd zzfO(java.lang.String r22) {
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
        r21 = this;
        r1 = r22;
        r0 = r21.zzKg();
        r0 = r0.zzfu(r1);
        r2 = 0;
        if (r0 == 0) goto L_0x007b;
    L_0x000d:
        r3 = r0.zzmZ();
        r3 = android.text.TextUtils.isEmpty(r3);
        if (r3 == 0) goto L_0x0018;
    L_0x0017:
        goto L_0x007b;
    L_0x0018:
        r3 = r21.getContext();	 Catch:{ NameNotFoundException -> 0x0049 }
        r3 = com.google.android.gms.internal.zzadg.zzbi(r3);	 Catch:{ NameNotFoundException -> 0x0049 }
        r4 = 0;	 Catch:{ NameNotFoundException -> 0x0049 }
        r3 = r3.getPackageInfo(r1, r4);	 Catch:{ NameNotFoundException -> 0x0049 }
        r3 = r3.versionName;	 Catch:{ NameNotFoundException -> 0x0049 }
        r4 = r0.zzmZ();	 Catch:{ NameNotFoundException -> 0x0049 }
        if (r4 == 0) goto L_0x0049;	 Catch:{ NameNotFoundException -> 0x0049 }
    L_0x002d:
        r4 = r0.zzmZ();	 Catch:{ NameNotFoundException -> 0x0049 }
        r3 = r4.equals(r3);	 Catch:{ NameNotFoundException -> 0x0049 }
        if (r3 != 0) goto L_0x0049;	 Catch:{ NameNotFoundException -> 0x0049 }
    L_0x0037:
        r3 = r21.zzKl();	 Catch:{ NameNotFoundException -> 0x0049 }
        r3 = r3.zzMb();	 Catch:{ NameNotFoundException -> 0x0049 }
        r4 = "App version does not match; dropping. appId";	 Catch:{ NameNotFoundException -> 0x0049 }
        r5 = com.google.android.gms.internal.zzatx.zzfE(r22);	 Catch:{ NameNotFoundException -> 0x0049 }
        r3.zzj(r4, r5);	 Catch:{ NameNotFoundException -> 0x0049 }
        return r2;
    L_0x0049:
        r20 = new com.google.android.gms.internal.zzatd;
        r2 = r0.getGmpAppId();
        r3 = r0.zzmZ();
        r4 = r0.zzKt();
        r6 = r0.zzKu();
        r7 = r0.zzKv();
        r9 = r0.zzKw();
        r11 = 0;
        r12 = r0.zzKx();
        r13 = 0;
        r14 = r0.zzKq();
        r15 = r0.zzuW();
        r17 = 0;
        r19 = 0;
        r0 = r20;
        r0.<init>(r1, r2, r3, r4, r6, r7, r9, r11, r12, r13, r14, r15, r17, r19);
        return r20;
    L_0x007b:
        r0 = r21.zzKl();
        r0 = r0.zzMe();
        r3 = "No app data available; dropping";
        r0.zzj(r3, r1);
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaue.zzfO(java.lang.String):com.google.android.gms.internal.zzatd");
    }

    public String zzfP(final String str) {
        try {
            return (String) zzKk().zzd(new Callable<String>(this) {
                final /* synthetic */ zzaue zzbuI;

                public /* synthetic */ Object call() throws Exception {
                    return zzbY();
                }

                public String zzbY() throws Exception {
                    zzatc zzfu = this.zzbuI.zzKg().zzfu(str);
                    if (zzfu != null) {
                        return zzfu.getAppInstanceId();
                    }
                    this.zzbuI.zzKl().zzMb().log("App info was null when attempting to get app instance id");
                    return null;
                }
            }).get(30000, TimeUnit.MILLISECONDS);
        } catch (TimeoutException e) {
            zzKl().zzLZ().zze("Failed to get app instance id. appId", zzatx.zzfE(str), e);
            return null;
        }
    }

    public void zzmR() {
        zzKk().zzmR();
    }

    public zze zznR() {
        return this.zzuP;
    }

    void zzob() {
        if (!this.zzadP) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    boolean zzy(int i, int i2) {
        com.google.android.gms.internal.zzatx.zza zzLZ;
        String str;
        zzmR();
        if (i > i2) {
            zzLZ = zzKl().zzLZ();
            str = "Panic: can't downgrade version. Previous, current version";
        } else {
            if (i < i2) {
                if (zza(i2, zzMC())) {
                    zzKl().zzMf().zze("Storage version upgraded. Previous, current version", Integer.valueOf(i), Integer.valueOf(i2));
                } else {
                    zzLZ = zzKl().zzLZ();
                    str = "Storage version upgrade failed. Previous, current version";
                }
            }
            return true;
        }
        zzLZ.zze(str, Integer.valueOf(i), Integer.valueOf(i2));
        return false;
    }
}
