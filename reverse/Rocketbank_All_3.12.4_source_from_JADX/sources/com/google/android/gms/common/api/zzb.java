package com.google.android.gms.common.api;

import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzzz;
import java.util.ArrayList;

public class zzb extends Exception {
    private final ArrayMap<zzzz<?>, ConnectionResult> zzayL;

    public zzb(ArrayMap<zzzz<?>, ConnectionResult> arrayMap) {
        this.zzayL = arrayMap;
    }

    public String getMessage() {
        Iterable arrayList = new ArrayList();
        Object obj = 1;
        for (zzzz zzzz : this.zzayL.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) this.zzayL.get(zzzz);
            if (connectionResult.isSuccess()) {
                obj = null;
            }
            String valueOf = String.valueOf(zzzz.zzvw());
            String valueOf2 = String.valueOf(connectionResult);
            StringBuilder stringBuilder = new StringBuilder((2 + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
            stringBuilder.append(valueOf);
            stringBuilder.append(": ");
            stringBuilder.append(valueOf2);
            arrayList.add(stringBuilder.toString());
        }
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(obj != null ? "None of the queried APIs are available. " : "Some of the queried APIs are unavailable. ");
        stringBuilder2.append(TextUtils.join("; ", arrayList));
        return stringBuilder2.toString();
    }

    public ConnectionResult zza(zzc<? extends ApiOptions> zzc) {
        zzzz apiKey = zzc.getApiKey();
        zzac.zzb(this.zzayL.get(apiKey) != null, (Object) "The given API was not part of the availability request.");
        return (ConnectionResult) this.zzayL.get(apiKey);
    }

    public ArrayMap<zzzz<?>, ConnectionResult> zzvj() {
        return this.zzayL;
    }
}
