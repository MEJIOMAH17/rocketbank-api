package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.tapandpay.issuer.PushTokenizeRequest;

public interface zzbjl extends IInterface {

    public static abstract class zza extends Binder implements zzbjl {

        private static class zza implements zzbjl {
            private IBinder zzrk;

            zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrk;
            }

            public void zza(int i, String str, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(int i, String str, String str2, int i2, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbjp zzbjp, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbjp != null) {
                        obtain.writeInt(1);
                        zzbjp.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbjr zzbjr, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbjr != null) {
                        obtain.writeInt(1);
                        zzbjr.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbjt zzbjt, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbjt != null) {
                        obtain.writeInt(1);
                        zzbjt.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbjw zzbjw, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbjw != null) {
                        obtain.writeInt(1);
                        zzbjw.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbjy zzbjy, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbjy != null) {
                        obtain.writeInt(1);
                        zzbjy.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbka zzbka, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbka != null) {
                        obtain.writeInt(1);
                        zzbka.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbkc zzbkc, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbkc != null) {
                        obtain.writeInt(1);
                        zzbkc.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbke zzbke, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbke != null) {
                        obtain.writeInt(1);
                        zzbke.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbkg zzbkg, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbkg != null) {
                        obtain.writeInt(1);
                        zzbkg.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbki zzbki, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbki != null) {
                        obtain.writeInt(1);
                        zzbki.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbkk zzbkk, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbkk != null) {
                        obtain.writeInt(1);
                        zzbkk.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbkm zzbkm, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbkm != null) {
                        obtain.writeInt(1);
                        zzbkm.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbko zzbko, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbko != null) {
                        obtain.writeInt(1);
                        zzbko.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbkq zzbkq, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbkq != null) {
                        obtain.writeInt(1);
                        zzbkq.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbks zzbks, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbks != null) {
                        obtain.writeInt(1);
                        zzbks.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbku zzbku, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbku != null) {
                        obtain.writeInt(1);
                        zzbku.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbkw zzbkw, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbkw != null) {
                        obtain.writeInt(1);
                        zzbkw.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbky zzbky, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbky != null) {
                        obtain.writeInt(1);
                        zzbky.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbla zzbla, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (zzbla != null) {
                        obtain.writeInt(1);
                        zzbla.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(PushTokenizeRequest pushTokenizeRequest, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    if (pushTokenizeRequest != null) {
                        obtain.writeInt(1);
                        pushTokenizeRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzb(int i, String str, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzb(zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzc(int i, String str, zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzc(zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzd(zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zze(zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzf(zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzg(zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzh(zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzi(zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzj(zzbjm zzbjm) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                    obtain.writeStrongBinder(zzbjm != null ? zzbjm.asBinder() : null);
                    this.zzrk.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbjl zzfn(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbjl)) ? new zza(iBinder) : (zzbjl) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                zzbkw zzbkw = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                        if (parcel.readInt() != 0) {
                            zzbkw = (zzbkw) zzbkw.CREATOR.createFromParcel(parcel);
                        }
                        zza(zzbkw, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        zzbkc zzbkc;
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                        if (parcel.readInt() != 0) {
                            zzbkc = (zzbkc) zzbkc.CREATOR.createFromParcel(parcel);
                        }
                        zza(zzbkc, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        zzbjr zzbjr;
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                        if (parcel.readInt() != 0) {
                            zzbjr = (zzbjr) zzbjr.CREATOR.createFromParcel(parcel);
                        }
                        zza(zzbjr, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        zzbjw zzbjw;
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                        if (parcel.readInt() != 0) {
                            zzbjw = (zzbjw) zzbjw.CREATOR.createFromParcel(parcel);
                        }
                        zza(zzbjw, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        zzbks zzbks;
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                        if (parcel.readInt() != 0) {
                            zzbks = (zzbks) zzbks.CREATOR.createFromParcel(parcel);
                        }
                        zza(zzbks, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 6:
                        zzbjp zzbjp;
                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                        if (parcel.readInt() != 0) {
                            zzbjp = (zzbjp) zzbjp.CREATOR.createFromParcel(parcel);
                        }
                        zza(zzbjp, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    default:
                        switch (i) {
                            case 8:
                                zzbky zzbky;
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                if (parcel.readInt() != 0) {
                                    zzbky = (zzbky) zzbky.CREATOR.createFromParcel(parcel);
                                }
                                zza(zzbky, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 9:
                                zzbjy zzbjy;
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                if (parcel.readInt() != 0) {
                                    zzbjy = (zzbjy) zzbjy.CREATOR.createFromParcel(parcel);
                                }
                                zza(zzbjy, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 10:
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                zza(com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 11:
                                zzbki zzbki;
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                if (parcel.readInt() != 0) {
                                    zzbki = (zzbki) zzbki.CREATOR.createFromParcel(parcel);
                                }
                                zza(zzbki, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 12:
                                zzbkk zzbkk;
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                if (parcel.readInt() != 0) {
                                    zzbkk = (zzbkk) zzbkk.CREATOR.createFromParcel(parcel);
                                }
                                zza(zzbkk, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 13:
                                zzbkq zzbkq;
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                if (parcel.readInt() != 0) {
                                    zzbkq = (zzbkq) zzbkq.CREATOR.createFromParcel(parcel);
                                }
                                zza(zzbkq, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 14:
                                zzbke zzbke;
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                if (parcel.readInt() != 0) {
                                    zzbke = (zzbke) zzbke.CREATOR.createFromParcel(parcel);
                                }
                                zza(zzbke, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 15:
                                zzbku zzbku;
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                if (parcel.readInt() != 0) {
                                    zzbku = (zzbku) zzbku.CREATOR.createFromParcel(parcel);
                                }
                                zza(zzbku, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            case 16:
                                zzbko zzbko;
                                parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                if (parcel.readInt() != 0) {
                                    zzbko = (zzbko) zzbko.CREATOR.createFromParcel(parcel);
                                }
                                zza(zzbko, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                return true;
                            default:
                                switch (i) {
                                    case 18:
                                        zzbka zzbka;
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        if (parcel.readInt() != 0) {
                                            zzbka = (zzbka) zzbka.CREATOR.createFromParcel(parcel);
                                        }
                                        zza(zzbka, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 19:
                                        zzbla zzbla;
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        if (parcel.readInt() != 0) {
                                            zzbla = (zzbla) zzbla.CREATOR.createFromParcel(parcel);
                                        }
                                        zza(zzbla, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 20:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zzb(com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 21:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zzc(com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 22:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zza(parcel.readInt(), parcel.readString(), com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 23:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zza(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt(), com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 24:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zzb(parcel.readInt(), parcel.readString(), com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 25:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zzc(parcel.readInt(), parcel.readString(), com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 26:
                                        zzbkg zzbkg;
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        if (parcel.readInt() != 0) {
                                            zzbkg = (zzbkg) zzbkg.CREATOR.createFromParcel(parcel);
                                        }
                                        zza(zzbkg, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 27:
                                        zzbkm zzbkm;
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        if (parcel.readInt() != 0) {
                                            zzbkm = (zzbkm) zzbkm.CREATOR.createFromParcel(parcel);
                                        }
                                        zza(zzbkm, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 28:
                                        PushTokenizeRequest pushTokenizeRequest;
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        if (parcel.readInt() != 0) {
                                            pushTokenizeRequest = (PushTokenizeRequest) PushTokenizeRequest.CREATOR.createFromParcel(parcel);
                                        }
                                        zza(pushTokenizeRequest, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 29:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zzd(com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 30:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zze(com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 31:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zzf(com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 32:
                                        zzbjt zzbjt;
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        if (parcel.readInt() != 0) {
                                            zzbjt = (zzbjt) zzbjt.CREATOR.createFromParcel(parcel);
                                        }
                                        zza(zzbjt, com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 33:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zzg(com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 34:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zzh(com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 35:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zzi(com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    case 36:
                                        parcel.enforceInterface("com.google.android.gms.tapandpay.internal.ITapAndPayService");
                                        zzj(com.google.android.gms.internal.zzbjm.zza.zzfo(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        return true;
                                    default:
                                        return super.onTransact(i, parcel, parcel2, i2);
                                }
                        }
                }
            }
            parcel2.writeString("com.google.android.gms.tapandpay.internal.ITapAndPayService");
            return true;
        }
    }

    void zza(int i, String str, zzbjm zzbjm) throws RemoteException;

    void zza(int i, String str, String str2, int i2, zzbjm zzbjm) throws RemoteException;

    void zza(zzbjm zzbjm) throws RemoteException;

    void zza(zzbjp zzbjp, zzbjm zzbjm) throws RemoteException;

    void zza(zzbjr zzbjr, zzbjm zzbjm) throws RemoteException;

    void zza(zzbjt zzbjt, zzbjm zzbjm) throws RemoteException;

    void zza(zzbjw zzbjw, zzbjm zzbjm) throws RemoteException;

    void zza(zzbjy zzbjy, zzbjm zzbjm) throws RemoteException;

    void zza(zzbka zzbka, zzbjm zzbjm) throws RemoteException;

    void zza(zzbkc zzbkc, zzbjm zzbjm) throws RemoteException;

    void zza(zzbke zzbke, zzbjm zzbjm) throws RemoteException;

    void zza(zzbkg zzbkg, zzbjm zzbjm) throws RemoteException;

    void zza(zzbki zzbki, zzbjm zzbjm) throws RemoteException;

    void zza(zzbkk zzbkk, zzbjm zzbjm) throws RemoteException;

    void zza(zzbkm zzbkm, zzbjm zzbjm) throws RemoteException;

    void zza(zzbko zzbko, zzbjm zzbjm) throws RemoteException;

    void zza(zzbkq zzbkq, zzbjm zzbjm) throws RemoteException;

    void zza(zzbks zzbks, zzbjm zzbjm) throws RemoteException;

    void zza(zzbku zzbku, zzbjm zzbjm) throws RemoteException;

    void zza(zzbkw zzbkw, zzbjm zzbjm) throws RemoteException;

    void zza(zzbky zzbky, zzbjm zzbjm) throws RemoteException;

    void zza(zzbla zzbla, zzbjm zzbjm) throws RemoteException;

    void zza(PushTokenizeRequest pushTokenizeRequest, zzbjm zzbjm) throws RemoteException;

    void zzb(int i, String str, zzbjm zzbjm) throws RemoteException;

    void zzb(zzbjm zzbjm) throws RemoteException;

    void zzc(int i, String str, zzbjm zzbjm) throws RemoteException;

    void zzc(zzbjm zzbjm) throws RemoteException;

    void zzd(zzbjm zzbjm) throws RemoteException;

    void zze(zzbjm zzbjm) throws RemoteException;

    void zzf(zzbjm zzbjm) throws RemoteException;

    void zzg(zzbjm zzbjm) throws RemoteException;

    void zzh(zzbjm zzbjm) throws RemoteException;

    void zzi(zzbjm zzbjm) throws RemoteException;

    void zzj(zzbjm zzbjm) throws RemoteException;
}
