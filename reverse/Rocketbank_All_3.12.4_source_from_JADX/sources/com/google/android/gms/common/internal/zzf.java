package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class zzf<T extends IInterface> {
    public static final String[] zzaFs = new String[]{"service_esmobile", "service_googleme"};
    private final Context mContext;
    final Handler mHandler;
    private final com.google.android.gms.common.zze zzaAQ;
    private int zzaFa;
    private long zzaFb;
    private long zzaFc;
    private int zzaFd;
    private long zzaFe;
    private final zzn zzaFf;
    private final Object zzaFg;
    private zzv zzaFh;
    protected zzf zzaFi;
    private T zzaFj;
    private final ArrayList<zze<?>> zzaFk;
    private zzh zzaFl;
    private int zzaFm;
    private final zzb zzaFn;
    private final zzc zzaFo;
    private final int zzaFp;
    private final String zzaFq;
    protected AtomicInteger zzaFr;
    private final Object zzrJ;
    private final Looper zzrs;

    public interface zzb {
        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface zzc {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    final class zzd extends Handler {
        final /* synthetic */ zzf zzaFu;

        public zzd(zzf zzf, Looper looper) {
            this.zzaFu = zzf;
            super(looper);
        }

        private void zza(Message message) {
            ((zze) message.obj).unregister();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private boolean zzb(android.os.Message r4) {
            /*
            r3 = this;
            r0 = r4.what;
            r1 = 1;
            r2 = 2;
            if (r0 == r2) goto L_0x0012;
        L_0x0006:
            r0 = r4.what;
            if (r0 == r1) goto L_0x0012;
        L_0x000a:
            r4 = r4.what;
            r0 = 5;
            if (r4 != r0) goto L_0x0010;
        L_0x000f:
            return r1;
        L_0x0010:
            r4 = 0;
            return r4;
        L_0x0012:
            return r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzf.zzd.zzb(android.os.Message):boolean");
        }

        public final void handleMessage(Message message) {
            if (this.zzaFu.zzaFr.get() != message.arg1) {
                if (zzb(message)) {
                    zza(message);
                }
            } else if ((message.what == 1 || message.what == 5) && !this.zzaFu.isConnecting()) {
                zza(message);
            } else {
                PendingIntent pendingIntent = null;
                if (message.what == 3) {
                    if (message.obj instanceof PendingIntent) {
                        pendingIntent = (PendingIntent) message.obj;
                    }
                    ConnectionResult connectionResult = new ConnectionResult(message.arg2, pendingIntent);
                    this.zzaFu.zzaFi.zzg(connectionResult);
                    this.zzaFu.onConnectionFailed(connectionResult);
                } else if (message.what == 4) {
                    this.zzaFu.zza(4, null);
                    if (this.zzaFu.zzaFn != null) {
                        this.zzaFu.zzaFn.onConnectionSuspended(message.arg2);
                    }
                    this.zzaFu.onConnectionSuspended(message.arg2);
                    this.zzaFu.zza(4, 1, null);
                } else if (message.what == 2 && !this.zzaFu.isConnected()) {
                    zza(message);
                } else if (zzb(message)) {
                    ((zze) message.obj).zzxH();
                } else {
                    int i = message.what;
                    StringBuilder stringBuilder = new StringBuilder(45);
                    stringBuilder.append("Don't know how to handle message: ");
                    stringBuilder.append(i);
                    Log.wtf("GmsClient", stringBuilder.toString(), new Exception());
                }
            }
        }
    }

    protected abstract class zze<TListener> {
        private TListener mListener;
        final /* synthetic */ zzf zzaFu;
        private boolean zzaFv = false;

        public zze(zzf zzf, TListener tListener) {
            this.zzaFu = zzf;
            this.mListener = tListener;
        }

        public void unregister() {
            zzxI();
            synchronized (this.zzaFu.zzaFk) {
                this.zzaFu.zzaFk.remove(this);
            }
        }

        protected abstract void zzu(TListener tListener);

        public void zzxH() {
            synchronized (this) {
                Object obj = this.mListener;
                if (this.zzaFv) {
                    String valueOf = String.valueOf(this);
                    StringBuilder stringBuilder = new StringBuilder(47 + String.valueOf(valueOf).length());
                    stringBuilder.append("Callback proxy ");
                    stringBuilder.append(valueOf);
                    stringBuilder.append(" being reused. This is not safe.");
                    Log.w("GmsClient", stringBuilder.toString());
                }
            }
            if (obj != null) {
                try {
                    zzu(obj);
                } catch (RuntimeException e) {
                    throw e;
                }
            }
            synchronized (this) {
                this.zzaFv = true;
            }
            unregister();
        }

        public void zzxI() {
            synchronized (this) {
                this.mListener = null;
            }
        }
    }

    public interface zzf {
        void zzg(ConnectionResult connectionResult);
    }

    public final class zzh implements ServiceConnection {
        final /* synthetic */ zzf zzaFu;
        private final int zzaFx;

        public zzh(zzf zzf, int i) {
            this.zzaFu = zzf;
            this.zzaFx = i;
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            zzf zzf;
            int i;
            if (iBinder == null) {
                zzf = this.zzaFu;
                i = 8;
            } else {
                synchronized (this.zzaFu.zzaFg) {
                    this.zzaFu.zzaFh = com.google.android.gms.common.internal.zzv.zza.zzbu(iBinder);
                }
                zzf = this.zzaFu;
                i = 0;
            }
            zzf.zza(i, null, this.zzaFx);
        }

        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (this.zzaFu.zzaFg) {
                this.zzaFu.zzaFh = null;
            }
            this.zzaFu.mHandler.sendMessage(this.zzaFu.mHandler.obtainMessage(4, this.zzaFx, 1));
        }
    }

    private abstract class zza extends zze<Boolean> {
        public final int statusCode;
        public final Bundle zzaFt;
        final /* synthetic */ zzf zzaFu;

        protected zza(zzf zzf, int i, Bundle bundle) {
            this.zzaFu = zzf;
            super(zzf, Boolean.TRUE);
            this.statusCode = i;
            this.zzaFt = bundle;
        }

        protected void zzb(Boolean bool) {
            PendingIntent pendingIntent = null;
            if (bool == null) {
                this.zzaFu.zza(1, null);
                return;
            }
            int i = this.statusCode;
            if (i == 0) {
                if (!zzxG()) {
                    this.zzaFu.zza(1, null);
                    zzm(new ConnectionResult(8, null));
                }
            } else if (i != 10) {
                this.zzaFu.zza(1, null);
                if (this.zzaFt != null) {
                    pendingIntent = (PendingIntent) this.zzaFt.getParcelable("pendingIntent");
                }
                zzm(new ConnectionResult(this.statusCode, pendingIntent));
            } else {
                this.zzaFu.zza(1, null);
                throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
            }
        }

        protected abstract void zzm(ConnectionResult connectionResult);

        protected /* synthetic */ void zzu(Object obj) {
            zzb((Boolean) obj);
        }

        protected abstract boolean zzxG();
    }

    protected class zzi implements zzf {
        final /* synthetic */ zzf zzaFu;

        public zzi(zzf zzf) {
            this.zzaFu = zzf;
        }

        public void zzg(ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                this.zzaFu.zza(null, this.zzaFu.zzxF());
                return;
            }
            if (this.zzaFu.zzaFo != null) {
                this.zzaFu.zzaFo.onConnectionFailed(connectionResult);
            }
        }
    }

    public static final class zzg extends com.google.android.gms.common.internal.zzu.zza {
        private zzf zzaFw;
        private final int zzaFx;

        public zzg(zzf zzf, int i) {
            this.zzaFw = zzf;
            this.zzaFx = i;
        }

        private void zzxJ() {
            this.zzaFw = null;
        }

        public final void zza(int i, IBinder iBinder, Bundle bundle) {
            zzac.zzb(this.zzaFw, (Object) "onPostInitComplete can be called only once per call to getRemoteService");
            this.zzaFw.zza(i, iBinder, bundle, this.zzaFx);
            zzxJ();
        }

        public final void zzb(int i, Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }
    }

    protected final class zzj extends zza {
        final /* synthetic */ zzf zzaFu;
        public final IBinder zzaFy;

        public zzj(zzf zzf, int i, IBinder iBinder, Bundle bundle) {
            this.zzaFu = zzf;
            super(zzf, i, bundle);
            this.zzaFy = iBinder;
        }

        protected final void zzm(ConnectionResult connectionResult) {
            if (this.zzaFu.zzaFo != null) {
                this.zzaFu.zzaFo.onConnectionFailed(connectionResult);
            }
            this.zzaFu.onConnectionFailed(connectionResult);
        }

        protected final boolean zzxG() {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r6 = this;
            r0 = 0;
            r1 = r6.zzaFy;	 Catch:{ RemoteException -> 0x007d }
            r1 = r1.getInterfaceDescriptor();	 Catch:{ RemoteException -> 0x007d }
            r2 = r6.zzaFu;
            r2 = r2.zzeA();
            r2 = r2.equals(r1);
            if (r2 != 0) goto L_0x0050;
        L_0x0013:
            r2 = "GmsClient";
            r3 = r6.zzaFu;
            r3 = r3.zzeA();
            r3 = java.lang.String.valueOf(r3);
            r4 = 34;
            r5 = java.lang.String.valueOf(r3);
            r5 = r5.length();
            r4 = r4 + r5;
            r5 = java.lang.String.valueOf(r1);
            r5 = r5.length();
            r4 = r4 + r5;
            r5 = new java.lang.StringBuilder;
            r5.<init>(r4);
            r4 = "service descriptor mismatch: ";
            r5.append(r4);
            r5.append(r3);
            r3 = " vs. ";
            r5.append(r3);
            r5.append(r1);
            r1 = r5.toString();
            android.util.Log.e(r2, r1);
            return r0;
        L_0x0050:
            r1 = r6.zzaFu;
            r2 = r6.zzaFy;
            r1 = r1.zzh(r2);
            if (r1 == 0) goto L_0x007c;
        L_0x005a:
            r2 = r6.zzaFu;
            r3 = 2;
            r4 = 3;
            r1 = r2.zza(r3, r4, r1);
            if (r1 == 0) goto L_0x007c;
        L_0x0064:
            r0 = r6.zzaFu;
            r0 = r0.zzuB();
            r1 = r6.zzaFu;
            r1 = r1.zzaFn;
            if (r1 == 0) goto L_0x007b;
        L_0x0072:
            r1 = r6.zzaFu;
            r1 = r1.zzaFn;
            r1.onConnected(r0);
        L_0x007b:
            r0 = 1;
        L_0x007c:
            return r0;
        L_0x007d:
            r1 = "GmsClient";
            r2 = "service probably died";
            android.util.Log.w(r1, r2);
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzf.zzj.zzxG():boolean");
        }
    }

    protected final class zzk extends zza {
        final /* synthetic */ zzf zzaFu;

        public zzk(zzf zzf, int i, Bundle bundle) {
            this.zzaFu = zzf;
            super(zzf, i, bundle);
        }

        protected final void zzm(ConnectionResult connectionResult) {
            this.zzaFu.zzaFi.zzg(connectionResult);
            this.zzaFu.onConnectionFailed(connectionResult);
        }

        protected final boolean zzxG() {
            this.zzaFu.zzaFi.zzg(ConnectionResult.zzayj);
            return true;
        }
    }

    protected zzf(Context context, Looper looper, int i, zzb zzb, zzc zzc, String str) {
        this(context, looper, zzn.zzaU(context), com.google.android.gms.common.zze.zzuY(), i, (zzb) zzac.zzw(zzb), (zzc) zzac.zzw(zzc), str);
    }

    protected zzf(Context context, Looper looper, zzn zzn, com.google.android.gms.common.zze zze, int i, zzb zzb, zzc zzc, String str) {
        this.zzrJ = new Object();
        this.zzaFg = new Object();
        this.zzaFk = new ArrayList();
        this.zzaFm = 1;
        this.zzaFr = new AtomicInteger(0);
        this.mContext = (Context) zzac.zzb((Object) context, (Object) "Context must not be null");
        this.zzrs = (Looper) zzac.zzb((Object) looper, (Object) "Looper must not be null");
        this.zzaFf = (zzn) zzac.zzb((Object) zzn, (Object) "Supervisor must not be null");
        this.zzaAQ = (com.google.android.gms.common.zze) zzac.zzb((Object) zze, (Object) "API availability must not be null");
        this.mHandler = new zzd(this, looper);
        this.zzaFp = i;
        this.zzaFn = zzb;
        this.zzaFo = zzc;
        this.zzaFq = str;
    }

    private void zza(int i, T t) {
        boolean z = false;
        if ((i == 3) == (t != null)) {
            z = true;
        }
        zzac.zzaw(z);
        synchronized (this.zzrJ) {
            this.zzaFm = i;
            this.zzaFj = t;
            switch (i) {
                case 1:
                    zzxy();
                    break;
                case 2:
                    zzxx();
                    break;
                case 3:
                    zza((IInterface) t);
                    break;
                default:
                    break;
            }
        }
    }

    private boolean zza(int i, int i2, T t) {
        synchronized (this.zzrJ) {
            if (this.zzaFm != i) {
                return false;
            }
            zza(i2, (IInterface) t);
            return true;
        }
    }

    private void zzxx() {
        if (this.zzaFl != null) {
            String valueOf = String.valueOf(zzez());
            String valueOf2 = String.valueOf(zzxv());
            StringBuilder stringBuilder = new StringBuilder((70 + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
            stringBuilder.append("Calling connect() while still connected, missing disconnect() for ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" on ");
            stringBuilder.append(valueOf2);
            Log.e("GmsClient", stringBuilder.toString());
            this.zzaFf.zzb(zzez(), zzxv(), this.zzaFl, zzxw());
            this.zzaFr.incrementAndGet();
        }
        this.zzaFl = new zzh(this, this.zzaFr.get());
        if (!this.zzaFf.zza(zzez(), zzxv(), this.zzaFl, zzxw())) {
            valueOf = String.valueOf(zzez());
            valueOf2 = String.valueOf(zzxv());
            stringBuilder = new StringBuilder((34 + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
            stringBuilder.append("unable to connect to service: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" on ");
            stringBuilder.append(valueOf2);
            Log.e("GmsClient", stringBuilder.toString());
            zza(16, null, this.zzaFr.get());
        }
    }

    private void zzxy() {
        if (this.zzaFl != null) {
            this.zzaFf.zzb(zzez(), zzxv(), this.zzaFl, zzxw());
            this.zzaFl = null;
        }
    }

    public void disconnect() {
        this.zzaFr.incrementAndGet();
        synchronized (this.zzaFk) {
            int size = this.zzaFk.size();
            for (int i = 0; i < size; i++) {
                ((zze) this.zzaFk.get(i)).zzxI();
            }
            this.zzaFk.clear();
        }
        synchronized (this.zzaFg) {
            this.zzaFh = null;
        }
        zza(1, null);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2;
        synchronized (this.zzrJ) {
            int i = this.zzaFm;
            IInterface iInterface = this.zzaFj;
        }
        synchronized (this.zzaFg) {
            zzv zzv = this.zzaFh;
        }
        printWriter.append(str).append("mConnectState=");
        switch (i) {
            case 1:
                str2 = "DISCONNECTED";
                break;
            case 2:
                str2 = "CONNECTING";
                break;
            case 3:
                str2 = "CONNECTED";
                break;
            case 4:
                str2 = "DISCONNECTING";
                break;
            default:
                str2 = "UNKNOWN";
                break;
        }
        printWriter.print(str2);
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.append("null");
        } else {
            printWriter.append(zzeA()).append("@").append(Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (zzv == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(zzv.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.zzaFc > 0) {
            PrintWriter append = printWriter.append(str).append("lastConnectedTime=");
            long j = this.zzaFc;
            String valueOf = String.valueOf(simpleDateFormat.format(new Date(this.zzaFc)));
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 21);
            stringBuilder.append(j);
            stringBuilder.append(" ");
            stringBuilder.append(valueOf);
            append.println(stringBuilder.toString());
        }
        if (this.zzaFb > 0) {
            CharSequence charSequence;
            printWriter.append(str).append("lastSuspendedCause=");
            switch (this.zzaFa) {
                case 1:
                    charSequence = "CAUSE_SERVICE_DISCONNECTED";
                    break;
                case 2:
                    charSequence = "CAUSE_NETWORK_LOST";
                    break;
                default:
                    charSequence = String.valueOf(this.zzaFa);
                    break;
            }
            printWriter.append(charSequence);
            append = printWriter.append(" lastSuspendedTime=");
            j = this.zzaFb;
            valueOf = String.valueOf(simpleDateFormat.format(new Date(this.zzaFb)));
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 21);
            stringBuilder.append(j);
            stringBuilder.append(" ");
            stringBuilder.append(valueOf);
            append.println(stringBuilder.toString());
        }
        if (this.zzaFe > 0) {
            printWriter.append(str).append("lastFailedStatus=").append(CommonStatusCodes.getStatusCodeString(this.zzaFd));
            PrintWriter append2 = printWriter.append(" lastFailedTime=");
            long j2 = this.zzaFe;
            String valueOf2 = String.valueOf(simpleDateFormat.format(new Date(this.zzaFe)));
            StringBuilder stringBuilder2 = new StringBuilder(21 + String.valueOf(valueOf2).length());
            stringBuilder2.append(j2);
            stringBuilder2.append(" ");
            stringBuilder2.append(valueOf2);
            append2.println(stringBuilder2.toString());
        }
    }

    public Account getAccount() {
        return null;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Looper getLooper() {
        return this.zzrs;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzaFm == 3;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzaFm == 2;
        }
        return z;
    }

    protected void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzaFd = connectionResult.getErrorCode();
        this.zzaFe = System.currentTimeMillis();
    }

    protected void onConnectionSuspended(int i) {
        this.zzaFa = i;
        this.zzaFb = System.currentTimeMillis();
    }

    protected void zza(int i, Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i2, -1, new zzk(this, i, bundle)));
    }

    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, i2, -1, new zzj(this, i, iBinder, bundle)));
    }

    protected void zza(T t) {
        this.zzaFc = System.currentTimeMillis();
    }

    public void zza(zzf zzf) {
        this.zzaFi = (zzf) zzac.zzb((Object) zzf, (Object) "Connection progress callbacks cannot be null.");
        zza(2, null);
    }

    public void zza(zzf zzf, int i, PendingIntent pendingIntent) {
        this.zzaFi = (zzf) zzac.zzb((Object) zzf, (Object) "Connection progress callbacks cannot be null.");
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.zzaFr.get(), i, pendingIntent));
    }

    public void zza(zzr zzr, Set<Scope> set) {
        zzj zzp = new zzj(this.zzaFp).zzdm(this.mContext.getPackageName()).zzp(zzqL());
        if (set != null) {
            zzp.zzf((Collection) set);
        }
        if (zzrd()) {
            zzp.zzf(zzxB()).zzb(zzr);
        } else if (zzxE()) {
            zzp.zzf(getAccount());
        }
        zzp.zza(zzxA());
        try {
            synchronized (this.zzaFg) {
                if (this.zzaFh != null) {
                    this.zzaFh.zza(new zzg(this, this.zzaFr.get()), zzp);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (Throwable e) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            zzcS(1);
        } catch (SecurityException e2) {
            throw e2;
        } catch (Throwable e3) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e3);
            zza(8, null, null, this.zzaFr.get());
        }
    }

    public void zzcS(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, this.zzaFr.get(), i));
    }

    protected abstract String zzeA();

    protected abstract String zzez();

    protected abstract T zzh(IBinder iBinder);

    protected Bundle zzqL() {
        return new Bundle();
    }

    public boolean zzrd() {
        return false;
    }

    public boolean zzrr() {
        return false;
    }

    public Intent zzrs() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    public Bundle zzuB() {
        return null;
    }

    public boolean zzvh() {
        return true;
    }

    public IBinder zzvi() {
        synchronized (this.zzaFg) {
            if (this.zzaFh == null) {
                return null;
            }
            IBinder asBinder = this.zzaFh.asBinder();
            return asBinder;
        }
    }

    public com.google.android.gms.common.zzc[] zzxA() {
        return new com.google.android.gms.common.zzc[0];
    }

    public final Account zzxB() {
        return getAccount() != null ? getAccount() : new Account("<<default account>>", "com.google");
    }

    protected final void zzxC() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final T zzxD() throws DeadObjectException {
        T t;
        synchronized (this.zzrJ) {
            if (this.zzaFm == 4) {
                throw new DeadObjectException();
            }
            zzxC();
            zzac.zza(this.zzaFj != null, (Object) "Client is connected but service is null");
            t = this.zzaFj;
        }
        return t;
    }

    public boolean zzxE() {
        return false;
    }

    protected Set<Scope> zzxF() {
        return Collections.EMPTY_SET;
    }

    protected String zzxv() {
        return "com.google.android.gms";
    }

    protected final String zzxw() {
        return this.zzaFq == null ? this.mContext.getClass().getName() : this.zzaFq;
    }

    public void zzxz() {
        int isGooglePlayServicesAvailable = this.zzaAQ.isGooglePlayServicesAvailable(this.mContext);
        if (isGooglePlayServicesAvailable != 0) {
            zza(1, null);
            zza(new zzi(this), isGooglePlayServicesAvailable, null);
            return;
        }
        zza(new zzi(this));
    }
}
