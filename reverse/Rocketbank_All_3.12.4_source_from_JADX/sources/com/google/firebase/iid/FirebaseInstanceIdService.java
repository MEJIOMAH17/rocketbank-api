package com.google.firebase.iid;

import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.util.Log;

public class FirebaseInstanceIdService extends zzb {
    static final Object zzclr = new Object();
    static boolean zzcls = false;
    private boolean zzclt = false;

    private static class zza extends BroadcastReceiver {
        static BroadcastReceiver receiver;
        final int zzclu;

        private zza(int i) {
            this.zzclu = i;
        }

        static synchronized void zzl(Context context, int i) {
            synchronized (zza.class) {
                if (receiver != null) {
                    return;
                }
                receiver = new zza(i);
                context.getApplicationContext().registerReceiver(receiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            }
        }

        public void onReceive(Context context, Intent intent) {
            synchronized (zza.class) {
                if (receiver != this) {
                } else if (FirebaseInstanceIdService.zzcu(context)) {
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        Log.d("FirebaseInstanceId", "connectivity changed. starting background sync.");
                    }
                    context.getApplicationContext().unregisterReceiver(this);
                    receiver = null;
                    zzg.zzabW().zzg(context, FirebaseInstanceIdService.zzqF(this.zzclu));
                }
            }
        }
    }

    private String zzG(Intent intent) {
        String stringExtra = intent.getStringExtra("subtype");
        return stringExtra == null ? "" : stringExtra;
    }

    private void zzU(Bundle bundle) {
        String zzbA = zzf.zzbA(this);
        if (zzbA == null) {
            Log.w("FirebaseInstanceId", "Unable to respond to ping due to missing target package");
            return;
        }
        Intent intent = new Intent("com.google.android.gcm.intent.SEND");
        intent.setPackage(zzbA);
        intent.putExtras(bundle);
        zzf.zzf(this, intent);
        intent.putExtra("google.to", "google.com/iid");
        intent.putExtra("google.message_id", zzf.zzHn());
        sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
    }

    private int zza(Intent intent, boolean z) {
        int intExtra = intent == null ? 10 : intent.getIntExtra("next_retry_delay_in_seconds", 0);
        return (intExtra >= 10 || z) ? intExtra < 10 ? 10 : intExtra > 28800 ? 28800 : intExtra : 30;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void zza(android.content.Context r2, com.google.firebase.iid.FirebaseInstanceId r3) {
        /*
        r0 = zzclr;
        monitor-enter(r0);
        r1 = zzcls;	 Catch:{ all -> 0x0026 }
        if (r1 == 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r0);	 Catch:{ all -> 0x0026 }
        return;
    L_0x0009:
        monitor-exit(r0);	 Catch:{ all -> 0x0026 }
        r3 = r3.zzabP();
        if (r3 == 0) goto L_0x0022;
    L_0x0010:
        r0 = com.google.firebase.iid.zzd.zzbhN;
        r3 = r3.zzjB(r0);
        if (r3 != 0) goto L_0x0022;
    L_0x0018:
        r3 = com.google.firebase.iid.FirebaseInstanceId.zzabR();
        r3 = r3.zzabU();
        if (r3 == 0) goto L_0x0025;
    L_0x0022:
        zzct(r2);
    L_0x0025:
        return;
    L_0x0026:
        r2 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0026 }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.FirebaseInstanceIdService.zza(android.content.Context, com.google.firebase.iid.FirebaseInstanceId):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zza(android.content.Intent r8, boolean r9, boolean r10) {
        /*
        r7 = this;
        r9 = zzclr;
        monitor-enter(r9);
        r0 = 0;
        zzcls = r0;	 Catch:{ all -> 0x00d7 }
        monitor-exit(r9);	 Catch:{ all -> 0x00d7 }
        r9 = com.google.firebase.iid.zzf.zzbA(r7);
        if (r9 != 0) goto L_0x000e;
    L_0x000d:
        return;
    L_0x000e:
        r9 = com.google.firebase.iid.FirebaseInstanceId.getInstance();
        r1 = r9.zzabP();
        if (r1 == 0) goto L_0x0099;
    L_0x0018:
        r2 = com.google.firebase.iid.zzd.zzbhN;
        r2 = r1.zzjB(r2);
        if (r2 == 0) goto L_0x0022;
    L_0x0020:
        goto L_0x0099;
    L_0x0022:
        r9 = com.google.firebase.iid.FirebaseInstanceId.zzabR();
    L_0x0026:
        r10 = r9.zzabU();
        if (r10 == 0) goto L_0x0091;
    L_0x002c:
        r1 = "!";
        r1 = r10.split(r1);
        r2 = r1.length;
        r3 = 2;
        if (r2 != r3) goto L_0x008d;
    L_0x0036:
        r2 = r1[r0];
        r3 = 1;
        r1 = r1[r3];
        r4 = -1;
        r5 = r2.hashCode();	 Catch:{ IOException -> 0x0084 }
        r6 = 83;
        if (r5 == r6) goto L_0x0052;
    L_0x0044:
        r6 = 85;
        if (r5 == r6) goto L_0x0049;
    L_0x0048:
        goto L_0x005c;
    L_0x0049:
        r5 = "U";
        r2 = r2.equals(r5);	 Catch:{ IOException -> 0x0084 }
        if (r2 == 0) goto L_0x005c;
    L_0x0051:
        goto L_0x005d;
    L_0x0052:
        r3 = "S";
        r2 = r2.equals(r3);	 Catch:{ IOException -> 0x0084 }
        if (r2 == 0) goto L_0x005c;
    L_0x005a:
        r3 = r0;
        goto L_0x005d;
    L_0x005c:
        r3 = r4;
    L_0x005d:
        switch(r3) {
            case 0: goto L_0x0074;
            case 1: goto L_0x0061;
            default: goto L_0x0060;
        };	 Catch:{ IOException -> 0x0084 }
    L_0x0060:
        goto L_0x008d;
    L_0x0061:
        r2 = com.google.firebase.iid.FirebaseInstanceId.getInstance();	 Catch:{ IOException -> 0x0084 }
        r2.zzjv(r1);	 Catch:{ IOException -> 0x0084 }
        r1 = r7.zzclt;	 Catch:{ IOException -> 0x0084 }
        if (r1 == 0) goto L_0x008d;
    L_0x006c:
        r1 = "FirebaseInstanceId";
        r2 = "unsubscribe operation succeeded";
    L_0x0070:
        android.util.Log.d(r1, r2);	 Catch:{ IOException -> 0x0084 }
        goto L_0x008d;
    L_0x0074:
        r2 = com.google.firebase.iid.FirebaseInstanceId.getInstance();	 Catch:{ IOException -> 0x0084 }
        r2.zzju(r1);	 Catch:{ IOException -> 0x0084 }
        r1 = r7.zzclt;	 Catch:{ IOException -> 0x0084 }
        if (r1 == 0) goto L_0x008d;
    L_0x007f:
        r1 = "FirebaseInstanceId";
        r2 = "subscribe operation succeeded";
        goto L_0x0070;
    L_0x0084:
        r9 = move-exception;
        r9 = r9.getMessage();
        r7.zzd(r8, r9);
        return;
    L_0x008d:
        r9.zzjx(r10);
        goto L_0x0026;
    L_0x0091:
        r8 = "FirebaseInstanceId";
        r9 = "topic sync succeeded";
        android.util.Log.d(r8, r9);
        return;
    L_0x0099:
        r0 = r9.zzabQ();	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        if (r0 == 0) goto L_0x00bf;
    L_0x009f:
        r2 = r7.zzclt;	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        if (r2 == 0) goto L_0x00aa;
    L_0x00a3:
        r2 = "FirebaseInstanceId";
        r3 = "get master token succeeded";
        android.util.Log.d(r2, r3);	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
    L_0x00aa:
        zza(r7, r9);	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        if (r10 != 0) goto L_0x00bb;
    L_0x00af:
        if (r1 == 0) goto L_0x00bb;
    L_0x00b1:
        if (r1 == 0) goto L_0x00be;
    L_0x00b3:
        r9 = r1.zzbxW;	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        r9 = r0.equals(r9);	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        if (r9 != 0) goto L_0x00be;
    L_0x00bb:
        r7.onTokenRefresh();	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
    L_0x00be:
        return;
    L_0x00bf:
        r9 = "returned token is null";
        r7.zzd(r8, r9);	 Catch:{ IOException -> 0x00ce, SecurityException -> 0x00c5 }
        return;
    L_0x00c5:
        r8 = move-exception;
        r9 = "FirebaseInstanceId";
        r10 = "Unable to get master token";
        android.util.Log.e(r9, r10, r8);
        return;
    L_0x00ce:
        r9 = move-exception;
        r9 = r9.getMessage();
        r7.zzd(r8, r9);
        return;
    L_0x00d7:
        r8 = move-exception;
        monitor-exit(r9);	 Catch:{ all -> 0x00d7 }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.FirebaseInstanceIdService.zza(android.content.Intent, boolean, boolean):void");
    }

    static void zzct(Context context) {
        if (zzf.zzbA(context) != null) {
            synchronized (zzclr) {
                if (!zzcls) {
                    zzg.zzabW().zzg(context, zzqF(0));
                    zzcls = true;
                }
            }
        }
    }

    private static boolean zzcu(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private void zzd(Intent intent, String str) {
        boolean zzcu = zzcu(this);
        int zza = zza(intent, zzcu);
        StringBuilder stringBuilder = new StringBuilder(47 + String.valueOf(str).length());
        stringBuilder.append("background sync failed: ");
        stringBuilder.append(str);
        stringBuilder.append(", retry in ");
        stringBuilder.append(zza);
        stringBuilder.append("s");
        Log.d("FirebaseInstanceId", stringBuilder.toString());
        synchronized (zzclr) {
            zzqG(zza);
            zzcls = true;
        }
        if (!zzcu) {
            if (this.zzclt) {
                Log.d("FirebaseInstanceId", "device not connected. Connectivity change received registered");
            }
            zza.zzl(this, zza);
        }
    }

    private zzd zzjw(String str) {
        if (str == null) {
            return zzd.zzb(this, null);
        }
        Bundle bundle = new Bundle();
        bundle.putString("subtype", str);
        return zzd.zzb(this, bundle);
    }

    private static Intent zzqF(int i) {
        Intent intent = new Intent("ACTION_TOKEN_REFRESH_RETRY");
        intent.putExtra("next_retry_delay_in_seconds", i);
        return intent;
    }

    private void zzqG(int i) {
        ((AlarmManager) getSystemService(NotificationCompat.CATEGORY_ALARM)).set(3, SystemClock.elapsedRealtime() + ((long) (i * 1000)), zzg.zza$4e95509e(this, zzqF(i << 1)));
    }

    public void handleIntent(Intent intent) {
        String action = intent.getAction();
        if (action == null) {
            action = "";
        }
        boolean z = true;
        if (action.hashCode() == -1737547627) {
            if (action.equals("ACTION_TOKEN_REFRESH_RETRY")) {
                z = false;
            }
        }
        if (z) {
            zzF(intent);
        } else {
            zza(intent, false, false);
        }
    }

    public void onTokenRefresh() {
    }

    public boolean zzE(Intent intent) {
        this.zzclt = Log.isLoggable("FirebaseInstanceId", 3);
        if (intent.getStringExtra("error") == null) {
            if (intent.getStringExtra("registration_id") == null) {
                return false;
            }
        }
        String zzG = zzG(intent);
        if (this.zzclt) {
            String str = "FirebaseInstanceId";
            String str2 = "Register result in service ";
            String valueOf = String.valueOf(zzG);
            Log.d(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
        zzjw(zzG);
        zzd.zzabT().zzs(intent);
        return true;
    }

    public void zzF(Intent intent) {
        String zzG = zzG(intent);
        zzd zzjw = zzjw(zzG);
        String stringExtra = intent.getStringExtra("CMD");
        if (this.zzclt) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder stringBuilder = new StringBuilder(((18 + String.valueOf(zzG).length()) + String.valueOf(stringExtra).length()) + String.valueOf(valueOf).length());
            stringBuilder.append("Service command ");
            stringBuilder.append(zzG);
            stringBuilder.append(" ");
            stringBuilder.append(stringExtra);
            stringBuilder.append(" ");
            stringBuilder.append(valueOf);
            Log.d("FirebaseInstanceId", stringBuilder.toString());
        }
        if (intent.getStringExtra("unregistered") != null) {
            zzh zzabS = zzd.zzabS();
            if (zzG == null) {
                zzG = "";
            }
            zzabS.zzeK(zzG);
            zzd.zzabT().zzs(intent);
        } else if ("gcm.googleapis.com/refresh".equals(intent.getStringExtra("from"))) {
            zzd.zzabS().zzeK(zzG);
            zza(intent, false, true);
        } else if ("RST".equals(stringExtra)) {
            zzjw.zzHi();
            zza(intent, true, true);
        } else {
            if ("RST_FULL".equals(stringExtra)) {
                if (!zzd.zzabS().isEmpty()) {
                    zzjw.zzHi();
                    zzd.zzabS().zzHo();
                    zza(intent, true, true);
                }
            } else if ("SYNC".equals(stringExtra)) {
                zzd.zzabS().zzeK(zzG);
                zza(intent, false, true);
            } else if ("PING".equals(stringExtra)) {
                zzU(intent.getExtras());
            }
        }
    }

    protected Intent zzD(Intent intent) {
        return (Intent) zzg.zzabW().zzclF.poll();
    }
}
