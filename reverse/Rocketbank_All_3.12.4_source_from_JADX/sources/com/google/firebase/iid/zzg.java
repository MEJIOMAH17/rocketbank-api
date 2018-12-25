package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import java.util.LinkedList;
import java.util.Queue;
import ru.rocketbank.r2d2.root.feed.FeedFragment;

public final class zzg {
    private static zzg zzclC;
    private final SimpleArrayMap<String, String> zzclD = new SimpleArrayMap();
    private Boolean zzclE = null;
    final Queue<Intent> zzclF = new LinkedList();
    final Queue<Intent> zzclG = new LinkedList();

    private zzg() {
    }

    private static PendingIntent zza(Context context, int i, String str, Intent intent, int i2) {
        Intent intent2 = new Intent(context, FirebaseInstanceIdInternalReceiver.class);
        intent2.setAction(str);
        intent2.putExtra("wrapped_intent", intent);
        return PendingIntent.getBroadcast(context, i, intent2, i2);
    }

    public static PendingIntent zza$4e95509e(Context context, Intent intent) {
        return zza(context, 0, "com.google.firebase.INSTANCE_ID_EVENT", intent, 134217728);
    }

    public static synchronized zzg zzabW() {
        zzg zzg;
        synchronized (zzg.class) {
            if (zzclC == null) {
                zzclC = new zzg();
            }
            zzg = zzclC;
        }
        return zzg;
    }

    public static PendingIntent zzb$4e95509e(Context context, int i, Intent intent) {
        return zza(context, i, "com.google.firebase.MESSAGING_EVENT", intent, 1073741824);
    }

    public final Intent zzabY() {
        return (Intent) this.zzclG.poll();
    }

    public final int zzb(Context context, String str, Intent intent) {
        Object obj;
        Queue queue;
        String str2;
        String str3;
        int hashCode = str.hashCode();
        if (hashCode != -842411455) {
            if (hashCode == 41532704) {
                if (str.equals("com.google.firebase.MESSAGING_EVENT")) {
                    obj = 1;
                    switch (obj) {
                        case null:
                            queue = this.zzclF;
                            break;
                        case 1:
                            queue = this.zzclG;
                            break;
                        default:
                            str2 = "FirebaseInstanceId";
                            str3 = "Unknown service action: ";
                            str = String.valueOf(str);
                            Log.w(str2, str.length() != 0 ? str3.concat(str) : new String(str3));
                            return 500;
                    }
                    queue.offer(intent);
                    intent = new Intent(str);
                    intent.setPackage(context.getPackageName());
                    return zzh(context, intent);
                }
            }
        } else if (str.equals("com.google.firebase.INSTANCE_ID_EVENT")) {
            obj = null;
            switch (obj) {
                case null:
                    queue = this.zzclF;
                    break;
                case 1:
                    queue = this.zzclG;
                    break;
                default:
                    str2 = "FirebaseInstanceId";
                    str3 = "Unknown service action: ";
                    str = String.valueOf(str);
                    if (str.length() != 0) {
                    }
                    Log.w(str2, str.length() != 0 ? str3.concat(str) : new String(str3));
                    return 500;
            }
            queue.offer(intent);
            intent = new Intent(str);
            intent.setPackage(context.getPackageName());
            return zzh(context, intent);
        }
        obj = -1;
        switch (obj) {
            case null:
                queue = this.zzclF;
                break;
            case 1:
                queue = this.zzclG;
                break;
            default:
                str2 = "FirebaseInstanceId";
                str3 = "Unknown service action: ";
                str = String.valueOf(str);
                if (str.length() != 0) {
                }
                Log.w(str2, str.length() != 0 ? str3.concat(str) : new String(str3));
                return 500;
        }
        queue.offer(intent);
        intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        return zzh(context, intent);
    }

    public final void zzg(Context context, Intent intent) {
        zzb(context, "com.google.firebase.INSTANCE_ID_EVENT", intent);
    }

    private int zzh(Context context, Intent intent) {
        String str;
        synchronized (this.zzclD) {
            str = (String) this.zzclD.get(intent.getAction());
        }
        boolean z = false;
        if (str == null) {
            ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
            if (resolveService != null) {
                if (resolveService.serviceInfo != null) {
                    ServiceInfo serviceInfo = resolveService.serviceInfo;
                    if (context.getPackageName().equals(serviceInfo.packageName)) {
                        if (serviceInfo.name != null) {
                            str = serviceInfo.name;
                            if (str.startsWith(".")) {
                                String valueOf = String.valueOf(context.getPackageName());
                                str = String.valueOf(str);
                                str = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
                            }
                            synchronized (this.zzclD) {
                                this.zzclD.put(intent.getAction(), str);
                            }
                        }
                    }
                    String valueOf2 = String.valueOf(serviceInfo.packageName);
                    str = String.valueOf(serviceInfo.name);
                    StringBuilder stringBuilder = new StringBuilder((94 + String.valueOf(valueOf2).length()) + String.valueOf(str).length());
                    stringBuilder.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
                    stringBuilder.append(valueOf2);
                    stringBuilder.append("/");
                    stringBuilder.append(str);
                    Log.e("FirebaseInstanceId", stringBuilder.toString());
                    if (this.zzclE == null) {
                        if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                            z = true;
                        }
                        this.zzclE = Boolean.valueOf(z);
                    }
                    if (this.zzclE.booleanValue()) {
                        context = WakefulBroadcastReceiver.startWakefulService(context, intent);
                    } else {
                        context = context.startService(intent);
                        Log.d("FirebaseInstanceId", "Missing wake lock permission, service start may be delayed");
                    }
                    if (context == null) {
                        return -1;
                    }
                    Log.e("FirebaseInstanceId", "Error while delivering the message: ServiceIntent not found.");
                    return 404;
                }
            }
            Log.e("FirebaseInstanceId", "Failed to resolve target intent service, skipping classname enforcement");
            if (this.zzclE == null) {
                if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                    z = true;
                }
                this.zzclE = Boolean.valueOf(z);
            }
            if (this.zzclE.booleanValue()) {
                context = context.startService(intent);
                Log.d("FirebaseInstanceId", "Missing wake lock permission, service start may be delayed");
            } else {
                context = WakefulBroadcastReceiver.startWakefulService(context, intent);
            }
            if (context == null) {
                return -1;
            }
            Log.e("FirebaseInstanceId", "Error while delivering the message: ServiceIntent not found.");
            return 404;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            valueOf = "FirebaseInstanceId";
            valueOf2 = "Restricting intent to a specific service: ";
            String valueOf3 = String.valueOf(str);
            Log.d(valueOf, valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2));
        }
        intent.setClassName(context.getPackageName(), str);
        try {
            if (this.zzclE == null) {
                if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                    z = true;
                }
                this.zzclE = Boolean.valueOf(z);
            }
            if (this.zzclE.booleanValue()) {
                context = WakefulBroadcastReceiver.startWakefulService(context, intent);
            } else {
                context = context.startService(intent);
                Log.d("FirebaseInstanceId", "Missing wake lock permission, service start may be delayed");
            }
            if (context == null) {
                return -1;
            }
            Log.e("FirebaseInstanceId", "Error while delivering the message: ServiceIntent not found.");
            return 404;
        } catch (Context context2) {
            Log.e("FirebaseInstanceId", "Error while delivering the message to the serviceIntent", context2);
            return 401;
        } catch (Context context22) {
            context22 = String.valueOf(context22);
            StringBuilder stringBuilder2 = new StringBuilder(45 + String.valueOf(context22).length());
            stringBuilder2.append("Failed to start service while in background: ");
            stringBuilder2.append(context22);
            Log.e("FirebaseInstanceId", stringBuilder2.toString());
            return FeedFragment.NEW_PASSPORT_REQUEST;
        }
    }
}
