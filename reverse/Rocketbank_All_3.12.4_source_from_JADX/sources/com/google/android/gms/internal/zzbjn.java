package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.tapandpay.firstparty.zzd;
import com.google.android.gms.tapandpay.firstparty.zzf;
import com.google.android.gms.tapandpay.firstparty.zzh;
import com.google.android.gms.tapandpay.firstparty.zzj;
import com.google.android.gms.tapandpay.firstparty.zzr;
import com.google.android.gms.tapandpay.issuer.TokenStatus;
import java.lang.ref.WeakReference;

public class zzbjn extends zzl<zzbjl> {
    private final Context mContext;

    public static abstract class zza extends com.google.android.gms.internal.zzbjm.zza {
        public void onDataChanged() throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zza(Status status) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zza(Status status, Bundle bundle) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zza(Status status, zzd zzd) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zza(Status status, zzf zzf) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zza(Status status, zzh zzh) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zza(Status status, zzj zzj) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zza(Status status, zzr zzr) {
            throw new UnsupportedOperationException();
        }

        public void zza(Status status, TokenStatus tokenStatus) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzb(Status status, String str) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzbP(Status status) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzbQ(Status status) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzbR(Status status) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzbS(Status status) {
            throw new UnsupportedOperationException();
        }

        public void zzbT(Status status) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzbU(Status status) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzbV(Status status) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzc(Status status, String str) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzd(Status status, String str) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zze(Status status, String str) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zze(Status status, boolean z) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzf(Status status, boolean z) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzg(Status status, boolean z) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        public void zzh(Status status, boolean z) throws RemoteException {
            throw new UnsupportedOperationException();
        }
    }

    public static final class zzb extends zza {
        private final int zzazu;
        private final WeakReference<Activity> zzbPa;

        public zzb(Activity activity, int i) {
            this.zzbPa = new WeakReference(activity);
            this.zzazu = i;
        }

        public final void zza(Status status, Bundle bundle) throws RemoteException {
            Activity activity = (Activity) this.zzbPa.get();
            if (activity == null) {
                Log.d("TapAndPayClientImpl", "Ignoring onHandlePendingIntent, Activity is gone");
                return;
            }
            if (status.hasResolution()) {
                try {
                    status.startResolutionForResult(activity, this.zzazu);
                    return;
                } catch (Throwable e) {
                    Log.w("TapAndPayClientImpl", "Exception starting pending intent", e);
                }
            }
            PendingIntent createPendingResult = activity.createPendingResult(this.zzazu, new Intent(), 1073741824);
            if (createPendingResult == null) {
                Log.w("TapAndPayClientImpl", "Null pending result returned for onHandleStatusPendingIntent");
                return;
            }
            try {
                createPendingResult.send(status.isSuccess() ? -1 : 1);
            } catch (Throwable e2) {
                Log.w("TapAndPayClientImpl", "Exception setting pending result", e2);
            }
        }
    }

    public zzbjn(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, zzg zzg) {
        super(context, looper, 79, zzg, connectionCallbacks, onConnectionFailedListener);
        this.mContext = context;
    }

    protected String zzeA() {
        return "com.google.android.gms.tapandpay.internal.ITapAndPayService";
    }

    protected String zzez() {
        return "com.google.android.gms.tapandpay.service.BIND";
    }

    protected zzbjl zzfp(IBinder iBinder) {
        return com.google.android.gms.internal.zzbjl.zza.zzfn(iBinder);
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzfp(iBinder);
    }

    protected Bundle zzqL() {
        return new Bundle();
    }
}
