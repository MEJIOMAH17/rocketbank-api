package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzam;
import com.google.android.gms.common.util.zzw;

public final class FirebaseOptions {
    private final String zzamX;
    private final String zzbWQ;
    private final String zzbWR;
    private final String zzbWS;
    private final String zzbWT;
    private final String zzbWU;

    private FirebaseOptions(String str, String str2, String str3, String str4, String str5, String str6) {
        zzac.zza(zzw.zzdz(str) ^ 1, (Object) "ApplicationId must be set.");
        this.zzamX = str;
        this.zzbWQ = str2;
        this.zzbWR = str3;
        this.zzbWS = str4;
        this.zzbWT = str5;
        this.zzbWU = str6;
    }

    public static FirebaseOptions fromResource(Context context) {
        zzam zzam = new zzam(context);
        Object string = zzam.getString("google_app_id");
        return TextUtils.isEmpty(string) ? null : new FirebaseOptions(string, zzam.getString("google_api_key"), zzam.getString("firebase_database_url"), zzam.getString("ga_trackingId"), zzam.getString("gcm_defaultSenderId"), zzam.getString("google_storage_bucket"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FirebaseOptions)) {
            return false;
        }
        FirebaseOptions firebaseOptions = (FirebaseOptions) obj;
        return zzaa.equal(this.zzamX, firebaseOptions.zzamX) && zzaa.equal(this.zzbWQ, firebaseOptions.zzbWQ) && zzaa.equal(this.zzbWR, firebaseOptions.zzbWR) && zzaa.equal(this.zzbWS, firebaseOptions.zzbWS) && zzaa.equal(this.zzbWT, firebaseOptions.zzbWT) && zzaa.equal(this.zzbWU, firebaseOptions.zzbWU);
    }

    public final String getApplicationId() {
        return this.zzamX;
    }

    public final String getGcmSenderId() {
        return this.zzbWT;
    }

    public final int hashCode() {
        return zzaa.hashCode(this.zzamX, this.zzbWQ, this.zzbWR, this.zzbWS, this.zzbWT, this.zzbWU);
    }

    public final String toString() {
        return zzaa.zzv(this).zzg("applicationId", this.zzamX).zzg("apiKey", this.zzbWQ).zzg("databaseUrl", this.zzbWR).zzg("gcmSenderId", this.zzbWT).zzg("storageBucket", this.zzbWU).toString();
    }
}
