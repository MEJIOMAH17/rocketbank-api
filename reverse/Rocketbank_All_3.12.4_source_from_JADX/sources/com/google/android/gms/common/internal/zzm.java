package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class zzm implements Callback {
    private final Handler mHandler;
    private final zza zzaFU;
    private final ArrayList<ConnectionCallbacks> zzaFV = new ArrayList();
    final ArrayList<ConnectionCallbacks> zzaFW = new ArrayList();
    private final ArrayList<OnConnectionFailedListener> zzaFX = new ArrayList();
    private volatile boolean zzaFY = false;
    private final AtomicInteger zzaFZ = new AtomicInteger(0);
    private boolean zzaGa = false;
    private final Object zzrJ = new Object();

    public interface zza {
        boolean isConnected();

        Bundle zzuB();
    }

    public zzm(Looper looper, zza zza) {
        this.zzaFU = zza;
        this.mHandler = new Handler(looper, this);
    }

    public final boolean handleMessage(Message message) {
        if (message.what == 1) {
            ConnectionCallbacks connectionCallbacks = (ConnectionCallbacks) message.obj;
            synchronized (this.zzrJ) {
                if (this.zzaFY && this.zzaFU.isConnected() && this.zzaFV.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(this.zzaFU.zzuB());
                }
            }
            return true;
        }
        int i = message.what;
        StringBuilder stringBuilder = new StringBuilder(45);
        stringBuilder.append("Don't know how to handle message: ");
        stringBuilder.append(i);
        Log.wtf("GmsClientEvents", stringBuilder.toString(), new Exception());
        return false;
    }

    public final boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        zzac.zzw(connectionCallbacks);
        synchronized (this.zzrJ) {
            contains = this.zzaFV.contains(connectionCallbacks);
        }
        return contains;
    }

    public final boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        zzac.zzw(onConnectionFailedListener);
        synchronized (this.zzrJ) {
            contains = this.zzaFX.contains(onConnectionFailedListener);
        }
        return contains;
    }

    public final void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        zzac.zzw(connectionCallbacks);
        synchronized (this.zzrJ) {
            if (this.zzaFV.contains(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder stringBuilder = new StringBuilder(62 + String.valueOf(valueOf).length());
                stringBuilder.append("registerConnectionCallbacks(): listener ");
                stringBuilder.append(valueOf);
                stringBuilder.append(" is already registered");
                Log.w("GmsClientEvents", stringBuilder.toString());
            } else {
                this.zzaFV.add(connectionCallbacks);
            }
        }
        if (this.zzaFU.isConnected()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, connectionCallbacks));
        }
    }

    public final void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        zzac.zzw(onConnectionFailedListener);
        synchronized (this.zzrJ) {
            if (this.zzaFX.contains(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder stringBuilder = new StringBuilder(67 + String.valueOf(valueOf).length());
                stringBuilder.append("registerConnectionFailedListener(): listener ");
                stringBuilder.append(valueOf);
                stringBuilder.append(" is already registered");
                Log.w("GmsClientEvents", stringBuilder.toString());
            } else {
                this.zzaFX.add(onConnectionFailedListener);
            }
        }
    }

    public final void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        zzac.zzw(connectionCallbacks);
        synchronized (this.zzrJ) {
            if (!this.zzaFV.remove(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder stringBuilder = new StringBuilder(52 + String.valueOf(valueOf).length());
                stringBuilder.append("unregisterConnectionCallbacks(): listener ");
                stringBuilder.append(valueOf);
                stringBuilder.append(" not found");
                Log.w("GmsClientEvents", stringBuilder.toString());
            } else if (this.zzaGa) {
                this.zzaFW.add(connectionCallbacks);
            }
        }
    }

    public final void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        zzac.zzw(onConnectionFailedListener);
        synchronized (this.zzrJ) {
            if (!this.zzaFX.remove(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder stringBuilder = new StringBuilder(57 + String.valueOf(valueOf).length());
                stringBuilder.append("unregisterConnectionFailedListener(): listener ");
                stringBuilder.append(valueOf);
                stringBuilder.append(" not found");
                Log.w("GmsClientEvents", stringBuilder.toString());
            }
        }
    }

    public final void zzcV(int i) {
        zzac.zza(Looper.myLooper() == this.mHandler.getLooper(), (Object) "onUnintentionalDisconnection must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzrJ) {
            this.zzaGa = true;
            ArrayList arrayList = new ArrayList(this.zzaFV);
            int i2 = this.zzaFZ.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ConnectionCallbacks connectionCallbacks = (ConnectionCallbacks) it.next();
                if (!this.zzaFY || this.zzaFZ.get() != i2) {
                    break;
                } else if (this.zzaFV.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                }
            }
            this.zzaFW.clear();
            this.zzaGa = false;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzn(com.google.android.gms.common.ConnectionResult r6) {
        /*
        r5 = this;
        r0 = android.os.Looper.myLooper();
        r1 = r5.mHandler;
        r1 = r1.getLooper();
        r2 = 1;
        if (r0 != r1) goto L_0x000f;
    L_0x000d:
        r0 = r2;
        goto L_0x0010;
    L_0x000f:
        r0 = 0;
    L_0x0010:
        r1 = "onConnectionFailure must only be called on the Handler thread";
        com.google.android.gms.common.internal.zzac.zza(r0, r1);
        r0 = r5.mHandler;
        r0.removeMessages(r2);
        r0 = r5.zzrJ;
        monitor-enter(r0);
        r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0057 }
        r2 = r5.zzaFX;	 Catch:{ all -> 0x0057 }
        r1.<init>(r2);	 Catch:{ all -> 0x0057 }
        r2 = r5.zzaFZ;	 Catch:{ all -> 0x0057 }
        r2 = r2.get();	 Catch:{ all -> 0x0057 }
        r1 = r1.iterator();	 Catch:{ all -> 0x0057 }
    L_0x002e:
        r3 = r1.hasNext();	 Catch:{ all -> 0x0057 }
        if (r3 == 0) goto L_0x0055;
    L_0x0034:
        r3 = r1.next();	 Catch:{ all -> 0x0057 }
        r3 = (com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener) r3;	 Catch:{ all -> 0x0057 }
        r4 = r5.zzaFY;	 Catch:{ all -> 0x0057 }
        if (r4 == 0) goto L_0x0053;
    L_0x003e:
        r4 = r5.zzaFZ;	 Catch:{ all -> 0x0057 }
        r4 = r4.get();	 Catch:{ all -> 0x0057 }
        if (r4 == r2) goto L_0x0047;
    L_0x0046:
        goto L_0x0053;
    L_0x0047:
        r4 = r5.zzaFX;	 Catch:{ all -> 0x0057 }
        r4 = r4.contains(r3);	 Catch:{ all -> 0x0057 }
        if (r4 == 0) goto L_0x002e;
    L_0x004f:
        r3.onConnectionFailed(r6);	 Catch:{ all -> 0x0057 }
        goto L_0x002e;
    L_0x0053:
        monitor-exit(r0);	 Catch:{ all -> 0x0057 }
        return;
    L_0x0055:
        monitor-exit(r0);	 Catch:{ all -> 0x0057 }
        return;
    L_0x0057:
        r6 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0057 }
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzm.zzn(com.google.android.gms.common.ConnectionResult):void");
    }

    public final void zzq(Bundle bundle) {
        boolean z = true;
        zzac.zza(Looper.myLooper() == this.mHandler.getLooper(), (Object) "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.zzrJ) {
            zzac.zzav(this.zzaGa ^ true);
            this.mHandler.removeMessages(1);
            this.zzaGa = true;
            if (this.zzaFW.size() != 0) {
                z = false;
            }
            zzac.zzav(z);
            ArrayList arrayList = new ArrayList(this.zzaFV);
            int i = this.zzaFZ.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ConnectionCallbacks connectionCallbacks = (ConnectionCallbacks) it.next();
                if (!this.zzaFY || !this.zzaFU.isConnected() || this.zzaFZ.get() != i) {
                    break;
                } else if (!this.zzaFW.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            this.zzaFW.clear();
            this.zzaGa = false;
        }
    }

    public final void zzxX() {
        this.zzaFY = false;
        this.zzaFZ.incrementAndGet();
    }

    public final void zzxY() {
        this.zzaFY = true;
    }
}
