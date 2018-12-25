package com.google.android.gms.internal;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzac;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class zzaaa extends zzaae {
    private final SparseArray<zza> zzazN = new SparseArray();

    private class zza implements OnConnectionFailedListener {
        public final int zzazO;
        public final GoogleApiClient zzazP;
        public final OnConnectionFailedListener zzazQ;
        final /* synthetic */ zzaaa zzazR;

        public zza(zzaaa zzaaa, int i, GoogleApiClient googleApiClient, OnConnectionFailedListener onConnectionFailedListener) {
            this.zzazR = zzaaa;
            this.zzazO = i;
            this.zzazP = googleApiClient;
            this.zzazQ = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.append(str).append("GoogleApiClient #").print(this.zzazO);
            printWriter.println(":");
            this.zzazP.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            StringBuilder stringBuilder = new StringBuilder(27 + String.valueOf(valueOf).length());
            stringBuilder.append("beginFailureResolution for ");
            stringBuilder.append(valueOf);
            Log.d("AutoManageHelper", stringBuilder.toString());
            this.zzazR.zzb(connectionResult, this.zzazO);
        }

        public void zzvy() {
            this.zzazP.unregisterConnectionFailedListener(this);
            this.zzazP.disconnect();
        }
    }

    private zzaaa(zzabf zzabf) {
        super(zzabf);
        this.zzaCR.zza("AutoManageHelper", (zzabe) this);
    }

    public static zzaaa zza(zzabd zzabd) {
        zzabf zzc = zzabe.zzc(zzabd);
        zzaaa zzaaa = (zzaaa) zzc.zza("AutoManageHelper", zzaaa.class);
        return zzaaa != null ? zzaaa : new zzaaa(zzc);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.zzazN.size(); i++) {
            ((zza) this.zzazN.valueAt(i)).dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    public void onStart() {
        super.onStart();
        boolean z = this.mStarted;
        String valueOf = String.valueOf(this.zzazN);
        StringBuilder stringBuilder = new StringBuilder(14 + String.valueOf(valueOf).length());
        stringBuilder.append("onStart ");
        stringBuilder.append(z);
        stringBuilder.append(" ");
        stringBuilder.append(valueOf);
        Log.d("AutoManageHelper", stringBuilder.toString());
        if (!this.zzazZ) {
            for (int i = 0; i < this.zzazN.size(); i++) {
                ((zza) this.zzazN.valueAt(i)).zzazP.connect();
            }
        }
    }

    public void onStop() {
        super.onStop();
        for (int i = 0; i < this.zzazN.size(); i++) {
            ((zza) this.zzazN.valueAt(i)).zzazP.disconnect();
        }
    }

    public void zza(int i, GoogleApiClient googleApiClient, OnConnectionFailedListener onConnectionFailedListener) {
        zzac.zzb((Object) googleApiClient, (Object) "GoogleApiClient instance cannot be null");
        boolean z = this.zzazN.indexOfKey(i) < 0;
        StringBuilder stringBuilder = new StringBuilder(54);
        stringBuilder.append("Already managing a GoogleApiClient with id ");
        stringBuilder.append(i);
        zzac.zza(z, stringBuilder.toString());
        boolean z2 = this.mStarted;
        boolean z3 = this.zzazZ;
        StringBuilder stringBuilder2 = new StringBuilder(54);
        stringBuilder2.append("starting AutoManage for client ");
        stringBuilder2.append(i);
        stringBuilder2.append(" ");
        stringBuilder2.append(z2);
        stringBuilder2.append(" ");
        stringBuilder2.append(z3);
        Log.d("AutoManageHelper", stringBuilder2.toString());
        this.zzazN.put(i, new zza(this, i, googleApiClient, onConnectionFailedListener));
        if (this.mStarted && !this.zzazZ) {
            String valueOf = String.valueOf(googleApiClient);
            stringBuilder = new StringBuilder(11 + String.valueOf(valueOf).length());
            stringBuilder.append("connecting ");
            stringBuilder.append(valueOf);
            Log.d("AutoManageHelper", stringBuilder.toString());
            googleApiClient.connect();
        }
    }

    protected void zza(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        zza zza = (zza) this.zzazN.get(i);
        if (zza != null) {
            zzcA(i);
            OnConnectionFailedListener onConnectionFailedListener = zza.zzazQ;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    public void zzcA(int i) {
        zza zza = (zza) this.zzazN.get(i);
        this.zzazN.remove(i);
        if (zza != null) {
            zza.zzvy();
        }
    }

    protected void zzvx() {
        for (int i = 0; i < this.zzazN.size(); i++) {
            ((zza) this.zzazN.valueAt(i)).zzazP.connect();
        }
    }
}
