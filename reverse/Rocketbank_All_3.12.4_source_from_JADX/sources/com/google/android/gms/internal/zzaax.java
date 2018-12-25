package com.google.android.gms.internal;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zzc;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzal;
import com.google.android.gms.common.internal.zzf.zzf;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.internal.zzzx.zzd;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class zzaax implements Callback {
    public static final Status zzaCn = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status zzaCo = new Status(4, "The user must be signed in to make this API call.");
    private static zzaax zzaCq;
    private static final Object zztX = new Object();
    private final Context mContext;
    private final Handler mHandler;
    private final Map<zzzz<?>, zza<?>> zzaAM = new ConcurrentHashMap(5, 0.75f, 1);
    private long zzaBM = 120000;
    private long zzaBN = 5000;
    private long zzaCp = 10000;
    private int zzaCr = -1;
    private final AtomicInteger zzaCs = new AtomicInteger(1);
    private final AtomicInteger zzaCt = new AtomicInteger(0);
    private zzaam zzaCu = null;
    private final Set<zzzz<?>> zzaCv = new com.google.android.gms.common.util.zza();
    private final Set<zzzz<?>> zzaCw = new com.google.android.gms.common.util.zza();
    private final GoogleApiAvailability zzazn;

    /* renamed from: com.google.android.gms.internal.zzaax$1 */
    class C11931 implements com.google.android.gms.internal.zzaac.zza {
        final /* synthetic */ zzaax zzaCx;

        C11931(zzaax zzaax) {
            this.zzaCx = zzaax;
        }

        public void zzas(boolean z) {
            this.zzaCx.mHandler.sendMessage(this.zzaCx.mHandler.obtainMessage(1, Boolean.valueOf(z)));
        }
    }

    private class zzb implements zzf, com.google.android.gms.internal.zzabr.zza {
        private final zze zzaAJ;
        private zzr zzaBw = null;
        private boolean zzaCI = false;
        final /* synthetic */ zzaax zzaCx;
        private Set<Scope> zzakq = null;
        private final zzzz<?> zzayU;

        public zzb(zzaax zzaax, zze zze, zzzz<?> zzzz) {
            this.zzaCx = zzaax;
            this.zzaAJ = zze;
            this.zzayU = zzzz;
        }

        private void zzwP() {
            if (this.zzaCI && this.zzaBw != null) {
                this.zzaAJ.zza(this.zzaBw, this.zzakq);
            }
        }

        public void zzb(zzr zzr, Set<Scope> set) {
            if (zzr != null) {
                if (set != null) {
                    this.zzaBw = zzr;
                    this.zzakq = set;
                    zzwP();
                    return;
                }
            }
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            zzi(new ConnectionResult(4));
        }

        public void zzg(final ConnectionResult connectionResult) {
            this.zzaCx.mHandler.post(new Runnable(this) {
                final /* synthetic */ zzb zzaCJ;

                public void run() {
                    if (connectionResult.isSuccess()) {
                        this.zzaCJ.zzaCI = true;
                        if (this.zzaCJ.zzaAJ.zzrd()) {
                            this.zzaCJ.zzwP();
                            return;
                        } else {
                            this.zzaCJ.zzaAJ.zza(null, Collections.emptySet());
                            return;
                        }
                    }
                    ((zza) this.zzaCJ.zzaCx.zzaAM.get(this.zzaCJ.zzayU)).onConnectionFailed(connectionResult);
                }
            });
        }

        public void zzi(ConnectionResult connectionResult) {
            ((zza) this.zzaCx.zzaAM.get(this.zzayU)).zzi(connectionResult);
        }
    }

    public class zza<O extends ApiOptions> implements ConnectionCallbacks, OnConnectionFailedListener, zzaah {
        private final zze zzaAJ;
        private boolean zzaBL;
        private final zzaal zzaCA;
        private final Set<zzaab> zzaCB = new HashSet();
        private final Map<com.google.android.gms.internal.zzabh.zzb<?>, zzabn> zzaCC = new HashMap();
        private final int zzaCD;
        private final zzabr zzaCE;
        private ConnectionResult zzaCF = null;
        final /* synthetic */ zzaax zzaCx;
        private final Queue<zzzx> zzaCy = new LinkedList();
        private final com.google.android.gms.common.api.Api.zzb zzaCz;
        private final zzzz<O> zzayU;

        /* renamed from: com.google.android.gms.internal.zzaax$zza$1 */
        class C05591 implements Runnable {
            final /* synthetic */ zza zzaCG;

            C05591(zza zza) {
                this.zzaCG = zza;
            }

            public void run() {
                this.zzaCG.zzwF();
            }
        }

        /* renamed from: com.google.android.gms.internal.zzaax$zza$2 */
        class C05602 implements Runnable {
            final /* synthetic */ zza zzaCG;

            C05602(zza zza) {
                this.zzaCG = zza;
            }

            public void run() {
                this.zzaCG.zzwG();
            }
        }

        public zza(zzaax zzaax, zzc<O> zzc) {
            this.zzaCx = zzaax;
            this.zzaAJ = zzc.buildApiClient(zzaax.mHandler.getLooper(), this);
            this.zzaCz = this.zzaAJ instanceof zzal ? ((zzal) this.zzaAJ).zzyn() : this.zzaAJ;
            this.zzayU = zzc.getApiKey();
            this.zzaCA = new zzaal();
            this.zzaCD = zzc.getInstanceId();
            if (this.zzaAJ.zzrd()) {
                this.zzaCE = zzc.createSignInCoordinator(zzaax.mContext, zzaax.mHandler);
            } else {
                this.zzaCE = null;
            }
        }

        private void zzb(com.google.android.gms.internal.zzzx r3) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
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
            r0 = r2.zzaCA;
            r1 = r2.zzrd();
            r3.zza(r0, r1);
            r3.zza(r2);	 Catch:{ DeadObjectException -> 0x000d }
            return;
        L_0x000d:
            r3 = 1;
            r2.onConnectionSuspended(r3);
            r3 = r2.zzaAJ;
            r3.disconnect();
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaax.zza.zzb(com.google.android.gms.internal.zzzx):void");
        }

        private void zzj(ConnectionResult connectionResult) {
            for (zzaab zza : this.zzaCB) {
                zza.zza(this.zzayU, connectionResult);
            }
            this.zzaCB.clear();
        }

        private void zzwF() {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
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
            r2.zzwJ();
            r0 = com.google.android.gms.common.ConnectionResult.zzayj;
            r2.zzj(r0);
            r2.zzwL();
            r0 = r2.zzaCC;
            r0 = r0.values();
            r0 = r0.iterator();
        L_0x0015:
            r1 = r0.hasNext();
            if (r1 == 0) goto L_0x002d;
        L_0x001b:
            r0.next();
            r1 = new com.google.android.gms.tasks.TaskCompletionSource;	 Catch:{ DeadObjectException -> 0x0024, RemoteException -> 0x0015 }
            r1.<init>();	 Catch:{ DeadObjectException -> 0x0024, RemoteException -> 0x0015 }
            goto L_0x0015;
        L_0x0024:
            r0 = 1;
            r2.onConnectionSuspended(r0);
            r0 = r2.zzaAJ;
            r0.disconnect();
        L_0x002d:
            r2.zzwH();
            r2.zzwM();
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaax.zza.zzwF():void");
        }

        private void zzwG() {
            zzwJ();
            this.zzaBL = true;
            this.zzaCA.zzwa();
            this.zzaCx.mHandler.sendMessageDelayed(Message.obtain(this.zzaCx.mHandler, 9, this.zzayU), this.zzaCx.zzaBN);
            this.zzaCx.mHandler.sendMessageDelayed(Message.obtain(this.zzaCx.mHandler, 11, this.zzayU), this.zzaCx.zzaBM);
            this.zzaCx.zzaCr = -1;
        }

        private void zzwH() {
            while (this.zzaAJ.isConnected() && !this.zzaCy.isEmpty()) {
                zzb((zzzx) this.zzaCy.remove());
            }
        }

        private void zzwL() {
            if (this.zzaBL) {
                this.zzaCx.mHandler.removeMessages(11, this.zzayU);
                this.zzaCx.mHandler.removeMessages(9, this.zzayU);
                this.zzaBL = false;
            }
        }

        private void zzwM() {
            this.zzaCx.mHandler.removeMessages(12, this.zzayU);
            this.zzaCx.mHandler.sendMessageDelayed(this.zzaCx.mHandler.obtainMessage(12, this.zzayU), this.zzaCx.zzaCp);
        }

        public void connect() {
            zzac.zza(this.zzaCx.mHandler);
            if (!this.zzaAJ.isConnected() && !this.zzaAJ.isConnecting()) {
                if (this.zzaAJ.zzvh() && this.zzaCx.zzaCr != 0) {
                    this.zzaCx.zzaCr = this.zzaCx.zzazn.isGooglePlayServicesAvailable(this.zzaCx.mContext);
                    if (this.zzaCx.zzaCr != 0) {
                        onConnectionFailed(new ConnectionResult(this.zzaCx.zzaCr, null));
                        return;
                    }
                }
                Object zzb = new zzb(this.zzaCx, this.zzaAJ, this.zzayU);
                if (this.zzaAJ.zzrd()) {
                    this.zzaCE.zza(zzb);
                }
                this.zzaAJ.zza(zzb);
            }
        }

        public int getInstanceId() {
            return this.zzaCD;
        }

        boolean isConnected() {
            return this.zzaAJ.isConnected();
        }

        public void onConnected(Bundle bundle) {
            if (Looper.myLooper() == this.zzaCx.mHandler.getLooper()) {
                zzwF();
            } else {
                this.zzaCx.mHandler.post(new C05591(this));
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onConnectionFailed(com.google.android.gms.common.ConnectionResult r5) {
            /*
            r4 = this;
            r0 = r4.zzaCx;
            r0 = r0.mHandler;
            com.google.android.gms.common.internal.zzac.zza(r0);
            r0 = r4.zzaCE;
            if (r0 == 0) goto L_0x0012;
        L_0x000d:
            r0 = r4.zzaCE;
            r0.zzwY();
        L_0x0012:
            r4.zzwJ();
            r0 = r4.zzaCx;
            r1 = -1;
            r0.zzaCr = r1;
            r4.zzj(r5);
            r0 = r5.getErrorCode();
            r1 = 4;
            if (r0 != r1) goto L_0x002d;
        L_0x0025:
            r5 = com.google.android.gms.internal.zzaax.zzaCo;
            r4.zzD(r5);
            return;
        L_0x002d:
            r0 = r4.zzaCy;
            r0 = r0.isEmpty();
            if (r0 == 0) goto L_0x0038;
        L_0x0035:
            r4.zzaCF = r5;
            return;
        L_0x0038:
            r0 = com.google.android.gms.internal.zzaax.zztX;
            monitor-enter(r0);
            r1 = r4.zzaCx;	 Catch:{ all -> 0x00ce }
            r1 = r1.zzaCu;	 Catch:{ all -> 0x00ce }
            if (r1 == 0) goto L_0x0060;
        L_0x0045:
            r1 = r4.zzaCx;	 Catch:{ all -> 0x00ce }
            r1 = r1.zzaCv;	 Catch:{ all -> 0x00ce }
            r2 = r4.zzayU;	 Catch:{ all -> 0x00ce }
            r1 = r1.contains(r2);	 Catch:{ all -> 0x00ce }
            if (r1 == 0) goto L_0x0060;
        L_0x0053:
            r1 = r4.zzaCx;	 Catch:{ all -> 0x00ce }
            r1 = r1.zzaCu;	 Catch:{ all -> 0x00ce }
            r2 = r4.zzaCD;	 Catch:{ all -> 0x00ce }
            r1.zzb(r5, r2);	 Catch:{ all -> 0x00ce }
            monitor-exit(r0);	 Catch:{ all -> 0x00ce }
            return;
        L_0x0060:
            monitor-exit(r0);	 Catch:{ all -> 0x00ce }
            r0 = r4.zzaCx;
            r1 = r4.zzaCD;
            r0 = r0.zzc(r5, r1);
            if (r0 != 0) goto L_0x00cd;
        L_0x006b:
            r5 = r5.getErrorCode();
            r0 = 18;
            if (r5 != r0) goto L_0x0076;
        L_0x0073:
            r5 = 1;
            r4.zzaBL = r5;
        L_0x0076:
            r5 = r4.zzaBL;
            if (r5 == 0) goto L_0x0098;
        L_0x007a:
            r5 = r4.zzaCx;
            r5 = r5.mHandler;
            r0 = r4.zzaCx;
            r0 = r0.mHandler;
            r1 = 9;
            r2 = r4.zzayU;
            r0 = android.os.Message.obtain(r0, r1, r2);
            r1 = r4.zzaCx;
            r1 = r1.zzaBN;
            r5.sendMessageDelayed(r0, r1);
            return;
        L_0x0098:
            r5 = new com.google.android.gms.common.api.Status;
            r0 = 17;
            r1 = r4.zzayU;
            r1 = r1.zzvw();
            r1 = java.lang.String.valueOf(r1);
            r2 = 38;
            r3 = java.lang.String.valueOf(r1);
            r3 = r3.length();
            r2 = r2 + r3;
            r3 = new java.lang.StringBuilder;
            r3.<init>(r2);
            r2 = "API: ";
            r3.append(r2);
            r3.append(r1);
            r1 = " is not available on this device.";
            r3.append(r1);
            r1 = r3.toString();
            r5.<init>(r0, r1);
            r4.zzD(r5);
        L_0x00cd:
            return;
        L_0x00ce:
            r5 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x00ce }
            throw r5;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaax.zza.onConnectionFailed(com.google.android.gms.common.ConnectionResult):void");
        }

        public void onConnectionSuspended(int i) {
            if (Looper.myLooper() == this.zzaCx.mHandler.getLooper()) {
                zzwG();
            } else {
                this.zzaCx.mHandler.post(new C05602(this));
            }
        }

        public void resume() {
            zzac.zza(this.zzaCx.mHandler);
            if (this.zzaBL) {
                connect();
            }
        }

        public void signOut() {
            zzac.zza(this.zzaCx.mHandler);
            zzD(zzaax.zzaCn);
            this.zzaCA.zzvZ();
            for (com.google.android.gms.internal.zzabh.zzb zze : this.zzaCC.keySet()) {
                zza(new zzzx.zze(zze, new TaskCompletionSource()));
            }
            zzj(new ConnectionResult(4));
            this.zzaAJ.disconnect();
        }

        public void zzD(Status status) {
            zzac.zza(this.zzaCx.mHandler);
            for (zzzx zzz : this.zzaCy) {
                zzz.zzz(status);
            }
            this.zzaCy.clear();
        }

        public void zza(final ConnectionResult connectionResult, Api<?> api, boolean z) {
            if (Looper.myLooper() == this.zzaCx.mHandler.getLooper()) {
                onConnectionFailed(connectionResult);
            } else {
                this.zzaCx.mHandler.post(new Runnable(this) {
                    final /* synthetic */ zza zzaCG;

                    public void run() {
                        this.zzaCG.onConnectionFailed(connectionResult);
                    }
                });
            }
        }

        public void zza(zzzx zzzx) {
            zzac.zza(this.zzaCx.mHandler);
            if (this.zzaAJ.isConnected()) {
                zzb(zzzx);
                zzwM();
                return;
            }
            this.zzaCy.add(zzzx);
            if (this.zzaCF == null || !this.zzaCF.hasResolution()) {
                connect();
            } else {
                onConnectionFailed(this.zzaCF);
            }
        }

        public void zzb(zzaab zzaab) {
            zzac.zza(this.zzaCx.mHandler);
            this.zzaCB.add(zzaab);
        }

        public void zzi(ConnectionResult connectionResult) {
            zzac.zza(this.zzaCx.mHandler);
            this.zzaAJ.disconnect();
            onConnectionFailed(connectionResult);
        }

        public boolean zzrd() {
            return this.zzaAJ.zzrd();
        }

        public zze zzvU() {
            return this.zzaAJ;
        }

        public Map<com.google.android.gms.internal.zzabh.zzb<?>, zzabn> zzwI() {
            return this.zzaCC;
        }

        public void zzwJ() {
            zzac.zza(this.zzaCx.mHandler);
            this.zzaCF = null;
        }

        public ConnectionResult zzwK() {
            zzac.zza(this.zzaCx.mHandler);
            return this.zzaCF;
        }

        public void zzwN() {
            zzac.zza(this.zzaCx.mHandler);
            if (this.zzaAJ.isConnected() && this.zzaCC.size() == 0) {
                if (this.zzaCA.zzvY()) {
                    zzwM();
                    return;
                }
                this.zzaAJ.disconnect();
            }
        }

        zzbai zzwO() {
            return this.zzaCE == null ? null : this.zzaCE.zzwO();
        }

        public void zzwn() {
            zzac.zza(this.zzaCx.mHandler);
            if (this.zzaBL) {
                zzwL();
                zzD(this.zzaCx.zzazn.isGooglePlayServicesAvailable(this.zzaCx.mContext) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.zzaAJ.disconnect();
            }
        }
    }

    private zzaax(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.mContext = context;
        this.mHandler = new Handler(looper, this);
        this.zzazn = googleApiAvailability;
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6));
    }

    private void zza(int i, ConnectionResult connectionResult) {
        for (zza zza : this.zzaAM.values()) {
            if (zza.getInstanceId() == i) {
                break;
            }
        }
        zza zza2 = null;
        if (zza2 != null) {
            String valueOf = String.valueOf(this.zzazn.getErrorString(connectionResult.getErrorCode()));
            String valueOf2 = String.valueOf(connectionResult.getErrorMessage());
            StringBuilder stringBuilder = new StringBuilder((69 + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
            stringBuilder.append("Error resolution was canceled by the user, original error message: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(": ");
            stringBuilder.append(valueOf2);
            zza2.zzD(new Status(17, stringBuilder.toString()));
            return;
        }
        StringBuilder stringBuilder2 = new StringBuilder(76);
        stringBuilder2.append("Could not find API instance ");
        stringBuilder2.append(i);
        stringBuilder2.append(" while trying to fail enqueued calls.");
        Log.wtf("GoogleApiManager", stringBuilder2.toString(), new Exception());
    }

    private void zza(zzaab zzaab) {
        for (zzzz zzzz : zzaab.zzvz()) {
            zza zza = (zza) this.zzaAM.get(zzzz);
            if (zza == null) {
                zzaab.zza(zzzz, new ConnectionResult(13));
                return;
            }
            ConnectionResult connectionResult;
            if (zza.isConnected()) {
                connectionResult = ConnectionResult.zzayj;
            } else if (zza.zzwK() != null) {
                connectionResult = zza.zzwK();
            } else {
                zza.zzb(zzaab);
            }
            zzaab.zza(zzzz, connectionResult);
        }
    }

    private void zza(zzabl zzabl) {
        zza zza = (zza) this.zzaAM.get(zzabl.zzaDe.getApiKey());
        if (zza == null) {
            zzc(zzabl.zzaDe);
            zza = (zza) this.zzaAM.get(zzabl.zzaDe.getApiKey());
        }
        if (!zza.zzrd() || this.zzaCt.get() == zzabl.zzaDd) {
            zza.zza(zzabl.zzaDc);
            return;
        }
        zzabl.zzaDc.zzz(zzaCn);
        zza.signOut();
    }

    public static zzaax zzaP(Context context) {
        zzaax zzaax;
        synchronized (zztX) {
            if (zzaCq == null) {
                zzaCq = new zzaax(context.getApplicationContext(), zzwy(), GoogleApiAvailability.getInstance());
            }
            zzaax = zzaCq;
        }
        return zzaax;
    }

    private void zzau(boolean z) {
        this.zzaCp = z ? 10000 : 300000;
        this.mHandler.removeMessages(12);
        for (zzzz obtainMessage : this.zzaAM.keySet()) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(12, obtainMessage), this.zzaCp);
        }
    }

    private void zzc(zzc<?> zzc) {
        zzzz apiKey = zzc.getApiKey();
        zza zza = (zza) this.zzaAM.get(apiKey);
        if (zza == null) {
            zza = new zza(this, zzc);
            this.zzaAM.put(apiKey, zza);
        }
        if (zza.zzrd()) {
            this.zzaCw.add(apiKey);
        }
        zza.connect();
    }

    private void zzwA() {
        zzt.zzzg();
        if (this.mContext.getApplicationContext() instanceof Application) {
            zzaac.zza((Application) this.mContext.getApplicationContext());
            zzaac.zzvB().zza(new C11931(this));
            if (!zzaac.zzvB().zzar(true)) {
                this.zzaCp = 300000;
            }
        }
    }

    private void zzwB() {
        for (zza zza : this.zzaAM.values()) {
            zza.zzwJ();
            zza.connect();
        }
    }

    private void zzwC() {
        for (zzzz remove : this.zzaCw) {
            ((zza) this.zzaAM.remove(remove)).signOut();
        }
        this.zzaCw.clear();
    }

    public static zzaax zzww() {
        zzaax zzaax;
        synchronized (zztX) {
            zzac.zzb(zzaCq, (Object) "Must guarantee manager is non-null before using getInstance");
            zzaax = zzaCq;
        }
        return zzaax;
    }

    public static void zzwx() {
        synchronized (zztX) {
            if (zzaCq != null) {
                zzaCq.signOut();
            }
        }
    }

    private static Looper zzwy() {
        HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
        handlerThread.start();
        return handlerThread.getLooper();
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                zzau(((Boolean) message.obj).booleanValue());
                break;
            case 2:
                zza((zzaab) message.obj);
                break;
            case 3:
                zzwB();
                break;
            case 4:
            case 8:
            case 13:
                zza((zzabl) message.obj);
                break;
            case 5:
                zza(message.arg1, (ConnectionResult) message.obj);
                break;
            case 6:
                zzwA();
                break;
            case 7:
                zzc((zzc) message.obj);
                break;
            case 9:
                if (this.zzaAM.containsKey(message.obj)) {
                    ((zza) this.zzaAM.get(message.obj)).resume();
                    break;
                }
                break;
            case 10:
                zzwC();
                break;
            case 11:
                if (this.zzaAM.containsKey(message.obj)) {
                    ((zza) this.zzaAM.get(message.obj)).zzwn();
                    break;
                }
                break;
            case 12:
                if (this.zzaAM.containsKey(message.obj)) {
                    ((zza) this.zzaAM.get(message.obj)).zzwN();
                    break;
                }
                break;
            default:
                int i = message.what;
                StringBuilder stringBuilder = new StringBuilder(31);
                stringBuilder.append("Unknown message id: ");
                stringBuilder.append(i);
                Log.w("GoogleApiManager", stringBuilder.toString());
                return false;
        }
        return true;
    }

    public void signOut() {
        this.zzaCt.incrementAndGet();
        this.mHandler.sendMessageAtFrontOfQueue(this.mHandler.obtainMessage(10));
    }

    PendingIntent zza(zzzz<?> zzzz, int i) {
        if (((zza) this.zzaAM.get(zzzz)) == null) {
            return null;
        }
        zzbai zzwO = ((zza) this.zzaAM.get(zzzz)).zzwO();
        return zzwO == null ? null : PendingIntent.getActivity(this.mContext, i, zzwO.zzrs(), 134217728);
    }

    public <O extends ApiOptions> Task<Void> zza(zzc<O> zzc, com.google.android.gms.internal.zzabh.zzb<?> zzb) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(13, new zzabl(new zzzx.zze(zzb, taskCompletionSource), this.zzaCt.get(), zzc)));
        return taskCompletionSource.getTask();
    }

    public <O extends ApiOptions> Task<Void> zza(zzc<O> zzc, zzabm<com.google.android.gms.common.api.Api.zzb, ?> zzabm, zzabz<com.google.android.gms.common.api.Api.zzb, ?> zzabz) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(8, new zzabl(new zzzx.zzc(new zzabn(zzabm, zzabz), taskCompletionSource), this.zzaCt.get(), zzc)));
        return taskCompletionSource.getTask();
    }

    public Task<Void> zza(Iterable<? extends zzc<?>> iterable) {
        zzaab zzaab = new zzaab(iterable);
        for (zzc apiKey : iterable) {
            zza zza = (zza) this.zzaAM.get(apiKey.getApiKey());
            if (zza != null) {
                if (!zza.isConnected()) {
                }
            }
            this.mHandler.sendMessage(this.mHandler.obtainMessage(2, zzaab));
        }
        zzaab.zzvA();
        return zzaab.getTask();
    }

    public void zza(ConnectionResult connectionResult, int i) {
        if (!zzc(connectionResult, i)) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    public <O extends ApiOptions> void zza(zzc<O> zzc, int i, com.google.android.gms.internal.zzaad.zza<? extends Result, com.google.android.gms.common.api.Api.zzb> zza) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzabl(new com.google.android.gms.internal.zzzx.zzb(i, zza), this.zzaCt.get(), zzc)));
    }

    public <O extends ApiOptions, TResult> void zza(zzc<O> zzc, int i, zzabv<com.google.android.gms.common.api.Api.zzb, TResult> zzabv, TaskCompletionSource<TResult> taskCompletionSource, zzabs zzabs) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzabl(new zzd(i, zzabv, taskCompletionSource, zzabs), this.zzaCt.get(), zzc)));
    }

    public void zza(zzaam zzaam) {
        synchronized (zztX) {
            if (this.zzaCu != zzaam) {
                this.zzaCu = zzaam;
                this.zzaCv.clear();
                this.zzaCv.addAll(zzaam.zzwb());
            }
        }
    }

    public void zzb(zzc<?> zzc) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(7, zzc));
    }

    void zzb(zzaam zzaam) {
        synchronized (zztX) {
            if (this.zzaCu == zzaam) {
                this.zzaCu = null;
                this.zzaCv.clear();
            }
        }
    }

    boolean zzc(ConnectionResult connectionResult, int i) {
        return this.zzazn.zza(this.mContext, connectionResult, i);
    }

    void zzvn() {
        this.zzaCt.incrementAndGet();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(10));
    }

    public void zzvx() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3));
    }

    public int zzwz() {
        return this.zzaCs.getAndIncrement();
    }
}
