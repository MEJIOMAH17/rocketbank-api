package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.common.util.zzu;
import com.google.android.gms.internal.zzaac;
import com.google.android.gms.internal.zzaac.zza;
import com.google.android.gms.internal.zzbth;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class FirebaseApp {
    private static final List<String> zzbWD = Arrays.asList(new String[]{"com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId"});
    private static final List<String> zzbWE = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
    private static final List<String> zzbWF = Arrays.asList(new String[]{"com.google.android.gms.measurement.AppMeasurement"});
    private static final List<String> zzbWG = Arrays.asList(new String[0]);
    private static final Set<String> zzbWH = Collections.emptySet();
    static final Map<String, FirebaseApp> zzbhH = new ArrayMap();
    private static final Object zztX = new Object();
    private final String mName;
    private final FirebaseOptions zzbWI;
    private final AtomicBoolean zzbWJ = new AtomicBoolean(false);
    private final AtomicBoolean zzbWK = new AtomicBoolean();
    private final List<Object> zzbWL = new CopyOnWriteArrayList();
    private final List<Object> zzbWM = new CopyOnWriteArrayList();
    private final List<Object> zzbWN = new CopyOnWriteArrayList();
    private final Context zzwi;

    @TargetApi(24)
    private static class zzc extends BroadcastReceiver {
        private static AtomicReference<zzc> zzbWP = new AtomicReference();
        private final Context zzwi;

        private zzc(Context context) {
            this.zzwi = context;
        }

        public void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.zztX) {
                for (FirebaseApp zza : FirebaseApp.zzbhH.values()) {
                    FirebaseApp.zza(zza);
                }
            }
            this.zzwi.unregisterReceiver(this);
        }

        static /* synthetic */ void zzcn(Context context) {
            if (zzbWP.get() == null) {
                BroadcastReceiver zzc = new zzc(context);
                if (zzbWP.compareAndSet(null, zzc)) {
                    context.registerReceiver(zzc, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }
    }

    /* renamed from: com.google.firebase.FirebaseApp$1 */
    class C12151 implements zza {
        C12151() {
        }

        public final void zzas(boolean z) {
            FirebaseApp.zzas$1385ff();
        }
    }

    private FirebaseApp(Context context, String str, FirebaseOptions firebaseOptions) {
        this.zzwi = (Context) zzac.zzw(context);
        this.mName = zzac.zzdr(str);
        this.zzbWI = (FirebaseOptions) zzac.zzw(firebaseOptions);
    }

    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (zztX) {
            firebaseApp = (FirebaseApp) zzbhH.get("[DEFAULT]");
            if (firebaseApp == null) {
                String valueOf = String.valueOf(zzu.zzzr());
                StringBuilder stringBuilder = new StringBuilder(116 + String.valueOf(valueOf).length());
                stringBuilder.append("Default FirebaseApp is not initialized in this process ");
                stringBuilder.append(valueOf);
                stringBuilder.append(". Make sure to call FirebaseApp.initializeApp(Context) first.");
                throw new IllegalStateException(stringBuilder.toString());
            }
        }
        return firebaseApp;
    }

    private <T> void zza(java.lang.Class<T> r8, T r9, java.lang.Iterable<java.lang.String> r10) {
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
        r0 = r7.zzwi;
        r0 = android.support.v4.content.ContextCompat.isDeviceProtectedStorage(r0);
        if (r0 == 0) goto L_0x000d;
    L_0x0008:
        r1 = r7.zzwi;
        com.google.firebase.FirebaseApp.zzc.zzcn(r1);
    L_0x000d:
        r10 = r10.iterator();
    L_0x0011:
        r1 = r10.hasNext();
        if (r1 == 0) goto L_0x00b2;
    L_0x0017:
        r1 = r10.next();
        r1 = (java.lang.String) r1;
        if (r0 == 0) goto L_0x002c;
    L_0x001f:
        r2 = zzbWG;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r2 = r2.contains(r1);	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        if (r2 == 0) goto L_0x0011;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
    L_0x0027:
        goto L_0x002c;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
    L_0x0028:
        r2 = move-exception;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        goto L_0x0055;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
    L_0x002a:
        r1 = move-exception;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        goto L_0x0071;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
    L_0x002c:
        r2 = java.lang.Class.forName(r1);	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r3 = "getInstance";	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r4 = 1;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r5 = new java.lang.Class[r4];	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r6 = 0;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r5[r6] = r8;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r2 = r2.getMethod(r3, r5);	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r3 = r2.getModifiers();	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r5 = java.lang.reflect.Modifier.isPublic(r3);	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        if (r5 == 0) goto L_0x0011;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
    L_0x0046:
        r3 = java.lang.reflect.Modifier.isStatic(r3);	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        if (r3 == 0) goto L_0x0011;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
    L_0x004c:
        r3 = 0;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r4 = new java.lang.Object[r4];	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r4[r6] = r9;	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        r2.invoke(r3, r4);	 Catch:{ ClassNotFoundException -> 0x0089, NoSuchMethodException -> 0x0079, InvocationTargetException -> 0x002a, IllegalAccessException -> 0x0028 }
        goto L_0x0011;
    L_0x0055:
        r3 = "FirebaseApp";
        r4 = "Failed to initialize ";
        r1 = java.lang.String.valueOf(r1);
        r5 = r1.length();
        if (r5 == 0) goto L_0x0068;
    L_0x0063:
        r1 = r4.concat(r1);
        goto L_0x006d;
    L_0x0068:
        r1 = new java.lang.String;
        r1.<init>(r4);
    L_0x006d:
        android.util.Log.wtf(r3, r1, r2);
        goto L_0x0011;
    L_0x0071:
        r2 = "FirebaseApp";
        r3 = "Firebase API initialization failure.";
        android.util.Log.wtf(r2, r3, r1);
        goto L_0x0011;
    L_0x0079:
        r8 = new java.lang.IllegalStateException;
        r9 = java.lang.String.valueOf(r1);
        r10 = "#getInstance has been removed by Proguard. Add keep rule to prevent it.";
        r9 = r9.concat(r10);
        r8.<init>(r9);
        throw r8;
    L_0x0089:
        r2 = zzbWH;
        r2 = r2.contains(r1);
        if (r2 == 0) goto L_0x00a1;
    L_0x0091:
        r8 = new java.lang.IllegalStateException;
        r9 = java.lang.String.valueOf(r1);
        r10 = " is missing, but is required. Check if it has been removed by Proguard.";
        r9 = r9.concat(r10);
        r8.<init>(r9);
        throw r8;
    L_0x00a1:
        r2 = "FirebaseApp";
        r1 = java.lang.String.valueOf(r1);
        r3 = " is not linked. Skipping initialization.";
        r1 = r1.concat(r3);
        android.util.Log.d(r2, r1);
        goto L_0x0011;
    L_0x00b2:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.FirebaseApp.zza(java.lang.Class, java.lang.Object, java.lang.Iterable):void");
    }

    private void zzaV$1385ff() {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        Iterator it = this.zzbWM.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public static void zzas$1385ff() {
        synchronized (zztX) {
            Iterator it = new ArrayList(zzbhH.values()).iterator();
            while (it.hasNext()) {
                FirebaseApp firebaseApp = (FirebaseApp) it.next();
                if (firebaseApp.zzbWJ.get()) {
                    firebaseApp.zzaV$1385ff();
                }
            }
        }
    }

    public int hashCode() {
        return this.mName.hashCode();
    }

    public String toString() {
        return zzaa.zzv(this).zzg("name", this.mName).zzg("options", this.zzbWI).toString();
    }

    public final Context getApplicationContext() {
        zzac.zza(this.zzbWK.get() ^ 1, (Object) "FirebaseApp was deleted");
        return this.zzwi;
    }

    public final FirebaseOptions getOptions() {
        zzac.zza(this.zzbWK.get() ^ 1, (Object) "FirebaseApp was deleted");
        return this.zzbWI;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FirebaseApp)) {
            return null;
        }
        String str = this.mName;
        FirebaseApp firebaseApp = (FirebaseApp) obj;
        zzac.zza(firebaseApp.zzbWK.get() ^ 1, (Object) "FirebaseApp was deleted");
        return str.equals(firebaseApp.mName);
    }

    public static FirebaseApp initializeApp(Context context) {
        synchronized (zztX) {
            if (zzbhH.containsKey("[DEFAULT]")) {
                context = getInstance();
                return context;
            }
            FirebaseOptions fromResource = FirebaseOptions.fromResource(context);
            if (fromResource == null) {
                return null;
            }
            context = initializeApp(context, fromResource, "[DEFAULT]");
            return context;
        }
    }

    private static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions, String str) {
        FirebaseApp firebaseApp;
        zzbth zzcx = zzbth.zzcx(context);
        zzt.zzzg();
        if (context.getApplicationContext() instanceof Application) {
            zzaac.zza((Application) context.getApplicationContext());
            zzaac.zzvB().zza(new C12151());
        }
        str = str.trim();
        if (context.getApplicationContext() != null) {
            Object applicationContext = context.getApplicationContext();
        }
        synchronized (zztX) {
            boolean containsKey = zzbhH.containsKey(str) ^ 1;
            StringBuilder stringBuilder = new StringBuilder(33 + String.valueOf(str).length());
            stringBuilder.append("FirebaseApp name ");
            stringBuilder.append(str);
            stringBuilder.append(" already exists!");
            zzac.zza(containsKey, stringBuilder.toString());
            zzac.zzb(applicationContext, (Object) "Application context cannot be null.");
            firebaseApp = new FirebaseApp(applicationContext, str, firebaseOptions);
            zzbhH.put(str, firebaseApp);
        }
        zzcx.zzg(firebaseApp);
        firebaseApp.zza(FirebaseApp.class, firebaseApp, zzbWD);
        zzac.zza(firebaseApp.zzbWK.get() ^ 1, (Object) "FirebaseApp was deleted");
        if ("[DEFAULT]".equals(firebaseApp.mName) != null) {
            firebaseApp.zza(FirebaseApp.class, firebaseApp, zzbWE);
            zzac.zza(firebaseApp.zzbWK.get() ^ 1, (Object) "FirebaseApp was deleted");
            firebaseApp.zza(Context.class, firebaseApp.zzwi, zzbWF);
        }
        return firebaseApp;
    }

    static /* synthetic */ void zza(FirebaseApp firebaseApp) {
        firebaseApp.zza(FirebaseApp.class, firebaseApp, zzbWD);
        zzac.zza(firebaseApp.zzbWK.get() ^ 1, (Object) "FirebaseApp was deleted");
        if ("[DEFAULT]".equals(firebaseApp.mName)) {
            firebaseApp.zza(FirebaseApp.class, firebaseApp, zzbWE);
            firebaseApp.zza(Context.class, firebaseApp.zzwi, zzbWF);
        }
    }
}
