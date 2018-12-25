package com.google.firebase.iid;

import android.arch.lifecycle.MethodCallsLogger;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.zzx;
import java.io.File;
import java.security.KeyPair;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

final class zzh {
    SharedPreferences zzbif;
    Context zzqn;

    static class zza {
        private static final long zzclH = TimeUnit.DAYS.toMillis(7);
        final long timestamp;
        final String zzbhN;
        final String zzbxW;

        private zza(String str, String str2, long j) {
            this.zzbxW = str;
            this.zzbhN = str2;
            this.timestamp = j;
        }

        static String zzd(String str, String str2, long j) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put("timestamp", j);
                return jSONObject.toString();
            } catch (JSONException e) {
                str = String.valueOf(e);
                StringBuilder stringBuilder = new StringBuilder(24 + String.valueOf(str).length());
                stringBuilder.append("Failed to encode token: ");
                stringBuilder.append(str);
                Log.w("InstanceID/Store", stringBuilder.toString());
                return null;
            }
        }

        static zza zzjA(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new zza(str, null, 0);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new zza(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e) {
                str = String.valueOf(e);
                StringBuilder stringBuilder = new StringBuilder(23 + String.valueOf(str).length());
                stringBuilder.append("Failed to parse token: ");
                stringBuilder.append(str);
                Log.w("InstanceID/Store", stringBuilder.toString());
                return null;
            }
        }

        final boolean zzjB(String str) {
            if (System.currentTimeMillis() <= this.timestamp + zzclH) {
                if (str.equals(this.zzbhN)) {
                    return false;
                }
            }
            return true;
        }
    }

    public zzh(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    private static String zzaz(String str, String str2) {
        String valueOf = String.valueOf("|S|");
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + String.valueOf(valueOf).length()) + String.valueOf(str2).length());
        stringBuilder.append(str);
        stringBuilder.append(valueOf);
        stringBuilder.append(str2);
        return stringBuilder.toString();
    }

    private void zzeH(String str) {
        Editor edit = this.zzbif.edit();
        for (String str2 : this.zzbif.getAll().keySet()) {
            if (str2.startsWith(str)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    private static String zzt(String str, String str2, String str3) {
        String valueOf = String.valueOf("|T|");
        StringBuilder stringBuilder = new StringBuilder((((1 + String.valueOf(str).length()) + String.valueOf(valueOf).length()) + String.valueOf(str2).length()) + String.valueOf(str3).length());
        stringBuilder.append(str);
        stringBuilder.append(valueOf);
        stringBuilder.append(str2);
        stringBuilder.append("|");
        stringBuilder.append(str3);
        return stringBuilder.toString();
    }

    public final synchronized boolean isEmpty() {
        return this.zzbif.getAll().isEmpty();
    }

    public final synchronized void zzHo() {
        this.zzbif.edit().clear().commit();
    }

    public final synchronized void zza(String str, String str2, String str3, String str4, String str5) {
        str4 = zza.zzd(str4, str5, System.currentTimeMillis());
        if (str4 != null) {
            Editor edit = this.zzbif.edit();
            edit.putString(zzt(str, str2, str3), str4);
            edit.commit();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized java.security.KeyPair zzeI(java.lang.String r5) {
        /*
        r4 = this;
        monitor-enter(r4);
        r0 = r4.zzbif;	 Catch:{ all -> 0x0079 }
        r1 = "|P|";
        r1 = zzaz(r5, r1);	 Catch:{ all -> 0x0079 }
        r2 = 0;
        r0 = r0.getString(r1, r2);	 Catch:{ all -> 0x0079 }
        r1 = r4.zzbif;	 Catch:{ all -> 0x0079 }
        r3 = "|K|";
        r5 = zzaz(r5, r3);	 Catch:{ all -> 0x0079 }
        r5 = r1.getString(r5, r2);	 Catch:{ all -> 0x0079 }
        if (r0 == 0) goto L_0x0077;
    L_0x001e:
        if (r5 != 0) goto L_0x0021;
    L_0x0020:
        goto L_0x0077;
    L_0x0021:
        r1 = 8;
        r0 = android.util.Base64.decode(r0, r1);	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        r5 = android.util.Base64.decode(r5, r1);	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        r1 = "RSA";
        r1 = java.security.KeyFactory.getInstance(r1);	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        r3 = new java.security.spec.X509EncodedKeySpec;	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        r3.<init>(r0);	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        r0 = r1.generatePublic(r3);	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        r3 = new java.security.spec.PKCS8EncodedKeySpec;	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        r3.<init>(r5);	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        r5 = r1.generatePrivate(r3);	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        r1 = new java.security.KeyPair;	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        r1.<init>(r0, r5);	 Catch:{ InvalidKeySpecException -> 0x004a, InvalidKeySpecException -> 0x004a }
        monitor-exit(r4);
        return r1;
    L_0x004a:
        r5 = move-exception;
        r0 = "InstanceID/Store";
        r5 = java.lang.String.valueOf(r5);	 Catch:{ all -> 0x0079 }
        r1 = 19;
        r3 = java.lang.String.valueOf(r5);	 Catch:{ all -> 0x0079 }
        r3 = r3.length();	 Catch:{ all -> 0x0079 }
        r1 = r1 + r3;
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0079 }
        r3.<init>(r1);	 Catch:{ all -> 0x0079 }
        r1 = "Invalid key stored ";
        r3.append(r1);	 Catch:{ all -> 0x0079 }
        r3.append(r5);	 Catch:{ all -> 0x0079 }
        r5 = r3.toString();	 Catch:{ all -> 0x0079 }
        android.util.Log.w(r0, r5);	 Catch:{ all -> 0x0079 }
        r5 = r4.zzqn;	 Catch:{ all -> 0x0079 }
        com.google.firebase.iid.FirebaseInstanceId.zza(r5, r4);	 Catch:{ all -> 0x0079 }
        monitor-exit(r4);
        return r2;
    L_0x0077:
        monitor-exit(r4);
        return r2;
    L_0x0079:
        r5 = move-exception;
        monitor-exit(r4);
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzh.zzeI(java.lang.String):java.security.KeyPair");
    }

    final synchronized void zzeJ(String str) {
        zzeH(String.valueOf(str).concat("|"));
    }

    public final synchronized void zzeK(String str) {
        zzeH(String.valueOf(str).concat("|T|"));
    }

    public final synchronized void zzi(String str, String str2, String str3) {
        str = zzt(str, str2, str3);
        Editor edit = this.zzbif.edit();
        edit.remove(str);
        edit.commit();
    }

    final synchronized KeyPair zzjz(String str) {
        KeyPair zzHg;
        zzHg = MethodCallsLogger.zzHg();
        long currentTimeMillis = System.currentTimeMillis();
        Editor edit = this.zzbif.edit();
        edit.putString(zzaz(str, "|P|"), FirebaseInstanceId.zzv(zzHg.getPublic().getEncoded()));
        edit.putString(zzaz(str, "|K|"), FirebaseInstanceId.zzv(zzHg.getPrivate().getEncoded()));
        edit.putString(zzaz(str, "cre"), Long.toString(currentTimeMillis));
        edit.commit();
        return zzHg;
    }

    public final synchronized zza zzu(String str, String str2, String str3) {
        return zza.zzjA(this.zzbif.getString(zzt(str, str2, str3), null));
    }

    private zzh(Context context, String str) {
        this.zzqn = context;
        this.zzbif = context.getSharedPreferences(str, 0);
        context = String.valueOf(str);
        str = String.valueOf("-no-backup");
        File file = new File(zzx.getNoBackupFilesDir(this.zzqn), str.length() != 0 ? context.concat(str) : new String(context));
        if (file.exists() == null) {
            try {
                if (file.createNewFile() != null && isEmpty() == null) {
                    Log.i("InstanceID/Store", "App restored, clearing state");
                    FirebaseInstanceId.zza(this.zzqn, this);
                }
            } catch (Context context2) {
                if (Log.isLoggable("InstanceID/Store", 3) != null) {
                    str = "InstanceID/Store";
                    String str2 = "Error creating file in no backup dir: ";
                    context2 = String.valueOf(context2.getMessage());
                    Log.d(str, context2.length() != 0 ? str2.concat(context2) : new String(str2));
                }
            }
        }
    }
}
