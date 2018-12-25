package com.google.firebase.iid;

import android.app.Service;
import android.content.BroadcastReceiver.PendingResult;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Log;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class zzb extends Service {
    final ExecutorService zzbtK = Executors.newSingleThreadExecutor();
    private Binder zzckT;
    private int zzckU;
    private int zzckV = 0;
    private final Object zzrJ = new Object();

    static class zza {
        final Intent intent;
        private final PendingResult zzckY;
        private boolean zzckZ = false;
        private final ScheduledFuture<?> zzcla;

        zza(final Intent intent, PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
            this.intent = intent;
            this.zzckY = pendingResult;
            this.zzcla = scheduledExecutorService.schedule(new Runnable(this) {
                final /* synthetic */ zza zzclb;

                public final void run() {
                    String valueOf = String.valueOf(intent.getAction());
                    StringBuilder stringBuilder = new StringBuilder(61 + String.valueOf(valueOf).length());
                    stringBuilder.append("Service took too long to process intent: ");
                    stringBuilder.append(valueOf);
                    stringBuilder.append(" App may get closed.");
                    Log.w("EnhancedIntentService", stringBuilder.toString());
                    this.zzclb.finish();
                }
            }, 9500, TimeUnit.MILLISECONDS);
        }

        final synchronized void finish() {
            if (!this.zzckZ) {
                this.zzckY.finish();
                this.zzcla.cancel(false);
                this.zzckZ = true;
            }
        }
    }

    public static class zzb extends Binder {
        private final zzb zzclc;

        zzb(zzb zzb) {
            this.zzclc = zzb;
        }

        public final void zza(final zza zza) {
            if (Binder.getCallingUid() != Process.myUid()) {
                throw new SecurityException("Binding only allowed within app");
            }
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "service received new intent via bind strategy");
            }
            if (this.zzclc.zzE(zza.intent)) {
                zza.finish();
                return;
            }
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "intent being queued for bg execution");
            }
            this.zzclc.zzbtK.execute(new Runnable(this) {
                final /* synthetic */ zzb zzcle;

                public final void run() {
                    if (Log.isLoggable("EnhancedIntentService", 3)) {
                        Log.d("EnhancedIntentService", "bg processing of the intent starting now");
                    }
                    this.zzcle.zzclc.handleIntent(zza.intent);
                    zza.finish();
                }
            });
        }
    }

    public static class zzc implements ServiceConnection {
        private final Intent zzclf;
        private final ScheduledExecutorService zzclg;
        private final Queue<zza> zzclh;
        private zzb zzcli;
        private boolean zzclj;
        private final Context zzqn;

        public zzc(Context context, String str) {
            this(context, str, new ScheduledThreadPoolExecutor(0));
        }

        private zzc(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
            this.zzclh = new LinkedList();
            this.zzclj = false;
            this.zzqn = context.getApplicationContext();
            this.zzclf = new Intent(str).setPackage(this.zzqn.getPackageName());
            this.zzclg = scheduledExecutorService;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private synchronized void zzwH() {
            /*
            r5 = this;
            monitor-enter(r5);
            r0 = "EnhancedIntentService";
            r1 = 3;
            r0 = android.util.Log.isLoggable(r0, r1);	 Catch:{ all -> 0x00b5 }
            if (r0 == 0) goto L_0x0011;
        L_0x000a:
            r0 = "EnhancedIntentService";
            r2 = "flush queue called";
            android.util.Log.d(r0, r2);	 Catch:{ all -> 0x00b5 }
        L_0x0011:
            r0 = r5.zzclh;	 Catch:{ all -> 0x00b5 }
            r0 = r0.isEmpty();	 Catch:{ all -> 0x00b5 }
            if (r0 != 0) goto L_0x00b3;
        L_0x0019:
            r0 = "EnhancedIntentService";
            r0 = android.util.Log.isLoggable(r0, r1);	 Catch:{ all -> 0x00b5 }
            if (r0 == 0) goto L_0x0028;
        L_0x0021:
            r0 = "EnhancedIntentService";
            r2 = "found intent to be delivered";
            android.util.Log.d(r0, r2);	 Catch:{ all -> 0x00b5 }
        L_0x0028:
            r0 = r5.zzcli;	 Catch:{ all -> 0x00b5 }
            if (r0 == 0) goto L_0x0051;
        L_0x002c:
            r0 = r5.zzcli;	 Catch:{ all -> 0x00b5 }
            r0 = r0.isBinderAlive();	 Catch:{ all -> 0x00b5 }
            if (r0 == 0) goto L_0x0051;
        L_0x0034:
            r0 = "EnhancedIntentService";
            r0 = android.util.Log.isLoggable(r0, r1);	 Catch:{ all -> 0x00b5 }
            if (r0 == 0) goto L_0x0043;
        L_0x003c:
            r0 = "EnhancedIntentService";
            r2 = "binder is alive, sending the intent.";
            android.util.Log.d(r0, r2);	 Catch:{ all -> 0x00b5 }
        L_0x0043:
            r0 = r5.zzclh;	 Catch:{ all -> 0x00b5 }
            r0 = r0.poll();	 Catch:{ all -> 0x00b5 }
            r0 = (com.google.firebase.iid.zzb.zza) r0;	 Catch:{ all -> 0x00b5 }
            r2 = r5.zzcli;	 Catch:{ all -> 0x00b5 }
            r2.zza(r0);	 Catch:{ all -> 0x00b5 }
            goto L_0x0011;
        L_0x0051:
            r0 = "EnhancedIntentService";
            r0 = android.util.Log.isLoggable(r0, r1);	 Catch:{ all -> 0x00b5 }
            r1 = 1;
            if (r0 == 0) goto L_0x0075;
        L_0x005a:
            r0 = "EnhancedIntentService";
            r2 = r5.zzclj;	 Catch:{ all -> 0x00b5 }
            r2 = r2 ^ r1;
            r3 = 39;
            r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00b5 }
            r4.<init>(r3);	 Catch:{ all -> 0x00b5 }
            r3 = "binder is dead. start connection? ";
            r4.append(r3);	 Catch:{ all -> 0x00b5 }
            r4.append(r2);	 Catch:{ all -> 0x00b5 }
            r2 = r4.toString();	 Catch:{ all -> 0x00b5 }
            android.util.Log.d(r0, r2);	 Catch:{ all -> 0x00b5 }
        L_0x0075:
            r0 = r5.zzclj;	 Catch:{ all -> 0x00b5 }
            if (r0 != 0) goto L_0x00b1;
        L_0x0079:
            r5.zzclj = r1;	 Catch:{ all -> 0x00b5 }
            r0 = com.google.android.gms.common.stats.zza.zzyJ();	 Catch:{ SecurityException -> 0x0095 }
            r1 = r5.zzqn;	 Catch:{ SecurityException -> 0x0095 }
            r2 = r5.zzclf;	 Catch:{ SecurityException -> 0x0095 }
            r3 = 65;
            r0 = r0.zza(r1, r2, r5, r3);	 Catch:{ SecurityException -> 0x0095 }
            if (r0 == 0) goto L_0x008d;
        L_0x008b:
            monitor-exit(r5);
            return;
        L_0x008d:
            r0 = "EnhancedIntentService";
            r1 = "binding to the service failed";
            android.util.Log.e(r0, r1);	 Catch:{ SecurityException -> 0x0095 }
            goto L_0x009d;
        L_0x0095:
            r0 = move-exception;
            r1 = "EnhancedIntentService";
            r2 = "Exception while binding the service";
            android.util.Log.e(r1, r2, r0);	 Catch:{ all -> 0x00b5 }
        L_0x009d:
            r0 = r5.zzclh;	 Catch:{ all -> 0x00b5 }
            r0 = r0.isEmpty();	 Catch:{ all -> 0x00b5 }
            if (r0 != 0) goto L_0x00b1;
        L_0x00a5:
            r0 = r5.zzclh;	 Catch:{ all -> 0x00b5 }
            r0 = r0.poll();	 Catch:{ all -> 0x00b5 }
            r0 = (com.google.firebase.iid.zzb.zza) r0;	 Catch:{ all -> 0x00b5 }
            r0.finish();	 Catch:{ all -> 0x00b5 }
            goto L_0x009d;
        L_0x00b1:
            monitor-exit(r5);
            return;
        L_0x00b3:
            monitor-exit(r5);
            return;
        L_0x00b5:
            r0 = move-exception;
            monitor-exit(r5);
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzb.zzc.zzwH():void");
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this) {
                this.zzclj = false;
                this.zzcli = (zzb) iBinder;
                if (Log.isLoggable("EnhancedIntentService", 3)) {
                    String valueOf = String.valueOf(componentName);
                    StringBuilder stringBuilder = new StringBuilder(20 + String.valueOf(valueOf).length());
                    stringBuilder.append("onServiceConnected: ");
                    stringBuilder.append(valueOf);
                    Log.d("EnhancedIntentService", stringBuilder.toString());
                }
                zzwH();
            }
        }

        public final void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                String valueOf = String.valueOf(componentName);
                StringBuilder stringBuilder = new StringBuilder(23 + String.valueOf(valueOf).length());
                stringBuilder.append("onServiceDisconnected: ");
                stringBuilder.append(valueOf);
                Log.d("EnhancedIntentService", stringBuilder.toString());
            }
            zzwH();
        }

        public final synchronized void zza(Intent intent, PendingResult pendingResult) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "new intent queued in the bind-strategy delivery");
            }
            this.zzclh.add(new zza(intent, pendingResult, this.zzclg));
            zzwH();
        }
    }

    private void zzC(Intent intent) {
        if (intent != null) {
            WakefulBroadcastReceiver.completeWakefulIntent(intent);
        }
        synchronized (this.zzrJ) {
            this.zzckV--;
            if (this.zzckV == 0) {
                zzqE(this.zzckU);
            }
        }
    }

    public abstract void handleIntent(Intent intent);

    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.zzckT == null) {
            this.zzckT = new zzb(this);
        }
        return this.zzckT;
    }

    public final int onStartCommand(final Intent intent, int i, int i2) {
        synchronized (this.zzrJ) {
            this.zzckU = i2;
            this.zzckV++;
        }
        final Intent zzD = zzD(intent);
        if (zzD == null) {
            zzC(intent);
            return 2;
        } else if (zzE(zzD)) {
            zzC(intent);
            return 2;
        } else {
            this.zzbtK.execute(new Runnable(this) {
                final /* synthetic */ zzb zzckX;

                public final void run() {
                    this.zzckX.handleIntent(zzD);
                    this.zzckX.zzC(intent);
                }
            });
            return 3;
        }
    }

    protected Intent zzD(Intent intent) {
        return intent;
    }

    public boolean zzE(Intent intent) {
        return false;
    }

    boolean zzqE(int i) {
        return stopSelfResult(i);
    }
}
