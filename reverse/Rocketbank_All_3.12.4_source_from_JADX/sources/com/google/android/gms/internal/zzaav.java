package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.zze;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public class zzaav implements zzaah, zzabc {
    private final Context mContext;
    private final Lock zzaAG;
    final zzg zzaAL;
    final Map<Api<?>, Boolean> zzaAO;
    private final zze zzaAQ;
    final zzaat zzaAw;
    final Map<zzc<?>, Api.zze> zzaBQ;
    private final Condition zzaCd;
    private final zzb zzaCe;
    final Map<zzc<?>, ConnectionResult> zzaCf = new HashMap();
    private volatile zzaau zzaCg;
    private ConnectionResult zzaCh = null;
    int zzaCi;
    final com.google.android.gms.internal.zzabc.zza zzaCj;
    final com.google.android.gms.common.api.Api.zza<? extends zzbai, zzbaj> zzazo;

    static abstract class zza {
        private final zzaau zzaCk;

        protected zza(zzaau zzaau) {
            this.zzaCk = zzaau;
        }

        public final void zzc(zzaav zzaav) {
            zzaav.zzaAG.lock();
            try {
                if (zzaav.zzaCg == this.zzaCk) {
                    zzwe();
                }
                zzaav.zzaAG.unlock();
            } catch (Throwable th) {
                zzaav.zzaAG.unlock();
            }
        }

        protected abstract void zzwe();
    }

    final class zzb extends Handler {
        final /* synthetic */ zzaav zzaCl;

        zzb(zzaav zzaav, Looper looper) {
            this.zzaCl = zzaav;
            super(looper);
        }

        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    ((zza) message.obj).zzc(this.zzaCl);
                    return;
                case 2:
                    throw ((RuntimeException) message.obj);
                default:
                    int i = message.what;
                    StringBuilder stringBuilder = new StringBuilder(31);
                    stringBuilder.append("Unknown message id: ");
                    stringBuilder.append(i);
                    Log.w("GACStateManager", stringBuilder.toString());
                    return;
            }
        }
    }

    public zzaav(Context context, zzaat zzaat, Lock lock, Looper looper, zze zze, Map<zzc<?>, Api.zze> map, zzg zzg, Map<Api<?>, Boolean> map2, com.google.android.gms.common.api.Api.zza<? extends zzbai, zzbaj> zza, ArrayList<zzaag> arrayList, com.google.android.gms.internal.zzabc.zza zza2) {
        this.mContext = context;
        this.zzaAG = lock;
        this.zzaAQ = zze;
        this.zzaBQ = map;
        this.zzaAL = zzg;
        this.zzaAO = map2;
        this.zzazo = zza;
        this.zzaAw = zzaat;
        this.zzaCj = zza2;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((zzaag) it.next()).zza(this);
        }
        this.zzaCe = new zzb(this, looper);
        this.zzaCd = lock.newCondition();
        this.zzaCg = new zzaas(this);
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
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
        r0 = r3.zzaCd;	 Catch:{ InterruptedException -> 0x0010 }
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
        r0 = r3.zzaCh;
        if (r0 == 0) goto L_0x002f;
    L_0x002c:
        r0 = r3.zzaCh;
        return r0;
    L_0x002f:
        r0 = new com.google.android.gms.common.ConnectionResult;
        r2 = 13;
        r0.<init>(r2, r1);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaav.blockingConnect():com.google.android.gms.common.ConnectionResult");
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
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
        r6 = r3.zzaCd;	 Catch:{ InterruptedException -> 0x0026 }
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
        r4 = r3.zzaCh;
        if (r4 == 0) goto L_0x0045;
    L_0x0042:
        r4 = r3.zzaCh;
        return r4;
    L_0x0045:
        r4 = new com.google.android.gms.common.ConnectionResult;
        r5 = 13;
        r4.<init>(r5, r0);
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaav.blockingConnect(long, java.util.concurrent.TimeUnit):com.google.android.gms.common.ConnectionResult");
    }

    public void connect() {
        this.zzaCg.connect();
    }

    public void disconnect() {
        if (this.zzaCg.disconnect()) {
            this.zzaCf.clear();
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append(str).append("mState=").println(this.zzaCg);
        for (Api api : this.zzaAO.keySet()) {
            printWriter.append(str).append(api.getName()).println(":");
            ((Api.zze) this.zzaBQ.get(api.zzvg())).dump(concat, fileDescriptor, printWriter, strArr);
        }
    }

    public ConnectionResult getConnectionResult(Api<?> api) {
        zzc zzvg = api.zzvg();
        if (this.zzaBQ.containsKey(zzvg)) {
            if (((Api.zze) this.zzaBQ.get(zzvg)).isConnected()) {
                return ConnectionResult.zzayj;
            }
            if (this.zzaCf.containsKey(zzvg)) {
                return (ConnectionResult) this.zzaCf.get(zzvg);
            }
        }
        return null;
    }

    public boolean isConnected() {
        return this.zzaCg instanceof zzaaq;
    }

    public boolean isConnecting() {
        return this.zzaCg instanceof zzaar;
    }

    public void onConnected(Bundle bundle) {
        this.zzaAG.lock();
        try {
            this.zzaCg.onConnected(bundle);
        } finally {
            this.zzaAG.unlock();
        }
    }

    public void onConnectionSuspended(int i) {
        this.zzaAG.lock();
        try {
            this.zzaCg.onConnectionSuspended(i);
        } finally {
            this.zzaAG.unlock();
        }
    }

    public <A extends com.google.android.gms.common.api.Api.zzb, R extends Result, T extends com.google.android.gms.internal.zzaad.zza<R, A>> T zza(T t) {
        t.zzvI();
        return this.zzaCg.zza(t);
    }

    public void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
        this.zzaAG.lock();
        try {
            this.zzaCg.zza(connectionResult, api, z);
        } finally {
            this.zzaAG.unlock();
        }
    }

    void zza(zza zza) {
        this.zzaCe.sendMessage(this.zzaCe.obtainMessage(1, zza));
    }

    void zza(RuntimeException runtimeException) {
        this.zzaCe.sendMessage(this.zzaCe.obtainMessage(2, runtimeException));
    }

    public boolean zza(zzabq zzabq) {
        return false;
    }

    public <A extends com.google.android.gms.common.api.Api.zzb, T extends com.google.android.gms.internal.zzaad.zza<? extends Result, A>> T zzb(T t) {
        t.zzvI();
        return this.zzaCg.zzb(t);
    }

    void zzh(ConnectionResult connectionResult) {
        this.zzaAG.lock();
        try {
            this.zzaCh = connectionResult;
            this.zzaCg = new zzaas(this);
            this.zzaCg.begin();
            this.zzaCd.signalAll();
        } finally {
            this.zzaAG.unlock();
        }
    }

    public void zzvM() {
        if (isConnected()) {
            ((zzaaq) this.zzaCg).zzwd();
        }
    }

    public void zzvn() {
    }

    void zzws() {
        this.zzaAG.lock();
        try {
            this.zzaCg = new zzaar(this, this.zzaAL, this.zzaAO, this.zzaAQ, this.zzazo, this.zzaAG, this.mContext);
            this.zzaCg.begin();
            this.zzaCd.signalAll();
        } finally {
            this.zzaAG.unlock();
        }
    }

    void zzwt() {
        this.zzaAG.lock();
        try {
            this.zzaAw.zzwp();
            this.zzaCg = new zzaaq(this);
            this.zzaCg.begin();
            this.zzaCd.signalAll();
        } finally {
            this.zzaAG.unlock();
        }
    }

    void zzwu() {
        for (Api.zze disconnect : this.zzaBQ.values()) {
            disconnect.disconnect();
        }
    }
}
