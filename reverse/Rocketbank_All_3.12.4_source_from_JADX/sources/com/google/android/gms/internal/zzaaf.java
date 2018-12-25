package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzs;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

public abstract class zzaaf<R extends Result> extends PendingResult<R> {
    static final ThreadLocal<Boolean> zzaAg = new C05551();
    private boolean zzK;
    private final Object zzaAh;
    protected final zza<R> zzaAi;
    protected final WeakReference<GoogleApiClient> zzaAj;
    private final ArrayList<com.google.android.gms.common.api.PendingResult.zza> zzaAk;
    private ResultCallback<? super R> zzaAl;
    private final AtomicReference<zzb> zzaAm;
    private zzb zzaAn;
    private volatile boolean zzaAo;
    private boolean zzaAp;
    private zzs zzaAq;
    private volatile zzabx<R> zzaAr;
    private boolean zzaAs;
    private Status zzair;
    private R zzazt;
    private final CountDownLatch zztj;

    /* renamed from: com.google.android.gms.internal.zzaaf$1 */
    class C05551 extends ThreadLocal<Boolean> {
        C05551() {
        }

        protected final /* synthetic */ Object initialValue() {
            return zzvJ();
        }

        protected final Boolean zzvJ() {
            return Boolean.FALSE;
        }
    }

    public static class zza<R extends Result> extends Handler {
        public zza() {
            this(Looper.getMainLooper());
        }

        public zza(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    zzb((ResultCallback) pair.first, (Result) pair.second);
                    return;
                case 2:
                    ((zzaaf) message.obj).zzC(Status.zzazA);
                    return;
                default:
                    int i = message.what;
                    StringBuilder stringBuilder = new StringBuilder(45);
                    stringBuilder.append("Don't know how to handle message: ");
                    stringBuilder.append(i);
                    Log.wtf("BasePendingResult", stringBuilder.toString(), new Exception());
                    return;
            }
        }

        public void zza(ResultCallback<? super R> resultCallback, R r) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        public void zza(zzaaf<R> zzaaf, long j) {
            sendMessageDelayed(obtainMessage(2, zzaaf), j);
        }

        protected void zzb(ResultCallback<? super R> resultCallback, R r) {
            try {
                resultCallback.onResult(r);
            } catch (RuntimeException e) {
                zzaaf.zzd(r);
                throw e;
            }
        }

        public void zzvK() {
            removeMessages(2);
        }
    }

    private final class zzb {
        final /* synthetic */ zzaaf zzaAt;

        private zzb(zzaaf zzaaf) {
            this.zzaAt = zzaaf;
        }

        protected final void finalize() throws Throwable {
            zzaaf.zzd(this.zzaAt.zzazt);
            super.finalize();
        }
    }

    @Deprecated
    zzaaf() {
        this.zzaAh = new Object();
        this.zztj = new CountDownLatch(1);
        this.zzaAk = new ArrayList();
        this.zzaAm = new AtomicReference();
        this.zzaAs = false;
        this.zzaAi = new zza(Looper.getMainLooper());
        this.zzaAj = new WeakReference(null);
    }

    @Deprecated
    protected zzaaf(Looper looper) {
        this.zzaAh = new Object();
        this.zztj = new CountDownLatch(1);
        this.zzaAk = new ArrayList();
        this.zzaAm = new AtomicReference();
        this.zzaAs = false;
        this.zzaAi = new zza(looper);
        this.zzaAj = new WeakReference(null);
    }

    protected zzaaf(GoogleApiClient googleApiClient) {
        this.zzaAh = new Object();
        this.zztj = new CountDownLatch(1);
        this.zzaAk = new ArrayList();
        this.zzaAm = new AtomicReference();
        this.zzaAs = false;
        this.zzaAi = new zza(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.zzaAj = new WeakReference(googleApiClient);
    }

    private R get() {
        R r;
        synchronized (this.zzaAh) {
            zzac.zza(this.zzaAo ^ true, (Object) "Result has already been consumed.");
            zzac.zza(isReady(), (Object) "Result is not ready.");
            r = this.zzazt;
            this.zzazt = null;
            this.zzaAl = null;
            this.zzaAo = true;
        }
        zzvG();
        return r;
    }

    private void zzc(R r) {
        this.zzazt = r;
        this.zzaAq = null;
        this.zztj.countDown();
        this.zzair = this.zzazt.getStatus();
        if (this.zzK) {
            this.zzaAl = null;
        } else if (this.zzaAl != null) {
            this.zzaAi.zzvK();
            this.zzaAi.zza(this.zzaAl, get());
        } else if (this.zzazt instanceof Releasable) {
            this.zzaAn = new zzb();
        }
        Iterator it = this.zzaAk.iterator();
        while (it.hasNext()) {
            ((com.google.android.gms.common.api.PendingResult.zza) it.next()).zzy(this.zzair);
        }
        this.zzaAk.clear();
    }

    public static void zzd(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (Throwable e) {
                String valueOf = String.valueOf(result);
                StringBuilder stringBuilder = new StringBuilder(18 + String.valueOf(valueOf).length());
                stringBuilder.append("Unable to release ");
                stringBuilder.append(valueOf);
                Log.w("BasePendingResult", stringBuilder.toString(), e);
            }
        }
    }

    private void zzvG() {
        zzb zzb = (zzb) this.zzaAm.getAndSet(null);
        if (zzb != null) {
            zzb.zzc(this);
        }
    }

    public final R await() {
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
        r4 = this;
        r0 = android.os.Looper.myLooper();
        r1 = android.os.Looper.getMainLooper();
        r2 = 0;
        r3 = 1;
        if (r0 == r1) goto L_0x000e;
    L_0x000c:
        r0 = r3;
        goto L_0x000f;
    L_0x000e:
        r0 = r2;
    L_0x000f:
        r1 = "await must not be called on the UI thread";
        com.google.android.gms.common.internal.zzac.zza(r0, r1);
        r0 = r4.zzaAo;
        r0 = r0 ^ r3;
        r1 = "Result has already been consumed";
        com.google.android.gms.common.internal.zzac.zza(r0, r1);
        r0 = r4.zzaAr;
        if (r0 != 0) goto L_0x0021;
    L_0x0020:
        r2 = r3;
    L_0x0021:
        r0 = "Cannot await if then() has been called.";
        com.google.android.gms.common.internal.zzac.zza(r2, r0);
        r0 = r4.zztj;	 Catch:{ InterruptedException -> 0x002c }
        r0.await();	 Catch:{ InterruptedException -> 0x002c }
        goto L_0x0031;
    L_0x002c:
        r0 = com.google.android.gms.common.api.Status.zzazy;
        r4.zzC(r0);
    L_0x0031:
        r0 = r4.isReady();
        r1 = "Result is not ready.";
        com.google.android.gms.common.internal.zzac.zza(r0, r1);
        r0 = r4.get();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaaf.await():R");
    }

    public final R await(long r5, java.util.concurrent.TimeUnit r7) {
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
        r4 = this;
        r0 = 0;
        r2 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1));
        r0 = 0;
        r1 = 1;
        if (r2 <= 0) goto L_0x0015;
    L_0x0008:
        r2 = android.os.Looper.myLooper();
        r3 = android.os.Looper.getMainLooper();
        if (r2 == r3) goto L_0x0013;
    L_0x0012:
        goto L_0x0015;
    L_0x0013:
        r2 = r0;
        goto L_0x0016;
    L_0x0015:
        r2 = r1;
    L_0x0016:
        r3 = "await must not be called on the UI thread when time is greater than zero.";
        com.google.android.gms.common.internal.zzac.zza(r2, r3);
        r2 = r4.zzaAo;
        r2 = r2 ^ r1;
        r3 = "Result has already been consumed.";
        com.google.android.gms.common.internal.zzac.zza(r2, r3);
        r2 = r4.zzaAr;
        if (r2 != 0) goto L_0x0028;
    L_0x0027:
        r0 = r1;
    L_0x0028:
        r1 = "Cannot await if then() has been called.";
        com.google.android.gms.common.internal.zzac.zza(r0, r1);
        r0 = r4.zztj;	 Catch:{ InterruptedException -> 0x003b }
        r5 = r0.await(r5, r7);	 Catch:{ InterruptedException -> 0x003b }
        if (r5 != 0) goto L_0x0040;	 Catch:{ InterruptedException -> 0x003b }
    L_0x0035:
        r5 = com.google.android.gms.common.api.Status.zzazA;	 Catch:{ InterruptedException -> 0x003b }
        r4.zzC(r5);	 Catch:{ InterruptedException -> 0x003b }
        goto L_0x0040;
    L_0x003b:
        r5 = com.google.android.gms.common.api.Status.zzazy;
        r4.zzC(r5);
    L_0x0040:
        r5 = r4.isReady();
        r6 = "Result is not ready.";
        com.google.android.gms.common.internal.zzac.zza(r5, r6);
        r5 = r4.get();
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaaf.await(long, java.util.concurrent.TimeUnit):R");
    }

    public void cancel() {
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
        r0 = r2.zzaAh;
        monitor-enter(r0);
        r1 = r2.zzK;	 Catch:{ all -> 0x002a }
        if (r1 != 0) goto L_0x0028;	 Catch:{ all -> 0x002a }
    L_0x0007:
        r1 = r2.zzaAo;	 Catch:{ all -> 0x002a }
        if (r1 == 0) goto L_0x000c;	 Catch:{ all -> 0x002a }
    L_0x000b:
        goto L_0x0028;	 Catch:{ all -> 0x002a }
    L_0x000c:
        r1 = r2.zzaAq;	 Catch:{ all -> 0x002a }
        if (r1 == 0) goto L_0x0015;
    L_0x0010:
        r1 = r2.zzaAq;	 Catch:{ RemoteException -> 0x0015 }
        r1.cancel();	 Catch:{ RemoteException -> 0x0015 }
    L_0x0015:
        r1 = r2.zzazt;	 Catch:{ all -> 0x002a }
        zzd(r1);	 Catch:{ all -> 0x002a }
        r1 = 1;	 Catch:{ all -> 0x002a }
        r2.zzK = r1;	 Catch:{ all -> 0x002a }
        r1 = com.google.android.gms.common.api.Status.zzazB;	 Catch:{ all -> 0x002a }
        r1 = r2.zzc(r1);	 Catch:{ all -> 0x002a }
        r2.zzc(r1);	 Catch:{ all -> 0x002a }
        monitor-exit(r0);	 Catch:{ all -> 0x002a }
        return;	 Catch:{ all -> 0x002a }
    L_0x0028:
        monitor-exit(r0);	 Catch:{ all -> 0x002a }
        return;	 Catch:{ all -> 0x002a }
    L_0x002a:
        r1 = move-exception;	 Catch:{ all -> 0x002a }
        monitor-exit(r0);	 Catch:{ all -> 0x002a }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaaf.cancel():void");
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.zzaAh) {
            z = this.zzK;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zztj.getCount() == 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setResultCallback(com.google.android.gms.common.api.ResultCallback<? super R> r5) {
        /*
        r4 = this;
        r0 = r4.zzaAh;
        monitor-enter(r0);
        if (r5 != 0) goto L_0x000c;
    L_0x0005:
        r5 = 0;
        r4.zzaAl = r5;	 Catch:{ all -> 0x000a }
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x000a:
        r5 = move-exception;
        goto L_0x003c;
    L_0x000c:
        r1 = r4.zzaAo;	 Catch:{ all -> 0x000a }
        r2 = 1;
        r1 = r1 ^ r2;
        r3 = "Result has already been consumed.";
        com.google.android.gms.common.internal.zzac.zza(r1, r3);	 Catch:{ all -> 0x000a }
        r1 = r4.zzaAr;	 Catch:{ all -> 0x000a }
        if (r1 != 0) goto L_0x001a;
    L_0x0019:
        goto L_0x001b;
    L_0x001a:
        r2 = 0;
    L_0x001b:
        r1 = "Cannot set callbacks if then() has been called.";
        com.google.android.gms.common.internal.zzac.zza(r2, r1);	 Catch:{ all -> 0x000a }
        r1 = r4.isCanceled();	 Catch:{ all -> 0x000a }
        if (r1 == 0) goto L_0x0028;
    L_0x0026:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x0028:
        r1 = r4.isReady();	 Catch:{ all -> 0x000a }
        if (r1 == 0) goto L_0x0038;
    L_0x002e:
        r1 = r4.zzaAi;	 Catch:{ all -> 0x000a }
        r2 = r4.get();	 Catch:{ all -> 0x000a }
        r1.zza(r5, r2);	 Catch:{ all -> 0x000a }
        goto L_0x003a;
    L_0x0038:
        r4.zzaAl = r5;	 Catch:{ all -> 0x000a }
    L_0x003a:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x003c:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaaf.setResultCallback(com.google.android.gms.common.api.ResultCallback):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setResultCallback(com.google.android.gms.common.api.ResultCallback<? super R> r5, long r6, java.util.concurrent.TimeUnit r8) {
        /*
        r4 = this;
        r0 = r4.zzaAh;
        monitor-enter(r0);
        if (r5 != 0) goto L_0x000c;
    L_0x0005:
        r5 = 0;
        r4.zzaAl = r5;	 Catch:{ all -> 0x000a }
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x000a:
        r5 = move-exception;
        goto L_0x0045;
    L_0x000c:
        r1 = r4.zzaAo;	 Catch:{ all -> 0x000a }
        r2 = 1;
        r1 = r1 ^ r2;
        r3 = "Result has already been consumed.";
        com.google.android.gms.common.internal.zzac.zza(r1, r3);	 Catch:{ all -> 0x000a }
        r1 = r4.zzaAr;	 Catch:{ all -> 0x000a }
        if (r1 != 0) goto L_0x001a;
    L_0x0019:
        goto L_0x001b;
    L_0x001a:
        r2 = 0;
    L_0x001b:
        r1 = "Cannot set callbacks if then() has been called.";
        com.google.android.gms.common.internal.zzac.zza(r2, r1);	 Catch:{ all -> 0x000a }
        r1 = r4.isCanceled();	 Catch:{ all -> 0x000a }
        if (r1 == 0) goto L_0x0028;
    L_0x0026:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x0028:
        r1 = r4.isReady();	 Catch:{ all -> 0x000a }
        if (r1 == 0) goto L_0x0038;
    L_0x002e:
        r6 = r4.zzaAi;	 Catch:{ all -> 0x000a }
        r7 = r4.get();	 Catch:{ all -> 0x000a }
        r6.zza(r5, r7);	 Catch:{ all -> 0x000a }
        goto L_0x0043;
    L_0x0038:
        r4.zzaAl = r5;	 Catch:{ all -> 0x000a }
        r5 = r4.zzaAi;	 Catch:{ all -> 0x000a }
        r6 = r8.toMillis(r6);	 Catch:{ all -> 0x000a }
        r5.zza(r4, r6);	 Catch:{ all -> 0x000a }
    L_0x0043:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x0045:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaaf.setResultCallback(com.google.android.gms.common.api.ResultCallback, long, java.util.concurrent.TimeUnit):void");
    }

    public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        TransformedResult<S> then;
        zzac.zza(this.zzaAo ^ true, (Object) "Result has already been consumed.");
        synchronized (this.zzaAh) {
            boolean z = false;
            zzac.zza(this.zzaAr == null, (Object) "Cannot call then() twice.");
            if (this.zzaAl == null) {
                z = true;
            }
            zzac.zza(z, (Object) "Cannot call then() if callbacks are set.");
            zzac.zza(this.zzK ^ true, (Object) "Cannot call then() if result was canceled.");
            this.zzaAs = true;
            this.zzaAr = new zzabx(this.zzaAj);
            then = this.zzaAr.then(resultTransform);
            if (isReady()) {
                this.zzaAi.zza(this.zzaAr, get());
            } else {
                this.zzaAl = this.zzaAr;
            }
        }
        return then;
    }

    public final void zzC(Status status) {
        synchronized (this.zzaAh) {
            if (!isReady()) {
                zzb(zzc(status));
                this.zzaAp = true;
            }
        }
    }

    public final void zza(com.google.android.gms.common.api.PendingResult.zza zza) {
        zzac.zzb(zza != null, (Object) "Callback cannot be null.");
        synchronized (this.zzaAh) {
            if (isReady()) {
                zza.zzy(this.zzair);
            } else {
                this.zzaAk.add(zza);
            }
        }
    }

    protected final void zza(zzs zzs) {
        synchronized (this.zzaAh) {
            this.zzaAq = zzs;
        }
    }

    public void zza(zzb zzb) {
        this.zzaAm.set(zzb);
    }

    public final void zzb(R r) {
        synchronized (this.zzaAh) {
            if (this.zzaAp || this.zzK) {
                zzd(r);
                return;
            }
            isReady();
            zzac.zza(isReady() ^ 1, (Object) "Results have already been set");
            zzac.zza(this.zzaAo ^ 1, (Object) "Result has already been consumed");
            zzc((Result) r);
        }
    }

    protected abstract R zzc(Status status);

    public boolean zzvF() {
        boolean isCanceled;
        synchronized (this.zzaAh) {
            if (((GoogleApiClient) this.zzaAj.get()) == null || !this.zzaAs) {
                cancel();
            }
            isCanceled = isCanceled();
        }
        return isCanceled;
    }

    public void zzvH() {
        setResultCallback(null);
    }

    public void zzvI() {
        boolean z;
        if (!this.zzaAs) {
            if (!((Boolean) zzaAg.get()).booleanValue()) {
                z = false;
                this.zzaAs = z;
            }
        }
        z = true;
        this.zzaAs = z;
    }

    public Integer zzvr() {
        return null;
    }
}
