package com.google.android.gms.identity.intents;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzaqo;

public final class Address {
    public static final Api<AddressOptions> API = new Api("Address.API", zzaie, zzaid);
    static final zzf<zzaqo> zzaid = new zzf();
    private static final com.google.android.gms.common.api.Api.zza<zzaqo, AddressOptions> zzaie = new C13711();

    /* renamed from: com.google.android.gms.identity.intents.Address$1 */
    class C13711 extends com.google.android.gms.common.api.Api.zza<zzaqo, AddressOptions> {
        C13711() {
        }

        public final zzaqo zza(Context context, Looper looper, zzg zzg, AddressOptions addressOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            zzac.zzb(context instanceof Activity, (Object) "An Activity must be used for Address APIs");
            if (addressOptions == null) {
                addressOptions = new AddressOptions();
            }
            return new zzaqo((Activity) context, looper, zzg, addressOptions.theme, connectionCallbacks, onConnectionFailedListener);
        }
    }

    public static final class AddressOptions implements HasOptions {
        public final int theme;

        public AddressOptions() {
            this.theme = 0;
        }

        public AddressOptions(int i) {
            this.theme = i;
        }
    }

    private static abstract class zza extends com.google.android.gms.internal.zzaad.zza<Status, zzaqo> {
        public zza(GoogleApiClient googleApiClient) {
            super(Address.API, googleApiClient);
        }

        public /* synthetic */ void setResult(Object obj) {
            super.zzb((Status) obj);
        }

        public Status zzb(Status status) {
            return status;
        }

        public /* synthetic */ Result zzc(Status status) {
            return zzb(status);
        }
    }

    /* renamed from: com.google.android.gms.identity.intents.Address$2 */
    class C14772 extends zza {
        final /* synthetic */ int val$requestCode;
        final /* synthetic */ UserAddressRequest zzbhq;

        C14772(GoogleApiClient googleApiClient, UserAddressRequest userAddressRequest, int i) {
            this.zzbhq = userAddressRequest;
            this.val$requestCode = i;
            super(googleApiClient);
        }

        protected final void zza(zzaqo zzaqo) throws RemoteException {
            zzaqo.zza(this.zzbhq, this.val$requestCode);
            zzb(Status.zzazx);
        }
    }

    public static void requestUserAddress(GoogleApiClient googleApiClient, UserAddressRequest userAddressRequest, int i) {
        googleApiClient.zza(new C14772(googleApiClient, userAddressRequest, i));
    }
}
