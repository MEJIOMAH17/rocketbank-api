package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad.zzb;

public final class zzach implements zzacg {

    private static class zza extends zzace {
        private final zzb<Status> zzaGN;

        public zza(zzb<Status> zzb) {
            this.zzaGN = zzb;
        }

        public void zzdd(int i) throws RemoteException {
            this.zzaGN.setResult(new Status(i));
        }
    }

    public final PendingResult<Status> zzg(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb(new zza(this, googleApiClient) {
            protected void zza(zzacj zzacj) throws RemoteException {
                ((zzacl) zzacj.zzxD()).zza(new zza(this));
            }
        });
    }
}
