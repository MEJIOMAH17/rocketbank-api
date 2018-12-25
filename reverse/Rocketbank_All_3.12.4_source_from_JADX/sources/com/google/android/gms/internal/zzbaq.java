package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.internal.zzx;

public interface zzbaq extends IInterface {

    public static abstract class zza extends Binder implements zzbaq {

        private static class zza implements zzbaq {
            private IBinder zzrk;

            zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrk;
            }

            public void zza(int i, Account account, zzbap zzbap) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(i);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbap != null ? zzbap.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzad zzad, zzx zzx) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzad != null) {
                        obtain.writeInt(1);
                        zzad.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzx != null ? zzx.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzd zzd, zzbap zzbap) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzd != null) {
                        obtain.writeInt(1);
                        zzd.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbap != null ? zzbap.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzr zzr, int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeStrongBinder(zzr != null ? zzr.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(z);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzban zzban) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzban != null) {
                        obtain.writeInt(1);
                        zzban.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbar zzbar, zzbap zzbap) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzbar != null) {
                        obtain.writeInt(1);
                        zzbar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbap != null ? zzbap.asBinder() : null);
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbau zzbau, zzbap zzbap) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzbau != null) {
                        obtain.writeInt(1);
                        zzbau.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbap != null ? zzbap.asBinder() : null);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzaO(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(z);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzaP(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(z);
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzb(zzbap zzbap) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeStrongBinder(zzbap != null ? zzbap.asBinder() : null);
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zznv(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(i);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbaq zzff(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbaq)) ? new zza(iBinder) : (zzbaq) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                boolean z = false;
                zzd zzd = null;
                switch (i) {
                    case 2:
                        parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                        if (parcel.readInt() != 0) {
                            zzd = (zzd) zzd.CREATOR.createFromParcel(parcel);
                        }
                        zza(zzd, com.google.android.gms.internal.zzbap.zza.zzfe(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        zzban zzban;
                        parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                        if (parcel.readInt() != 0) {
                            zzban = (zzban) zzban.CREATOR.createFromParcel(parcel);
                        }
                        zza(zzban);
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                        if (parcel.readInt() != 0) {
                            z = true;
                        }
                        zzaO(z);
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        zzad zzad;
                        parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                        if (parcel.readInt() != 0) {
                            zzad = (zzad) zzad.CREATOR.createFromParcel(parcel);
                        }
                        zza(zzad, com.google.android.gms.common.internal.zzx.zza.zzbw(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    default:
                        switch (i) {
                            case 7:
                                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                                zznv(parcel.readInt());
                                parcel2.writeNoException();
                                return true;
                            case 8:
                                Account account;
                                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                                i = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    account = (Account) Account.CREATOR.createFromParcel(parcel);
                                }
                                zza(i, account, com.google.android.gms.internal.zzbap.zza.zzfe(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 9:
                                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                                zzr zzbr = com.google.android.gms.common.internal.zzr.zza.zzbr(parcel.readStrongBinder());
                                i2 = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    z = true;
                                }
                                zza(zzbr, i2, z);
                                parcel2.writeNoException();
                                return true;
                            case 10:
                                zzbar zzbar;
                                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                                if (parcel.readInt() != 0) {
                                    zzbar = (zzbar) zzbar.CREATOR.createFromParcel(parcel);
                                }
                                zza(zzbar, com.google.android.gms.internal.zzbap.zza.zzfe(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 11:
                                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                                zzb(com.google.android.gms.internal.zzbap.zza.zzfe(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 12:
                                zzbau zzbau;
                                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                                if (parcel.readInt() != 0) {
                                    zzbau = (zzbau) zzbau.CREATOR.createFromParcel(parcel);
                                }
                                zza(zzbau, com.google.android.gms.internal.zzbap.zza.zzfe(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 13:
                                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                                if (parcel.readInt() != 0) {
                                    z = true;
                                }
                                zzaP(z);
                                parcel2.writeNoException();
                                return true;
                            default:
                                return super.onTransact(i, parcel, parcel2, i2);
                        }
                }
            }
            parcel2.writeString("com.google.android.gms.signin.internal.ISignInService");
            return true;
        }
    }

    void zza(int i, Account account, zzbap zzbap) throws RemoteException;

    void zza(zzad zzad, zzx zzx) throws RemoteException;

    void zza(zzd zzd, zzbap zzbap) throws RemoteException;

    void zza(zzr zzr, int i, boolean z) throws RemoteException;

    void zza(zzban zzban) throws RemoteException;

    void zza(zzbar zzbar, zzbap zzbap) throws RemoteException;

    void zza(zzbau zzbau, zzbap zzbap) throws RemoteException;

    void zzaO(boolean z) throws RemoteException;

    void zzaP(boolean z) throws RemoteException;

    void zzb(zzbap zzbap) throws RemoteException;

    void zznv(int i) throws RemoteException;
}
