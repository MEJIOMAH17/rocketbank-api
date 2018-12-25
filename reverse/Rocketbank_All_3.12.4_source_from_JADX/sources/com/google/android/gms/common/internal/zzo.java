package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

final class zzo extends zzn implements Callback {
    private final Handler mHandler;
    private final HashMap<zza, zza> zzaGf = new HashMap();
    private final com.google.android.gms.common.stats.zza zzaGg;
    private final long zzaGh;
    private final long zzaGi;
    private final Context zzwi;

    private final class zza implements ServiceConnection {
        private int mState = 2;
        private IBinder zzaFz;
        private ComponentName zzaGe;
        private final Set<ServiceConnection> zzaGj = new HashSet();
        private boolean zzaGk;
        private final zza zzaGl;
        final /* synthetic */ zzo zzaGm;

        public zza(zzo zzo, zza zza) {
            this.zzaGm = zzo;
            this.zzaGl = zza;
        }

        public final IBinder getBinder() {
            return this.zzaFz;
        }

        public final ComponentName getComponentName() {
            return this.zzaGe;
        }

        public final int getState() {
            return this.mState;
        }

        public final boolean isBound() {
            return this.zzaGk;
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this.zzaGm.zzaGf) {
                this.zzaGm.mHandler.removeMessages(1, this.zzaGl);
                this.zzaFz = iBinder;
                this.zzaGe = componentName;
                for (ServiceConnection onServiceConnected : this.zzaGj) {
                    onServiceConnected.onServiceConnected(componentName, iBinder);
                }
                this.mState = 1;
            }
        }

        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (this.zzaGm.zzaGf) {
                this.zzaGm.mHandler.removeMessages(1, this.zzaGl);
                this.zzaFz = null;
                this.zzaGe = componentName;
                for (ServiceConnection onServiceDisconnected : this.zzaGj) {
                    onServiceDisconnected.onServiceDisconnected(componentName);
                }
                this.mState = 2;
            }
        }

        public final void zza(ServiceConnection serviceConnection, String str) {
            this.zzaGm.zzaGg.zza(this.zzaGm.zzwi, serviceConnection, str, this.zzaGl.zzxZ());
            this.zzaGj.add(serviceConnection);
        }

        public final boolean zza(ServiceConnection serviceConnection) {
            return this.zzaGj.contains(serviceConnection);
        }

        public final void zzb(ServiceConnection serviceConnection, String str) {
            this.zzaGm.zzaGg.zzb(this.zzaGm.zzwi, serviceConnection);
            this.zzaGj.remove(serviceConnection);
        }

        public final void zzdn(java.lang.String r8) {
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
            r7 = this;
            r0 = 3;
            r7.mState = r0;
            r0 = r7.zzaGm;
            r1 = r0.zzaGg;
            r0 = r7.zzaGm;
            r2 = r0.zzwi;
            r0 = r7.zzaGl;
            r4 = r0.zzxZ();
            r6 = 129; // 0x81 float:1.81E-43 double:6.37E-322;
            r3 = r8;
            r5 = r7;
            r8 = r1.zza(r2, r3, r4, r5, r6);
            r7.zzaGk = r8;
            r8 = r7.zzaGk;
            if (r8 == 0) goto L_0x0040;
        L_0x0023:
            r8 = r7.zzaGm;
            r8 = r8.mHandler;
            r0 = 1;
            r1 = r7.zzaGl;
            r8 = r8.obtainMessage(r0, r1);
            r0 = r7.zzaGm;
            r0 = r0.mHandler;
            r1 = r7.zzaGm;
            r1 = r1.zzaGi;
            r0.sendMessageDelayed(r8, r1);
            return;
        L_0x0040:
            r8 = 2;
            r7.mState = r8;
            r8 = r7.zzaGm;	 Catch:{ IllegalArgumentException -> 0x0052 }
            r8 = r8.zzaGg;	 Catch:{ IllegalArgumentException -> 0x0052 }
            r0 = r7.zzaGm;	 Catch:{ IllegalArgumentException -> 0x0052 }
            r0 = r0.zzwi;	 Catch:{ IllegalArgumentException -> 0x0052 }
            r8.zza(r0, r7);	 Catch:{ IllegalArgumentException -> 0x0052 }
        L_0x0052:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzo.zza.zzdn(java.lang.String):void");
        }

        public final void zzdo(String str) {
            this.zzaGm.mHandler.removeMessages(1, this.zzaGl);
            this.zzaGm.zzaGg.zza(this.zzaGm.zzwi, this);
            this.zzaGk = false;
            this.mState = 2;
        }

        public final boolean zzya() {
            return this.zzaGj.isEmpty();
        }
    }

    zzo(Context context) {
        this.zzwi = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), this);
        this.zzaGg = com.google.android.gms.common.stats.zza.zzyJ();
        this.zzaGh = 5000;
        this.zzaGi = 300000;
    }

    public final boolean handleMessage(Message message) {
        zza zza;
        zza zza2;
        switch (message.what) {
            case 0:
                synchronized (this.zzaGf) {
                    zza = (zza) message.obj;
                    zza2 = (zza) this.zzaGf.get(zza);
                    if (zza2 != null && zza2.zzya()) {
                        if (zza2.isBound()) {
                            zza2.zzdo("GmsClientSupervisor");
                        }
                        this.zzaGf.remove(zza);
                    }
                }
                return true;
            case 1:
                synchronized (this.zzaGf) {
                    zza = (zza) message.obj;
                    zza2 = (zza) this.zzaGf.get(zza);
                    if (zza2 != null && zza2.getState() == 3) {
                        String valueOf = String.valueOf(zza);
                        StringBuilder stringBuilder = new StringBuilder(47 + String.valueOf(valueOf).length());
                        stringBuilder.append("Timeout waiting for ServiceConnection callback ");
                        stringBuilder.append(valueOf);
                        Log.wtf("GmsClientSupervisor", stringBuilder.toString(), new Exception());
                        ComponentName componentName = zza2.getComponentName();
                        if (componentName == null) {
                            componentName = zza.getComponentName();
                        }
                        if (componentName == null) {
                            componentName = new ComponentName(zza.getPackage(), "unknown");
                        }
                        zza2.onServiceDisconnected(componentName);
                    }
                }
                return true;
            default:
                return false;
        }
    }

    protected final boolean zza(zza zza, ServiceConnection serviceConnection, String str) {
        boolean isBound;
        zzac.zzb((Object) serviceConnection, (Object) "ServiceConnection must not be null");
        synchronized (this.zzaGf) {
            zza zza2 = (zza) this.zzaGf.get(zza);
            if (zza2 != null) {
                this.mHandler.removeMessages(0, zza);
                if (!zza2.zza(serviceConnection)) {
                    zza2.zza(serviceConnection, str);
                    switch (zza2.getState()) {
                        case 1:
                            serviceConnection.onServiceConnected(zza2.getComponentName(), zza2.getBinder());
                            break;
                        case 2:
                            zza2.zzdn(str);
                            break;
                        default:
                            break;
                    }
                }
                String valueOf = String.valueOf(zza);
                StringBuilder stringBuilder = new StringBuilder(81 + String.valueOf(valueOf).length());
                stringBuilder.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                stringBuilder.append(valueOf);
                throw new IllegalStateException(stringBuilder.toString());
            }
            zza2 = new zza(this, zza);
            zza2.zza(serviceConnection, str);
            zza2.zzdn(str);
            this.zzaGf.put(zza, zza2);
            isBound = zza2.isBound();
        }
        return isBound;
    }

    protected final void zzb(zza zza, ServiceConnection serviceConnection, String str) {
        zzac.zzb((Object) serviceConnection, (Object) "ServiceConnection must not be null");
        synchronized (this.zzaGf) {
            zza zza2 = (zza) this.zzaGf.get(zza);
            String valueOf;
            StringBuilder stringBuilder;
            if (zza2 == null) {
                valueOf = String.valueOf(zza);
                stringBuilder = new StringBuilder(50 + String.valueOf(valueOf).length());
                stringBuilder.append("Nonexistent connection status for service config: ");
                stringBuilder.append(valueOf);
                throw new IllegalStateException(stringBuilder.toString());
            } else if (zza2.zza(serviceConnection)) {
                zza2.zzb(serviceConnection, str);
                if (zza2.zzya()) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zza), this.zzaGh);
                }
            } else {
                valueOf = String.valueOf(zza);
                stringBuilder = new StringBuilder(76 + String.valueOf(valueOf).length());
                stringBuilder.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                stringBuilder.append(valueOf);
                throw new IllegalStateException(stringBuilder.toString());
            }
        }
    }
}
