package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzg;

public final class zzacf {
    public static final Api<NoOptions> API = new Api("Common.API", zzaie, zzaid);
    public static final zzacg zzaGM = new zzach();
    public static final zzf<zzacj> zzaid = new zzf();
    private static final zza<zzacj, NoOptions> zzaie = new C13721();

    /* renamed from: com.google.android.gms.internal.zzacf$1 */
    class C13721 extends zza<zzacj, NoOptions> {
        C13721() {
        }

        public final /* synthetic */ zze zza(Context context, Looper looper, zzg zzg, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return zzf(context, looper, zzg, (NoOptions) obj, connectionCallbacks, onConnectionFailedListener);
        }

        public final zzacj zzf(Context context, Looper looper, zzg zzg, NoOptions noOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzacj(context, looper, zzg, connectionCallbacks, onConnectionFailedListener);
        }
    }
}
