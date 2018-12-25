package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.zzt;

public class zzash extends zzarv {
    private final zzasg zzbkJ;

    private static final class zza extends com.google.android.gms.internal.zzasd.zza {
        private com.google.android.gms.internal.zzaad.zzb<Status> zzbkK;

        public zza(com.google.android.gms.internal.zzaad.zzb<Status> zzb) {
            this.zzbkK = zzb;
        }

        public final void zza(int i, PendingIntent pendingIntent) {
            Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByPendingIntentResult");
        }

        public final void zza(int i, String[] strArr) {
            if (this.zzbkK == null) {
                Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
                return;
            }
            this.zzbkK.setResult(LocationStatusCodes.zzkt(LocationStatusCodes.zzks(i)));
            this.zzbkK = null;
        }

        public final void zzb(int i, String[] strArr) {
            Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByRequestIdsResult");
        }
    }

    private static final class zzb extends com.google.android.gms.internal.zzasd.zza {
        private com.google.android.gms.internal.zzaad.zzb<Status> zzbkK;

        public zzb(com.google.android.gms.internal.zzaad.zzb<Status> zzb) {
            this.zzbkK = zzb;
        }

        private void zzkx(int i) {
            if (this.zzbkK == null) {
                Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times");
                return;
            }
            this.zzbkK.setResult(LocationStatusCodes.zzkt(LocationStatusCodes.zzks(i)));
            this.zzbkK = null;
        }

        public final void zza(int i, PendingIntent pendingIntent) {
            zzkx(i);
        }

        public final void zza(int i, String[] strArr) {
            Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
        }

        public final void zzb(int i, String[] strArr) {
            zzkx(i);
        }
    }

    private static final class zzc extends com.google.android.gms.internal.zzasf.zza {
        private com.google.android.gms.internal.zzaad.zzb<LocationSettingsResult> zzbkK;

        public zzc(com.google.android.gms.internal.zzaad.zzb<LocationSettingsResult> zzb) {
            zzac.zzb(zzb != null, (Object) "listener can't be null.");
            this.zzbkK = zzb;
        }

        public final void zza(LocationSettingsResult locationSettingsResult) throws RemoteException {
            this.zzbkK.setResult(locationSettingsResult);
            this.zzbkK = null;
        }
    }

    public zzash(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str) {
        this(context, looper, connectionCallbacks, onConnectionFailedListener, str, zzg.zzaS(context));
    }

    public zzash(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, zzg zzg) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, str, zzg);
        this.zzbkJ = new zzasg(context, this.zzbks);
    }

    public void disconnect() {
        synchronized (this.zzbkJ) {
            if (isConnected()) {
                try {
                    this.zzbkJ.removeAllListeners();
                    this.zzbkJ.zzIq();
                } catch (Throwable e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.disconnect();
        }
    }

    public Location getLastLocation() {
        return this.zzbkJ.getLastLocation();
    }

    public LocationAvailability zzIp() {
        return this.zzbkJ.zzIp();
    }

    public void zza(long j, PendingIntent pendingIntent) throws RemoteException {
        zzxC();
        zzac.zzw(pendingIntent);
        zzac.zzb(j >= 0, (Object) "detectionIntervalMillis must be >= 0");
        ((zzase) zzxD()).zza(j, true, pendingIntent);
    }

    public void zza(PendingIntent pendingIntent, zzasc zzasc) throws RemoteException {
        this.zzbkJ.zza(pendingIntent, zzasc);
    }

    public void zza(com.google.android.gms.internal.zzabh.zzb<LocationListener> zzb, zzasc zzasc) throws RemoteException {
        this.zzbkJ.zza((com.google.android.gms.internal.zzabh.zzb) zzb, zzasc);
    }

    public void zza(zzasc zzasc) throws RemoteException {
        this.zzbkJ.zza(zzasc);
    }

    public void zza(zzasi zzasi, zzabh<LocationCallback> zzabh, zzasc zzasc) throws RemoteException {
        synchronized (this.zzbkJ) {
            this.zzbkJ.zza(zzasi, (zzabh) zzabh, zzasc);
        }
    }

    public void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, com.google.android.gms.internal.zzaad.zzb<Status> zzb) throws RemoteException {
        zzxC();
        zzac.zzb((Object) geofencingRequest, (Object) "geofencingRequest can't be null.");
        zzac.zzb((Object) pendingIntent, (Object) "PendingIntent must be specified.");
        zzac.zzb((Object) zzb, (Object) "ResultHolder not provided.");
        ((zzase) zzxD()).zza(geofencingRequest, pendingIntent, new zza(zzb));
    }

    public void zza(LocationRequest locationRequest, PendingIntent pendingIntent, zzasc zzasc) throws RemoteException {
        this.zzbkJ.zza(locationRequest, pendingIntent, zzasc);
    }

    public void zza(LocationRequest locationRequest, zzabh<LocationListener> zzabh, zzasc zzasc) throws RemoteException {
        synchronized (this.zzbkJ) {
            this.zzbkJ.zza(locationRequest, (zzabh) zzabh, zzasc);
        }
    }

    public void zza(LocationSettingsRequest locationSettingsRequest, com.google.android.gms.internal.zzaad.zzb<LocationSettingsResult> zzb, String str) throws RemoteException {
        zzxC();
        boolean z = false;
        zzac.zzb(locationSettingsRequest != null, (Object) "locationSettingsRequest can't be null nor empty.");
        if (zzb != null) {
            z = true;
        }
        zzac.zzb(z, (Object) "listener can't be null.");
        ((zzase) zzxD()).zza(locationSettingsRequest, new zzc(zzb), str);
    }

    public void zza(zzt zzt, com.google.android.gms.internal.zzaad.zzb<Status> zzb) throws RemoteException {
        zzxC();
        zzac.zzb((Object) zzt, (Object) "removeGeofencingRequest can't be null.");
        zzac.zzb((Object) zzb, (Object) "ResultHolder not provided.");
        ((zzase) zzxD()).zza(zzt, new zzb(zzb));
    }

    public void zzaG(boolean z) throws RemoteException {
        this.zzbkJ.zzaG(z);
    }

    public void zzb(com.google.android.gms.internal.zzabh.zzb<LocationCallback> zzb, zzasc zzasc) throws RemoteException {
        this.zzbkJ.zzb(zzb, zzasc);
    }

    public void zzc(PendingIntent pendingIntent) throws RemoteException {
        zzxC();
        zzac.zzw(pendingIntent);
        ((zzase) zzxD()).zzc(pendingIntent);
    }

    public void zzd(Location location) throws RemoteException {
        this.zzbkJ.zzd(location);
    }
}
