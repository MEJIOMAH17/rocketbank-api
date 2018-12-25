package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf.zzb;
import com.google.android.gms.common.internal.zzf.zzc;
import com.google.android.gms.common.internal.zzm.zza;
import java.util.Set;

public abstract class zzl<T extends IInterface> extends zzf<T> implements zze, zza {
    private final zzg zzaAL;
    private final Account zzahh;
    private final Set<Scope> zzakq;

    /* renamed from: com.google.android.gms.common.internal.zzl$1 */
    class C11661 implements zzb {
        final /* synthetic */ ConnectionCallbacks zzaFS;

        C11661(ConnectionCallbacks connectionCallbacks) {
            this.zzaFS = connectionCallbacks;
        }

        public final void onConnected(Bundle bundle) {
            this.zzaFS.onConnected(bundle);
        }

        public final void onConnectionSuspended(int i) {
            this.zzaFS.onConnectionSuspended(i);
        }
    }

    /* renamed from: com.google.android.gms.common.internal.zzl$2 */
    class C11672 implements zzc {
        final /* synthetic */ OnConnectionFailedListener zzaFT;

        C11672(OnConnectionFailedListener onConnectionFailedListener) {
            this.zzaFT = onConnectionFailedListener;
        }

        public final void onConnectionFailed(ConnectionResult connectionResult) {
            this.zzaFT.onConnectionFailed(connectionResult);
        }
    }

    protected zzl(Context context, Looper looper, int i, zzg zzg, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, zzn.zzaU(context), GoogleApiAvailability.getInstance(), i, zzg, (ConnectionCallbacks) zzac.zzw(connectionCallbacks), (OnConnectionFailedListener) zzac.zzw(onConnectionFailedListener));
    }

    protected zzl(Context context, Looper looper, zzn zzn, GoogleApiAvailability googleApiAvailability, int i, zzg zzg, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, zzn, googleApiAvailability, i, zza(connectionCallbacks), zza(onConnectionFailedListener), zzg.zzxP());
        this.zzaAL = zzg;
        this.zzahh = zzg.getAccount();
        this.zzakq = zzb(zzg.zzxM());
    }

    private static zzb zza(ConnectionCallbacks connectionCallbacks) {
        return connectionCallbacks == null ? null : new C11661(connectionCallbacks);
    }

    private static zzc zza(OnConnectionFailedListener onConnectionFailedListener) {
        return onConnectionFailedListener == null ? null : new C11672(onConnectionFailedListener);
    }

    private Set<Scope> zzb(Set<Scope> set) {
        Set<Scope> zzc = zzc(set);
        for (Scope contains : zzc) {
            if (!set.contains(contains)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return zzc;
    }

    public final Account getAccount() {
        return this.zzahh;
    }

    protected Set<Scope> zzc(Set<Scope> set) {
        return set;
    }

    public com.google.android.gms.common.zzc[] zzxA() {
        return new com.google.android.gms.common.zzc[0];
    }

    protected final Set<Scope> zzxF() {
        return this.zzakq;
    }

    protected final zzg zzxW() {
        return this.zzaAL;
    }
}
