package com.google.firebase.messaging;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.C0537R;
import com.google.android.gms.common.util.zzt;
import com.google.firebase.iid.zzg;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

final class zza {
    static zza zzclI;
    private final Context mContext;
    private Bundle zzaDS;
    private Method zzclJ;
    private Method zzclK;
    private final AtomicInteger zzclL = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private zza(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @TargetApi(26)
    private Notification zza(CharSequence charSequence, String str, int i, Integer num, Uri uri, PendingIntent pendingIntent, PendingIntent pendingIntent2, String str2) {
        Builder smallIcon = new Builder(this.mContext).setAutoCancel(true).setSmallIcon(i);
        if (!TextUtils.isEmpty(charSequence)) {
            smallIcon.setContentTitle(charSequence);
        }
        if (!TextUtils.isEmpty(str)) {
            smallIcon.setContentText(str);
            smallIcon.setStyle(new BigTextStyle().bigText(str));
        }
        if (num != null) {
            smallIcon.setColor(num.intValue());
        }
        if (uri != null) {
            smallIcon.setSound(uri);
        }
        if (pendingIntent != null) {
            smallIcon.setContentIntent(pendingIntent);
        }
        if (pendingIntent2 != null) {
            smallIcon.setDeleteIntent(pendingIntent2);
        }
        if (str2 != null) {
            try {
                if (this.zzclJ == null) {
                    this.zzclJ = smallIcon.getClass().getMethod("setChannel", new Class[]{String.class});
                }
                this.zzclJ.invoke(smallIcon, new Object[]{str2});
            } catch (Throwable e) {
                Log.e("FirebaseMessaging", "Error while setting the notification channel", e);
            }
        }
        return smallIcon.build();
    }

    private static void zza(Intent intent, Bundle bundle) {
        for (String str : bundle.keySet()) {
            if (str.startsWith("google.c.a.") || str.equals("from")) {
                intent.putExtra(str, bundle.getString(str));
            }
        }
    }

    private android.os.Bundle zzacd() {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r4 = this;
        r0 = r4.zzaDS;
        if (r0 == 0) goto L_0x0007;
    L_0x0004:
        r0 = r4.zzaDS;
        return r0;
    L_0x0007:
        r0 = 0;
        r1 = r4.mContext;	 Catch:{ NameNotFoundException -> 0x001b }
        r1 = r1.getPackageManager();	 Catch:{ NameNotFoundException -> 0x001b }
        r2 = r4.mContext;	 Catch:{ NameNotFoundException -> 0x001b }
        r2 = r2.getPackageName();	 Catch:{ NameNotFoundException -> 0x001b }
        r3 = 128; // 0x80 float:1.794E-43 double:6.32E-322;	 Catch:{ NameNotFoundException -> 0x001b }
        r1 = r1.getApplicationInfo(r2, r3);	 Catch:{ NameNotFoundException -> 0x001b }
        r0 = r1;
    L_0x001b:
        if (r0 == 0) goto L_0x0028;
    L_0x001d:
        r1 = r0.metaData;
        if (r1 == 0) goto L_0x0028;
    L_0x0021:
        r0 = r0.metaData;
        r4.zzaDS = r0;
        r0 = r4.zzaDS;
        return r0;
    L_0x0028:
        r0 = android.os.Bundle.EMPTY;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.zza.zzacd():android.os.Bundle");
    }

    static synchronized zza zzcy(Context context) {
        zza zza;
        synchronized (zza.class) {
            if (zzclI == null) {
                zzclI = new zza(context);
            }
            zza = zzclI;
        }
        return zza;
    }

    private java.lang.Integer zzjD(java.lang.String r5) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r4 = this;
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 0;
        r2 = 21;
        if (r0 >= r2) goto L_0x0008;
    L_0x0007:
        return r1;
    L_0x0008:
        r0 = android.text.TextUtils.isEmpty(r5);
        if (r0 != 0) goto L_0x003d;
    L_0x000e:
        r0 = android.graphics.Color.parseColor(r5);	 Catch:{ IllegalArgumentException -> 0x0017 }
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ IllegalArgumentException -> 0x0017 }
        return r0;
    L_0x0017:
        r0 = "FirebaseMessaging";
        r2 = 54;
        r3 = java.lang.String.valueOf(r5);
        r3 = r3.length();
        r2 = r2 + r3;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r2);
        r2 = "Color ";
        r3.append(r2);
        r3.append(r5);
        r5 = " not valid. Notification will use default color.";
        r3.append(r5);
        r5 = r3.toString();
        android.util.Log.w(r0, r5);
    L_0x003d:
        r5 = r4.zzacd();
        r0 = "com.google.firebase.messaging.default_notification_color";
        r2 = 0;
        r5 = r5.getInt(r0, r2);
        if (r5 == 0) goto L_0x005c;
    L_0x004a:
        r0 = r4.mContext;	 Catch:{ NotFoundException -> 0x0055 }
        r5 = android.support.v4.content.ContextCompat.getColor(r0, r5);	 Catch:{ NotFoundException -> 0x0055 }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ NotFoundException -> 0x0055 }
        return r5;
    L_0x0055:
        r5 = "FirebaseMessaging";
        r0 = "Cannot find the color resource referenced in AndroidManifest.";
        android.util.Log.w(r5, r0);
    L_0x005c:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.zza.zzjD(java.lang.String):java.lang.Integer");
    }

    @TargetApi(26)
    private String zzjE(String str) {
        if (!zzt.zzzq()) {
            return null;
        }
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService(NotificationManager.class);
        try {
            String str2;
            if (this.zzclK == null) {
                this.zzclK = notificationManager.getClass().getMethod("getNotificationChannel", new Class[]{String.class});
            }
            if (!TextUtils.isEmpty(str)) {
                if (this.zzclK.invoke(notificationManager, new Object[]{str}) != null) {
                    return str;
                }
                StringBuilder stringBuilder = new StringBuilder(122 + String.valueOf(str).length());
                stringBuilder.append("Notification Channel requested (");
                stringBuilder.append(str);
                stringBuilder.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
                Log.w("FirebaseMessaging", stringBuilder.toString());
            }
            Object string = zzacd().getString("com.google.firebase.messaging.default_notification_channel_id");
            if (TextUtils.isEmpty(string)) {
                str = "FirebaseMessaging";
                str2 = "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.";
            } else {
                if (this.zzclK.invoke(notificationManager, new Object[]{string}) != null) {
                    return string;
                }
                str = "FirebaseMessaging";
                str2 = "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.";
            }
            Log.w(str, str2);
            if (this.zzclK.invoke(notificationManager, new Object[]{"fcm_fallback_notification_channel"}) == null) {
                Object newInstance = Class.forName("android.app.NotificationChannel").getConstructor(new Class[]{String.class, CharSequence.class, Integer.TYPE}).newInstance(new Object[]{"fcm_fallback_notification_channel", this.mContext.getString(C0537R.string.fcm_fallback_notification_channel_label), Integer.valueOf(3)});
                notificationManager.getClass().getMethod("createNotificationChannel", new Class[]{r11}).invoke(notificationManager, new Object[]{newInstance});
            }
            return "fcm_fallback_notification_channel";
        } catch (Throwable e) {
            Log.e("FirebaseMessaging", "Error while setting the notification channel", e);
            return null;
        }
    }

    static String zzi(Bundle bundle, String str) {
        str = String.valueOf(str);
        String valueOf = String.valueOf("_loc_key");
        str = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
        valueOf = bundle.getString(str);
        return valueOf == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : valueOf;
    }

    static java.lang.Object[] zzj(android.os.Bundle r5, java.lang.String r6) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = java.lang.String.valueOf(r6);
        r1 = "_loc_args";
        r1 = java.lang.String.valueOf(r1);
        r2 = r1.length();
        if (r2 == 0) goto L_0x0015;
    L_0x0010:
        r0 = r0.concat(r1);
        goto L_0x001b;
    L_0x0015:
        r1 = new java.lang.String;
        r1.<init>(r0);
        r0 = r1;
    L_0x001b:
        r1 = r5.getString(r0);
        if (r1 != 0) goto L_0x002d;
    L_0x0021:
        r1 = "gcm.n.";
        r2 = "gcm.notification.";
        r0 = r0.replace(r1, r2);
        r1 = r5.getString(r0);
    L_0x002d:
        r5 = android.text.TextUtils.isEmpty(r1);
        r0 = 0;
        if (r5 == 0) goto L_0x0035;
    L_0x0034:
        return r0;
    L_0x0035:
        r5 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x004e }
        r5.<init>(r1);	 Catch:{ JSONException -> 0x004e }
        r2 = r5.length();	 Catch:{ JSONException -> 0x004e }
        r2 = new java.lang.String[r2];	 Catch:{ JSONException -> 0x004e }
        r3 = 0;	 Catch:{ JSONException -> 0x004e }
    L_0x0041:
        r4 = r2.length;	 Catch:{ JSONException -> 0x004e }
        if (r3 >= r4) goto L_0x004d;	 Catch:{ JSONException -> 0x004e }
    L_0x0044:
        r4 = r5.opt(r3);	 Catch:{ JSONException -> 0x004e }
        r2[r3] = r4;	 Catch:{ JSONException -> 0x004e }
        r3 = r3 + 1;
        goto L_0x0041;
    L_0x004d:
        return r2;
    L_0x004e:
        r5 = "FirebaseMessaging";
        r6 = java.lang.String.valueOf(r6);
        r2 = "_loc_args";
        r2 = java.lang.String.valueOf(r2);
        r3 = r2.length();
        if (r3 == 0) goto L_0x0065;
    L_0x0060:
        r6 = r6.concat(r2);
        goto L_0x006b;
    L_0x0065:
        r2 = new java.lang.String;
        r2.<init>(r6);
        r6 = r2;
    L_0x006b:
        r2 = 6;
        r6 = r6.substring(r2);
        r6 = java.lang.String.valueOf(r6);
        r2 = 41;
        r3 = java.lang.String.valueOf(r6);
        r3 = r3.length();
        r2 = r2 + r3;
        r3 = java.lang.String.valueOf(r1);
        r3 = r3.length();
        r2 = r2 + r3;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r2);
        r2 = "Malformed ";
        r3.append(r2);
        r3.append(r6);
        r6 = ": ";
        r3.append(r6);
        r3.append(r1);
        r6 = "  Default value will be used.";
        r3.append(r6);
        r6 = r3.toString();
        android.util.Log.w(r5, r6);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.zza.zzj(android.os.Bundle, java.lang.String):java.lang.Object[]");
    }

    static Uri zzV(Bundle bundle) {
        String str = "gcm.n.link_android";
        Object string = bundle.getString(str);
        if (string == null) {
            string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
        }
        if (TextUtils.isEmpty(string)) {
            str = "gcm.n.link";
            string = bundle.getString(str);
            if (string == null) {
                string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
        }
        return TextUtils.isEmpty(string) == null ? Uri.parse(string) : null;
    }

    final boolean zzG(Bundle bundle) {
        String str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        String str2 = "gcm.n.noui";
        Object string = bundle.getString(str2);
        if (string == null) {
            string = bundle.getString(str2.replace("gcm.n.", "gcm.notification."));
        }
        if (str.equals(string)) {
            return true;
        }
        int myPid;
        boolean z;
        CharSequence zzk;
        CharSequence charSequence;
        CharSequence zzk2;
        String string2;
        Resources resources;
        int identifier;
        Integer zzjD;
        PendingIntent pendingIntent;
        Uri uri;
        Parcelable zzI;
        Intent intent;
        Parcelable parcelable;
        PendingIntent pendingIntent2;
        NotificationCompat.Builder smallIcon;
        Notification build;
        String string3;
        NotificationManager notificationManager;
        long uptimeMillis;
        StringBuilder stringBuilder;
        if (!((KeyguardManager) this.mContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            if (!zzt.zzzn()) {
                SystemClock.sleep(10);
            }
            myPid = Process.myPid();
            List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.mContext.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == myPid) {
                        if (runningAppProcessInfo.importance == 100) {
                            z = true;
                            if (z) {
                                return false;
                            }
                            zzk = zzk(bundle, "gcm.n.title");
                            if (TextUtils.isEmpty(zzk)) {
                                zzk = this.mContext.getApplicationInfo().loadLabel(this.mContext.getPackageManager());
                            }
                            charSequence = zzk;
                            zzk2 = zzk(bundle, "gcm.n.body");
                            str = "gcm.n.icon";
                            string2 = bundle.getString(str);
                            if (string2 == null) {
                                string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                            }
                            if (!TextUtils.isEmpty(string2)) {
                                resources = this.mContext.getResources();
                                identifier = resources.getIdentifier(string2, "drawable", this.mContext.getPackageName());
                                if (identifier == 0) {
                                    str = "gcm.n.color";
                                    string2 = bundle.getString(str);
                                    if (string2 == null) {
                                        string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                                    }
                                    zzjD = zzjD(string2);
                                    str = "gcm.n.sound2";
                                    string2 = bundle.getString(str);
                                    if (string2 == null) {
                                        string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                                    }
                                    if (TextUtils.isEmpty(string2)) {
                                        str = "gcm.n.sound";
                                        string2 = bundle.getString(str);
                                        if (string2 == null) {
                                            string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                                        }
                                    }
                                    pendingIntent = null;
                                    if (TextUtils.isEmpty(string2)) {
                                        uri = null;
                                    } else if (!"default".equals(string2) || this.mContext.getResources().getIdentifier(string2, "raw", this.mContext.getPackageName()) == 0) {
                                        uri = RingtoneManager.getDefaultUri(2);
                                    } else {
                                        str = String.valueOf("android.resource://");
                                        String valueOf = String.valueOf(this.mContext.getPackageName());
                                        StringBuilder stringBuilder2 = new StringBuilder(((5 + String.valueOf(str).length()) + String.valueOf(valueOf).length()) + String.valueOf(string2).length());
                                        stringBuilder2.append(str);
                                        stringBuilder2.append(valueOf);
                                        stringBuilder2.append("/raw/");
                                        stringBuilder2.append(string2);
                                        uri = Uri.parse(stringBuilder2.toString());
                                    }
                                    zzI = zzI(bundle);
                                    if (FirebaseMessagingService.zzZ(bundle)) {
                                        intent = new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN");
                                        zza(intent, bundle);
                                        intent.putExtra("pending_intent", zzI);
                                        zzI = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
                                        intent = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS");
                                        zza(intent, bundle);
                                        pendingIntent = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
                                    }
                                    parcelable = zzI;
                                    pendingIntent2 = pendingIntent;
                                    if (zzt.zzzq() || this.mContext.getApplicationInfo().targetSdkVersion <= 25) {
                                        smallIcon = new NotificationCompat.Builder(this.mContext).setAutoCancel(true).setSmallIcon(identifier);
                                        if (!TextUtils.isEmpty(charSequence)) {
                                            smallIcon.setContentTitle(charSequence);
                                        }
                                        if (!TextUtils.isEmpty(zzk2)) {
                                            smallIcon.setContentText(zzk2);
                                            smallIcon.setStyle(new NotificationCompat.BigTextStyle().bigText(zzk2));
                                        }
                                        if (zzjD != null) {
                                            smallIcon.setColor(zzjD.intValue());
                                        }
                                        if (uri != null) {
                                            smallIcon.setSound(uri);
                                        }
                                        if (parcelable != null) {
                                            smallIcon.setContentIntent(parcelable);
                                        }
                                        if (pendingIntent2 != null) {
                                            smallIcon.setDeleteIntent(pendingIntent2);
                                        }
                                        build = smallIcon.build();
                                    } else {
                                        string2 = "gcm.n.android_channel_id";
                                        String string4 = bundle.getString(string2);
                                        if (string4 == null) {
                                            string4 = bundle.getString(string2.replace("gcm.n.", "gcm.notification."));
                                        }
                                        build = zza(charSequence, zzk2, identifier, zzjD, uri, parcelable, pendingIntent2, zzjE(string4));
                                    }
                                    string2 = "gcm.n.tag";
                                    string3 = bundle.getString(string2);
                                    if (string3 == null) {
                                        string3 = bundle.getString(string2.replace("gcm.n.", "gcm.notification."));
                                    }
                                    if (Log.isLoggable("FirebaseMessaging", 3) != null) {
                                        Log.d("FirebaseMessaging", "Showing notification");
                                    }
                                    notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
                                    if (TextUtils.isEmpty(string3)) {
                                        uptimeMillis = SystemClock.uptimeMillis();
                                        stringBuilder = new StringBuilder(37);
                                        stringBuilder.append("FCM-Notification:");
                                        stringBuilder.append(uptimeMillis);
                                        string3 = stringBuilder.toString();
                                    }
                                    notificationManager.notify(string3, 0, build);
                                    return true;
                                }
                                myPid = resources.getIdentifier(string2, "mipmap", this.mContext.getPackageName());
                                if (myPid == 0) {
                                    StringBuilder stringBuilder3 = new StringBuilder(61 + String.valueOf(string2).length());
                                    stringBuilder3.append("Icon resource ");
                                    stringBuilder3.append(string2);
                                    stringBuilder3.append(" not found. Notification will use default icon.");
                                    Log.w("FirebaseMessaging", stringBuilder3.toString());
                                }
                                identifier = myPid;
                                str = "gcm.n.color";
                                string2 = bundle.getString(str);
                                if (string2 == null) {
                                    string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                                }
                                zzjD = zzjD(string2);
                                str = "gcm.n.sound2";
                                string2 = bundle.getString(str);
                                if (string2 == null) {
                                    string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                                }
                                if (TextUtils.isEmpty(string2)) {
                                    str = "gcm.n.sound";
                                    string2 = bundle.getString(str);
                                    if (string2 == null) {
                                        string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                                    }
                                }
                                pendingIntent = null;
                                if (TextUtils.isEmpty(string2)) {
                                    uri = null;
                                } else {
                                    if ("default".equals(string2)) {
                                    }
                                    uri = RingtoneManager.getDefaultUri(2);
                                }
                                zzI = zzI(bundle);
                                if (FirebaseMessagingService.zzZ(bundle)) {
                                    intent = new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN");
                                    zza(intent, bundle);
                                    intent.putExtra("pending_intent", zzI);
                                    zzI = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
                                    intent = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS");
                                    zza(intent, bundle);
                                    pendingIntent = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
                                }
                                parcelable = zzI;
                                pendingIntent2 = pendingIntent;
                                if (zzt.zzzq()) {
                                }
                                smallIcon = new NotificationCompat.Builder(this.mContext).setAutoCancel(true).setSmallIcon(identifier);
                                if (TextUtils.isEmpty(charSequence)) {
                                    smallIcon.setContentTitle(charSequence);
                                }
                                if (TextUtils.isEmpty(zzk2)) {
                                    smallIcon.setContentText(zzk2);
                                    smallIcon.setStyle(new NotificationCompat.BigTextStyle().bigText(zzk2));
                                }
                                if (zzjD != null) {
                                    smallIcon.setColor(zzjD.intValue());
                                }
                                if (uri != null) {
                                    smallIcon.setSound(uri);
                                }
                                if (parcelable != null) {
                                    smallIcon.setContentIntent(parcelable);
                                }
                                if (pendingIntent2 != null) {
                                    smallIcon.setDeleteIntent(pendingIntent2);
                                }
                                build = smallIcon.build();
                                string2 = "gcm.n.tag";
                                string3 = bundle.getString(string2);
                                if (string3 == null) {
                                    string3 = bundle.getString(string2.replace("gcm.n.", "gcm.notification."));
                                }
                                if (Log.isLoggable("FirebaseMessaging", 3) != null) {
                                    Log.d("FirebaseMessaging", "Showing notification");
                                }
                                notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
                                if (TextUtils.isEmpty(string3)) {
                                    uptimeMillis = SystemClock.uptimeMillis();
                                    stringBuilder = new StringBuilder(37);
                                    stringBuilder.append("FCM-Notification:");
                                    stringBuilder.append(uptimeMillis);
                                    string3 = stringBuilder.toString();
                                }
                                notificationManager.notify(string3, 0, build);
                                return true;
                            }
                            myPid = zzacd().getInt("com.google.firebase.messaging.default_notification_icon", 0);
                            if (myPid == 0) {
                                myPid = this.mContext.getApplicationInfo().icon;
                            }
                            if (myPid == 0) {
                                myPid = 17301651;
                            }
                            identifier = myPid;
                            str = "gcm.n.color";
                            string2 = bundle.getString(str);
                            if (string2 == null) {
                                string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                            }
                            zzjD = zzjD(string2);
                            str = "gcm.n.sound2";
                            string2 = bundle.getString(str);
                            if (string2 == null) {
                                string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                            }
                            if (TextUtils.isEmpty(string2)) {
                                str = "gcm.n.sound";
                                string2 = bundle.getString(str);
                                if (string2 == null) {
                                    string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                                }
                            }
                            pendingIntent = null;
                            if (TextUtils.isEmpty(string2)) {
                                uri = null;
                            } else {
                                if ("default".equals(string2)) {
                                }
                                uri = RingtoneManager.getDefaultUri(2);
                            }
                            zzI = zzI(bundle);
                            if (FirebaseMessagingService.zzZ(bundle)) {
                                intent = new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN");
                                zza(intent, bundle);
                                intent.putExtra("pending_intent", zzI);
                                zzI = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
                                intent = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS");
                                zza(intent, bundle);
                                pendingIntent = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
                            }
                            parcelable = zzI;
                            pendingIntent2 = pendingIntent;
                            if (zzt.zzzq()) {
                            }
                            smallIcon = new NotificationCompat.Builder(this.mContext).setAutoCancel(true).setSmallIcon(identifier);
                            if (TextUtils.isEmpty(charSequence)) {
                                smallIcon.setContentTitle(charSequence);
                            }
                            if (TextUtils.isEmpty(zzk2)) {
                                smallIcon.setContentText(zzk2);
                                smallIcon.setStyle(new NotificationCompat.BigTextStyle().bigText(zzk2));
                            }
                            if (zzjD != null) {
                                smallIcon.setColor(zzjD.intValue());
                            }
                            if (uri != null) {
                                smallIcon.setSound(uri);
                            }
                            if (parcelable != null) {
                                smallIcon.setContentIntent(parcelable);
                            }
                            if (pendingIntent2 != null) {
                                smallIcon.setDeleteIntent(pendingIntent2);
                            }
                            build = smallIcon.build();
                            string2 = "gcm.n.tag";
                            string3 = bundle.getString(string2);
                            if (string3 == null) {
                                string3 = bundle.getString(string2.replace("gcm.n.", "gcm.notification."));
                            }
                            if (Log.isLoggable("FirebaseMessaging", 3) != null) {
                                Log.d("FirebaseMessaging", "Showing notification");
                            }
                            notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
                            if (TextUtils.isEmpty(string3)) {
                                uptimeMillis = SystemClock.uptimeMillis();
                                stringBuilder = new StringBuilder(37);
                                stringBuilder.append("FCM-Notification:");
                                stringBuilder.append(uptimeMillis);
                                string3 = stringBuilder.toString();
                            }
                            notificationManager.notify(string3, 0, build);
                            return true;
                        }
                    }
                }
            }
        }
        z = false;
        if (z) {
            return false;
        }
        zzk = zzk(bundle, "gcm.n.title");
        if (TextUtils.isEmpty(zzk)) {
            zzk = this.mContext.getApplicationInfo().loadLabel(this.mContext.getPackageManager());
        }
        charSequence = zzk;
        zzk2 = zzk(bundle, "gcm.n.body");
        str = "gcm.n.icon";
        string2 = bundle.getString(str);
        if (string2 == null) {
            string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
        }
        if (TextUtils.isEmpty(string2)) {
            resources = this.mContext.getResources();
            identifier = resources.getIdentifier(string2, "drawable", this.mContext.getPackageName());
            if (identifier == 0) {
                myPid = resources.getIdentifier(string2, "mipmap", this.mContext.getPackageName());
                if (myPid == 0) {
                    StringBuilder stringBuilder32 = new StringBuilder(61 + String.valueOf(string2).length());
                    stringBuilder32.append("Icon resource ");
                    stringBuilder32.append(string2);
                    stringBuilder32.append(" not found. Notification will use default icon.");
                    Log.w("FirebaseMessaging", stringBuilder32.toString());
                }
                identifier = myPid;
                str = "gcm.n.color";
                string2 = bundle.getString(str);
                if (string2 == null) {
                    string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                }
                zzjD = zzjD(string2);
                str = "gcm.n.sound2";
                string2 = bundle.getString(str);
                if (string2 == null) {
                    string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                }
                if (TextUtils.isEmpty(string2)) {
                    str = "gcm.n.sound";
                    string2 = bundle.getString(str);
                    if (string2 == null) {
                        string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                    }
                }
                pendingIntent = null;
                if (TextUtils.isEmpty(string2)) {
                    if ("default".equals(string2)) {
                    }
                    uri = RingtoneManager.getDefaultUri(2);
                } else {
                    uri = null;
                }
                zzI = zzI(bundle);
                if (FirebaseMessagingService.zzZ(bundle)) {
                    intent = new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN");
                    zza(intent, bundle);
                    intent.putExtra("pending_intent", zzI);
                    zzI = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
                    intent = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS");
                    zza(intent, bundle);
                    pendingIntent = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
                }
                parcelable = zzI;
                pendingIntent2 = pendingIntent;
                if (zzt.zzzq()) {
                }
                smallIcon = new NotificationCompat.Builder(this.mContext).setAutoCancel(true).setSmallIcon(identifier);
                if (TextUtils.isEmpty(charSequence)) {
                    smallIcon.setContentTitle(charSequence);
                }
                if (TextUtils.isEmpty(zzk2)) {
                    smallIcon.setContentText(zzk2);
                    smallIcon.setStyle(new NotificationCompat.BigTextStyle().bigText(zzk2));
                }
                if (zzjD != null) {
                    smallIcon.setColor(zzjD.intValue());
                }
                if (uri != null) {
                    smallIcon.setSound(uri);
                }
                if (parcelable != null) {
                    smallIcon.setContentIntent(parcelable);
                }
                if (pendingIntent2 != null) {
                    smallIcon.setDeleteIntent(pendingIntent2);
                }
                build = smallIcon.build();
                string2 = "gcm.n.tag";
                string3 = bundle.getString(string2);
                if (string3 == null) {
                    string3 = bundle.getString(string2.replace("gcm.n.", "gcm.notification."));
                }
                if (Log.isLoggable("FirebaseMessaging", 3) != null) {
                    Log.d("FirebaseMessaging", "Showing notification");
                }
                notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
                if (TextUtils.isEmpty(string3)) {
                    uptimeMillis = SystemClock.uptimeMillis();
                    stringBuilder = new StringBuilder(37);
                    stringBuilder.append("FCM-Notification:");
                    stringBuilder.append(uptimeMillis);
                    string3 = stringBuilder.toString();
                }
                notificationManager.notify(string3, 0, build);
                return true;
            }
            str = "gcm.n.color";
            string2 = bundle.getString(str);
            if (string2 == null) {
                string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
            zzjD = zzjD(string2);
            str = "gcm.n.sound2";
            string2 = bundle.getString(str);
            if (string2 == null) {
                string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
            if (TextUtils.isEmpty(string2)) {
                str = "gcm.n.sound";
                string2 = bundle.getString(str);
                if (string2 == null) {
                    string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                }
            }
            pendingIntent = null;
            if (TextUtils.isEmpty(string2)) {
                uri = null;
            } else {
                if ("default".equals(string2)) {
                }
                uri = RingtoneManager.getDefaultUri(2);
            }
            zzI = zzI(bundle);
            if (FirebaseMessagingService.zzZ(bundle)) {
                intent = new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN");
                zza(intent, bundle);
                intent.putExtra("pending_intent", zzI);
                zzI = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
                intent = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS");
                zza(intent, bundle);
                pendingIntent = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
            }
            parcelable = zzI;
            pendingIntent2 = pendingIntent;
            if (zzt.zzzq()) {
            }
            smallIcon = new NotificationCompat.Builder(this.mContext).setAutoCancel(true).setSmallIcon(identifier);
            if (TextUtils.isEmpty(charSequence)) {
                smallIcon.setContentTitle(charSequence);
            }
            if (TextUtils.isEmpty(zzk2)) {
                smallIcon.setContentText(zzk2);
                smallIcon.setStyle(new NotificationCompat.BigTextStyle().bigText(zzk2));
            }
            if (zzjD != null) {
                smallIcon.setColor(zzjD.intValue());
            }
            if (uri != null) {
                smallIcon.setSound(uri);
            }
            if (parcelable != null) {
                smallIcon.setContentIntent(parcelable);
            }
            if (pendingIntent2 != null) {
                smallIcon.setDeleteIntent(pendingIntent2);
            }
            build = smallIcon.build();
            string2 = "gcm.n.tag";
            string3 = bundle.getString(string2);
            if (string3 == null) {
                string3 = bundle.getString(string2.replace("gcm.n.", "gcm.notification."));
            }
            if (Log.isLoggable("FirebaseMessaging", 3) != null) {
                Log.d("FirebaseMessaging", "Showing notification");
            }
            notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
            if (TextUtils.isEmpty(string3)) {
                uptimeMillis = SystemClock.uptimeMillis();
                stringBuilder = new StringBuilder(37);
                stringBuilder.append("FCM-Notification:");
                stringBuilder.append(uptimeMillis);
                string3 = stringBuilder.toString();
            }
            notificationManager.notify(string3, 0, build);
            return true;
        }
        myPid = zzacd().getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (myPid == 0) {
            myPid = this.mContext.getApplicationInfo().icon;
        }
        if (myPid == 0) {
            myPid = 17301651;
        }
        identifier = myPid;
        str = "gcm.n.color";
        string2 = bundle.getString(str);
        if (string2 == null) {
            string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
        }
        zzjD = zzjD(string2);
        str = "gcm.n.sound2";
        string2 = bundle.getString(str);
        if (string2 == null) {
            string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
        }
        if (TextUtils.isEmpty(string2)) {
            str = "gcm.n.sound";
            string2 = bundle.getString(str);
            if (string2 == null) {
                string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
        }
        pendingIntent = null;
        if (TextUtils.isEmpty(string2)) {
            if ("default".equals(string2)) {
            }
            uri = RingtoneManager.getDefaultUri(2);
        } else {
            uri = null;
        }
        zzI = zzI(bundle);
        if (FirebaseMessagingService.zzZ(bundle)) {
            intent = new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN");
            zza(intent, bundle);
            intent.putExtra("pending_intent", zzI);
            zzI = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
            intent = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS");
            zza(intent, bundle);
            pendingIntent = zzg.zzb$4e95509e(this.mContext, this.zzclL.incrementAndGet(), intent);
        }
        parcelable = zzI;
        pendingIntent2 = pendingIntent;
        if (zzt.zzzq()) {
        }
        smallIcon = new NotificationCompat.Builder(this.mContext).setAutoCancel(true).setSmallIcon(identifier);
        if (TextUtils.isEmpty(charSequence)) {
            smallIcon.setContentTitle(charSequence);
        }
        if (TextUtils.isEmpty(zzk2)) {
            smallIcon.setContentText(zzk2);
            smallIcon.setStyle(new NotificationCompat.BigTextStyle().bigText(zzk2));
        }
        if (zzjD != null) {
            smallIcon.setColor(zzjD.intValue());
        }
        if (uri != null) {
            smallIcon.setSound(uri);
        }
        if (parcelable != null) {
            smallIcon.setContentIntent(parcelable);
        }
        if (pendingIntent2 != null) {
            smallIcon.setDeleteIntent(pendingIntent2);
        }
        build = smallIcon.build();
        string2 = "gcm.n.tag";
        string3 = bundle.getString(string2);
        if (string3 == null) {
            string3 = bundle.getString(string2.replace("gcm.n.", "gcm.notification."));
        }
        if (Log.isLoggable("FirebaseMessaging", 3) != null) {
            Log.d("FirebaseMessaging", "Showing notification");
        }
        notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        if (TextUtils.isEmpty(string3)) {
            uptimeMillis = SystemClock.uptimeMillis();
            stringBuilder = new StringBuilder(37);
            stringBuilder.append("FCM-Notification:");
            stringBuilder.append(uptimeMillis);
            string3 = stringBuilder.toString();
        }
        notificationManager.notify(string3, 0, build);
        return true;
    }

    private String zzk(Bundle bundle, String str) {
        Object string = bundle.getString(str);
        if (string == null) {
            string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String zzi = zzi(bundle, str);
        if (TextUtils.isEmpty(zzi)) {
            return null;
        }
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(zzi, "string", this.mContext.getPackageName());
        if (identifier == 0) {
            bundle = "FirebaseMessaging";
            str = String.valueOf(str);
            String valueOf = String.valueOf("_loc_key");
            str = String.valueOf((valueOf.length() != 0 ? str.concat(valueOf) : new String(str)).substring(6));
            StringBuilder stringBuilder = new StringBuilder((49 + String.valueOf(str).length()) + String.valueOf(zzi).length());
            stringBuilder.append(str);
            stringBuilder.append(" resource not found: ");
            stringBuilder.append(zzi);
            stringBuilder.append(" Default value will be used.");
            Log.w(bundle, stringBuilder.toString());
            return null;
        }
        bundle = zzj(bundle, str);
        if (bundle == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, bundle);
        } catch (String str2) {
            bundle = String.valueOf(Arrays.toString(bundle));
            StringBuilder stringBuilder2 = new StringBuilder((58 + String.valueOf(zzi).length()) + String.valueOf(bundle).length());
            stringBuilder2.append("Missing format argument for ");
            stringBuilder2.append(zzi);
            stringBuilder2.append(": ");
            stringBuilder2.append(bundle);
            stringBuilder2.append(" Default value will be used.");
            Log.w("FirebaseMessaging", stringBuilder2.toString(), str2);
            return null;
        }
    }

    private PendingIntent zzI(Bundle bundle) {
        Intent intent;
        String str = "gcm.n.click_action";
        Object string = bundle.getString(str);
        if (string == null) {
            string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
        }
        if (TextUtils.isEmpty(string)) {
            Uri zzV = zzV(bundle);
            if (zzV != null) {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setPackage(this.mContext.getPackageName());
                intent2.setData(zzV);
                intent = intent2;
            } else {
                intent = this.mContext.getPackageManager().getLaunchIntentForPackage(this.mContext.getPackageName());
                if (intent == null) {
                    Log.w("FirebaseMessaging", "No activity found to launch app");
                }
            }
        } else {
            intent = new Intent(string);
            intent.setPackage(this.mContext.getPackageName());
            intent.setFlags(268435456);
        }
        if (intent == null) {
            return null;
        }
        intent.addFlags(67108864);
        Bundle bundle2 = new Bundle(bundle);
        FirebaseMessagingService.zzD(bundle2);
        intent.putExtras(bundle2);
        for (String str2 : bundle2.keySet()) {
            if (str2.startsWith("gcm.n.") || str2.startsWith("gcm.notification.")) {
                intent.removeExtra(str2);
            }
        }
        return PendingIntent.getActivity(this.mContext, this.zzclL.incrementAndGet(), intent, 1073741824);
    }
}
