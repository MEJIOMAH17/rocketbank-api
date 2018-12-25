package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.common.api.zzd;

public class zzb {
    public static zza zzG(Status status) {
        return status.hasResolution() ? new zzd(status) : new zza(status);
    }

    public static zza zzl(ConnectionResult connectionResult) {
        return zzG(new Status(connectionResult.getErrorCode(), connectionResult.getErrorMessage(), connectionResult.getResolution()));
    }
}
