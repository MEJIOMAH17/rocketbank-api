package com.google.android.gms.internal;

import android.accounts.Account;
import android.app.Activity;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.identity.intents.AddressConstants.Extras;
import com.google.android.gms.identity.intents.UserAddressRequest;

public class zzaqo extends zzl<zzaqq> {
    private Activity mActivity;
    private final int mTheme;
    private final String zzaiu;
    private zza zzbht;

    public static final class zza extends com.google.android.gms.internal.zzaqp.zza {
        private Activity mActivity;
        private final int zzazu;

        public zza(int i, Activity activity) {
            this.zzazu = i;
            this.mActivity = activity;
        }

        private void setActivity(Activity activity) {
            this.mActivity = activity;
        }

        public final void zzj(int i, Bundle bundle) {
            PendingIntent createPendingResult;
            if (i == 1) {
                Intent intent = new Intent();
                intent.putExtras(bundle);
                createPendingResult = this.mActivity.createPendingResult(this.zzazu, intent, 1073741824);
                if (createPendingResult != null) {
                    try {
                        createPendingResult.send(1);
                        return;
                    } catch (CanceledException e) {
                        Throwable e2 = e;
                        String str = "AddressClientImpl";
                        String str2 = "Exception settng pending result";
                        Log.w(str, str2, e2);
                    }
                }
                return;
            }
            PendingIntent pendingIntent = null;
            if (bundle != null) {
                pendingIntent = (PendingIntent) bundle.getParcelable("com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT");
            }
            ConnectionResult connectionResult = new ConnectionResult(i, pendingIntent);
            if (connectionResult.hasResolution()) {
                try {
                    connectionResult.startResolutionForResult(this.mActivity, this.zzazu);
                    return;
                } catch (SendIntentException e3) {
                    e2 = e3;
                    str = "AddressClientImpl";
                    str2 = "Exception starting pending intent";
                    Log.w(str, str2, e2);
                }
            }
            try {
                createPendingResult = this.mActivity.createPendingResult(this.zzazu, new Intent(), 1073741824);
                if (createPendingResult != null) {
                    createPendingResult.send(1);
                }
            } catch (CanceledException e4) {
                e2 = e4;
                str = "AddressClientImpl";
                str2 = "Exception setting pending result";
                Log.w(str, str2, e2);
            }
        }
    }

    public zzaqo(Activity activity, Looper looper, zzg zzg, int i, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(activity, looper, 12, zzg, connectionCallbacks, onConnectionFailedListener);
        this.zzaiu = zzg.getAccountName();
        this.mActivity = activity;
        this.mTheme = i;
    }

    public void disconnect() {
        super.disconnect();
        if (this.zzbht != null) {
            this.zzbht.setActivity(null);
            this.zzbht = null;
        }
    }

    protected zzaqq zzHd() throws DeadObjectException {
        return (zzaqq) super.zzxD();
    }

    protected void zzHe() {
        super.zzxC();
    }

    public void zza(UserAddressRequest userAddressRequest, int i) {
        zzHe();
        this.zzbht = new zza(i, this.mActivity);
        try {
            Bundle bundle = new Bundle();
            bundle.putString("com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME", getContext().getPackageName());
            if (!TextUtils.isEmpty(this.zzaiu)) {
                bundle.putParcelable("com.google.android.gms.identity.intents.EXTRA_ACCOUNT", new Account(this.zzaiu, "com.google"));
            }
            bundle.putInt("com.google.android.gms.identity.intents.EXTRA_THEME", this.mTheme);
            zzHd().zza(this.zzbht, userAddressRequest, bundle);
        } catch (Throwable e) {
            Log.e("AddressClientImpl", "Exception requesting user address", e);
            Bundle bundle2 = new Bundle();
            bundle2.putInt(Extras.EXTRA_ERROR_CODE, 555);
            this.zzbht.zzj(1, bundle2);
        }
    }

    protected zzaqq zzcW(IBinder iBinder) {
        return com.google.android.gms.internal.zzaqq.zza.zzcY(iBinder);
    }

    protected String zzeA() {
        return "com.google.android.gms.identity.intents.internal.IAddressService";
    }

    protected String zzez() {
        return "com.google.android.gms.identity.service.BIND";
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzcW(iBinder);
    }

    public boolean zzxE() {
        return true;
    }
}
