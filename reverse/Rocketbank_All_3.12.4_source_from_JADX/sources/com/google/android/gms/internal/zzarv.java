package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.internal.zzase.zza;

public class zzarv extends zzl<zzase> {
    private final String zzbkr;
    protected final zzaso<zzase> zzbks = new C12001(this);

    /* renamed from: com.google.android.gms.internal.zzarv$1 */
    class C12001 implements zzaso<zzase> {
        final /* synthetic */ zzarv zzbkt;

        C12001(zzarv zzarv) {
            this.zzbkt = zzarv;
        }

        public zzase zzIn() throws DeadObjectException {
            return (zzase) this.zzbkt.zzxD();
        }

        public void zzxC() {
            this.zzbkt.zzxC();
        }

        public /* synthetic */ IInterface zzxD() throws DeadObjectException {
            return zzIn();
        }
    }

    public zzarv(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, zzg zzg) {
        super(context, looper, 23, zzg, connectionCallbacks, onConnectionFailedListener);
        this.zzbkr = str;
    }

    protected zzase zzdf(IBinder iBinder) {
        return zza.zzdi(iBinder);
    }

    protected String zzeA() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    protected String zzez() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzdf(iBinder);
    }

    protected Bundle zzqL() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.zzbkr);
        return bundle;
    }
}
