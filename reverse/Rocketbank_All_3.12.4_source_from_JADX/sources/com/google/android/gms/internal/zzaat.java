package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.auth.api.signin.internal.zzn;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzm;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

public final class zzaat extends GoogleApiClient implements com.google.android.gms.internal.zzabc.zza {
    private final Context mContext;
    private final Lock zzaAG;
    final zzg zzaAL;
    final Map<Api<?>, Boolean> zzaAO;
    final Queue<com.google.android.gms.internal.zzaad.zza<?, ?>> zzaAU = new LinkedList();
    private final zzm zzaBJ;
    private zzabc zzaBK = null;
    private volatile boolean zzaBL;
    private long zzaBM = 120000;
    private long zzaBN = 5000;
    private final zza zzaBO;
    zzaaz zzaBP;
    final Map<zzc<?>, zze> zzaBQ;
    Set<Scope> zzaBR = new HashSet();
    private final zzabi zzaBS = new zzabi();
    private final ArrayList<zzaag> zzaBT;
    private Integer zzaBU = null;
    Set<zzabx> zzaBV = null;
    final zzaby zzaBW;
    private final com.google.android.gms.common.internal.zzm.zza zzaBX = new C11891(this);
    private final int zzazl;
    private final GoogleApiAvailability zzazn;
    final com.google.android.gms.common.api.Api.zza<? extends zzbai, zzbaj> zzazo;
    private boolean zzazr;
    private final Looper zzrs;

    final class zza extends Handler {
        final /* synthetic */ zzaat zzaBY;

        zza(zzaat zzaat, Looper looper) {
            this.zzaBY = zzaat;
            super(looper);
        }

        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    this.zzaBY.zzwn();
                    return;
                case 2:
                    this.zzaBY.resume();
                    return;
                default:
                    int i = message.what;
                    StringBuilder stringBuilder = new StringBuilder(31);
                    stringBuilder.append("Unknown message id: ");
                    stringBuilder.append(i);
                    Log.w("GoogleApiClientImpl", stringBuilder.toString());
                    return;
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaat$1 */
    class C11891 implements com.google.android.gms.common.internal.zzm.zza {
        final /* synthetic */ zzaat zzaBY;

        C11891(zzaat zzaat) {
            this.zzaBY = zzaat;
        }

        public boolean isConnected() {
            return this.zzaBY.isConnected();
        }

        public Bundle zzuB() {
            return null;
        }
    }

    static class zzb extends com.google.android.gms.internal.zzaaz.zza {
        private WeakReference<zzaat> zzaCc;

        zzb(zzaat zzaat) {
            this.zzaCc = new WeakReference(zzaat);
        }

        public void zzvE() {
            zzaat zzaat = (zzaat) this.zzaCc.get();
            if (zzaat != null) {
                zzaat.resume();
            }
        }
    }

    public zzaat(Context context, Lock lock, Looper looper, zzg zzg, GoogleApiAvailability googleApiAvailability, com.google.android.gms.common.api.Api.zza<? extends zzbai, zzbaj> zza, Map<Api<?>, Boolean> map, List<ConnectionCallbacks> list, List<OnConnectionFailedListener> list2, Map<zzc<?>, zze> map2, int i, int i2, ArrayList<zzaag> arrayList, boolean z) {
        Looper looper2 = looper;
        this.mContext = context;
        this.zzaAG = lock;
        this.zzazr = z;
        this.zzaBJ = new zzm(looper2, this.zzaBX);
        this.zzrs = looper2;
        this.zzaBO = new zza(this, looper2);
        this.zzazn = googleApiAvailability;
        this.zzazl = i;
        if (this.zzazl >= 0) {
            r0.zzaBU = Integer.valueOf(i2);
        }
        r0.zzaAO = map;
        r0.zzaBQ = map2;
        r0.zzaBT = arrayList;
        r0.zzaBW = new zzaby(r0.zzaBQ);
        for (ConnectionCallbacks registerConnectionCallbacks : list) {
            r0.zzaBJ.registerConnectionCallbacks(registerConnectionCallbacks);
        }
        for (OnConnectionFailedListener registerConnectionFailedListener : list2) {
            r0.zzaBJ.registerConnectionFailedListener(registerConnectionFailedListener);
        }
        r0.zzaAL = zzg;
        r0.zzazo = zza;
    }

    private void resume() {
        this.zzaAG.lock();
        try {
            if (isResuming()) {
                zzwm();
            }
            this.zzaAG.unlock();
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public static int zza(Iterable<zze> iterable, boolean z) {
        int i = 0;
        int i2 = 0;
        for (zze zze : iterable) {
            if (zze.zzrd()) {
                i = 1;
            }
            if (zze.zzrr()) {
                i2 = 1;
            }
        }
        return i != 0 ? (i2 == 0 || !z) ? 1 : 2 : 3;
    }

    private void zza(final GoogleApiClient googleApiClient, final zzabt zzabt, final boolean z) {
        zzacf.zzaGM.zzg(googleApiClient).setResultCallback(new ResultCallback<Status>(this) {
            final /* synthetic */ zzaat zzaBY;

            public /* synthetic */ void onResult(Result result) {
                zzp((Status) result);
            }

            public void zzp(Status status) {
                zzn.zzas(this.zzaBY.mContext).zzrD();
                if (status.isSuccess() && this.zzaBY.isConnected()) {
                    this.zzaBY.reconnect();
                }
                zzabt.zzb(status);
                if (z) {
                    googleApiClient.disconnect();
                }
            }
        });
    }

    private void zzb(zzabd zzabd) {
        if (this.zzazl >= 0) {
            zzaaa.zza(zzabd).zzcA(this.zzazl);
            return;
        }
        throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
    }

    private void zzcD(int i) {
        if (this.zzaBU == null) {
            this.zzaBU = Integer.valueOf(i);
        } else if (this.zzaBU.intValue() != i) {
            String valueOf = String.valueOf(zzcE(i));
            String valueOf2 = String.valueOf(zzcE(this.zzaBU.intValue()));
            StringBuilder stringBuilder = new StringBuilder((51 + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
            stringBuilder.append("Cannot use sign-in mode: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(". Mode was already set to ");
            stringBuilder.append(valueOf2);
            throw new IllegalStateException(stringBuilder.toString());
        }
        if (this.zzaBK == null) {
            Object obj = null;
            Object obj2 = null;
            for (zze zze : this.zzaBQ.values()) {
                if (zze.zzrd()) {
                    obj = 1;
                }
                if (zze.zzrr()) {
                    obj2 = 1;
                }
            }
            switch (this.zzaBU.intValue()) {
                case 1:
                    if (obj == null) {
                        throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                    } else if (obj2 != null) {
                        throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                    }
                    break;
                case 2:
                    if (obj != null) {
                        if (this.zzazr) {
                            this.zzaBK = new zzaak(this.mContext, this.zzaAG, this.zzrs, this.zzazn, this.zzaBQ, this.zzaAL, this.zzaAO, this.zzazo, this.zzaBT, this, true);
                            return;
                        } else {
                            this.zzaBK = zzaai.zza(this.mContext, this, this.zzaAG, this.zzrs, this.zzazn, this.zzaBQ, this.zzaAL, this.zzaAO, this.zzazo, this.zzaBT);
                            return;
                        }
                    }
                    break;
                case 3:
                    break;
                default:
                    break;
            }
            if (this.zzazr && obj2 == null) {
                this.zzaBK = new zzaak(this.mContext, this.zzaAG, this.zzrs, this.zzazn, this.zzaBQ, this.zzaAL, this.zzaAO, this.zzazo, this.zzaBT, this, false);
            } else {
                this.zzaBK = new zzaav(this.mContext, this, this.zzaAG, this.zzrs, this.zzazn, this.zzaBQ, this.zzaAL, this.zzaAO, this.zzazo, this.zzaBT, this);
            }
        }
    }

    static String zzcE(int i) {
        switch (i) {
            case 1:
                return "SIGN_IN_MODE_REQUIRED";
            case 2:
                return "SIGN_IN_MODE_OPTIONAL";
            case 3:
                return "SIGN_IN_MODE_NONE";
            default:
                return "UNKNOWN";
        }
    }

    private void zzwm() {
        this.zzaBJ.zzxY();
        this.zzaBK.connect();
    }

    private void zzwn() {
        this.zzaAG.lock();
        try {
            if (zzwp()) {
                zzwm();
            }
            this.zzaAG.unlock();
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public final ConnectionResult blockingConnect() {
        boolean z = true;
        zzac.zza(Looper.myLooper() != Looper.getMainLooper(), (Object) "blockingConnect must not be called on the UI thread");
        this.zzaAG.lock();
        try {
            if (this.zzazl >= 0) {
                if (this.zzaBU == null) {
                    z = false;
                }
                zzac.zza(z, (Object) "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.zzaBU == null) {
                this.zzaBU = Integer.valueOf(zza(this.zzaBQ.values(), false));
            } else if (this.zzaBU.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzcD(this.zzaBU.intValue());
            this.zzaBJ.zzxY();
            ConnectionResult blockingConnect = this.zzaBK.blockingConnect();
            return blockingConnect;
        } finally {
            this.zzaAG.unlock();
        }
    }

    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        zzac.zza(Looper.myLooper() != Looper.getMainLooper(), (Object) "blockingConnect must not be called on the UI thread");
        zzac.zzb((Object) timeUnit, (Object) "TimeUnit must not be null");
        this.zzaAG.lock();
        try {
            if (this.zzaBU == null) {
                this.zzaBU = Integer.valueOf(zza(this.zzaBQ.values(), false));
            } else if (this.zzaBU.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzcD(this.zzaBU.intValue());
            this.zzaBJ.zzxY();
            ConnectionResult blockingConnect = this.zzaBK.blockingConnect(j, timeUnit);
            return blockingConnect;
        } finally {
            this.zzaAG.unlock();
        }
    }

    public final PendingResult<Status> clearDefaultAccountAndReconnect() {
        zzac.zza(isConnected(), (Object) "GoogleApiClient is not connected yet.");
        zzac.zza(this.zzaBU.intValue() != 2, (Object) "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        final PendingResult<Status> zzabt = new zzabt((GoogleApiClient) this);
        if (this.zzaBQ.containsKey(zzacf.zzaid)) {
            zza(this, zzabt, false);
            return zzabt;
        }
        final AtomicReference atomicReference = new AtomicReference();
        GoogleApiClient build = new Builder(this.mContext).addApi(zzacf.API).addConnectionCallbacks(new ConnectionCallbacks(this) {
            final /* synthetic */ zzaat zzaBY;

            public void onConnected(Bundle bundle) {
                this.zzaBY.zza((GoogleApiClient) atomicReference.get(), zzabt, true);
            }

            public void onConnectionSuspended(int i) {
            }
        }).addOnConnectionFailedListener(new OnConnectionFailedListener(this) {
            public void onConnectionFailed(ConnectionResult connectionResult) {
                zzabt.zzb(new Status(8));
            }
        }).setHandler(this.zzaBO).build();
        atomicReference.set(build);
        build.connect();
        return zzabt;
    }

    public final void connect() {
        this.zzaAG.lock();
        try {
            boolean z = false;
            if (this.zzazl >= 0) {
                if (this.zzaBU != null) {
                    z = true;
                }
                zzac.zza(z, (Object) "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.zzaBU == null) {
                this.zzaBU = Integer.valueOf(zza(this.zzaBQ.values(), false));
            } else if (this.zzaBU.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            connect(this.zzaBU.intValue());
        } finally {
            this.zzaAG.unlock();
        }
    }

    public final void connect(int i) {
        this.zzaAG.lock();
        boolean z = true;
        if (!(i == 3 || i == 1)) {
            if (i != 2) {
                z = false;
            }
        }
        try {
            StringBuilder stringBuilder = new StringBuilder(33);
            stringBuilder.append("Illegal sign-in mode: ");
            stringBuilder.append(i);
            zzac.zzb(z, stringBuilder.toString());
            zzcD(i);
            zzwm();
        } finally {
            this.zzaAG.unlock();
        }
    }

    public final void disconnect() {
        this.zzaAG.lock();
        try {
            this.zzaBW.release();
            if (this.zzaBK != null) {
                this.zzaBK.disconnect();
            }
            this.zzaBS.release();
            for (com.google.android.gms.internal.zzaad.zza zza : this.zzaAU) {
                zza.zza(null);
                zza.cancel();
            }
            this.zzaAU.clear();
            if (this.zzaBK != null) {
                zzwp();
                this.zzaBJ.zzxX();
            }
            this.zzaAG.unlock();
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("mContext=").println(this.mContext);
        printWriter.append(str).append("mResuming=").print(this.zzaBL);
        printWriter.append(" mWorkQueue.size()=").print(this.zzaAU.size());
        this.zzaBW.dump(printWriter);
        if (this.zzaBK != null) {
            this.zzaBK.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final ConnectionResult getConnectionResult(Api<?> api) {
        this.zzaAG.lock();
        try {
            if (!isConnected() && !isResuming()) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            } else if (this.zzaBQ.containsKey(api.zzvg())) {
                ConnectionResult connectionResult = this.zzaBK.getConnectionResult(api);
                if (connectionResult == null) {
                    ConnectionResult connectionResult2;
                    if (isResuming()) {
                        connectionResult2 = ConnectionResult.zzayj;
                    } else {
                        Log.w("GoogleApiClientImpl", zzwr());
                        Log.wtf("GoogleApiClientImpl", String.valueOf(api.getName()).concat(" requested in getConnectionResult is not connected but is not present in the failed  connections map"), new Exception());
                        connectionResult2 = new ConnectionResult(8, null);
                    }
                    this.zzaAG.unlock();
                    return connectionResult2;
                }
                this.zzaAG.unlock();
                return connectionResult;
            } else {
                throw new IllegalArgumentException(String.valueOf(api.getName()).concat(" was never registered with GoogleApiClient"));
            }
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Looper getLooper() {
        return this.zzrs;
    }

    public final int getSessionId() {
        return System.identityHashCode(this);
    }

    public final boolean hasConnectedApi(Api<?> api) {
        if (!isConnected()) {
            return false;
        }
        zze zze = (zze) this.zzaBQ.get(api.zzvg());
        return zze != null && zze.isConnected();
    }

    public final boolean isConnected() {
        return this.zzaBK != null && this.zzaBK.isConnected();
    }

    public final boolean isConnecting() {
        return this.zzaBK != null && this.zzaBK.isConnecting();
    }

    public final boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks) {
        return this.zzaBJ.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    public final boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener) {
        return this.zzaBJ.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    final boolean isResuming() {
        return this.zzaBL;
    }

    public final void reconnect() {
        disconnect();
        connect();
    }

    public final void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.zzaBJ.registerConnectionCallbacks(connectionCallbacks);
    }

    public final void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.zzaBJ.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public final void stopAutoManage(FragmentActivity fragmentActivity) {
        zzb(new zzabd(fragmentActivity));
    }

    public final void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.zzaBJ.unregisterConnectionCallbacks(connectionCallbacks);
    }

    public final void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.zzaBJ.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    public final <C extends zze> C zza(zzc<C> zzc) {
        Object obj = (zze) this.zzaBQ.get(zzc);
        zzac.zzb(obj, (Object) "Appropriate Api was not requested.");
        return obj;
    }

    public final <A extends com.google.android.gms.common.api.Api.zzb, R extends Result, T extends com.google.android.gms.internal.zzaad.zza<R, A>> T zza(T t) {
        zzac.zzb(t.zzvg() != null, (Object) "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean containsKey = this.zzaBQ.containsKey(t.zzvg());
        String name = t.getApi() != null ? t.getApi().getName() : "the API";
        StringBuilder stringBuilder = new StringBuilder(65 + String.valueOf(name).length());
        stringBuilder.append("GoogleApiClient is not configured to use ");
        stringBuilder.append(name);
        stringBuilder.append(" required for this call.");
        zzac.zzb(containsKey, stringBuilder.toString());
        this.zzaAG.lock();
        try {
            if (this.zzaBK == null) {
                this.zzaAU.add(t);
            } else {
                t = this.zzaBK.zza((com.google.android.gms.internal.zzaad.zza) t);
            }
            this.zzaAG.unlock();
            return t;
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public final void zza(zzabx zzabx) {
        this.zzaAG.lock();
        try {
            if (this.zzaBV == null) {
                this.zzaBV = new HashSet();
            }
            this.zzaBV.add(zzabx);
        } finally {
            this.zzaAG.unlock();
        }
    }

    public final boolean zza(Api<?> api) {
        return this.zzaBQ.containsKey(api.zzvg());
    }

    public final boolean zza(zzabq zzabq) {
        return this.zzaBK != null && this.zzaBK.zza(zzabq);
    }

    public final <A extends com.google.android.gms.common.api.Api.zzb, T extends com.google.android.gms.internal.zzaad.zza<? extends Result, A>> T zzb(T t) {
        zzac.zzb(t.zzvg() != null, (Object) "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.zzaBQ.containsKey(t.zzvg());
        String name = t.getApi() != null ? t.getApi().getName() : "the API";
        StringBuilder stringBuilder = new StringBuilder(65 + String.valueOf(name).length());
        stringBuilder.append("GoogleApiClient is not configured to use ");
        stringBuilder.append(name);
        stringBuilder.append(" required for this call.");
        zzac.zzb(containsKey, stringBuilder.toString());
        this.zzaAG.lock();
        try {
            if (this.zzaBK == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (isResuming()) {
                this.zzaAU.add(t);
                while (!this.zzaAU.isEmpty()) {
                    com.google.android.gms.internal.zzaad.zza zza = (com.google.android.gms.internal.zzaad.zza) this.zzaAU.remove();
                    this.zzaBW.zzb(zza);
                    zza.zzB(Status.zzazz);
                }
            } else {
                t = this.zzaBK.zzb(t);
            }
            this.zzaAG.unlock();
            return t;
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    public final void zzb(zzabx zzabx) {
        this.zzaAG.lock();
        try {
            String str;
            String str2;
            Throwable exception;
            if (this.zzaBV == null) {
                str = "GoogleApiClientImpl";
                str2 = "Attempted to remove pending transform when no transforms are registered.";
                exception = new Exception();
            } else if (this.zzaBV.remove(zzabx)) {
                if (!zzwq()) {
                    this.zzaBK.zzvM();
                }
                this.zzaAG.unlock();
            } else {
                str = "GoogleApiClientImpl";
                str2 = "Failed to remove pending transform - this may lead to memory leaks!";
                exception = new Exception();
            }
            Log.wtf(str, str2, exception);
            this.zzaAG.unlock();
        } catch (Throwable th) {
            this.zzaAG.unlock();
        }
    }

    final <C extends zze> C zzc(zzc<?> zzc) {
        Object obj = (zze) this.zzaBQ.get(zzc);
        zzac.zzb(obj, (Object) "Appropriate Api was not requested.");
        return obj;
    }

    public final void zzc(int i, boolean z) {
        if (i == 1 && !z) {
            zzwo();
        }
        this.zzaBW.zzxd();
        this.zzaBJ.zzcV(i);
        this.zzaBJ.zzxX();
        if (i == 2) {
            zzwm();
        }
    }

    public final void zzc(ConnectionResult connectionResult) {
        if (!this.zzazn.zzd(this.mContext, connectionResult.getErrorCode())) {
            zzwp();
        }
        if (!isResuming()) {
            this.zzaBJ.zzn(connectionResult);
            this.zzaBJ.zzxX();
        }
    }

    public final void zzo(Bundle bundle) {
        while (!this.zzaAU.isEmpty()) {
            zzb((com.google.android.gms.internal.zzaad.zza) this.zzaAU.remove());
        }
        this.zzaBJ.zzq(bundle);
    }

    public final <L> zzabh<L> zzr(L l) {
        this.zzaAG.lock();
        try {
            zzabh<L> zzb = this.zzaBS.zzb(l, this.zzrs);
            return zzb;
        } finally {
            this.zzaAG.unlock();
        }
    }

    public final void zzvn() {
        if (this.zzaBK != null) {
            this.zzaBK.zzvn();
        }
    }

    final void zzwo() {
        if (!isResuming()) {
            this.zzaBL = true;
            if (this.zzaBP == null) {
                this.zzaBP = this.zzazn.zza(this.mContext.getApplicationContext(), new zzb(this));
            }
            this.zzaBO.sendMessageDelayed(this.zzaBO.obtainMessage(1), this.zzaBM);
            this.zzaBO.sendMessageDelayed(this.zzaBO.obtainMessage(2), this.zzaBN);
        }
    }

    final boolean zzwp() {
        if (!isResuming()) {
            return false;
        }
        this.zzaBL = false;
        this.zzaBO.removeMessages(2);
        this.zzaBO.removeMessages(1);
        if (this.zzaBP != null) {
            this.zzaBP.unregister();
            this.zzaBP = null;
        }
        return true;
    }

    final boolean zzwq() {
        this.zzaAG.lock();
        try {
            if (this.zzaBV == null) {
                return false;
            }
            boolean isEmpty = this.zzaBV.isEmpty() ^ 1;
            this.zzaAG.unlock();
            return isEmpty;
        } finally {
            this.zzaAG.unlock();
        }
    }

    final String zzwr() {
        Writer stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }
}
