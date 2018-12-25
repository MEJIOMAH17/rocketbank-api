package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tapandpay.firstparty.zzd;
import com.google.android.gms.tapandpay.firstparty.zzf;
import com.google.android.gms.tapandpay.firstparty.zzh;
import com.google.android.gms.tapandpay.firstparty.zzj;
import com.google.android.gms.tapandpay.firstparty.zzr;
import com.google.android.gms.tapandpay.issuer.TokenStatus;

public interface zzbjm extends IInterface {

    public static abstract class zza extends Binder implements zzbjm {

        private static class zza implements zzbjm {
            private IBinder zzrk;

            zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrk;
            }

            public void onDataChanged() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    this.zzrk.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(Status status, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(Status status, zzd zzd) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzd != null) {
                        obtain.writeInt(1);
                        zzd.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(Status status, zzf zzf) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzf != null) {
                        obtain.writeInt(1);
                        zzf.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(15, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(Status status, zzh zzh) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzh != null) {
                        obtain.writeInt(1);
                        zzh.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(Status status, zzj zzj) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzj != null) {
                        obtain.writeInt(1);
                        zzj.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(27, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(Status status, zzr zzr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzr != null) {
                        obtain.writeInt(1);
                        zzr.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(17, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(Status status, TokenStatus tokenStatus) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (tokenStatus != null) {
                        obtain.writeInt(1);
                        tokenStatus.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(20, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzb(Status status, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    this.zzrk.transact(18, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzbP(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzbQ(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzbR(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzbS(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzbT(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(14, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzbU(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(22, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzbV(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(25, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzc(Status status, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    this.zzrk.transact(19, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzd(Status status, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    this.zzrk.transact(23, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zze(Status status, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    this.zzrk.transact(24, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zze(Status status, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(z);
                    this.zzrk.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzf(Status status, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(z);
                    this.zzrk.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzg(Status status, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(z);
                    this.zzrk.transact(21, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzh(Status status, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(z);
                    this.zzrk.transact(26, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
        }

        public static zzbjm zzfo(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbjm)) ? new zza(iBinder) : (zzbjm) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                Status status = null;
                Status status2;
                switch (i) {
                    case 2:
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                        if (parcel.readInt() != 0) {
                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                        }
                        zzbP(status);
                        return true;
                    case 3:
                        Bundle bundle;
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                        status2 = parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        zza(status2, bundle);
                        return true;
                    case 4:
                        zzh zzh;
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                        status2 = parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            zzh = (zzh) zzh.CREATOR.createFromParcel(parcel);
                        }
                        zza(status2, zzh);
                        return true;
                    case 5:
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                        if (parcel.readInt() != 0) {
                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                        }
                        zzbQ(status);
                        return true;
                    case 6:
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                        if (parcel.readInt() != 0) {
                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                        }
                        zzbR(status);
                        return true;
                    default:
                        boolean z = false;
                        switch (i) {
                            case 8:
                                zzd zzd;
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                status2 = parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null;
                                if (parcel.readInt() != 0) {
                                    zzd = (zzd) zzd.CREATOR.createFromParcel(parcel);
                                }
                                zza(status2, zzd);
                                return true;
                            case 9:
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                if (parcel.readInt() != 0) {
                                    status = (Status) Status.CREATOR.createFromParcel(parcel);
                                }
                                zza(status);
                                return true;
                            case 10:
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                onDataChanged();
                                return true;
                            case 11:
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                if (parcel.readInt() != 0) {
                                    status = (Status) Status.CREATOR.createFromParcel(parcel);
                                }
                                if (parcel.readInt() != 0) {
                                    z = true;
                                }
                                zze(status, z);
                                return true;
                            case 12:
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                if (parcel.readInt() != 0) {
                                    status = (Status) Status.CREATOR.createFromParcel(parcel);
                                }
                                zzbS(status);
                                return true;
                            case 13:
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                if (parcel.readInt() != 0) {
                                    status = (Status) Status.CREATOR.createFromParcel(parcel);
                                }
                                if (parcel.readInt() != 0) {
                                    z = true;
                                }
                                zzf(status, z);
                                return true;
                            case 14:
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                if (parcel.readInt() != 0) {
                                    status = (Status) Status.CREATOR.createFromParcel(parcel);
                                }
                                zzbT(status);
                                return true;
                            case 15:
                                zzf zzf;
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                status2 = parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null;
                                if (parcel.readInt() != 0) {
                                    zzf = (zzf) zzf.CREATOR.createFromParcel(parcel);
                                }
                                zza(status2, zzf);
                                return true;
                            default:
                                switch (i) {
                                    case 17:
                                        zzr zzr;
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        status2 = parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null;
                                        if (parcel.readInt() != 0) {
                                            zzr = (zzr) zzr.CREATOR.createFromParcel(parcel);
                                        }
                                        zza(status2, zzr);
                                        return true;
                                    case 18:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        if (parcel.readInt() != 0) {
                                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                                        }
                                        zzb(status, parcel.readString());
                                        return true;
                                    case 19:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        if (parcel.readInt() != 0) {
                                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                                        }
                                        zzc(status, parcel.readString());
                                        return true;
                                    case 20:
                                        TokenStatus tokenStatus;
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        status2 = parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null;
                                        if (parcel.readInt() != 0) {
                                            tokenStatus = (TokenStatus) TokenStatus.CREATOR.createFromParcel(parcel);
                                        }
                                        zza(status2, tokenStatus);
                                        return true;
                                    case 21:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        if (parcel.readInt() != 0) {
                                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                                        }
                                        if (parcel.readInt() != 0) {
                                            z = true;
                                        }
                                        zzg(status, z);
                                        return true;
                                    case 22:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        if (parcel.readInt() != 0) {
                                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                                        }
                                        zzbU(status);
                                        return true;
                                    case 23:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        if (parcel.readInt() != 0) {
                                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                                        }
                                        zzd(status, parcel.readString());
                                        return true;
                                    case 24:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        if (parcel.readInt() != 0) {
                                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                                        }
                                        zze(status, parcel.readString());
                                        return true;
                                    case 25:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        if (parcel.readInt() != 0) {
                                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                                        }
                                        zzbV(status);
                                        return true;
                                    case 26:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        if (parcel.readInt() != 0) {
                                            status = (Status) Status.CREATOR.createFromParcel(parcel);
                                        }
                                        if (parcel.readInt() != 0) {
                                            z = true;
                                        }
                                        zzh(status, z);
                                        return true;
                                    case 27:
                                        zzj zzj;
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
                                        status2 = parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null;
                                        if (parcel.readInt() != 0) {
                                            zzj = (zzj) zzj.CREATOR.createFromParcel(parcel);
                                        }
                                        zza(status2, zzj);
                                        return true;
                                    default:
                                        return super.onTransact(i, parcel, parcel2, i2);
                                }
                        }
                }
            }
            parcel2.writeString("com.google.android.gms.tapandpay.internal.ITapAndPayServiceCallbacks");
            return true;
        }
    }

    void onDataChanged() throws RemoteException;

    void zza(Status status) throws RemoteException;

    void zza(Status status, Bundle bundle) throws RemoteException;

    void zza(Status status, zzd zzd) throws RemoteException;

    void zza(Status status, zzf zzf) throws RemoteException;

    void zza(Status status, zzh zzh) throws RemoteException;

    void zza(Status status, zzj zzj) throws RemoteException;

    void zza(Status status, zzr zzr) throws RemoteException;

    void zza(Status status, TokenStatus tokenStatus) throws RemoteException;

    void zzb(Status status, String str) throws RemoteException;

    void zzbP(Status status) throws RemoteException;

    void zzbQ(Status status) throws RemoteException;

    void zzbR(Status status) throws RemoteException;

    void zzbS(Status status) throws RemoteException;

    void zzbT(Status status) throws RemoteException;

    void zzbU(Status status) throws RemoteException;

    void zzbV(Status status) throws RemoteException;

    void zzc(Status status, String str) throws RemoteException;

    void zzd(Status status, String str) throws RemoteException;

    void zze(Status status, String str) throws RemoteException;

    void zze(Status status, boolean z) throws RemoteException;

    void zzf(Status status, boolean z) throws RemoteException;

    void zzg(Status status, boolean z) throws RemoteException;

    void zzh(Status status, boolean z) throws RemoteException;
}
