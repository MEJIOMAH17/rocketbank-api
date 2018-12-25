package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

final class zzaai implements zzabc {
    private final Context mContext;
    private final Set<zzabq> zzaAA = Collections.newSetFromMap(new WeakHashMap());
    private final zze zzaAB;
    private Bundle zzaAC;
    private ConnectionResult zzaAD = null;
    private ConnectionResult zzaAE = null;
    private boolean zzaAF = false;
    private final Lock zzaAG;
    private int zzaAH = 0;
    private final zzaat zzaAw;
    private final zzaav zzaAx;
    private final zzaav zzaAy;
    private final Map<zzc<?>, zzaav> zzaAz;
    private final Looper zzrs;

    /* renamed from: com.google.android.gms.internal.zzaai$1 */
    class C05561 implements Runnable {
        final /* synthetic */ zzaai zzaAI;

        C05561(zzaai zzaai) {
            this.zzaAI = zzaai;
        }

        public void run() {
            this.zzaAI.zzaAG.lock();
            try {
                this.zzaAI.zzvP();
            } finally {
                this.zzaAI.zzaAG.unlock();
            }
        }
    }

    private class zza implements com.google.android.gms.internal.zzabc.zza {
        final /* synthetic */ zzaai zzaAI;

        private zza(zzaai zzaai) {
            this.zzaAI = zzaai;
        }

        public void zzc(int i, boolean z) {
            this.zzaAI.zzaAG.lock();
            try {
                if (!(this.zzaAI.zzaAF || this.zzaAI.zzaAE == null)) {
                    if (this.zzaAI.zzaAE.isSuccess()) {
                        this.zzaAI.zzaAF = true;
                        this.zzaAI.zzaAy.onConnectionSuspended(i);
                        this.zzaAI.zzaAG.unlock();
                    }
                }
                this.zzaAI.zzaAF = false;
                this.zzaAI.zzb(i, z);
                this.zzaAI.zzaAG.unlock();
            } catch (Throwable th) {
                this.zzaAI.zzaAG.unlock();
            }
        }

        public void zzc(ConnectionResult connectionResult) {
            this.zzaAI.zzaAG.lock();
            try {
                this.zzaAI.zzaAD = connectionResult;
                this.zzaAI.zzvP();
            } finally {
                this.zzaAI.zzaAG.unlock();
            }
        }

        public void zzo(Bundle bundle) {
            this.zzaAI.zzaAG.lock();
            try {
                this.zzaAI.zzn(bundle);
                this.zzaAI.zzaAD = ConnectionResult.zzayj;
                this.zzaAI.zzvP();
            } finally {
                this.zzaAI.zzaAG.unlock();
            }
        }
    }

    private class zzb implements com.google.android.gms.internal.zzabc.zza {
        final /* synthetic */ zzaai zzaAI;

        private zzb(zzaai zzaai) {
            this.zzaAI = zzaai;
        }

        public void zzc(int i, boolean z) {
            this.zzaAI.zzaAG.lock();
            try {
                if (this.zzaAI.zzaAF) {
                    this.zzaAI.zzaAF = false;
                    this.zzaAI.zzb(i, z);
                } else {
                    this.zzaAI.zzaAF = true;
                    this.zzaAI.zzaAx.onConnectionSuspended(i);
                }
                this.zzaAI.zzaAG.unlock();
            } catch (Throwable th) {
                this.zzaAI.zzaAG.unlock();
            }
        }

        public void zzc(ConnectionResult connectionResult) {
            this.zzaAI.zzaAG.lock();
            try {
                this.zzaAI.zzaAE = connectionResult;
                this.zzaAI.zzvP();
            } finally {
                this.zzaAI.zzaAG.unlock();
            }
        }

        public void zzo(Bundle bundle) {
            this.zzaAI.zzaAG.lock();
            try {
                this.zzaAI.zzaAE = ConnectionResult.zzayj;
                this.zzaAI.zzvP();
            } finally {
                this.zzaAI.zzaAG.unlock();
            }
        }
    }

    private zzaai(Context context, zzaat zzaat, Lock lock, Looper looper, com.google.android.gms.common.zze zze, Map<zzc<?>, zze> map, Map<zzc<?>, zze> map2, zzg zzg, com.google.android.gms.common.api.Api.zza<? extends zzbai, zzbaj> zza, zze zze2, ArrayList<zzaag> arrayList, ArrayList<zzaag> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        Context context2 = context;
        this.mContext = context2;
        this.zzaAw = zzaat;
        Lock lock2 = lock;
        this.zzaAG = lock2;
        Looper looper2 = looper;
        this.zzrs = looper2;
        this.zzaAB = zze2;
        Context context3 = context2;
        Lock lock3 = lock2;
        com.google.android.gms.common.zze zze3 = zze;
        zzaav zzaav = r3;
        zzaav zzaav2 = new zzaav(context3, this.zzaAw, lock3, looper2, zze3, map2, null, map4, null, arrayList2, new zza());
        this.zzaAx = zzaav;
        this.zzaAy = new zzaav(context3, this.zzaAw, lock3, looper, zze3, map, zzg, map3, zza, arrayList, new zzb());
        Map arrayMap = new ArrayMap();
        for (zzc put : map2.keySet()) {
            arrayMap.put(put, r0.zzaAx);
        }
        for (zzc put2 : map.keySet()) {
            arrayMap.put(put2, r0.zzaAy);
        }
        r0.zzaAz = Collections.unmodifiableMap(arrayMap);
    }

    public static zzaai zza(Context context, zzaat zzaat, Lock lock, Looper looper, com.google.android.gms.common.zze zze, Map<zzc<?>, zze> map, zzg zzg, Map<Api<?>, Boolean> map2, com.google.android.gms.common.api.Api.zza<? extends zzbai, zzbaj> zza, ArrayList<zzaag> arrayList) {
        Map<Api<?>, Boolean> map3 = map2;
        Map arrayMap = new ArrayMap();
        Map arrayMap2 = new ArrayMap();
        zze zze2 = null;
        for (Entry entry : map.entrySet()) {
            zze zze3 = (zze) entry.getValue();
            if (zze3.zzrr()) {
                zze2 = zze3;
            }
            if (zze3.zzrd()) {
                arrayMap.put((zzc) entry.getKey(), zze3);
            } else {
                arrayMap2.put((zzc) entry.getKey(), zze3);
            }
        }
        zzac.zza(arrayMap.isEmpty() ^ 1, (Object) "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        Map arrayMap3 = new ArrayMap();
        Map arrayMap4 = new ArrayMap();
        for (Api api : map2.keySet()) {
            zzc zzvg = api.zzvg();
            if (arrayMap.containsKey(zzvg)) {
                arrayMap3.put(api, (Boolean) map3.get(api));
            } else if (arrayMap2.containsKey(zzvg)) {
                arrayMap4.put(api, (Boolean) map3.get(api));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            zzaag zzaag = (zzaag) it.next();
            if (arrayMap3.containsKey(zzaag.zzaxf)) {
                arrayList2.add(zzaag);
            } else if (arrayMap4.containsKey(zzaag.zzaxf)) {
                arrayList3.add(zzaag);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        return new zzaai(context, zzaat, lock, looper, zze, arrayMap, arrayMap2, zzg, zza, zze2, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    private void zza(ConnectionResult connectionResult) {
        switch (this.zzaAH) {
            case 1:
                break;
            case 2:
                this.zzaAw.zzc(connectionResult);
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                break;
        }
        zzvR();
        this.zzaAH = 0;
    }

    private void zzb(int i, boolean z) {
        this.zzaAw.zzc(i, z);
        this.zzaAE = null;
        this.zzaAD = null;
    }

    private static boolean zzb(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    private boolean zzc(com.google.android.gms.internal.zzaad.zza<? extends Result, ? extends com.google.android.gms.common.api.Api.zzb> zza) {
        zzc zzvg = zza.zzvg();
        zzac.zzb(this.zzaAz.containsKey(zzvg), (Object) "GoogleApiClient is not configured to use the API required for this call.");
        return ((zzaav) this.zzaAz.get(zzvg)).equals(this.zzaAy);
    }

    private void zzn(Bundle bundle) {
        if (this.zzaAC == null) {
            this.zzaAC = bundle;
            return;
        }
        if (bundle != null) {
            this.zzaAC.putAll(bundle);
        }
    }

    private void zzvO() {
        this.zzaAE = null;
        this.zzaAD = null;
        this.zzaAx.connect();
        this.zzaAy.connect();
    }

    private void zzvP() {
        if (zzb(this.zzaAD)) {
            if (!zzb(this.zzaAE)) {
                if (!zzvS()) {
                    if (this.zzaAE != null) {
                        if (this.zzaAH == 1) {
                            zzvR();
                            return;
                        }
                        zza(this.zzaAE);
                        this.zzaAx.disconnect();
                        return;
                    }
                }
            }
            zzvQ();
        } else if (this.zzaAD != null && zzb(this.zzaAE)) {
            this.zzaAy.disconnect();
            zza(this.zzaAD);
        } else if (!(this.zzaAD == null || this.zzaAE == null)) {
            ConnectionResult connectionResult = this.zzaAD;
            if (this.zzaAy.zzaCi < this.zzaAx.zzaCi) {
                connectionResult = this.zzaAE;
            }
            zza(connectionResult);
        }
    }

    private void zzvQ() {
        switch (this.zzaAH) {
            case 1:
                break;
            case 2:
                this.zzaAw.zzo(this.zzaAC);
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                break;
        }
        zzvR();
        this.zzaAH = 0;
    }

    private void zzvR() {
        for (zzabq zzrq : this.zzaAA) {
            zzrq.zzrq();
        }
        this.zzaAA.clear();
    }

    private boolean zzvS() {
        return this.zzaAE != null && this.zzaAE.getErrorCode() == 4;
    }

    private PendingIntent zzvT() {
        return this.zzaAB == null ? null : PendingIntent.getActivity(this.mContext, this.zzaAw.getSessionId(), this.zzaAB.zzrs(), 134217728);
    }

    public final ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    public final void connect() {
        this.zzaAH = 2;
        this.zzaAF = false;
        zzvO();
    }

    public final void disconnect() {
        this.zzaAE = null;
        this.zzaAD = null;
        this.zzaAH = 0;
        this.zzaAx.disconnect();
        this.zzaAy.disconnect();
        zzvR();
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("authClient").println(":");
        this.zzaAy.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append(str).append("anonClient").println(":");
        this.zzaAx.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    public final ConnectionResult getConnectionResult(Api<?> api) {
        return ((zzaav) this.zzaAz.get(api.zzvg())).equals(this.zzaAy) ? zzvS() ? new ConnectionResult(4, zzvT()) : this.zzaAy.getConnectionResult(api) : this.zzaAx.getConnectionResult(api);
    }

    public final boolean isConnected() {
        this.zzaAG.lock();
        try {
            boolean z = true;
            if (this.zzaAx.isConnected()) {
                if (!(zzvN() || zzvS())) {
                    if (this.zzaAH == 1) {
                    }
                }
                this.zzaAG.unlock();
                return z;
            }
            z = false;
            this.zzaAG.unlock();
            return z;
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public final boolean isConnecting() {
        this.zzaAG.lock();
        try {
            boolean z = this.zzaAH == 2;
            this.zzaAG.unlock();
            return z;
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public final <A extends com.google.android.gms.common.api.Api.zzb, R extends Result, T extends com.google.android.gms.internal.zzaad.zza<R, A>> T zza(T t) {
        if (!zzc((com.google.android.gms.internal.zzaad.zza) t)) {
            return this.zzaAx.zza((com.google.android.gms.internal.zzaad.zza) t);
        }
        if (!zzvS()) {
            return this.zzaAy.zza((com.google.android.gms.internal.zzaad.zza) t);
        }
        t.zzB(new Status(4, null, zzvT()));
        return t;
    }

    public final boolean zza(zzabq zzabq) {
        this.zzaAG.lock();
        boolean z;
        try {
            if ((isConnecting() || isConnected()) && !zzvN()) {
                this.zzaAA.add(zzabq);
                z = true;
                if (this.zzaAH == 0) {
                    this.zzaAH = 1;
                }
                this.zzaAE = null;
                this.zzaAy.connect();
                return z;
            }
            this.zzaAG.unlock();
            return false;
        } finally {
            z = this.zzaAG;
            z.unlock();
        }
    }

    public final <A extends com.google.android.gms.common.api.Api.zzb, T extends com.google.android.gms.internal.zzaad.zza<? extends Result, A>> T zzb(T t) {
        if (!zzc((com.google.android.gms.internal.zzaad.zza) t)) {
            return this.zzaAx.zzb((com.google.android.gms.internal.zzaad.zza) t);
        }
        if (!zzvS()) {
            return this.zzaAy.zzb((com.google.android.gms.internal.zzaad.zza) t);
        }
        t.zzB(new Status(4, null, zzvT()));
        return t;
    }

    public final void zzvM() {
        this.zzaAx.zzvM();
        this.zzaAy.zzvM();
    }

    public final boolean zzvN() {
        return this.zzaAy.isConnected();
    }

    public final void zzvn() {
        this.zzaAG.lock();
        try {
            boolean isConnecting = isConnecting();
            this.zzaAy.disconnect();
            this.zzaAE = new ConnectionResult(4);
            if (isConnecting) {
                new Handler(this.zzrs).post(new C05561(this));
            } else {
                zzvR();
            }
            this.zzaAG.unlock();
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }
}
