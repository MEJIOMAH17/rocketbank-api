package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzf;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.AppMeasurement.ConditionalUserProperty;
import com.google.android.gms.measurement.AppMeasurement.zzb;
import com.google.android.gms.measurement.AppMeasurement.zzc;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public class zzauj extends zzauh {
    protected zza zzbuY;
    private zzb zzbuZ;
    private final Set<zzc> zzbva = new CopyOnWriteArraySet();
    private boolean zzbvb;
    private String zzbvc = null;
    private String zzbvd = null;

    @TargetApi(14)
    private class zza implements ActivityLifecycleCallbacks {
        final /* synthetic */ zzauj zzbve;

        private zza(zzauj zzauj) {
            this.zzbve = zzauj;
        }

        private boolean zzfR(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            this.zzbve.zzd("auto", "_ldl", str);
            return true;
        }

        public void onActivityCreated(Activity activity, Bundle bundle) {
            try {
                this.zzbve.zzKl().zzMf().log("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent != null) {
                    Uri data = intent.getData();
                    if (data != null && data.isHierarchical()) {
                        String str;
                        if (bundle == null) {
                            Bundle zzu = this.zzbve.zzKh().zzu(data);
                            str = this.zzbve.zzKh().zzA(intent) ? "gs" : "auto";
                            if (zzu != null) {
                                this.zzbve.zze(str, "_cmp", zzu);
                            }
                        }
                        str = data.getQueryParameter("referrer");
                        if (!TextUtils.isEmpty(str)) {
                            Object obj = (str.contains("gclid") && (str.contains("utm_campaign") || str.contains("utm_source") || str.contains("utm_medium") || str.contains("utm_term") || str.contains("utm_content"))) ? 1 : null;
                            if (obj == null) {
                                this.zzbve.zzKl().zzMe().log("Activity created with data 'referrer' param without gclid and at least one utm field");
                                return;
                            } else {
                                this.zzbve.zzKl().zzMe().zzj("Activity created with referrer", str);
                                zzfR(str);
                            }
                        } else {
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                this.zzbve.zzKl().zzLZ().zzj("Throwable caught in onActivityCreated", th);
            }
            this.zzbve.zzKe().onActivityCreated(activity, bundle);
        }

        public void onActivityDestroyed(Activity activity) {
            this.zzbve.zzKe().onActivityDestroyed(activity);
        }

        public void onActivityPaused(Activity activity) {
            this.zzbve.zzKe().onActivityPaused(activity);
            this.zzbve.zzKj().zzNg();
        }

        public void onActivityResumed(Activity activity) {
            this.zzbve.zzKe().onActivityResumed(activity);
            this.zzbve.zzKj().zzNe();
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            this.zzbve.zzKe().onActivitySaveInstanceState(activity, bundle);
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    protected zzauj(zzaue zzaue) {
        super(zzaue);
    }

    private Bundle zzM(Bundle bundle) {
        if (bundle == null) {
            return new Bundle();
        }
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle2.keySet()) {
            Object obj = bundle2.get(str);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str, new Bundle((Bundle) obj));
            } else {
                int i = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i < parcelableArr.length) {
                        if (parcelableArr[i] instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelableArr[i]);
                        }
                        i++;
                    }
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList = (ArrayList) obj;
                    while (i < arrayList.size()) {
                        Object obj2 = arrayList.get(i);
                        if (obj2 instanceof Bundle) {
                            arrayList.set(i, new Bundle((Bundle) obj2));
                        }
                        i++;
                    }
                }
            }
        }
        return bundle2;
    }

    private void zzMU() {
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
        r0 = r2.zzMV();	 Catch:{ ClassNotFoundException -> 0x000c }
        r0 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x000c }
        r2.zzf(r0);	 Catch:{ ClassNotFoundException -> 0x000c }
        return;
    L_0x000c:
        r0 = r2.zzKl();
        r0 = r0.zzMd();
        r1 = "Tag Manager is not found and thus will not be used";
        r0.log(r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzauj.zzMU():void");
    }

    private String zzMV() {
        return "com.google.android.gms.tagmanager.TagManagerService";
    }

    private void zza(final ConditionalUserProperty conditionalUserProperty) {
        long currentTimeMillis = zznR().currentTimeMillis();
        zzac.zzw(conditionalUserProperty);
        zzac.zzdr(conditionalUserProperty.mName);
        zzac.zzdr(conditionalUserProperty.mOrigin);
        zzac.zzw(conditionalUserProperty.mValue);
        conditionalUserProperty.mCreationTimestamp = currentTimeMillis;
        String str = conditionalUserProperty.mName;
        Object obj = conditionalUserProperty.mValue;
        if (zzKh().zzfX(str) != 0) {
            zzKl().zzLZ().zzj("Invalid conditional user property name", str);
        } else if (zzKh().zzl(str, obj) != 0) {
            zzKl().zzLZ().zze("Invalid conditional user property value", str, obj);
        } else {
            Object zzm = zzKh().zzm(str, obj);
            if (zzm == null) {
                zzKl().zzLZ().zze("Unable to normalize conditional user property value", str, obj);
                return;
            }
            conditionalUserProperty.mValue = zzm;
            long j = conditionalUserProperty.mTriggerTimeout;
            if (j <= zzKn().zzLb()) {
                if (j >= 1) {
                    j = conditionalUserProperty.mTimeToLive;
                    if (j <= zzKn().zzLc()) {
                        if (j >= 1) {
                            zzKk().zzm(new Runnable(this) {
                                final /* synthetic */ zzauj zzbve;

                                public void run() {
                                    this.zzbve.zzb(conditionalUserProperty);
                                }
                            });
                            return;
                        }
                    }
                    zzKl().zzLZ().zze("Invalid conditional user property time to live", str, Long.valueOf(j));
                    return;
                }
            }
            zzKl().zzLZ().zze("Invalid conditional user property timeout", str, Long.valueOf(j));
        }
    }

    private void zza(String str, String str2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        zza(str, str2, zznR().currentTimeMillis(), bundle, z, z2, z3, str3);
    }

    private void zza(String str, String str2, Object obj, long j) {
        zzac.zzdr(str);
        zzac.zzdr(str2);
        zzmR();
        zzJW();
        zzob();
        if (!this.zzbqb.isEnabled()) {
            zzKl().zzMe().log("User property not set since app measurement is disabled");
        } else if (this.zzbqb.zzMu()) {
            zzKl().zzMe().zze("Setting user property (FE)", str2, obj);
            zzKd().zzb(new zzauq(str2, j, obj, str));
        }
    }

    private void zza(String str, String str2, String str3, Bundle bundle) {
        long currentTimeMillis = zznR().currentTimeMillis();
        zzac.zzdr(str2);
        final ConditionalUserProperty conditionalUserProperty = new ConditionalUserProperty();
        conditionalUserProperty.mAppId = str;
        conditionalUserProperty.mName = str2;
        conditionalUserProperty.mCreationTimestamp = currentTimeMillis;
        if (str3 != null) {
            conditionalUserProperty.mExpiredEventName = str3;
            conditionalUserProperty.mExpiredEventParams = bundle;
        }
        zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauj zzbve;

            public void run() {
                this.zzbve.zzc(conditionalUserProperty);
            }
        });
    }

    private void zzaL(boolean z) {
        zzmR();
        zzJW();
        zzob();
        zzKl().zzMe().zzj("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        zzKm().setMeasurementEnabled(z);
        zzKd().zzMY();
    }

    private Map<String, Object> zzb(String str, String str2, String str3, boolean z) {
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            final AtomicReference atomicReference2 = atomicReference;
            final String str4 = str;
            final String str5 = str2;
            final String str6 = str3;
            final boolean z2 = z;
            this.zzbqb.zzKk().zzm(new Runnable(this) {
                final /* synthetic */ zzauj zzbve;

                public void run() {
                    this.zzbve.zzbqb.zzKd().zza(atomicReference2, str4, str5, str6, z2);
                }
            });
            try {
                atomicReference.wait(5000);
            } catch (InterruptedException e) {
                zzKl().zzMb().zzj("Interrupted waiting for get user properties", e);
            }
        }
        List<zzauq> list = (List) atomicReference.get();
        if (list == null) {
            zzKl().zzMb().log("Timed out waiting for get user properties");
            return Collections.emptyMap();
        }
        Map<String, Object> arrayMap = new ArrayMap(list.size());
        for (zzauq zzauq : list) {
            arrayMap.put(zzauq.name, zzauq.getValue());
        }
        return arrayMap;
    }

    private void zzb(com.google.android.gms.measurement.AppMeasurement.ConditionalUserProperty r22) {
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
        r0 = r22;
        r21.zzmR();
        r21.zzob();
        com.google.android.gms.common.internal.zzac.zzw(r22);
        r1 = r0.mName;
        com.google.android.gms.common.internal.zzac.zzdr(r1);
        r1 = r0.mOrigin;
        com.google.android.gms.common.internal.zzac.zzdr(r1);
        r1 = r0.mValue;
        com.google.android.gms.common.internal.zzac.zzw(r1);
        r1 = r21;
        r2 = r1.zzbqb;
        r2 = r2.isEnabled();
        if (r2 != 0) goto L_0x0032;
    L_0x0024:
        r0 = r21.zzKl();
        r0 = r0.zzMe();
        r2 = "Conditional property not sent since Firebase Analytics is disabled";
        r0.log(r2);
        return;
    L_0x0032:
        r2 = new com.google.android.gms.internal.zzauq;
        r4 = r0.mName;
        r5 = r0.mTriggeredTimestamp;
        r7 = r0.mValue;
        r8 = r0.mOrigin;
        r3 = r2;
        r3.<init>(r4, r5, r7, r8);
        r9 = r21.zzKh();	 Catch:{ IllegalArgumentException -> 0x009c }
        r10 = r0.mTriggeredEventName;	 Catch:{ IllegalArgumentException -> 0x009c }
        r11 = r0.mTriggeredEventParams;	 Catch:{ IllegalArgumentException -> 0x009c }
        r12 = r0.mOrigin;	 Catch:{ IllegalArgumentException -> 0x009c }
        r13 = 0;	 Catch:{ IllegalArgumentException -> 0x009c }
        r15 = 1;	 Catch:{ IllegalArgumentException -> 0x009c }
        r16 = 0;	 Catch:{ IllegalArgumentException -> 0x009c }
        r14 = r9.zza(r10, r11, r12, r13, r15, r16);	 Catch:{ IllegalArgumentException -> 0x009c }
        r3 = r21.zzKh();	 Catch:{ IllegalArgumentException -> 0x009c }
        r4 = r0.mTimedOutEventName;	 Catch:{ IllegalArgumentException -> 0x009c }
        r5 = r0.mTimedOutEventParams;	 Catch:{ IllegalArgumentException -> 0x009c }
        r6 = r0.mOrigin;	 Catch:{ IllegalArgumentException -> 0x009c }
        r7 = 0;	 Catch:{ IllegalArgumentException -> 0x009c }
        r9 = 1;	 Catch:{ IllegalArgumentException -> 0x009c }
        r10 = 0;	 Catch:{ IllegalArgumentException -> 0x009c }
        r11 = r3.zza(r4, r5, r6, r7, r9, r10);	 Catch:{ IllegalArgumentException -> 0x009c }
        r3 = r21.zzKh();	 Catch:{ IllegalArgumentException -> 0x009c }
        r4 = r0.mExpiredEventName;	 Catch:{ IllegalArgumentException -> 0x009c }
        r5 = r0.mExpiredEventParams;	 Catch:{ IllegalArgumentException -> 0x009c }
        r6 = r0.mOrigin;	 Catch:{ IllegalArgumentException -> 0x009c }
        r7 = 0;	 Catch:{ IllegalArgumentException -> 0x009c }
        r9 = 1;	 Catch:{ IllegalArgumentException -> 0x009c }
        r10 = 0;	 Catch:{ IllegalArgumentException -> 0x009c }
        r17 = r3.zza(r4, r5, r6, r7, r9, r10);	 Catch:{ IllegalArgumentException -> 0x009c }
        r15 = new com.google.android.gms.internal.zzatg;
        r4 = r0.mAppId;
        r5 = r0.mOrigin;
        r7 = r0.mCreationTimestamp;
        r10 = r0.mTriggerEventName;
        r12 = r0.mTriggerTimeout;
        r18 = r10;
        r9 = r0.mTimeToLive;
        r3 = r15;
        r6 = r2;
        r19 = r9;
        r0 = 0;
        r9 = r0;
        r10 = r18;
        r0 = r15;
        r15 = r19;
        r3.<init>(r4, r5, r6, r7, r9, r10, r11, r12, r14, r15, r17);
        r2 = r21.zzKd();
        r2.zzf(r0);
    L_0x009c:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzauj.zzb(com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty):void");
    }

    private void zzb(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        String str4 = str;
        String str5 = str2;
        zzac.zzdr(str);
        zzac.zzdr(str2);
        zzac.zzw(bundle);
        zzmR();
        zzob();
        if (this.zzbqb.isEnabled()) {
            if (!r0.zzbvb) {
                r0.zzbvb = true;
                zzMU();
            }
            boolean equals = "am".equals(str4);
            boolean zzgd = zzaut.zzgd(str2);
            Bundle bundle2;
            if (!z || r0.zzbuZ == null || zzgd || equals) {
                bundle2 = bundle;
                if (r0.zzbqb.zzMu()) {
                    int zzfV = zzKh().zzfV(str5);
                    if (zzfV != 0) {
                        r0.zzbqb.zzKh().zza(zzfV, "_ev", zzKh().zza(str5, zzKn().zzKM(), true), str5 != null ? str2.length() : 0);
                        return;
                    }
                    boolean z4;
                    int i;
                    List zzx = zzf.zzx("_o");
                    Bundle zza = zzKh().zza(str5, bundle2, zzx, z3, true);
                    List arrayList = new ArrayList();
                    arrayList.add(zza);
                    long nextLong = zzKm().zzMh().nextLong();
                    String[] strArr = (String[]) zza.keySet().toArray(new String[bundle.size()]);
                    Arrays.sort(strArr);
                    int length = strArr.length;
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < length) {
                        String[] strArr2;
                        int i4;
                        String str6 = strArr[i2];
                        Bundle[] zzH = zzKh().zzH(zza.get(str6));
                        if (zzH != null) {
                            zza.putInt(str6, zzH.length);
                            int i5 = 0;
                            while (i5 < zzH.length) {
                                strArr2 = strArr;
                                int i6 = i5;
                                i4 = length;
                                String str7 = str6;
                                z4 = equals;
                                i = i3;
                                Bundle zza2 = zzKh().zza("_ep", zzH[i5], zzx, z3, false);
                                zza2.putString("_en", str5);
                                zza2.putLong("_eid", nextLong);
                                zza2.putString("_gn", str7);
                                zza2.putInt("_ll", zzH.length);
                                zza2.putInt("_i", i6);
                                arrayList.add(zza2);
                                i5 = i6 + 1;
                                str6 = str7;
                                i3 = i;
                                strArr = strArr2;
                                length = i4;
                                equals = z4;
                            }
                            strArr2 = strArr;
                            i4 = length;
                            z4 = equals;
                            i3 += zzH.length;
                        } else {
                            strArr2 = strArr;
                            i4 = length;
                            z4 = equals;
                            i = i3;
                        }
                        i2++;
                        strArr = strArr2;
                        length = i4;
                        equals = z4;
                    }
                    z4 = equals;
                    i = i3;
                    if (i != 0) {
                        zza.putLong("_eid", nextLong);
                        zza.putInt("_epc", i);
                    }
                    zzKn().zzLh();
                    AppMeasurement.zzf zzMW = zzKe().zzMW();
                    if (zzMW == null || zza.containsKey("_sc")) {
                        equals = true;
                    } else {
                        equals = true;
                        zzMW.zzbvC = true;
                    }
                    i2 = 0;
                    while (i2 < arrayList.size()) {
                        zza = (Bundle) arrayList.get(i2);
                        String str8 = i2 != 0 ? equals : false ? "_ep" : str5;
                        zza.putString("_o", str4);
                        if (!zza.containsKey("_sc")) {
                            zzauk.zza(zzMW, zza);
                        }
                        if (z2) {
                            zza = zzKh().zzN(zza);
                        }
                        Bundle bundle3 = zza;
                        zzKl().zzMe().zze("Logging event (FE)", str5, bundle3);
                        List list = arrayList;
                        zzKd().zzc(new zzatq(str8, new zzato(bundle3), str4, j), str3);
                        if (!z4) {
                            for (zzc zzc : r0.zzbva) {
                                zzc.zzc(str4, str5, new Bundle(bundle3), j);
                                String str9 = str3;
                            }
                        }
                        i2++;
                        arrayList = list;
                    }
                    return;
                }
                return;
            }
            bundle2 = bundle;
            zzKl().zzMe().zze("Passing event to registered event handler (FE)", str5, bundle2);
            r0.zzbuZ.zzb(str4, str5, bundle2, j);
            return;
        }
        zzKl().zzMe().log("Event not sent since app measurement is disabled");
    }

    private void zzc(com.google.android.gms.measurement.AppMeasurement.ConditionalUserProperty r23) {
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
        r22 = this;
        r0 = r23;
        r22.zzmR();
        r22.zzob();
        com.google.android.gms.common.internal.zzac.zzw(r23);
        r1 = r0.mName;
        com.google.android.gms.common.internal.zzac.zzdr(r1);
        r1 = r22;
        r2 = r1.zzbqb;
        r2 = r2.isEnabled();
        if (r2 != 0) goto L_0x0028;
    L_0x001a:
        r0 = r22.zzKl();
        r0 = r0.zzMe();
        r2 = "Conditional property not cleared since Firebase Analytics is disabled";
        r0.log(r2);
        return;
    L_0x0028:
        r2 = new com.google.android.gms.internal.zzauq;
        r4 = r0.mName;
        r5 = 0;
        r7 = 0;
        r8 = 0;
        r3 = r2;
        r3.<init>(r4, r5, r7, r8);
        r9 = r22.zzKh();	 Catch:{ IllegalArgumentException -> 0x006f }
        r10 = r0.mExpiredEventName;	 Catch:{ IllegalArgumentException -> 0x006f }
        r11 = r0.mExpiredEventParams;	 Catch:{ IllegalArgumentException -> 0x006f }
        r12 = r0.mOrigin;	 Catch:{ IllegalArgumentException -> 0x006f }
        r13 = r0.mCreationTimestamp;	 Catch:{ IllegalArgumentException -> 0x006f }
        r15 = 1;	 Catch:{ IllegalArgumentException -> 0x006f }
        r16 = 0;	 Catch:{ IllegalArgumentException -> 0x006f }
        r17 = r9.zza(r10, r11, r12, r13, r15, r16);	 Catch:{ IllegalArgumentException -> 0x006f }
        r15 = new com.google.android.gms.internal.zzatg;
        r4 = r0.mAppId;
        r5 = r0.mOrigin;
        r7 = r0.mCreationTimestamp;
        r9 = r0.mActive;
        r10 = r0.mTriggerEventName;
        r12 = r0.mTriggerTimeout;
        r14 = 0;
        r18 = r12;
        r11 = r0.mTimeToLive;
        r3 = r15;
        r6 = r2;
        r20 = r11;
        r0 = 0;
        r11 = r0;
        r12 = r18;
        r0 = r15;
        r15 = r20;
        r3.<init>(r4, r5, r6, r7, r9, r10, r11, r12, r14, r15, r17);
        r2 = r22.zzKd();
        r2.zzf(r0);
    L_0x006f:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzauj.zzc(com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty):void");
    }

    private List<ConditionalUserProperty> zzo(String str, String str2, String str3) {
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            final AtomicReference atomicReference2 = atomicReference;
            final String str4 = str;
            final String str5 = str2;
            final String str6 = str3;
            this.zzbqb.zzKk().zzm(new Runnable(this) {
                final /* synthetic */ zzauj zzbve;

                public void run() {
                    this.zzbve.zzbqb.zzKd().zza(atomicReference2, str4, str5, str6);
                }
            });
            try {
                atomicReference.wait(5000);
            } catch (InterruptedException e) {
                zzKl().zzMb().zze("Interrupted waiting for get conditional user properties", str, e);
            }
        }
        List<zzatg> list = (List) atomicReference.get();
        if (list == null) {
            zzKl().zzMb().zzj("Timed out waiting for get conditional user properties", str);
            return Collections.emptyList();
        }
        List<ConditionalUserProperty> arrayList = new ArrayList(list.size());
        for (zzatg zzatg : list) {
            ConditionalUserProperty conditionalUserProperty = new ConditionalUserProperty();
            conditionalUserProperty.mAppId = str;
            conditionalUserProperty.mOrigin = str2;
            conditionalUserProperty.mCreationTimestamp = zzatg.zzbqY;
            conditionalUserProperty.mName = zzatg.zzbqX.name;
            conditionalUserProperty.mValue = zzatg.zzbqX.getValue();
            conditionalUserProperty.mActive = zzatg.zzbqZ;
            conditionalUserProperty.mTriggerEventName = zzatg.zzbra;
            if (zzatg.zzbrb != null) {
                conditionalUserProperty.mTimedOutEventName = zzatg.zzbrb.name;
                if (zzatg.zzbrb.zzbrH != null) {
                    conditionalUserProperty.mTimedOutEventParams = zzatg.zzbrb.zzbrH.zzLW();
                }
            }
            conditionalUserProperty.mTriggerTimeout = zzatg.zzbrc;
            if (zzatg.zzbrd != null) {
                conditionalUserProperty.mTriggeredEventName = zzatg.zzbrd.name;
                if (zzatg.zzbrd.zzbrH != null) {
                    conditionalUserProperty.mTriggeredEventParams = zzatg.zzbrd.zzbrH.zzLW();
                }
            }
            conditionalUserProperty.mTriggeredTimestamp = zzatg.zzbqX.zzbwf;
            conditionalUserProperty.mTimeToLive = zzatg.zzbre;
            if (zzatg.zzbrf != null) {
                conditionalUserProperty.mExpiredEventName = zzatg.zzbrf.name;
                if (zzatg.zzbrf.zzbrH != null) {
                    conditionalUserProperty.mExpiredEventParams = zzatg.zzbrf.zzbrH.zzLW();
                }
            }
            arrayList.add(conditionalUserProperty);
        }
        return arrayList;
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zzJW();
        zza(null, str, str2, bundle);
    }

    public void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        zzac.zzdr(str);
        zzJV();
        zza(str, str2, str3, bundle);
    }

    public Task<String> getAppInstanceId() {
        try {
            String zzMm = zzKm().zzMm();
            return zzMm != null ? Tasks.forResult(zzMm) : Tasks.call(zzKk().zzMs(), new Callable<String>(this) {
                final /* synthetic */ zzauj zzbve;

                {
                    this.zzbve = r1;
                }

                public /* synthetic */ Object call() throws Exception {
                    return zzbY();
                }

                public String zzbY() throws Exception {
                    String zzMm = this.zzbve.zzKm().zzMm();
                    if (zzMm != null) {
                        return zzMm;
                    }
                    zzMm = this.zzbve.zzKa().zzar(120000);
                    if (zzMm == null) {
                        throw new TimeoutException();
                    }
                    this.zzbve.zzKm().zzfJ(zzMm);
                    return zzMm;
                }
            });
        } catch (Exception e) {
            zzKl().zzMb().log("Failed to schedule task for getAppInstanceId");
            return Tasks.forException(e);
        }
    }

    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        zzJW();
        return zzo(null, str, str2);
    }

    public List<ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        zzac.zzdr(str);
        zzJV();
        return zzo(str, str2, str3);
    }

    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public int getMaxUserProperties(String str) {
        zzac.zzdr(str);
        return zzKn().zzKZ();
    }

    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        zzJW();
        return zzb(null, str, str2, z);
    }

    public Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        zzac.zzdr(str);
        zzJV();
        return zzb(str, str2, str3, z);
    }

    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        zzac.zzw(conditionalUserProperty);
        zzJW();
        ConditionalUserProperty conditionalUserProperty2 = new ConditionalUserProperty(conditionalUserProperty);
        if (!TextUtils.isEmpty(conditionalUserProperty2.mAppId)) {
            zzKl().zzMb().log("Package name should be null when calling setConditionalUserProperty");
        }
        conditionalUserProperty2.mAppId = null;
        zza(conditionalUserProperty2);
    }

    public void setConditionalUserPropertyAs(ConditionalUserProperty conditionalUserProperty) {
        zzac.zzw(conditionalUserProperty);
        zzac.zzdr(conditionalUserProperty.mAppId);
        zzJV();
        zza(new ConditionalUserProperty(conditionalUserProperty));
    }

    public void setMeasurementEnabled(final boolean z) {
        zzob();
        zzJW();
        zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauj zzbve;

            public void run() {
                this.zzbve.zzaL(z);
            }
        });
    }

    public void setMinimumSessionDuration(final long j) {
        zzJW();
        zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauj zzbve;

            public void run() {
                this.zzbve.zzKm().zzbtn.set(j);
                this.zzbve.zzKl().zzMe().zzj("Minimum session duration set", Long.valueOf(j));
            }
        });
    }

    public void setSessionTimeoutDuration(final long j) {
        zzJW();
        zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauj zzbve;

            public void run() {
                this.zzbve.zzKm().zzbto.set(j);
                this.zzbve.zzKl().zzMe().zzj("Session timeout duration set", Long.valueOf(j));
            }
        });
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

    @TargetApi(14)
    public void zzMS() {
        if (getContext().getApplicationContext() instanceof Application) {
            Application application = (Application) getContext().getApplicationContext();
            if (this.zzbuY == null) {
                this.zzbuY = new zza();
            }
            application.unregisterActivityLifecycleCallbacks(this.zzbuY);
            application.registerActivityLifecycleCallbacks(this.zzbuY);
            zzKl().zzMf().log("Registered activity lifecycle callback");
        }
    }

    public void zzMT() {
        zzmR();
        zzJW();
        zzob();
        if (this.zzbqb.zzMu()) {
            zzKd().zzMT();
            String zzMp = zzKm().zzMp();
            if (!(TextUtils.isEmpty(zzMp) || zzMp.equals(zzKc().zzLS()))) {
                Bundle bundle = new Bundle();
                bundle.putString("_po", zzMp);
                zze("auto", "_ou", bundle);
            }
        }
    }

    public void zza(zzb zzb) {
        zzmR();
        zzJW();
        zzob();
        if (!(zzb == null || zzb == this.zzbuZ)) {
            zzac.zza(this.zzbuZ == null, (Object) "EventInterceptor already set.");
        }
        this.zzbuZ = zzb;
    }

    public void zza(zzc zzc) {
        zzJW();
        zzob();
        zzac.zzw(zzc);
        if (!this.zzbva.add(zzc)) {
            zzKl().zzMb().log("OnEventListener already registered");
        }
    }

    protected void zza(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        final Bundle zzM = zzM(bundle);
        final String str4 = str;
        final String str5 = str2;
        final long j2 = j;
        final boolean z4 = z;
        final boolean z5 = z2;
        final boolean z6 = z3;
        final String str6 = str3;
        zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauj zzbve;

            public void run() {
                this.zzbve.zzb(str4, str5, j2, zzM, z4, z5, z6, str6);
            }
        });
    }

    void zza(String str, String str2, long j, Object obj) {
        final String str3 = str;
        final String str4 = str2;
        final Object obj2 = obj;
        final long j2 = j;
        zzKk().zzm(new Runnable(this) {
            final /* synthetic */ zzauj zzbve;

            public void run() {
                this.zzbve.zza(str3, str4, obj2, j2);
            }
        });
    }

    public void zza(String str, String str2, Bundle bundle, boolean z) {
        boolean z2;
        zzJW();
        if (this.zzbuZ != null) {
            if (!zzaut.zzgd(str2)) {
                z2 = false;
                zza(str, str2, bundle, true, z2, z, null);
            }
        }
        z2 = true;
        zza(str, str2, bundle, true, z2, z, null);
    }

    public List<zzauq> zzaM(final boolean z) {
        zzJW();
        zzob();
        zzKl().zzMe().log("Fetching user attributes (FE)");
        final AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzbqb.zzKk().zzm(new Runnable(this) {
                final /* synthetic */ zzauj zzbve;

                public void run() {
                    this.zzbve.zzKd().zza(atomicReference, z);
                }
            });
            try {
                atomicReference.wait(5000);
            } catch (InterruptedException e) {
                zzKl().zzMb().zzj("Interrupted waiting for get user properties", e);
            }
        }
        List<zzauq> list = (List) atomicReference.get();
        if (list != null) {
            return list;
        }
        zzKl().zzMb().log("Timed out waiting for get user properties");
        return Collections.emptyList();
    }

    String zzar(long j) {
        com.google.android.gms.internal.zzatx.zza zzLZ;
        String str;
        if (zzKk().zzMr()) {
            zzLZ = zzKl().zzLZ();
            str = "Cannot retrieve app instance id from analytics worker thread";
        } else if (zzKk().zzbc()) {
            zzLZ = zzKl().zzLZ();
            str = "Cannot retrieve app instance id from main thread";
        } else {
            long elapsedRealtime = zznR().elapsedRealtime();
            String zzas = zzas(j);
            long elapsedRealtime2 = zznR().elapsedRealtime() - elapsedRealtime;
            if (zzas == null && elapsedRealtime2 < j) {
                zzas = zzas(j - elapsedRealtime2);
            }
            return zzas;
        }
        zzLZ.log(str);
        return null;
    }

    java.lang.String zzas(long r4) {
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
        r3 = this;
        r0 = new java.util.concurrent.atomic.AtomicReference;
        r0.<init>();
        monitor-enter(r0);
        r1 = r3.zzKk();	 Catch:{ all -> 0x002d }
        r2 = new com.google.android.gms.internal.zzauj$12;	 Catch:{ all -> 0x002d }
        r2.<init>(r3, r0);	 Catch:{ all -> 0x002d }
        r1.zzm(r2);	 Catch:{ all -> 0x002d }
        r0.wait(r4);	 Catch:{ InterruptedException -> 0x001d }
        monitor-exit(r0);	 Catch:{ all -> 0x002d }
        r4 = r0.get();
        r4 = (java.lang.String) r4;
        return r4;
    L_0x001d:
        r4 = r3.zzKl();	 Catch:{ all -> 0x002d }
        r4 = r4.zzMb();	 Catch:{ all -> 0x002d }
        r5 = "Interrupted waiting for app instance id";	 Catch:{ all -> 0x002d }
        r4.log(r5);	 Catch:{ all -> 0x002d }
        r4 = 0;	 Catch:{ all -> 0x002d }
        monitor-exit(r0);	 Catch:{ all -> 0x002d }
        return r4;	 Catch:{ all -> 0x002d }
    L_0x002d:
        r4 = move-exception;	 Catch:{ all -> 0x002d }
        monitor-exit(r0);	 Catch:{ all -> 0x002d }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzauj.zzas(long):java.lang.String");
    }

    public void zzd(String str, String str2, Bundle bundle, long j) {
        zzJW();
        zza(str, str2, j, bundle, false, true, true, null);
    }

    public void zzd(String str, String str2, Object obj) {
        zzac.zzdr(str);
        long currentTimeMillis = zznR().currentTimeMillis();
        int zzfX = zzKh().zzfX(str2);
        int i = 0;
        if (zzfX != 0) {
            str = zzKh().zza(str2, zzKn().zzKN(), true);
            if (str2 != null) {
                i = str2.length();
            }
            this.zzbqb.zzKh().zza(zzfX, "_ev", str, i);
        } else if (obj != null) {
            zzfX = zzKh().zzl(str2, obj);
            if (zzfX != 0) {
                str = zzKh().zza(str2, zzKn().zzKN(), true);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    i = String.valueOf(obj).length();
                }
                this.zzbqb.zzKh().zza(zzfX, "_ev", str, i);
                return;
            }
            Object zzm = zzKh().zzm(str2, obj);
            if (zzm != null) {
                zza(str, str2, currentTimeMillis, zzm);
            }
        } else {
            zza(str, str2, currentTimeMillis, null);
        }
    }

    public void zze(String str, String str2, Bundle bundle) {
        boolean z;
        zzJW();
        if (this.zzbuZ != null) {
            if (!zzaut.zzgd(str2)) {
                z = false;
                zza(str, str2, bundle, true, z, false, null);
            }
        }
        z = true;
        zza(str, str2, bundle, true, z, false, null);
    }

    public void zzf(Class<?> cls) {
        try {
            cls.getDeclaredMethod("initialize", new Class[]{Context.class}).invoke(null, new Object[]{getContext()});
        } catch (Exception e) {
            zzKl().zzMb().zzj("Failed to invoke Tag Manager's initialize() method", e);
        }
    }

    public synchronized String zzfQ(String str) {
        zzob();
        zzJW();
        if (str == null || !str.equals(this.zzbvd)) {
            String zzar = zzar(30000);
            if (zzar == null) {
                return null;
            }
            this.zzbvd = str;
            this.zzbvc = zzar;
            return this.zzbvc;
        }
        return this.zzbvc;
    }

    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    protected void zzmS() {
    }

    public /* bridge */ /* synthetic */ zze zznR() {
        return super.zznR();
    }
}
