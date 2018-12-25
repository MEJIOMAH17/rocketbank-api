package com.samsung.android.sdk.samsungpay.v2;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public interface ISSamsungPay extends IInterface {

    public static abstract class Stub extends Binder implements ISSamsungPay {

        static class Proxy implements ISSamsungPay {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public final IBinder asBinder() {
                return this.mRemote;
            }

            public final Status getSamsungPayStatus(PartnerInfo partnerInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.ISSamsungPay");
                    if (partnerInfo != null) {
                        obtain.writeInt(1);
                        partnerInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    partnerInfo = obtain2.readInt() != null ? (Status) Status.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return partnerInfo;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void activateSamsungPay() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.ISSamsungPay");
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void getWalletInfo(PartnerInfo partnerInfo, List<String> list, ISStatusListener iSStatusListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.ISSamsungPay");
                    if (partnerInfo != null) {
                        obtain.writeInt(1);
                        partnerInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStringList(list);
                    obtain.writeStrongBinder(iSStatusListener != null ? iSStatusListener.asBinder() : null);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.samsung.android.sdk.samsungpay.v2.ISSamsungPay");
        }

        public static ISSamsungPay asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.sdk.samsungpay.v2.ISSamsungPay");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ISSamsungPay)) {
                return new Proxy(iBinder);
            }
            return (ISSamsungPay) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                PartnerInfo partnerInfo = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.ISSamsungPay");
                        if (parcel.readInt() != 0) {
                            partnerInfo = (PartnerInfo) PartnerInfo.CREATOR.createFromParcel(parcel);
                        }
                        i = getSamsungPayStatus(partnerInfo);
                        parcel2.writeNoException();
                        if (i != 0) {
                            parcel2.writeInt(1);
                            i.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 2:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.ISSamsungPay");
                        activateSamsungPay();
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.ISSamsungPay");
                        if (parcel.readInt() != 0) {
                            partnerInfo = (PartnerInfo) PartnerInfo.CREATOR.createFromParcel(parcel);
                        }
                        getWalletInfo(partnerInfo, parcel.createStringArrayList(), com.samsung.android.sdk.samsungpay.v2.ISStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.v2.ISSamsungPay");
            return true;
        }
    }

    void activateSamsungPay() throws RemoteException;

    Status getSamsungPayStatus(PartnerInfo partnerInfo) throws RemoteException;

    void getWalletInfo(PartnerInfo partnerInfo, List<String> list, ISStatusListener iSStatusListener) throws RemoteException;
}
