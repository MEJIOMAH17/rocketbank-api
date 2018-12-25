package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzn;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzr;
import java.util.HashSet;
import java.util.Set;

public class zzabr extends zzbam implements ConnectionCallbacks, OnConnectionFailedListener {
    private static com.google.android.gms.common.api.Api.zza<? extends zzbai, zzbaj> zzaDg = zzbah.zzaie;
    private final Context mContext;
    private final Handler mHandler;
    private zzg zzaAL;
    private zzbai zzaBs;
    private final boolean zzaDh;
    private zza zzaDi;
    private Set<Scope> zzakq;
    private final com.google.android.gms.common.api.Api.zza<? extends zzbai, zzbaj> zzayH;

    public interface zza {
        void zzb(zzr zzr, Set<Scope> set);

        void zzi(ConnectionResult connectionResult);
    }

    public zzabr(Context context, Handler handler) {
        this.mContext = context;
        this.mHandler = handler;
        this.zzayH = zzaDg;
        this.zzaDh = true;
    }

    public zzabr(Context context, Handler handler, zzg zzg, com.google.android.gms.common.api.Api.zza<? extends zzbai, zzbaj> zza) {
        this.mContext = context;
        this.mHandler = handler;
        this.zzaAL = zzg;
        this.zzakq = zzg.zzxL();
        this.zzayH = zza;
        this.zzaDh = false;
    }

    private void zzc(zzbaw zzbaw) {
        ConnectionResult zzyh = zzbaw.zzyh();
        if (zzyh.isSuccess()) {
            zzaf zzPW = zzbaw.zzPW();
            zzyh = zzPW.zzyh();
            if (zzyh.isSuccess()) {
                this.zzaDi.zzb(zzPW.zzyg(), this.zzakq);
                this.zzaBs.disconnect();
            }
            String valueOf = String.valueOf(zzyh);
            StringBuilder stringBuilder = new StringBuilder(48 + String.valueOf(valueOf).length());
            stringBuilder.append("Sign-in succeeded with resolve account failure: ");
            stringBuilder.append(valueOf);
            Log.wtf("SignInCoordinator", stringBuilder.toString(), new Exception());
        }
        this.zzaDi.zzi(zzyh);
        this.zzaBs.disconnect();
    }

    public void onConnected(Bundle bundle) {
        this.zzaBs.zza(this);
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzaDi.zzi(connectionResult);
    }

    public void onConnectionSuspended(int i) {
        this.zzaBs.disconnect();
    }

    public void zza(zza zza) {
        if (this.zzaBs != null) {
            r7.zzaBs.disconnect();
        }
        if (r7.zzaDh) {
            GoogleSignInOptions zzrC = zzn.zzas(r7.mContext).zzrC();
            r7.zzakq = zzrC == null ? new HashSet() : new HashSet(zzrC.zzrj());
            r7.zzaAL = new zzg(null, r7.zzakq, null, 0, null, null, null, zzbaj.zzbEl);
        }
        r7.zzaBs = (zzbai) r7.zzayH.zza(r7.mContext, r7.mHandler.getLooper(), r7.zzaAL, r7.zzaAL.zzxR(), r7, r7);
        r7.zzaDi = zza;
        r7.zzaBs.connect();
    }

    public void zzb(final zzbaw zzbaw) {
        this.mHandler.post(new Runnable(this) {
            final /* synthetic */ zzabr zzaDj;

            public void run() {
                this.zzaDj.zzc(zzbaw);
            }
        });
    }

    public zzbai zzwO() {
        return this.zzaBs;
    }

    public void zzwY() {
        this.zzaBs.disconnect();
    }
}
