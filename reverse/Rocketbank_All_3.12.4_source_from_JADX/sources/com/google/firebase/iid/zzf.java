package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.iid.MessengerCompat;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.interfaces.RSAPrivateKey;
import java.util.Iterator;
import java.util.Random;

public final class zzf {
    static PendingIntent zzbgG = null;
    static String zzbhQ = null;
    static boolean zzbhR = false;
    static int zzbhS;
    static int zzbhT;
    static int zzbhU;
    static BroadcastReceiver zzbhV;
    Messenger zzbgK;
    Messenger zzbhX;
    MessengerCompat zzbhY;
    long zzbhZ;
    long zzbia;
    int zzbib;
    int zzbic;
    long zzbid;
    private final SimpleArrayMap<String, zzb> zzcly = new SimpleArrayMap();
    Context zzqn;

    /* renamed from: com.google.firebase.iid.zzf$2 */
    class C06452 extends BroadcastReceiver {
        final /* synthetic */ zzf zzclz;

        C06452(zzf zzf) {
            this.zzclz = zzf;
        }

        public void onReceive(Context context, Intent intent) {
            if (Log.isLoggable("InstanceID/Rpc", 3)) {
                String valueOf = String.valueOf(intent.getExtras());
                StringBuilder stringBuilder = new StringBuilder(44 + String.valueOf(valueOf).length());
                stringBuilder.append("Received GSF callback via dynamic receiver: ");
                stringBuilder.append(valueOf);
                Log.d("InstanceID/Rpc", stringBuilder.toString());
            }
            this.zzclz.zzs(intent);
        }
    }

    interface zzb {
        void onError(String str);

        void zzH(Intent intent);
    }

    static class zza implements zzb {
        private Intent intent;
        private final ConditionVariable zzclA;
        private String zzclB;

        private zza() {
            this.zzclA = new ConditionVariable();
        }

        public final void onError(String str) {
            this.zzclB = str;
            this.zzclA.open();
        }

        public final void zzH(Intent intent) {
            this.intent = intent;
            this.zzclA.open();
        }

        public final Intent zzabV() throws IOException {
            if (!this.zzclA.block(30000)) {
                Log.w("InstanceID/Rpc", "No response");
                throw new IOException("TIMEOUT");
            } else if (this.zzclB == null) {
                return this.intent;
            } else {
                throw new IOException(this.zzclB);
            }
        }
    }

    public zzf(Context context) {
        this.zzqn = context;
    }

    private void zzHl() {
        if (this.zzbgK == null) {
            zzbA(this.zzqn);
            this.zzbgK = new Messenger(new Handler(this, Looper.getMainLooper()) {
                final /* synthetic */ zzf zzclz;

                public final void handleMessage(Message message) {
                    this.zzclz.zze(message);
                }
            });
        }
    }

    public static synchronized String zzHn() {
        String num;
        synchronized (zzf.class) {
            int i = zzbhU;
            zzbhU = i + 1;
            num = Integer.toString(i);
        }
        return num;
    }

    private static String zza(KeyPair keyPair, String... strArr) {
        Throwable e;
        String str;
        String str2;
        try {
            byte[] bytes = TextUtils.join("\n", strArr).getBytes("UTF-8");
            try {
                PrivateKey privateKey = keyPair.getPrivate();
                Signature instance = Signature.getInstance(privateKey instanceof RSAPrivateKey ? "SHA256withRSA" : "SHA256withECDSA");
                instance.initSign(privateKey);
                instance.update(bytes);
                return FirebaseInstanceId.zzv(instance.sign());
            } catch (GeneralSecurityException e2) {
                e = e2;
                str = "InstanceID/Rpc";
                str2 = "Unable to sign registration request";
                Log.e(str, str2, e);
                return null;
            }
        } catch (UnsupportedEncodingException e3) {
            e = e3;
            str = "InstanceID/Rpc";
            str2 = "Unable to encode string";
            Log.e(str, str2, e);
            return null;
        }
    }

    private static boolean zza(PackageManager packageManager) {
        for (ResolveInfo resolveInfo : packageManager.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0)) {
            if (zza(packageManager, resolveInfo.serviceInfo.packageName, "com.google.android.c2dm.intent.REGISTER")) {
                zzbhR = false;
                return true;
            }
        }
        return false;
    }

    private static boolean zza(PackageManager packageManager, String str, String str2) {
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", str) == 0) {
            return zzb(packageManager, str);
        }
        StringBuilder stringBuilder = new StringBuilder((56 + String.valueOf(str).length()) + String.valueOf(str2).length());
        stringBuilder.append("Possible malicious package ");
        stringBuilder.append(str);
        stringBuilder.append(" declares ");
        stringBuilder.append(str2);
        stringBuilder.append(" without permission");
        Log.w("InstanceID/Rpc", stringBuilder.toString());
        return false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zzay(java.lang.String r4, java.lang.String r5) {
        /*
        r3 = this;
        r0 = r3.zzcly;
        monitor-enter(r0);
        if (r4 != 0) goto L_0x0022;
    L_0x0005:
        r4 = 0;
    L_0x0006:
        r1 = r3.zzcly;	 Catch:{ all -> 0x004e }
        r1 = r1.size();	 Catch:{ all -> 0x004e }
        if (r4 >= r1) goto L_0x001c;
    L_0x000e:
        r1 = r3.zzcly;	 Catch:{ all -> 0x004e }
        r1 = r1.valueAt(r4);	 Catch:{ all -> 0x004e }
        r1 = (com.google.firebase.iid.zzf.zzb) r1;	 Catch:{ all -> 0x004e }
        r1.onError(r5);	 Catch:{ all -> 0x004e }
        r4 = r4 + 1;
        goto L_0x0006;
    L_0x001c:
        r4 = r3.zzcly;	 Catch:{ all -> 0x004e }
        r4.clear();	 Catch:{ all -> 0x004e }
        goto L_0x004c;
    L_0x0022:
        r1 = r3.zzcly;	 Catch:{ all -> 0x004e }
        r1 = r1.remove(r4);	 Catch:{ all -> 0x004e }
        r1 = (com.google.firebase.iid.zzf.zzb) r1;	 Catch:{ all -> 0x004e }
        if (r1 != 0) goto L_0x0049;
    L_0x002c:
        r5 = "InstanceID/Rpc";
        r1 = "Missing callback for ";
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x004e }
        r2 = r4.length();	 Catch:{ all -> 0x004e }
        if (r2 == 0) goto L_0x003f;
    L_0x003a:
        r4 = r1.concat(r4);	 Catch:{ all -> 0x004e }
        goto L_0x0044;
    L_0x003f:
        r4 = new java.lang.String;	 Catch:{ all -> 0x004e }
        r4.<init>(r1);	 Catch:{ all -> 0x004e }
    L_0x0044:
        android.util.Log.w(r5, r4);	 Catch:{ all -> 0x004e }
        monitor-exit(r0);	 Catch:{ all -> 0x004e }
        return;
    L_0x0049:
        r1.onError(r5);	 Catch:{ all -> 0x004e }
    L_0x004c:
        monitor-exit(r0);	 Catch:{ all -> 0x004e }
        return;
    L_0x004e:
        r4 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x004e }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzf.zzay(java.lang.String, java.lang.String):void");
    }

    private void zzb(String str, Intent intent) {
        synchronized (this.zzcly) {
            zzb zzb = (zzb) this.zzcly.remove(str);
            if (zzb == null) {
                String str2 = "InstanceID/Rpc";
                String str3 = "Missing callback for ";
                str = String.valueOf(str);
                Log.w(str2, str.length() != 0 ? str3.concat(str) : new String(str3));
                return;
            }
            zzb.zzH(intent);
        }
    }

    private static boolean zzb(android.content.pm.PackageManager r1, java.lang.String r2) {
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
        r0 = 0;
        r1 = r1.getApplicationInfo(r2, r0);	 Catch:{ NameNotFoundException -> 0x000f }
        r2 = r1.packageName;	 Catch:{ NameNotFoundException -> 0x000f }
        zzbhQ = r2;	 Catch:{ NameNotFoundException -> 0x000f }
        r1 = r1.uid;	 Catch:{ NameNotFoundException -> 0x000f }
        zzbhT = r1;	 Catch:{ NameNotFoundException -> 0x000f }
        r1 = 1;
        return r1;
    L_0x000f:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzf.zzb(android.content.pm.PackageManager, java.lang.String):boolean");
    }

    public static synchronized void zzf(Context context, Intent intent) {
        synchronized (zzf.class) {
            if (zzbgG == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                zzbgG = PendingIntent.getBroadcast(context, 0, intent2, 0);
            }
            intent.putExtra("app", zzbgG);
        }
    }

    static String zzq(Intent intent) throws IOException {
        if (intent == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String stringExtra = intent.getStringExtra("registration_id");
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("unregistered");
        }
        if (stringExtra != null) {
            return stringExtra;
        }
        stringExtra = intent.getStringExtra("error");
        if (stringExtra != null) {
            throw new IOException(stringExtra);
        }
        String valueOf = String.valueOf(intent.getExtras());
        StringBuilder stringBuilder = new StringBuilder(29 + String.valueOf(valueOf).length());
        stringBuilder.append("Unexpected response from GCM ");
        stringBuilder.append(valueOf);
        Log.w("InstanceID/Rpc", stringBuilder.toString(), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    final Intent zza(Bundle bundle, KeyPair keyPair) throws IOException {
        Intent zzb = zzb(bundle, keyPair);
        if (zzb == null || !zzb.hasExtra("google.messenger")) {
            return zzb;
        }
        zzb = zzb(bundle, keyPair);
        return (zzb == null || !zzb.hasExtra("google.messenger")) ? zzb : null;
    }

    final void zze(Message message) {
        if (message != null) {
            if (message.obj instanceof Intent) {
                Intent intent = (Intent) message.obj;
                intent.setExtrasClassLoader(MessengerCompat.class.getClassLoader());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof MessengerCompat) {
                        this.zzbhY = (MessengerCompat) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.zzbhX = (Messenger) parcelableExtra;
                    }
                }
                zzs((Intent) message.obj);
                return;
            }
            Log.w("InstanceID/Rpc", "Dropping invalid message");
        }
    }

    final void zzs(Intent intent) {
        if (intent == null) {
            if (Log.isLoggable("InstanceID/Rpc", 3)) {
                Log.d("InstanceID/Rpc", "Unexpected response: null");
            }
            return;
        }
        String stringExtra;
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
            stringExtra = intent.getStringExtra("registration_id");
            if (stringExtra == null) {
                stringExtra = intent.getStringExtra("unregistered");
            }
            if (stringExtra == null) {
                zzr(intent);
                return;
            }
            this.zzbhZ = SystemClock.elapsedRealtime();
            this.zzbid = 0;
            this.zzbib = 0;
            this.zzbic = 0;
            if (stringExtra.startsWith("|")) {
                String[] split = stringExtra.split("\\|");
                if (!"ID".equals(split[1])) {
                    String str = "InstanceID/Rpc";
                    String str2 = "Unexpected structured response ";
                    stringExtra = String.valueOf(stringExtra);
                    Log.w(str, stringExtra.length() != 0 ? str2.concat(stringExtra) : new String(str2));
                }
                stringExtra = split[2];
                if (split.length > 4) {
                    if ("SYNC".equals(split[3])) {
                        FirebaseInstanceId.zzby(this.zzqn);
                    } else if ("RST".equals(split[3])) {
                        Context context = this.zzqn;
                        zzd.zzb(this.zzqn, null);
                        FirebaseInstanceId.zza(context, zzd.zzabS());
                        intent.removeExtra("registration_id");
                        zzb(stringExtra, intent);
                        return;
                    }
                }
                String str3 = split[split.length - 1];
                if (str3.startsWith(":")) {
                    str3 = str3.substring(1);
                }
                intent.putExtra("registration_id", str3);
            } else {
                stringExtra = null;
            }
            if (stringExtra == null) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Ignoring response without a request ID");
                }
                return;
            }
            zzb(stringExtra, intent);
            return;
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String str4 = "InstanceID/Rpc";
            stringExtra = "Unexpected response ";
            String valueOf = String.valueOf(intent.getAction());
            Log.d(str4, valueOf.length() != 0 ? stringExtra.concat(valueOf) : new String(stringExtra));
        }
    }

    public static String zzbA(Context context) {
        if (zzbhQ != null) {
            return zzbhQ;
        }
        zzbhS = Process.myUid();
        PackageManager packageManager = context.getPackageManager();
        Iterator it = packageManager.queryBroadcastReceivers(new Intent("com.google.iid.TOKEN_REQUEST"), 0).iterator();
        do {
            boolean z = true;
            if (!it.hasNext()) {
                z = false;
                break;
            }
        } while (!zza(packageManager, ((ResolveInfo) it.next()).activityInfo.packageName, "com.google.iid.TOKEN_REQUEST"));
        zzbhR = true;
        if (z) {
            return zzbhQ;
        }
        if (!zzt.zzzq() && zza(packageManager)) {
            return zzbhQ;
        }
        Log.w("InstanceID/Rpc", "Failed to resolve IID implementation package, falling back");
        if (zzb(packageManager, "com.google.android.gms")) {
            zzbhR = zzt.zzzq();
            return zzbhQ;
        } else if (zzt.zzzo() || zzb(packageManager, "com.google.android.gsf") == null) {
            Log.w("InstanceID/Rpc", "Google Play services is missing, unable to get tokens");
            return null;
        } else {
            zzbhR = false;
            return zzbhQ;
        }
    }

    private void zzr(Intent intent) {
        String stringExtra = intent.getStringExtra("error");
        if (stringExtra == null) {
            intent = String.valueOf(intent.getExtras());
            StringBuilder stringBuilder = new StringBuilder(49 + String.valueOf(intent).length());
            stringBuilder.append("Unexpected response, no error or registration id ");
            stringBuilder.append(intent);
            Log.w("InstanceID/Rpc", stringBuilder.toString());
            return;
        }
        String str;
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            str = "InstanceID/Rpc";
            String str2 = "Received InstanceID error ";
            String valueOf = String.valueOf(stringExtra);
            Log.d(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
        str = null;
        if (stringExtra.startsWith("|")) {
            String[] split = stringExtra.split("\\|");
            if (!"ID".equals(split[1])) {
                String str3 = "InstanceID/Rpc";
                String str4 = "Unexpected structured response ";
                stringExtra = String.valueOf(stringExtra);
                Log.w(str3, stringExtra.length() != 0 ? str4.concat(stringExtra) : new String(str4));
            }
            if (split.length > 2) {
                stringExtra = split[2];
                str = split[3];
                if (str.startsWith(":")) {
                    str = str.substring(1);
                }
                String str5 = str;
                str = stringExtra;
                stringExtra = str5;
            } else {
                stringExtra = "UNKNOWN";
            }
            intent.putExtra("error", stringExtra);
        }
        zzay(str, stringExtra);
        long longExtra = intent.getLongExtra("Retry-After", 0);
        if (longExtra > 0) {
            this.zzbia = SystemClock.elapsedRealtime();
            this.zzbic = ((int) longExtra) * 1000;
            this.zzbid = SystemClock.elapsedRealtime() + ((long) this.zzbic);
            int i = this.zzbic;
            stringBuilder = new StringBuilder(52);
            stringBuilder.append("Explicit request from server to backoff: ");
            stringBuilder.append(i);
            Log.w("InstanceID/Rpc", stringBuilder.toString());
            return;
        }
        if (!(("SERVICE_NOT_AVAILABLE".equals(stringExtra) == null && "AUTHENTICATION_FAILED".equals(stringExtra) == null) || "com.google.android.gsf".equals(zzbhQ) == null)) {
            this.zzbib += 1;
            if (this.zzbib >= 3) {
                if (this.zzbib == 3) {
                    this.zzbic = 1000 + new Random().nextInt(1000);
                }
                this.zzbic <<= 1;
                this.zzbid = SystemClock.elapsedRealtime() + ((long) this.zzbic);
                int i2 = this.zzbic;
                StringBuilder stringBuilder2 = new StringBuilder(31 + String.valueOf(stringExtra).length());
                stringBuilder2.append("Backoff due to ");
                stringBuilder2.append(stringExtra);
                stringBuilder2.append(" for ");
                stringBuilder2.append(i2);
                Log.w("InstanceID/Rpc", stringBuilder2.toString());
            }
        }
    }

    private android.content.Intent zzb(android.os.Bundle r11, java.security.KeyPair r12) throws java.io.IOException {
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
        r10 = this;
        r0 = zzHn();
        r1 = new com.google.firebase.iid.zzf$zza;
        r2 = 0;
        r1.<init>();
        r3 = r10.zzcly;
        monitor-enter(r3);
        r4 = r10.zzcly;	 Catch:{ all -> 0x0220 }
        r4.put(r0, r1);	 Catch:{ all -> 0x0220 }
        monitor-exit(r3);	 Catch:{ all -> 0x0220 }
        r3 = android.os.SystemClock.elapsedRealtime();
        r5 = r10.zzbid;
        r7 = 0;
        r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r9 == 0) goto L_0x0053;
    L_0x001f:
        r5 = r10.zzbid;
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r7 > 0) goto L_0x0053;
    L_0x0025:
        r11 = "InstanceID/Rpc";
        r0 = r10.zzbid;
        r5 = r0 - r3;
        r12 = r10.zzbic;
        r0 = 78;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Backoff mode, next request attempt: ";
        r1.append(r0);
        r1.append(r5);
        r0 = " interval: ";
        r1.append(r0);
        r1.append(r12);
        r12 = r1.toString();
        android.util.Log.w(r11, r12);
        r11 = new java.io.IOException;
        r12 = "RETRY_LATER";
        r11.<init>(r12);
        throw r11;
    L_0x0053:
        r10.zzHl();
        r3 = zzbhQ;
        if (r3 != 0) goto L_0x0062;
    L_0x005a:
        r11 = new java.io.IOException;
        r12 = "MISSING_INSTANCEID_SERVICE";
        r11.<init>(r12);
        throw r11;
    L_0x0062:
        r3 = android.os.SystemClock.elapsedRealtime();
        r10.zzbhZ = r3;
        r3 = new android.content.Intent;
        r4 = zzbhR;
        if (r4 == 0) goto L_0x0071;
    L_0x006e:
        r4 = "com.google.iid.TOKEN_REQUEST";
        goto L_0x0073;
    L_0x0071:
        r4 = "com.google.android.c2dm.intent.REGISTER";
    L_0x0073:
        r3.<init>(r4);
        r4 = zzbhQ;
        r3.setPackage(r4);
        r4 = "gmsv";
        r5 = r10.zzqn;
        r6 = r10.zzqn;
        r6 = zzbA(r6);
        r5 = com.google.firebase.iid.FirebaseInstanceId.zzS(r5, r6);
        r5 = java.lang.Integer.toString(r5);
        r11.putString(r4, r5);
        r4 = "osv";
        r5 = android.os.Build.VERSION.SDK_INT;
        r5 = java.lang.Integer.toString(r5);
        r11.putString(r4, r5);
        r4 = "app_ver";
        r5 = r10.zzqn;
        r5 = com.google.firebase.iid.FirebaseInstanceId.zzcr(r5);
        r5 = java.lang.Integer.toString(r5);
        r11.putString(r4, r5);
        r4 = "app_ver_name";
        r5 = r10.zzqn;
        r5 = com.google.firebase.iid.FirebaseInstanceId.zzbx(r5);
        r11.putString(r4, r5);
        r4 = "cliv";
        r5 = "fiid-10260000";
        r11.putString(r4, r5);
        r4 = "appid";
        r5 = com.google.firebase.iid.FirebaseInstanceId.zza(r12);
        r11.putString(r4, r5);
        r4 = r12.getPublic();
        r4 = r4.getEncoded();
        r4 = com.google.firebase.iid.FirebaseInstanceId.zzv(r4);
        r5 = "pub2";
        r11.putString(r5, r4);
        r5 = "sig";
        r6 = 2;
        r6 = new java.lang.String[r6];
        r7 = r10.zzqn;
        r7 = r7.getPackageName();
        r6[r2] = r7;
        r2 = 1;
        r6[r2] = r4;
        r12 = zza(r12, r6);
        r11.putString(r5, r12);
        r3.putExtras(r11);
        r11 = r10.zzqn;
        zzf(r11, r3);
        r11 = android.os.SystemClock.elapsedRealtime();
        r10.zzbhZ = r11;
        r11 = "kid";
        r12 = java.lang.String.valueOf(r0);
        r12 = r12.length();
        r2 = 5;
        r12 = r12 + r2;
        r4 = new java.lang.StringBuilder;
        r4.<init>(r12);
        r12 = "|ID|";
        r4.append(r12);
        r4.append(r0);
        r12 = "|";
        r4.append(r12);
        r12 = r4.toString();
        r3.putExtra(r11, r12);
        r11 = "X-kid";
        r12 = java.lang.String.valueOf(r0);
        r12 = r12.length();
        r2 = r2 + r12;
        r12 = new java.lang.StringBuilder;
        r12.<init>(r2);
        r2 = "|ID|";
        r12.append(r2);
        r12.append(r0);
        r2 = "|";
        r12.append(r2);
        r12 = r12.toString();
        r3.putExtra(r11, r12);
        r11 = "com.google.android.gsf";
        r12 = zzbhQ;
        r11 = r11.equals(r12);
        r12 = "InstanceID/Rpc";
        r2 = 3;
        r12 = android.util.Log.isLoggable(r12, r2);
        if (r12 == 0) goto L_0x0182;
    L_0x0159:
        r12 = "InstanceID/Rpc";
        r4 = r3.getExtras();
        r4 = java.lang.String.valueOf(r4);
        r5 = 8;
        r6 = java.lang.String.valueOf(r4);
        r6 = r6.length();
        r5 = r5 + r6;
        r6 = new java.lang.StringBuilder;
        r6.<init>(r5);
        r5 = "Sending ";
        r6.append(r5);
        r6.append(r4);
        r4 = r6.toString();
        android.util.Log.d(r12, r4);
    L_0x0182:
        if (r11 == 0) goto L_0x01be;
    L_0x0184:
        monitor-enter(r10);
        r11 = zzbhV;	 Catch:{ all -> 0x01bb }
        if (r11 != 0) goto L_0x01b9;	 Catch:{ all -> 0x01bb }
    L_0x0189:
        r11 = new com.google.firebase.iid.zzf$2;	 Catch:{ all -> 0x01bb }
        r11.<init>(r10);	 Catch:{ all -> 0x01bb }
        zzbhV = r11;	 Catch:{ all -> 0x01bb }
        r11 = "InstanceID/Rpc";	 Catch:{ all -> 0x01bb }
        r11 = android.util.Log.isLoggable(r11, r2);	 Catch:{ all -> 0x01bb }
        if (r11 == 0) goto L_0x019f;	 Catch:{ all -> 0x01bb }
    L_0x0198:
        r11 = "InstanceID/Rpc";	 Catch:{ all -> 0x01bb }
        r12 = "Registered GSF callback receiver";	 Catch:{ all -> 0x01bb }
        android.util.Log.d(r11, r12);	 Catch:{ all -> 0x01bb }
    L_0x019f:
        r11 = new android.content.IntentFilter;	 Catch:{ all -> 0x01bb }
        r12 = "com.google.android.c2dm.intent.REGISTRATION";	 Catch:{ all -> 0x01bb }
        r11.<init>(r12);	 Catch:{ all -> 0x01bb }
        r12 = r10.zzqn;	 Catch:{ all -> 0x01bb }
        r12 = r12.getPackageName();	 Catch:{ all -> 0x01bb }
        r11.addCategory(r12);	 Catch:{ all -> 0x01bb }
        r12 = r10.zzqn;	 Catch:{ all -> 0x01bb }
        r2 = zzbhV;	 Catch:{ all -> 0x01bb }
        r4 = "com.google.android.c2dm.permission.SEND";	 Catch:{ all -> 0x01bb }
        r5 = 0;	 Catch:{ all -> 0x01bb }
        r12.registerReceiver(r2, r11, r4, r5);	 Catch:{ all -> 0x01bb }
    L_0x01b9:
        monitor-exit(r10);	 Catch:{ all -> 0x01bb }
        goto L_0x01fc;	 Catch:{ all -> 0x01bb }
    L_0x01bb:
        r11 = move-exception;	 Catch:{ all -> 0x01bb }
        monitor-exit(r10);	 Catch:{ all -> 0x01bb }
        throw r11;
    L_0x01be:
        r11 = "google.messenger";
        r12 = r10.zzbgK;
        r3.putExtra(r11, r12);
        r11 = r10.zzbhX;
        if (r11 != 0) goto L_0x01cd;
    L_0x01c9:
        r11 = r10.zzbhY;
        if (r11 == 0) goto L_0x01f2;
    L_0x01cd:
        r11 = android.os.Message.obtain();
        r11.obj = r3;
        r12 = r10.zzbhX;	 Catch:{ RemoteException -> 0x01e3 }
        if (r12 == 0) goto L_0x01dd;	 Catch:{ RemoteException -> 0x01e3 }
    L_0x01d7:
        r12 = r10.zzbhX;	 Catch:{ RemoteException -> 0x01e3 }
        r12.send(r11);	 Catch:{ RemoteException -> 0x01e3 }
        goto L_0x0201;	 Catch:{ RemoteException -> 0x01e3 }
    L_0x01dd:
        r12 = r10.zzbhY;	 Catch:{ RemoteException -> 0x01e3 }
        r12.send(r11);	 Catch:{ RemoteException -> 0x01e3 }
        goto L_0x0201;
    L_0x01e3:
        r11 = "InstanceID/Rpc";
        r11 = android.util.Log.isLoggable(r11, r2);
        if (r11 == 0) goto L_0x01f2;
    L_0x01eb:
        r11 = "InstanceID/Rpc";
        r12 = "Messenger failed, fallback to startService";
        android.util.Log.d(r11, r12);
    L_0x01f2:
        r11 = zzbhR;
        if (r11 == 0) goto L_0x01fc;
    L_0x01f6:
        r11 = r10.zzqn;
        r11.sendBroadcast(r3);
        goto L_0x0201;
    L_0x01fc:
        r11 = r10.zzqn;
        r11.startService(r3);
    L_0x0201:
        r11 = r1.zzabV();	 Catch:{ all -> 0x0212 }
        r12 = r10.zzcly;
        monitor-enter(r12);
        r1 = r10.zzcly;	 Catch:{ all -> 0x020f }
        r1.remove(r0);	 Catch:{ all -> 0x020f }
        monitor-exit(r12);	 Catch:{ all -> 0x020f }
        return r11;	 Catch:{ all -> 0x020f }
    L_0x020f:
        r11 = move-exception;	 Catch:{ all -> 0x020f }
        monitor-exit(r12);	 Catch:{ all -> 0x020f }
        throw r11;
    L_0x0212:
        r11 = move-exception;
        r12 = r10.zzcly;
        monitor-enter(r12);
        r1 = r10.zzcly;	 Catch:{ all -> 0x021d }
        r1.remove(r0);	 Catch:{ all -> 0x021d }
        monitor-exit(r12);	 Catch:{ all -> 0x021d }
        throw r11;
    L_0x021d:
        r11 = move-exception;
        monitor-exit(r12);	 Catch:{ all -> 0x021d }
        throw r11;
    L_0x0220:
        r11 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0220 }
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzf.zzb(android.os.Bundle, java.security.KeyPair):android.content.Intent");
    }
}
