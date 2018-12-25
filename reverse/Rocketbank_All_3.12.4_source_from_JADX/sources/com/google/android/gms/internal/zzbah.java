package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzg;

public final class zzbah {
    public static final Api<zzbaj> API = new Api("SignIn.API", zzaie, zzaid);
    public static final Api<zza> zzaKN = new Api("SignIn.INTERNAL_API", zzbEj, zzbEi);
    public static final zzf<zzbat> zzaid = new zzf();
    public static final com.google.android.gms.common.api.Api.zza<zzbat, zzbaj> zzaie = new C13731();
    public static final Scope zzakh = new Scope(Scopes.PROFILE);
    public static final Scope zzaki = new Scope("email");
    public static final zzf<zzbat> zzbEi = new zzf();
    static final com.google.android.gms.common.api.Api.zza<zzbat, zza> zzbEj = new C13742();

    /* renamed from: com.google.android.gms.internal.zzbah$1 */
    class C13731 extends com.google.android.gms.common.api.Api.zza<zzbat, zzbaj> {
        C13731() {
        }

        public final zzbat zza(Context context, Looper looper, zzg zzg, zzbaj zzbaj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            if (zzbaj == null) {
                zzbaj = zzbaj.zzbEl;
            }
            return new zzbat(context, looper, true, zzg, zzbaj, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzbah$2 */
    class C13742 extends com.google.android.gms.common.api.Api.zza<zzbat, zza> {
        C13742() {
        }

        public final zzbat zza(Context context, Looper looper, zzg zzg, zza zza, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzbat(context, looper, false, zzg, zza.zzPK(), connectionCallbacks, onConnectionFailedListener);
        }
    }

    public static class zza implements HasOptions {
        private final Bundle zzbEk;

        public Bundle zzPK() {
            return this.zzbEk;
        }
    }
}
