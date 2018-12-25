package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.zze;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public class zzaak implements zzabc {
    private final Lock zzaAG;
    private final zzg zzaAL;
    private final Map<zzc<?>, zzaaj<?>> zzaAM = new HashMap();
    private final Map<zzc<?>, zzaaj<?>> zzaAN = new HashMap();
    private final Map<Api<?>, Boolean> zzaAO;
    private final zzaat zzaAP;
    private final zze zzaAQ;
    private final Condition zzaAR;
    private final boolean zzaAS;
    private final boolean zzaAT;
    private final Queue<com.google.android.gms.internal.zzaad.zza<?, ?>> zzaAU = new LinkedList();
    private boolean zzaAV;
    private Map<zzzz<?>, ConnectionResult> zzaAW;
    private Map<zzzz<?>, ConnectionResult> zzaAX;
    private zzb zzaAY;
    private ConnectionResult zzaAZ;
    private final zzaax zzayX;
    private final Looper zzrs;

    private class zza implements OnCompleteListener<Void> {
        final /* synthetic */ zzaak zzaBa;

        private zza(zzaak zzaak) {
            this.zzaBa = zzaak;
        }

        public void onComplete(Task<Void> task) {
            this.zzaBa.zzaAG.lock();
            try {
                if (this.zzaBa.zzaAV) {
                    if (task.isSuccessful()) {
                        this.zzaBa.zzaAW = new ArrayMap(this.zzaBa.zzaAM.size());
                        for (zzaaj apiKey : this.zzaBa.zzaAM.values()) {
                            this.zzaBa.zzaAW.put(apiKey.getApiKey(), ConnectionResult.zzayj);
                        }
                    } else {
                        zzaak zzaak;
                        ConnectionResult zzf;
                        if (task.getException() instanceof com.google.android.gms.common.api.zzb) {
                            com.google.android.gms.common.api.zzb zzb = (com.google.android.gms.common.api.zzb) task.getException();
                            if (this.zzaBa.zzaAT) {
                                this.zzaBa.zzaAW = new ArrayMap(this.zzaBa.zzaAM.size());
                                for (zzaaj zzaaj : this.zzaBa.zzaAM.values()) {
                                    Map zzd;
                                    zzzz apiKey2 = zzaaj.getApiKey();
                                    Object zza = zzb.zza(zzaaj);
                                    if (this.zzaBa.zza(zzaaj, (ConnectionResult) zza)) {
                                        zzd = this.zzaBa.zzaAW;
                                        zza = new ConnectionResult(16);
                                    } else {
                                        zzd = this.zzaBa.zzaAW;
                                    }
                                    zzd.put(apiKey2, zza);
                                }
                            } else {
                                this.zzaBa.zzaAW = zzb.zzvj();
                            }
                            zzaak = this.zzaBa;
                            zzf = this.zzaBa.zzvX();
                        } else {
                            Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                            this.zzaBa.zzaAW = Collections.emptyMap();
                            zzaak = this.zzaBa;
                            zzf = new ConnectionResult(8);
                        }
                        zzaak.zzaAZ = zzf;
                    }
                    if (this.zzaBa.zzaAX != null) {
                        this.zzaBa.zzaAW.putAll(this.zzaBa.zzaAX);
                        this.zzaBa.zzaAZ = this.zzaBa.zzvX();
                    }
                    if (this.zzaBa.zzaAZ == null) {
                        this.zzaBa.zzvV();
                        this.zzaBa.zzvW();
                    } else {
                        this.zzaBa.zzaAV = false;
                        this.zzaBa.zzaAP.zzc(this.zzaBa.zzaAZ);
                    }
                    this.zzaBa.zzaAR.signalAll();
                }
                this.zzaBa.zzaAG.unlock();
            } catch (Throwable th) {
                this.zzaBa.zzaAG.unlock();
            }
        }
    }

    private class zzb implements OnCompleteListener<Void> {
        final /* synthetic */ zzaak zzaBa;
        private zzabq zzaBb;

        zzb(zzaak zzaak, zzabq zzabq) {
            this.zzaBa = zzaak;
            this.zzaBb = zzabq;
        }

        void cancel() {
            this.zzaBb.zzrq();
        }

        public void onComplete(Task<Void> task) {
            this.zzaBa.zzaAG.lock();
            try {
                zzabq zzabq;
                if (this.zzaBa.zzaAV) {
                    if (task.isSuccessful()) {
                        this.zzaBa.zzaAX = new ArrayMap(this.zzaBa.zzaAN.size());
                        for (zzaaj apiKey : this.zzaBa.zzaAN.values()) {
                            this.zzaBa.zzaAX.put(apiKey.getApiKey(), ConnectionResult.zzayj);
                        }
                    } else if (task.getException() instanceof com.google.android.gms.common.api.zzb) {
                        com.google.android.gms.common.api.zzb zzb = (com.google.android.gms.common.api.zzb) task.getException();
                        if (this.zzaBa.zzaAT) {
                            this.zzaBa.zzaAX = new ArrayMap(this.zzaBa.zzaAN.size());
                            for (zzaaj zzaaj : this.zzaBa.zzaAN.values()) {
                                Map zzg;
                                zzzz apiKey2 = zzaaj.getApiKey();
                                Object zza = zzb.zza(zzaaj);
                                if (this.zzaBa.zza(zzaaj, (ConnectionResult) zza)) {
                                    zzg = this.zzaBa.zzaAX;
                                    zza = new ConnectionResult(16);
                                } else {
                                    zzg = this.zzaBa.zzaAX;
                                }
                                zzg.put(apiKey2, zza);
                            }
                        } else {
                            this.zzaBa.zzaAX = zzb.zzvj();
                        }
                    } else {
                        Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                        this.zzaBa.zzaAX = Collections.emptyMap();
                    }
                    if (this.zzaBa.isConnected()) {
                        this.zzaBa.zzaAW.putAll(this.zzaBa.zzaAX);
                        if (this.zzaBa.zzvX() == null) {
                            this.zzaBa.zzvV();
                            this.zzaBa.zzvW();
                            this.zzaBa.zzaAR.signalAll();
                        }
                    }
                    zzabq = this.zzaBb;
                } else {
                    zzabq = this.zzaBb;
                }
                zzabq.zzrq();
            } finally {
                this.zzaBa.zzaAG.unlock();
            }
        }
    }

    public zzaak(Context context, Lock lock, Looper looper, zze zze, Map<zzc<?>, Api.zze> map, zzg zzg, Map<Api<?>, Boolean> map2, com.google.android.gms.common.api.Api.zza<? extends zzbai, zzbaj> zza, ArrayList<zzaag> arrayList, zzaat zzaat, boolean z) {
        this.zzaAG = lock;
        Looper looper2 = looper;
        this.zzrs = looper2;
        this.zzaAR = lock.newCondition();
        this.zzaAQ = zze;
        this.zzaAP = zzaat;
        this.zzaAO = map2;
        zzg zzg2 = zzg;
        this.zzaAL = zzg2;
        this.zzaAS = z;
        Map hashMap = new HashMap();
        for (Api api : map2.keySet()) {
            hashMap.put(api.zzvg(), api);
        }
        Map hashMap2 = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            zzaag zzaag = (zzaag) it.next();
            hashMap2.put(zzaag.zzaxf, zzaag);
        }
        Object obj = null;
        Object obj2 = 1;
        Object obj3 = null;
        for (Entry entry : map.entrySet()) {
            Object obj4;
            Object obj5;
            Object obj6;
            Api api2 = (Api) hashMap.get(entry.getKey());
            Api.zze zze2 = (Api.zze) entry.getValue();
            if (zze2.zzvh()) {
                if (((Boolean) r0.zzaAO.get(api2)).booleanValue()) {
                    obj4 = obj2;
                    obj5 = obj3;
                } else {
                    obj4 = obj2;
                    obj5 = 1;
                }
                obj6 = 1;
            } else {
                obj6 = obj;
                obj5 = obj3;
                obj4 = null;
            }
            zzaaj zzaaj = r1;
            Api.zze zze3 = zze2;
            Entry entry2 = entry;
            zzaaj zzaaj2 = new zzaaj(context, api2, looper2, zze2, (zzaag) hashMap2.get(api2), zzg2, zza);
            r0.zzaAM.put((zzc) entry2.getKey(), zzaaj);
            if (zze3.zzrd()) {
                r0.zzaAN.put((zzc) entry2.getKey(), zzaaj);
            }
            obj3 = obj5;
            obj2 = obj4;
            obj = obj6;
            looper2 = looper;
        }
        boolean z2 = obj != null && obj2 == null && obj3 == null;
        r0.zzaAT = z2;
        r0.zzayX = zzaax.zzww();
    }

    private boolean zza(zzaaj<?> zzaaj, ConnectionResult connectionResult) {
        return !connectionResult.isSuccess() && !connectionResult.hasResolution() && ((Boolean) this.zzaAO.get(zzaaj.getApi())).booleanValue() && zzaaj.zzvU().zzvh() && this.zzaAQ.isUserResolvableError(connectionResult.getErrorCode());
    }

    private ConnectionResult zzb(zzc<?> zzc) {
        this.zzaAG.lock();
        try {
            zzaaj zzaaj = (zzaaj) this.zzaAM.get(zzc);
            if (this.zzaAW == null || zzaaj == null) {
                this.zzaAG.unlock();
                return null;
            }
            ConnectionResult connectionResult = (ConnectionResult) this.zzaAW.get(zzaaj.getApiKey());
            return connectionResult;
        } finally {
            this.zzaAG.unlock();
        }
    }

    private <T extends com.google.android.gms.internal.zzaad.zza<? extends Result, ? extends com.google.android.gms.common.api.Api.zzb>> boolean zzd(T t) {
        zzc zzvg = t.zzvg();
        ConnectionResult zzb = zzb(zzvg);
        if (zzb == null || zzb.getErrorCode() != 4) {
            return false;
        }
        t.zzB(new Status(4, null, this.zzayX.zza(((zzaaj) this.zzaAM.get(zzvg)).getApiKey(), this.zzaAP.getSessionId())));
        return true;
    }

    private void zzvV() {
        if (this.zzaAL == null) {
            this.zzaAP.zzaBR = Collections.emptySet();
            return;
        }
        Set hashSet = new HashSet(this.zzaAL.zzxL());
        Map zzxN = this.zzaAL.zzxN();
        for (Api api : zzxN.keySet()) {
            ConnectionResult connectionResult = getConnectionResult(api);
            if (connectionResult != null && connectionResult.isSuccess()) {
                hashSet.addAll(((com.google.android.gms.common.internal.zzg.zza) zzxN.get(api)).zzakq);
            }
        }
        this.zzaAP.zzaBR = hashSet;
    }

    private void zzvW() {
        while (!this.zzaAU.isEmpty()) {
            zzb((com.google.android.gms.internal.zzaad.zza) this.zzaAU.remove());
        }
        this.zzaAP.zzo(null);
    }

    private ConnectionResult zzvX() {
        ConnectionResult connectionResult = null;
        int i = 0;
        int i2 = i;
        ConnectionResult connectionResult2 = null;
        for (zzaaj zzaaj : this.zzaAM.values()) {
            Api api = zzaaj.getApi();
            ConnectionResult connectionResult3 = (ConnectionResult) this.zzaAW.get(zzaaj.getApiKey());
            if (!connectionResult3.isSuccess() && (!((Boolean) this.zzaAO.get(api)).booleanValue() || connectionResult3.hasResolution() || this.zzaAQ.isUserResolvableError(connectionResult3.getErrorCode()))) {
                int priority;
                if (connectionResult3.getErrorCode() == 4 && this.zzaAS) {
                    priority = api.zzve().getPriority();
                    if (connectionResult2 == null || i2 > priority) {
                        connectionResult2 = connectionResult3;
                        i2 = priority;
                    }
                } else {
                    priority = api.zzve().getPriority();
                    if (connectionResult == null || i > priority) {
                        connectionResult = connectionResult3;
                        i = priority;
                    }
                }
            }
        }
        return (connectionResult == null || connectionResult2 == null || i <= i2) ? connectionResult : connectionResult2;
    }

    public com.google.android.gms.common.ConnectionResult blockingConnect() {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r3.connect();
    L_0x0003:
        r0 = r3.isConnecting();
        r1 = 0;
        if (r0 == 0) goto L_0x001f;
    L_0x000a:
        r0 = r3.zzaAR;	 Catch:{ InterruptedException -> 0x0010 }
        r0.await();	 Catch:{ InterruptedException -> 0x0010 }
        goto L_0x0003;
    L_0x0010:
        r0 = java.lang.Thread.currentThread();
        r0.interrupt();
        r0 = new com.google.android.gms.common.ConnectionResult;
        r2 = 15;
        r0.<init>(r2, r1);
        return r0;
    L_0x001f:
        r0 = r3.isConnected();
        if (r0 == 0) goto L_0x0028;
    L_0x0025:
        r0 = com.google.android.gms.common.ConnectionResult.zzayj;
        return r0;
    L_0x0028:
        r0 = r3.zzaAZ;
        if (r0 == 0) goto L_0x002f;
    L_0x002c:
        r0 = r3.zzaAZ;
        return r0;
    L_0x002f:
        r0 = new com.google.android.gms.common.ConnectionResult;
        r2 = 13;
        r0.<init>(r2, r1);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaak.blockingConnect():com.google.android.gms.common.ConnectionResult");
    }

    public com.google.android.gms.common.ConnectionResult blockingConnect(long r4, java.util.concurrent.TimeUnit r6) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r3.connect();
        r4 = r6.toNanos(r4);
    L_0x0007:
        r6 = r3.isConnecting();
        r0 = 0;
        if (r6 == 0) goto L_0x0035;
    L_0x000e:
        r1 = 0;
        r6 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1));
        if (r6 > 0) goto L_0x001f;
    L_0x0014:
        r3.disconnect();	 Catch:{ InterruptedException -> 0x0026 }
        r4 = new com.google.android.gms.common.ConnectionResult;	 Catch:{ InterruptedException -> 0x0026 }
        r5 = 14;	 Catch:{ InterruptedException -> 0x0026 }
        r4.<init>(r5, r0);	 Catch:{ InterruptedException -> 0x0026 }
        return r4;	 Catch:{ InterruptedException -> 0x0026 }
    L_0x001f:
        r6 = r3.zzaAR;	 Catch:{ InterruptedException -> 0x0026 }
        r4 = r6.awaitNanos(r4);	 Catch:{ InterruptedException -> 0x0026 }
        goto L_0x0007;
    L_0x0026:
        r4 = java.lang.Thread.currentThread();
        r4.interrupt();
        r4 = new com.google.android.gms.common.ConnectionResult;
        r5 = 15;
        r4.<init>(r5, r0);
        return r4;
    L_0x0035:
        r4 = r3.isConnected();
        if (r4 == 0) goto L_0x003e;
    L_0x003b:
        r4 = com.google.android.gms.common.ConnectionResult.zzayj;
        return r4;
    L_0x003e:
        r4 = r3.zzaAZ;
        if (r4 == 0) goto L_0x0045;
    L_0x0042:
        r4 = r3.zzaAZ;
        return r4;
    L_0x0045:
        r4 = new com.google.android.gms.common.ConnectionResult;
        r5 = 13;
        r4.<init>(r5, r0);
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaak.blockingConnect(long, java.util.concurrent.TimeUnit):com.google.android.gms.common.ConnectionResult");
    }

    public void connect() {
        this.zzaAG.lock();
        try {
            if (!this.zzaAV) {
                this.zzaAV = true;
                this.zzaAW = null;
                this.zzaAX = null;
                this.zzaAY = null;
                this.zzaAZ = null;
                this.zzayX.zzvx();
                this.zzayX.zza(this.zzaAM.values()).addOnCompleteListener(new zzadb(this.zzrs), new zza());
            }
            this.zzaAG.unlock();
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public void disconnect() {
        this.zzaAG.lock();
        try {
            this.zzaAV = false;
            this.zzaAW = null;
            this.zzaAX = null;
            if (this.zzaAY != null) {
                this.zzaAY.cancel();
                this.zzaAY = null;
            }
            this.zzaAZ = null;
            while (!this.zzaAU.isEmpty()) {
                com.google.android.gms.internal.zzaad.zza zza = (com.google.android.gms.internal.zzaad.zza) this.zzaAU.remove();
                zza.zza(null);
                zza.cancel();
            }
            this.zzaAR.signalAll();
        } finally {
            this.zzaAG.unlock();
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public ConnectionResult getConnectionResult(Api<?> api) {
        return zzb(api.zzvg());
    }

    public boolean isConnected() {
        this.zzaAG.lock();
        try {
            boolean z = this.zzaAW != null && this.zzaAZ == null;
            this.zzaAG.unlock();
            return z;
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public boolean isConnecting() {
        this.zzaAG.lock();
        try {
            boolean z = this.zzaAW == null && this.zzaAV;
            this.zzaAG.unlock();
            return z;
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public <A extends com.google.android.gms.common.api.Api.zzb, R extends Result, T extends com.google.android.gms.internal.zzaad.zza<R, A>> T zza(T t) {
        if (this.zzaAS && zzd((com.google.android.gms.internal.zzaad.zza) t)) {
            return t;
        }
        if (isConnected()) {
            this.zzaAP.zzaBW.zzb(t);
            return ((zzaaj) this.zzaAM.get(t.zzvg())).doRead((com.google.android.gms.internal.zzaad.zza) t);
        }
        this.zzaAU.add(t);
        return t;
    }

    public boolean zza(zzabq zzabq) {
        this.zzaAG.lock();
        try {
            if (!this.zzaAV || zzvN()) {
                this.zzaAG.unlock();
                return false;
            }
            this.zzayX.zzvx();
            this.zzaAY = new zzb(this, zzabq);
            this.zzayX.zza(this.zzaAN.values()).addOnCompleteListener(new zzadb(this.zzrs), this.zzaAY);
            return true;
        } finally {
            this.zzaAG.unlock();
        }
    }

    public <A extends com.google.android.gms.common.api.Api.zzb, T extends com.google.android.gms.internal.zzaad.zza<? extends Result, A>> T zzb(T t) {
        zzc zzvg = t.zzvg();
        if (this.zzaAS && zzd((com.google.android.gms.internal.zzaad.zza) t)) {
            return t;
        }
        this.zzaAP.zzaBW.zzb(t);
        return ((zzaaj) this.zzaAM.get(zzvg)).doWrite((com.google.android.gms.internal.zzaad.zza) t);
    }

    public void zzvM() {
    }

    public boolean zzvN() {
        this.zzaAG.lock();
        try {
            if (this.zzaAV) {
                if (this.zzaAS) {
                    for (zzc zzb : this.zzaAN.keySet()) {
                        ConnectionResult zzb2 = zzb(zzb);
                        if (zzb2 != null) {
                            if (!zzb2.isSuccess()) {
                            }
                        }
                    }
                    this.zzaAG.unlock();
                    return true;
                }
            }
            this.zzaAG.unlock();
            return false;
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public void zzvn() {
        this.zzaAG.lock();
        try {
            this.zzayX.zzvn();
            if (this.zzaAY != null) {
                this.zzaAY.cancel();
                this.zzaAY = null;
            }
            if (this.zzaAX == null) {
                this.zzaAX = new ArrayMap(this.zzaAN.size());
            }
            ConnectionResult connectionResult = new ConnectionResult(4);
            for (zzaaj apiKey : this.zzaAN.values()) {
                this.zzaAX.put(apiKey.getApiKey(), connectionResult);
            }
            if (this.zzaAW != null) {
                this.zzaAW.putAll(this.zzaAX);
            }
            this.zzaAG.unlock();
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }
}
