package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzabh.zzc;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzj;
import com.google.android.gms.location.zzk;
import java.util.HashMap;
import java.util.Map;

public class zzasg {
    private final Context mContext;
    private final Map<com.google.android.gms.internal.zzabh.zzb<LocationListener>, zzb> zzaWg = new HashMap();
    private ContentProviderClient zzbkD = null;
    private boolean zzbkE = false;
    private final Map<com.google.android.gms.internal.zzabh.zzb<LocationCallback>, zza> zzbkF = new HashMap();
    private final zzaso<zzase> zzbks;

    private static class zza extends com.google.android.gms.location.zzj.zza {
        private final zzabh<LocationCallback> zzaDf;

        zza(zzabh<LocationCallback> zzabh) {
            this.zzaDf = zzabh;
        }

        public void onLocationAvailability(final LocationAvailability locationAvailability) {
            this.zzaDf.zza(new zzc<LocationCallback>(this) {
                public void zza(LocationCallback locationCallback) {
                    locationCallback.onLocationAvailability(locationAvailability);
                }

                public /* synthetic */ void zzs(Object obj) {
                    zza((LocationCallback) obj);
                }

                public void zzwc() {
                }
            });
        }

        public void onLocationResult(final LocationResult locationResult) {
            this.zzaDf.zza(new zzc<LocationCallback>(this) {
                public void zza(LocationCallback locationCallback) {
                    locationCallback.onLocationResult(locationResult);
                }

                public /* synthetic */ void zzs(Object obj) {
                    zza((LocationCallback) obj);
                }

                public void zzwc() {
                }
            });
        }

        public synchronized void release() {
            this.zzaDf.clear();
        }
    }

    private static class zzb extends com.google.android.gms.location.zzk.zza {
        private final zzabh<LocationListener> zzaDf;

        zzb(zzabh<LocationListener> zzabh) {
            this.zzaDf = zzabh;
        }

        public synchronized void onLocationChanged(final Location location) {
            this.zzaDf.zza(new zzc<LocationListener>(this) {
                public void zza(LocationListener locationListener) {
                    locationListener.onLocationChanged(location);
                }

                public /* synthetic */ void zzs(Object obj) {
                    zza((LocationListener) obj);
                }

                public void zzwc() {
                }
            });
        }

        public synchronized void release() {
            this.zzaDf.clear();
        }
    }

    public zzasg(Context context, zzaso<zzase> zzaso) {
        this.mContext = context;
        this.zzbks = zzaso;
    }

    private zzb zzf(zzabh<LocationListener> zzabh) {
        zzb zzb;
        synchronized (this.zzaWg) {
            zzb = (zzb) this.zzaWg.get(zzabh.zzwW());
            if (zzb == null) {
                zzb = new zzb(zzabh);
            }
            this.zzaWg.put(zzabh.zzwW(), zzb);
        }
        return zzb;
    }

    private zza zzg(zzabh<LocationCallback> zzabh) {
        zza zza;
        synchronized (this.zzbkF) {
            zza = (zza) this.zzbkF.get(zzabh.zzwW());
            if (zza == null) {
                zza = new zza(zzabh);
            }
            this.zzbkF.put(zzabh.zzwW(), zza);
        }
        return zza;
    }

    public Location getLastLocation() {
        this.zzbks.zzxC();
        try {
            return ((zzase) this.zzbks.zzxD()).zzeR(this.mContext.getPackageName());
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public void removeAllListeners() {
        try {
            synchronized (this.zzaWg) {
                for (zzk zzk : this.zzaWg.values()) {
                    if (zzk != null) {
                        ((zzase) this.zzbks.zzxD()).zza(zzask.zza(zzk, null));
                    }
                }
                this.zzaWg.clear();
            }
            synchronized (this.zzbkF) {
                for (zzj zzj : this.zzbkF.values()) {
                    if (zzj != null) {
                        ((zzase) this.zzbks.zzxD()).zza(zzask.zza(zzj, null));
                    }
                }
                this.zzbkF.clear();
            }
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public LocationAvailability zzIp() {
        this.zzbks.zzxC();
        try {
            return ((zzase) this.zzbks.zzxD()).zzeS(this.mContext.getPackageName());
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public void zzIq() {
        if (this.zzbkE) {
            try {
                zzaG(false);
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public void zza(PendingIntent pendingIntent, zzasc zzasc) throws RemoteException {
        this.zzbks.zzxC();
        ((zzase) this.zzbks.zzxD()).zza(zzask.zzb(pendingIntent, zzasc));
    }

    public void zza(com.google.android.gms.internal.zzabh.zzb<LocationListener> zzb, zzasc zzasc) throws RemoteException {
        this.zzbks.zzxC();
        zzac.zzb((Object) zzb, (Object) "Invalid null listener key");
        synchronized (this.zzaWg) {
            zzk zzk = (zzb) this.zzaWg.remove(zzb);
            if (zzk != null) {
                zzk.release();
                ((zzase) this.zzbks.zzxD()).zza(zzask.zza(zzk, zzasc));
            }
        }
    }

    public void zza(zzasc zzasc) throws RemoteException {
        this.zzbks.zzxC();
        ((zzase) this.zzbks.zzxD()).zza(zzasc);
    }

    public void zza(zzasi zzasi, zzabh<LocationCallback> zzabh, zzasc zzasc) throws RemoteException {
        this.zzbks.zzxC();
        ((zzase) this.zzbks.zzxD()).zza(zzask.zza(zzasi, zzg(zzabh), zzasc));
    }

    public void zza(LocationRequest locationRequest, PendingIntent pendingIntent, zzasc zzasc) throws RemoteException {
        this.zzbks.zzxC();
        ((zzase) this.zzbks.zzxD()).zza(zzask.zza(zzasi.zzb(locationRequest), pendingIntent, zzasc));
    }

    public void zza(LocationRequest locationRequest, zzabh<LocationListener> zzabh, zzasc zzasc) throws RemoteException {
        this.zzbks.zzxC();
        ((zzase) this.zzbks.zzxD()).zza(zzask.zza(zzasi.zzb(locationRequest), zzf(zzabh), zzasc));
    }

    public void zzaG(boolean z) throws RemoteException {
        this.zzbks.zzxC();
        ((zzase) this.zzbks.zzxD()).zzaG(z);
        this.zzbkE = z;
    }

    public void zzb(com.google.android.gms.internal.zzabh.zzb<LocationCallback> zzb, zzasc zzasc) throws RemoteException {
        this.zzbks.zzxC();
        zzac.zzb((Object) zzb, (Object) "Invalid null listener key");
        synchronized (this.zzbkF) {
            zzj zzj = (zza) this.zzbkF.remove(zzb);
            if (zzj != null) {
                zzj.release();
                ((zzase) this.zzbks.zzxD()).zza(zzask.zza(zzj, zzasc));
            }
        }
    }

    public void zzd(Location location) throws RemoteException {
        this.zzbks.zzxC();
        ((zzase) this.zzbks.zzxD()).zzd(location);
    }
}
