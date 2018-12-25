package com.google.firebase.iid;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.util.ArrayMap;
import com.facebook.appevents.AppEventsConstants;
import java.io.IOException;
import java.security.KeyPair;
import java.util.Map;

public final class zzd {
    static Map<String, zzd> zzbhH = new ArrayMap();
    static String zzbhN;
    private static zzh zzclv;
    private static zzf zzclw;
    Context mContext;
    KeyPair zzbhK;
    String zzbhL = "";

    private zzd(Context context, String str) {
        this.mContext = context.getApplicationContext();
        this.zzbhL = str;
    }

    public static zzh zzabS() {
        return zzclv;
    }

    public static zzf zzabT() {
        return zzclw;
    }

    public static synchronized zzd zzb(Context context, Bundle bundle) {
        zzd zzd;
        synchronized (zzd.class) {
            String string = bundle == null ? "" : bundle.getString("subtype");
            if (string == null) {
                string = "";
            }
            context = context.getApplicationContext();
            if (zzclv == null) {
                zzclv = new zzh(context);
                zzclw = new zzf(context);
            }
            zzbhN = Integer.toString(FirebaseInstanceId.zzcr(context));
            zzd = (zzd) zzbhH.get(string);
            if (zzd == null) {
                zzd = new zzd(context, string);
                zzbhH.put(string, zzd);
            }
        }
        return zzd;
    }

    public final String getToken(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        String zzc;
        Object obj = 1;
        if (bundle.getString("ttl") == null) {
            if (!"jwt".equals(bundle.getString("type"))) {
                zza zzu = zzclv.zzu(this.zzbhL, str, str2);
                if (!(zzu == null || zzu.zzjB(zzbhN))) {
                    return zzu.zzbxW;
                }
                zzc = zzc(str, str2, bundle);
                if (!(zzc == null || r0 == null)) {
                    zzclv.zza(this.zzbhL, str, str2, zzc, zzbhN);
                }
                return zzc;
            }
        }
        obj = null;
        zzc = zzc(str, str2, bundle);
        zzclv.zza(this.zzbhL, str, str2, zzc, zzbhN);
        return zzc;
    }

    final KeyPair zzHh() {
        if (this.zzbhK == null) {
            this.zzbhK = zzclv.zzeI(this.zzbhL);
        }
        if (this.zzbhK == null) {
            this.zzbhK = zzclv.zzjz(this.zzbhL);
        }
        return this.zzbhK;
    }

    public final void zzHi() {
        zzclv.zzeJ(this.zzbhL);
        this.zzbhK = null;
    }

    public final void zzb(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        zzclv.zzi(this.zzbhL, str, str2);
        bundle.putString("delete", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        zzc(str, str2, bundle);
    }

    public final String zzc(String str, String str2, Bundle bundle) throws IOException {
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("sender", str);
        if (!"".equals(this.zzbhL)) {
            str = this.zzbhL;
        }
        bundle.putString("subtype", str);
        bundle.putString("X-subtype", str);
        return zzf.zzq(zzclw.zza(bundle, zzHh()));
    }
}
