package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.zzf;
import com.google.android.gms.location.zzk;
import com.google.android.gms.location.zzt;
import java.util.List;

public interface zzase extends IInterface {

    public static abstract class zza extends Binder implements zzase {

        private static class zza implements zzase {
            private IBinder zzrk;

            zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrk;
            }

            public Location zzIo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    Location location = obtain2.readInt() != 0 ? (Location) Location.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return location;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(long j, boolean z, PendingIntent pendingIntent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeLong(j);
                    obtain.writeInt(z);
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(PendingIntent pendingIntent, zzabb zzabb) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzabb != null ? zzabb.asBinder() : null);
                    this.zzrk.transact(73, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(PendingIntent pendingIntent, zzasd zzasd, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzasd != null ? zzasd.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(Location location, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (location != null) {
                        obtain.writeInt(1);
                        location.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzasc zzasc) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeStrongBinder(zzasc != null ? zzasc.asBinder() : null);
                    this.zzrk.transact(67, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzasd zzasd, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeStrongBinder(zzasd != null ? zzasd.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzasi zzasi, PendingIntent pendingIntent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (zzasi != null) {
                        obtain.writeInt(1);
                        zzasi.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(53, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzasi zzasi, zzk zzk) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (zzasi != null) {
                        obtain.writeInt(1);
                        zzasi.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzk != null ? zzk.asBinder() : null);
                    this.zzrk.transact(52, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzask zzask) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (zzask != null) {
                        obtain.writeInt(1);
                        zzask.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(59, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzasd zzasd) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (geofencingRequest != null) {
                        obtain.writeInt(1);
                        geofencingRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzasd != null ? zzasd.asBinder() : null);
                    this.zzrk.transact(57, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(LocationRequest locationRequest, PendingIntent pendingIntent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (locationRequest != null) {
                        obtain.writeInt(1);
                        locationRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(LocationRequest locationRequest, zzk zzk) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (locationRequest != null) {
                        obtain.writeInt(1);
                        locationRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzk != null ? zzk.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(LocationRequest locationRequest, zzk zzk, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (locationRequest != null) {
                        obtain.writeInt(1);
                        locationRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzk != null ? zzk.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(LocationSettingsRequest locationSettingsRequest, zzasf zzasf, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (locationSettingsRequest != null) {
                        obtain.writeInt(1);
                        locationSettingsRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzasf != null ? zzasf.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(63, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(com.google.android.gms.location.zza zza, PendingIntent pendingIntent, zzabb zzabb) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (zza != null) {
                        obtain.writeInt(1);
                        zza.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzabb != null ? zzabb.asBinder() : null);
                    this.zzrk.transact(70, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzf zzf, PendingIntent pendingIntent, zzabb zzabb) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (zzf != null) {
                        obtain.writeInt(1);
                        zzf.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzabb != null ? zzabb.asBinder() : null);
                    this.zzrk.transact(72, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzk zzk) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeStrongBinder(zzk != null ? zzk.asBinder() : null);
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzt zzt, zzasd zzasd) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (zzt != null) {
                        obtain.writeInt(1);
                        zzt.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzasd != null ? zzasd.asBinder() : null);
                    this.zzrk.transact(74, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(List<zzasm> list, PendingIntent pendingIntent, zzasd zzasd, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeTypedList(list);
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzasd != null ? zzasd.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(String[] strArr, zzasd zzasd, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeStringArray(strArr);
                    obtain.writeStrongBinder(zzasd != null ? zzasd.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzaG(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeInt(z);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzb(PendingIntent pendingIntent, zzabb zzabb) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzabb != null ? zzabb.asBinder() : null);
                    this.zzrk.transact(65, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzb(zzabb zzabb) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeStrongBinder(zzabb != null ? zzabb.asBinder() : null);
                    this.zzrk.transact(71, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzc(PendingIntent pendingIntent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzc(PendingIntent pendingIntent, zzabb zzabb) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzabb != null ? zzabb.asBinder() : null);
                    this.zzrk.transact(66, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzd(PendingIntent pendingIntent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzd(PendingIntent pendingIntent, zzabb zzabb) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzabb != null ? zzabb.asBinder() : null);
                    this.zzrk.transact(68, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzd(Location location) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (location != null) {
                        obtain.writeInt(1);
                        location.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zze(PendingIntent pendingIntent, zzabb zzabb) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzabb != null ? zzabb.asBinder() : null);
                    this.zzrk.transact(69, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public ActivityRecognitionResult zzeQ(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeString(str);
                    this.zzrk.transact(64, obtain, obtain2, 0);
                    obtain2.readException();
                    ActivityRecognitionResult activityRecognitionResult = obtain2.readInt() != 0 ? (ActivityRecognitionResult) ActivityRecognitionResult.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return activityRecognitionResult;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Location zzeR(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeString(str);
                    this.zzrk.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                    Location location = obtain2.readInt() != 0 ? (Location) Location.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return location;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public LocationAvailability zzeS(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    obtain.writeString(str);
                    this.zzrk.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                    LocationAvailability locationAvailability = obtain2.readInt() != 0 ? (LocationAvailability) LocationAvailability.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return locationAvailability;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzase zzdi(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzase)) ? new zza(iBinder) : (zzase) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Location location = null;
            if (i != 26) {
                boolean z = false;
                if (i == 34) {
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    LocationAvailability zzeS = zzeS(parcel.readString());
                    parcel2.writeNoException();
                    if (zzeS != null) {
                        parcel2.writeInt(1);
                        zzeS.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                } else if (i == 57) {
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    GeofencingRequest geofencingRequest = parcel.readInt() != 0 ? (GeofencingRequest) GeofencingRequest.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                    }
                    zza(geofencingRequest, r1, com.google.android.gms.internal.zzasd.zza.zzdh(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                } else if (i == 59) {
                    zzask zzask;
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (parcel.readInt() != 0) {
                        zzask = (zzask) zzask.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzask);
                    parcel2.writeNoException();
                    return true;
                } else if (i != 1598968902) {
                    Location zzIo;
                    LocationRequest locationRequest;
                    switch (i) {
                        case 1:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            List createTypedArrayList = parcel.createTypedArrayList(zzasm.CREATOR);
                            if (parcel.readInt() != 0) {
                                r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                            }
                            zza(createTypedArrayList, r1, com.google.android.gms.internal.zzasd.zza.zzdh(parcel.readStrongBinder()), parcel.readString());
                            parcel2.writeNoException();
                            return true;
                        case 2:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            if (parcel.readInt() != 0) {
                                r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                            }
                            zza(r1, com.google.android.gms.internal.zzasd.zza.zzdh(parcel.readStrongBinder()), parcel.readString());
                            parcel2.writeNoException();
                            return true;
                        case 3:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            zza(parcel.createStringArray(), com.google.android.gms.internal.zzasd.zza.zzdh(parcel.readStrongBinder()), parcel.readString());
                            parcel2.writeNoException();
                            return true;
                        case 4:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            zza(com.google.android.gms.internal.zzasd.zza.zzdh(parcel.readStrongBinder()), parcel.readString());
                            parcel2.writeNoException();
                            return true;
                        case 5:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            long readLong = parcel.readLong();
                            if (parcel.readInt() != 0) {
                                z = true;
                            }
                            if (parcel.readInt() != 0) {
                                r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                            }
                            zza(readLong, z, r1);
                            parcel2.writeNoException();
                            return true;
                        case 6:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            if (parcel.readInt() != 0) {
                                r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                            }
                            zzc(r1);
                            parcel2.writeNoException();
                            return true;
                        case 7:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            zzIo = zzIo();
                            parcel2.writeNoException();
                            if (zzIo != null) {
                                parcel2.writeInt(1);
                                zzIo.writeToParcel(parcel2, 1);
                                return true;
                            }
                            parcel2.writeInt(0);
                            return true;
                        case 8:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            if (parcel.readInt() != 0) {
                                locationRequest = (LocationRequest) LocationRequest.CREATOR.createFromParcel(parcel);
                            }
                            zza(locationRequest, com.google.android.gms.location.zzk.zza.zzde(parcel.readStrongBinder()));
                            parcel2.writeNoException();
                            return true;
                        case 9:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            LocationRequest locationRequest2 = parcel.readInt() != 0 ? (LocationRequest) LocationRequest.CREATOR.createFromParcel(parcel) : null;
                            if (parcel.readInt() != 0) {
                                r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                            }
                            zza(locationRequest2, r1);
                            parcel2.writeNoException();
                            return true;
                        case 10:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            zza(com.google.android.gms.location.zzk.zza.zzde(parcel.readStrongBinder()));
                            parcel2.writeNoException();
                            return true;
                        case 11:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            if (parcel.readInt() != 0) {
                                r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                            }
                            zzd(r1);
                            parcel2.writeNoException();
                            return true;
                        case 12:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            if (parcel.readInt() != 0) {
                                z = true;
                            }
                            zzaG(z);
                            parcel2.writeNoException();
                            return true;
                        case 13:
                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            if (parcel.readInt() != 0) {
                                location = (Location) Location.CREATOR.createFromParcel(parcel);
                            }
                            zzd(location);
                            parcel2.writeNoException();
                            return true;
                        default:
                            switch (i) {
                                case 20:
                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                    if (parcel.readInt() != 0) {
                                        locationRequest = (LocationRequest) LocationRequest.CREATOR.createFromParcel(parcel);
                                    }
                                    zza(locationRequest, com.google.android.gms.location.zzk.zza.zzde(parcel.readStrongBinder()), parcel.readString());
                                    parcel2.writeNoException();
                                    return true;
                                case 21:
                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                    zzIo = zzeR(parcel.readString());
                                    parcel2.writeNoException();
                                    if (zzIo != null) {
                                        parcel2.writeInt(1);
                                        zzIo.writeToParcel(parcel2, 1);
                                        return true;
                                    }
                                    parcel2.writeInt(0);
                                    return true;
                                default:
                                    switch (i) {
                                        case 52:
                                            zzasi zzasi;
                                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                            if (parcel.readInt() != 0) {
                                                zzasi = (zzasi) zzasi.CREATOR.createFromParcel(parcel);
                                            }
                                            zza(zzasi, com.google.android.gms.location.zzk.zza.zzde(parcel.readStrongBinder()));
                                            parcel2.writeNoException();
                                            return true;
                                        case 53:
                                            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                            zzasi zzasi2 = parcel.readInt() != 0 ? (zzasi) zzasi.CREATOR.createFromParcel(parcel) : null;
                                            if (parcel.readInt() != 0) {
                                                r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                                            }
                                            zza(zzasi2, r1);
                                            parcel2.writeNoException();
                                            return true;
                                        default:
                                            switch (i) {
                                                case 63:
                                                    LocationSettingsRequest locationSettingsRequest;
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    if (parcel.readInt() != 0) {
                                                        locationSettingsRequest = (LocationSettingsRequest) LocationSettingsRequest.CREATOR.createFromParcel(parcel);
                                                    }
                                                    zza(locationSettingsRequest, com.google.android.gms.internal.zzasf.zza.zzdj(parcel.readStrongBinder()), parcel.readString());
                                                    parcel2.writeNoException();
                                                    return true;
                                                case 64:
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    ActivityRecognitionResult zzeQ = zzeQ(parcel.readString());
                                                    parcel2.writeNoException();
                                                    if (zzeQ != null) {
                                                        parcel2.writeInt(1);
                                                        zzeQ.writeToParcel(parcel2, 1);
                                                        return true;
                                                    }
                                                    parcel2.writeInt(0);
                                                    return true;
                                                case 65:
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    if (parcel.readInt() != 0) {
                                                        r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                                                    }
                                                    zzb(r1, com.google.android.gms.internal.zzabb.zza.zzbp(parcel.readStrongBinder()));
                                                    parcel2.writeNoException();
                                                    return true;
                                                case 66:
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    if (parcel.readInt() != 0) {
                                                        r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                                                    }
                                                    zzc(r1, com.google.android.gms.internal.zzabb.zza.zzbp(parcel.readStrongBinder()));
                                                    parcel2.writeNoException();
                                                    return true;
                                                case 67:
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    zza(com.google.android.gms.internal.zzasc.zza.zzdg(parcel.readStrongBinder()));
                                                    parcel2.writeNoException();
                                                    return true;
                                                case 68:
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    if (parcel.readInt() != 0) {
                                                        r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                                                    }
                                                    zzd(r1, com.google.android.gms.internal.zzabb.zza.zzbp(parcel.readStrongBinder()));
                                                    parcel2.writeNoException();
                                                    return true;
                                                case 69:
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    if (parcel.readInt() != 0) {
                                                        r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                                                    }
                                                    zze(r1, com.google.android.gms.internal.zzabb.zza.zzbp(parcel.readStrongBinder()));
                                                    parcel2.writeNoException();
                                                    return true;
                                                case 70:
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    com.google.android.gms.location.zza zza = parcel.readInt() != 0 ? (com.google.android.gms.location.zza) com.google.android.gms.location.zza.CREATOR.createFromParcel(parcel) : null;
                                                    if (parcel.readInt() != 0) {
                                                        r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                                                    }
                                                    zza(zza, r1, com.google.android.gms.internal.zzabb.zza.zzbp(parcel.readStrongBinder()));
                                                    parcel2.writeNoException();
                                                    return true;
                                                case 71:
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    zzb(com.google.android.gms.internal.zzabb.zza.zzbp(parcel.readStrongBinder()));
                                                    parcel2.writeNoException();
                                                    return true;
                                                case 72:
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    zzf zzf = parcel.readInt() != 0 ? (zzf) zzf.CREATOR.createFromParcel(parcel) : null;
                                                    if (parcel.readInt() != 0) {
                                                        r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                                                    }
                                                    zza(zzf, r1, com.google.android.gms.internal.zzabb.zza.zzbp(parcel.readStrongBinder()));
                                                    parcel2.writeNoException();
                                                    return true;
                                                case 73:
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    if (parcel.readInt() != 0) {
                                                        r1 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                                                    }
                                                    zza(r1, com.google.android.gms.internal.zzabb.zza.zzbp(parcel.readStrongBinder()));
                                                    parcel2.writeNoException();
                                                    return true;
                                                case 74:
                                                    zzt zzt;
                                                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                                                    if (parcel.readInt() != 0) {
                                                        zzt = (zzt) zzt.CREATOR.createFromParcel(parcel);
                                                    }
                                                    zza(zzt, com.google.android.gms.internal.zzasd.zza.zzdh(parcel.readStrongBinder()));
                                                    parcel2.writeNoException();
                                                    return true;
                                                default:
                                                    return super.onTransact(i, parcel, parcel2, i2);
                                            }
                                    }
                            }
                    }
                } else {
                    parcel2.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    return true;
                }
            }
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (parcel.readInt() != 0) {
                location = (Location) Location.CREATOR.createFromParcel(parcel);
            }
            zza(location, parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    Location zzIo() throws RemoteException;

    void zza(long j, boolean z, PendingIntent pendingIntent) throws RemoteException;

    void zza(PendingIntent pendingIntent, zzabb zzabb) throws RemoteException;

    void zza(PendingIntent pendingIntent, zzasd zzasd, String str) throws RemoteException;

    void zza(Location location, int i) throws RemoteException;

    void zza(zzasc zzasc) throws RemoteException;

    void zza(zzasd zzasd, String str) throws RemoteException;

    void zza(zzasi zzasi, PendingIntent pendingIntent) throws RemoteException;

    void zza(zzasi zzasi, zzk zzk) throws RemoteException;

    void zza(zzask zzask) throws RemoteException;

    void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzasd zzasd) throws RemoteException;

    void zza(LocationRequest locationRequest, PendingIntent pendingIntent) throws RemoteException;

    void zza(LocationRequest locationRequest, zzk zzk) throws RemoteException;

    void zza(LocationRequest locationRequest, zzk zzk, String str) throws RemoteException;

    void zza(LocationSettingsRequest locationSettingsRequest, zzasf zzasf, String str) throws RemoteException;

    void zza(com.google.android.gms.location.zza zza, PendingIntent pendingIntent, zzabb zzabb) throws RemoteException;

    void zza(zzf zzf, PendingIntent pendingIntent, zzabb zzabb) throws RemoteException;

    void zza(zzk zzk) throws RemoteException;

    void zza(zzt zzt, zzasd zzasd) throws RemoteException;

    void zza(List<zzasm> list, PendingIntent pendingIntent, zzasd zzasd, String str) throws RemoteException;

    void zza(String[] strArr, zzasd zzasd, String str) throws RemoteException;

    void zzaG(boolean z) throws RemoteException;

    void zzb(PendingIntent pendingIntent, zzabb zzabb) throws RemoteException;

    void zzb(zzabb zzabb) throws RemoteException;

    void zzc(PendingIntent pendingIntent) throws RemoteException;

    void zzc(PendingIntent pendingIntent, zzabb zzabb) throws RemoteException;

    void zzd(PendingIntent pendingIntent) throws RemoteException;

    void zzd(PendingIntent pendingIntent, zzabb zzabb) throws RemoteException;

    void zzd(Location location) throws RemoteException;

    void zze(PendingIntent pendingIntent, zzabb zzabb) throws RemoteException;

    ActivityRecognitionResult zzeQ(String str) throws RemoteException;

    Location zzeR(String str) throws RemoteException;

    LocationAvailability zzeS(String str) throws RemoteException;
}
