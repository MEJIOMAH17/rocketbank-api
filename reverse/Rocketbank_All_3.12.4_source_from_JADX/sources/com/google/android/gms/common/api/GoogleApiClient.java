package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;
import com.google.android.gms.common.api.Api.ApiOptions.NotRequiredOptions;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Api.zzd;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzg.zza;
import com.google.android.gms.internal.zzaaa;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaag;
import com.google.android.gms.internal.zzaat;
import com.google.android.gms.internal.zzabd;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzabq;
import com.google.android.gms.internal.zzabx;
import com.google.android.gms.internal.zzbah;
import com.google.android.gms.internal.zzbai;
import com.google.android.gms.internal.zzbaj;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public abstract class GoogleApiClient {
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;
    private static final Set<GoogleApiClient> zzazc = Collections.newSetFromMap(new WeakHashMap());

    public static final class Builder {
        private final Context mContext;
        private Account zzahh;
        private String zzaiq;
        private final Set<Scope> zzazd;
        private final Set<Scope> zzaze;
        private int zzazf;
        private View zzazg;
        private String zzazh;
        private final Map<Api<?>, zza> zzazi;
        private final Map<Api<?>, ApiOptions> zzazj;
        private zzabd zzazk;
        private int zzazl;
        private OnConnectionFailedListener zzazm;
        private GoogleApiAvailability zzazn;
        private Api.zza<? extends zzbai, zzbaj> zzazo;
        private final ArrayList<ConnectionCallbacks> zzazp;
        private final ArrayList<OnConnectionFailedListener> zzazq;
        private boolean zzazr;
        private Looper zzrs;

        public Builder(Context context) {
            this.zzazd = new HashSet();
            this.zzaze = new HashSet();
            this.zzazi = new ArrayMap();
            this.zzazj = new ArrayMap();
            this.zzazl = -1;
            this.zzazn = GoogleApiAvailability.getInstance();
            this.zzazo = zzbah.zzaie;
            this.zzazp = new ArrayList();
            this.zzazq = new ArrayList();
            this.zzazr = false;
            this.mContext = context;
            this.zzrs = context.getMainLooper();
            this.zzaiq = context.getPackageName();
            this.zzazh = context.getClass().getName();
        }

        public Builder(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            zzac.zzb((Object) connectionCallbacks, (Object) "Must provide a connected listener");
            this.zzazp.add(connectionCallbacks);
            zzac.zzb((Object) onConnectionFailedListener, (Object) "Must provide a connection failed listener");
            this.zzazq.add(onConnectionFailedListener);
        }

        private static <C extends zze, O> C zza(Api.zza<C, O> zza, Object obj, Context context, Looper looper, zzg zzg, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return zza.zza(context, looper, zzg, obj, connectionCallbacks, onConnectionFailedListener);
        }

        private Builder zza(zzabd zzabd, int i, OnConnectionFailedListener onConnectionFailedListener) {
            zzac.zzb(i >= 0, (Object) "clientId must be non-negative");
            this.zzazl = i;
            this.zzazm = onConnectionFailedListener;
            this.zzazk = zzabd;
            return this;
        }

        private <O extends ApiOptions> void zza(Api<O> api, O o, Scope... scopeArr) {
            Set hashSet = new HashSet(api.zzve().zzp(o));
            for (Object add : scopeArr) {
                hashSet.add(add);
            }
            this.zzazi.put(api, new zza(hashSet));
        }

        private void zzf(GoogleApiClient googleApiClient) {
            zzaaa.zza(this.zzazk).zza(this.zzazl, googleApiClient, this.zzazm);
        }

        private GoogleApiClient zzvq() {
            zzg zzvp = zzvp();
            Map zzxN = zzvp.zzxN();
            Map arrayMap = new ArrayMap();
            Map arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            Iterator it = this.zzazj.keySet().iterator();
            Api api = null;
            int i = 0;
            while (it.hasNext()) {
                Api api2 = (Api) it.next();
                Object obj = r0.zzazj.get(api2);
                boolean z = zzxN.get(api2) != null;
                arrayMap.put(api2, Boolean.valueOf(z));
                zzaag zzaag = new zzaag(api2, z);
                arrayList.add(zzaag);
                zzd zzvf = api2.zzvf();
                zzd zzd = zzvf;
                zzaag zzaag2 = zzaag;
                Map map = zzxN;
                Api api3 = api2;
                Iterator it2 = it;
                int i2 = 1;
                zze zza = zza(zzvf, obj, r0.mContext, r0.zzrs, zzvp, zzaag2, zzaag2);
                arrayMap2.put(api3.zzvg(), zza);
                if (zzd.getPriority() == i2) {
                    if (obj == null) {
                        i2 = 0;
                    }
                    i = i2;
                }
                if (zza.zzrr()) {
                    if (api != null) {
                        String valueOf = String.valueOf(api3.getName());
                        String valueOf2 = String.valueOf(api.getName());
                        StringBuilder stringBuilder = new StringBuilder((21 + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
                        stringBuilder.append(valueOf);
                        stringBuilder.append(" cannot be used with ");
                        stringBuilder.append(valueOf2);
                        throw new IllegalStateException(stringBuilder.toString());
                    }
                    api = api3;
                }
                zzxN = map;
                it = it2;
            }
            boolean z2 = true;
            if (api != null) {
                if (i != 0) {
                    valueOf = String.valueOf(api.getName());
                    StringBuilder stringBuilder2 = new StringBuilder(82 + String.valueOf(valueOf).length());
                    stringBuilder2.append("With using ");
                    stringBuilder2.append(valueOf);
                    stringBuilder2.append(", GamesOptions can only be specified within GoogleSignInOptions.Builder");
                    throw new IllegalStateException(stringBuilder2.toString());
                }
                z = r0.zzahh == null ? z2 : false;
                Object[] objArr = new Object[z2];
                objArr[0] = api.getName();
                zzac.zza(z, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", objArr);
                objArr = new Object[z2];
                objArr[0] = api.getName();
                zzac.zza(r0.zzazd.equals(r0.zzaze), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", objArr);
            }
            return new zzaat(r0.mContext, new ReentrantLock(), r0.zzrs, zzvp, r0.zzazn, r0.zzazo, arrayMap, r0.zzazp, r0.zzazq, arrayMap2, r0.zzazl, zzaat.zza(arrayMap2.values(), z2), arrayList, false);
        }

        public final Builder addApi(Api<? extends NotRequiredOptions> api) {
            zzac.zzb((Object) api, (Object) "Api must not be null");
            this.zzazj.put(api, null);
            Collection zzp = api.zzve().zzp(null);
            this.zzaze.addAll(zzp);
            this.zzazd.addAll(zzp);
            return this;
        }

        public final <O extends HasOptions> Builder addApi(Api<O> api, O o) {
            zzac.zzb((Object) api, (Object) "Api must not be null");
            zzac.zzb((Object) o, (Object) "Null options are not permitted for this Api");
            this.zzazj.put(api, o);
            Collection zzp = api.zzve().zzp(o);
            this.zzaze.addAll(zzp);
            this.zzazd.addAll(zzp);
            return this;
        }

        public final <O extends HasOptions> Builder addApiIfAvailable(Api<O> api, O o, Scope... scopeArr) {
            zzac.zzb((Object) api, (Object) "Api must not be null");
            zzac.zzb((Object) o, (Object) "Null options are not permitted for this Api");
            this.zzazj.put(api, o);
            zza((Api) api, (ApiOptions) o, scopeArr);
            return this;
        }

        public final Builder addApiIfAvailable(Api<? extends NotRequiredOptions> api, Scope... scopeArr) {
            zzac.zzb((Object) api, (Object) "Api must not be null");
            this.zzazj.put(api, null);
            zza((Api) api, null, scopeArr);
            return this;
        }

        public final Builder addConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
            zzac.zzb((Object) connectionCallbacks, (Object) "Listener must not be null");
            this.zzazp.add(connectionCallbacks);
            return this;
        }

        public final Builder addOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
            zzac.zzb((Object) onConnectionFailedListener, (Object) "Listener must not be null");
            this.zzazq.add(onConnectionFailedListener);
            return this;
        }

        public final Builder addScope(Scope scope) {
            zzac.zzb((Object) scope, (Object) "Scope must not be null");
            this.zzazd.add(scope);
            return this;
        }

        public final GoogleApiClient build() {
            zzac.zzb(this.zzazj.isEmpty() ^ 1, (Object) "must call addApi() to add at least one API");
            GoogleApiClient zzvq = zzvq();
            synchronized (GoogleApiClient.zzazc) {
                GoogleApiClient.zzazc.add(zzvq);
            }
            if (this.zzazl >= 0) {
                zzf(zzvq);
            }
            return zzvq;
        }

        public final Builder enableAutoManage(FragmentActivity fragmentActivity, int i, OnConnectionFailedListener onConnectionFailedListener) {
            return zza(new zzabd(fragmentActivity), i, onConnectionFailedListener);
        }

        public final Builder enableAutoManage(FragmentActivity fragmentActivity, OnConnectionFailedListener onConnectionFailedListener) {
            return enableAutoManage(fragmentActivity, 0, onConnectionFailedListener);
        }

        public final Builder setAccountName(String str) {
            this.zzahh = str == null ? null : new Account(str, "com.google");
            return this;
        }

        public final Builder setGravityForPopups(int i) {
            this.zzazf = i;
            return this;
        }

        public final Builder setHandler(Handler handler) {
            zzac.zzb((Object) handler, (Object) "Handler must not be null");
            this.zzrs = handler.getLooper();
            return this;
        }

        public final Builder setViewForPopups(View view) {
            zzac.zzb((Object) view, (Object) "View must not be null");
            this.zzazg = view;
            return this;
        }

        public final Builder useDefaultAccount() {
            return setAccountName("<<default account>>");
        }

        public final Builder zze(Account account) {
            this.zzahh = account;
            return this;
        }

        public final zzg zzvp() {
            zzbaj zzbaj = zzbaj.zzbEl;
            if (this.zzazj.containsKey(zzbah.API)) {
                zzbaj = (zzbaj) this.zzazj.get(zzbah.API);
            }
            return new zzg(this.zzahh, this.zzazd, this.zzazi, this.zzazf, this.zzazg, this.zzaiq, this.zzazh, zzbaj);
        }
    }

    public interface ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface OnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public static void dumpAll(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        synchronized (zzazc) {
            int i = 0;
            String concat = String.valueOf(str).concat("  ");
            for (GoogleApiClient googleApiClient : zzazc) {
                int i2 = i + 1;
                printWriter.append(str).append("GoogleApiClient#").println(i);
                googleApiClient.dump(concat, fileDescriptor, printWriter, strArr);
                i = i2;
            }
        }
    }

    public static Set<GoogleApiClient> zzvm() {
        Set<GoogleApiClient> set;
        synchronized (zzazc) {
            set = zzazc;
        }
        return set;
    }

    public abstract ConnectionResult blockingConnect();

    public abstract ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract ConnectionResult getConnectionResult(Api<?> api);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(Api<?> api);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener);

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    public abstract void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public abstract void stopAutoManage(FragmentActivity fragmentActivity);

    public abstract void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    public abstract void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public <C extends zze> C zza(zzc<C> zzc) {
        throw new UnsupportedOperationException();
    }

    public <A extends zzb, R extends Result, T extends zzaad.zza<R, A>> T zza(T t) {
        throw new UnsupportedOperationException();
    }

    public void zza(zzabx zzabx) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(zzabq zzabq) {
        throw new UnsupportedOperationException();
    }

    public <A extends zzb, T extends zzaad.zza<? extends Result, A>> T zzb(T t) {
        throw new UnsupportedOperationException();
    }

    public void zzb(zzabx zzabx) {
        throw new UnsupportedOperationException();
    }

    public <L> zzabh<L> zzr(L l) {
        throw new UnsupportedOperationException();
    }

    public void zzvn() {
        throw new UnsupportedOperationException();
    }
}
