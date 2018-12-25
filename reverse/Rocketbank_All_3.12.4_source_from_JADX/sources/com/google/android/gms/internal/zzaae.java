package com.google.android.gms.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;

public abstract class zzaae extends zzabe implements OnCancelListener {
    protected boolean mStarted;
    private ConnectionResult zzaAa;
    private int zzaAb;
    private final Handler zzaAc;
    protected boolean zzazZ;
    protected final GoogleApiAvailability zzazn;

    private class zza implements Runnable {
        final /* synthetic */ zzaae zzaAd;

        private zza(zzaae zzaae) {
            this.zzaAd = zzaae;
        }

        public void run() {
            if (!this.zzaAd.mStarted) {
                return;
            }
            if (this.zzaAd.zzaAa.hasResolution()) {
                this.zzaAd.zzaCR.startActivityForResult(GoogleApiActivity.zzb(this.zzaAd.getActivity(), this.zzaAd.zzaAa.getResolution(), this.zzaAd.zzaAb, false), 1);
            } else if (this.zzaAd.zzazn.isUserResolvableError(this.zzaAd.zzaAa.getErrorCode())) {
                this.zzaAd.zzazn.zza(this.zzaAd.getActivity(), this.zzaAd.zzaCR, this.zzaAd.zzaAa.getErrorCode(), 2, this.zzaAd);
            } else if (this.zzaAd.zzaAa.getErrorCode() == 18) {
                final Dialog zza = this.zzaAd.zzazn.zza(this.zzaAd.getActivity(), this.zzaAd);
                this.zzaAd.zzazn.zza(this.zzaAd.getActivity().getApplicationContext(), new com.google.android.gms.internal.zzaaz.zza(this) {
                    final /* synthetic */ zza zzaAf;

                    public void zzvE() {
                        this.zzaAf.zzaAd.zzvD();
                        if (zza.isShowing()) {
                            zza.dismiss();
                        }
                    }
                });
            } else {
                this.zzaAd.zza(this.zzaAd.zzaAa, this.zzaAd.zzaAb);
            }
        }
    }

    protected zzaae(zzabf zzabf) {
        this(zzabf, GoogleApiAvailability.getInstance());
    }

    zzaae(zzabf zzabf, GoogleApiAvailability googleApiAvailability) {
        super(zzabf);
        this.zzaAb = -1;
        this.zzaAc = new Handler(Looper.getMainLooper());
        this.zzazn = googleApiAvailability;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onActivityResult(int r3, int r4, android.content.Intent r5) {
        /*
        r2 = this;
        r0 = 1;
        r1 = 0;
        switch(r3) {
            case 1: goto L_0x0021;
            case 2: goto L_0x0006;
            default: goto L_0x0005;
        };
    L_0x0005:
        goto L_0x0039;
    L_0x0006:
        r3 = r2.zzazn;
        r4 = r2.getActivity();
        r3 = r3.isGooglePlayServicesAvailable(r4);
        if (r3 != 0) goto L_0x0013;
    L_0x0012:
        goto L_0x0014;
    L_0x0013:
        r0 = r1;
    L_0x0014:
        r4 = r2.zzaAa;
        r4 = r4.getErrorCode();
        r5 = 18;
        if (r4 != r5) goto L_0x003a;
    L_0x001e:
        if (r3 != r5) goto L_0x003a;
    L_0x0020:
        return;
    L_0x0021:
        r3 = -1;
        if (r4 != r3) goto L_0x0025;
    L_0x0024:
        goto L_0x003a;
    L_0x0025:
        if (r4 != 0) goto L_0x0039;
    L_0x0027:
        r3 = 13;
        if (r5 == 0) goto L_0x0031;
    L_0x002b:
        r4 = "<<ResolutionFailureErrorDetail>>";
        r3 = r5.getIntExtra(r4, r3);
    L_0x0031:
        r4 = new com.google.android.gms.common.ConnectionResult;
        r5 = 0;
        r4.<init>(r3, r5);
        r2.zzaAa = r4;
    L_0x0039:
        r0 = r1;
    L_0x003a:
        if (r0 == 0) goto L_0x0040;
    L_0x003c:
        r2.zzvD();
        return;
    L_0x0040:
        r3 = r2.zzaAa;
        r4 = r2.zzaAb;
        r2.zza(r3, r4);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaae.onActivityResult(int, int, android.content.Intent):void");
    }

    public void onCancel(DialogInterface dialogInterface) {
        zza(new ConnectionResult(13, null), this.zzaAb);
        zzvD();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zzazZ = bundle.getBoolean("resolving_error", false);
            if (this.zzazZ) {
                this.zzaAb = bundle.getInt("failed_client_id", -1);
                this.zzaAa = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.zzazZ);
        if (this.zzazZ) {
            bundle.putInt("failed_client_id", this.zzaAb);
            bundle.putInt("failed_status", this.zzaAa.getErrorCode());
            bundle.putParcelable("failed_resolution", this.zzaAa.getResolution());
        }
    }

    public void onStart() {
        super.onStart();
        this.mStarted = true;
    }

    public void onStop() {
        super.onStop();
        this.mStarted = false;
    }

    protected abstract void zza(ConnectionResult connectionResult, int i);

    public void zzb(ConnectionResult connectionResult, int i) {
        if (!this.zzazZ) {
            this.zzazZ = true;
            this.zzaAb = i;
            this.zzaAa = connectionResult;
            this.zzaAc.post(new zza());
        }
    }

    protected void zzvD() {
        this.zzaAb = -1;
        this.zzazZ = false;
        this.zzaAa = null;
        zzvx();
    }

    protected abstract void zzvx();
}
