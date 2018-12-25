package com.samsung.android.sdk.samsungpay.v2.card;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.samsung.android.sdk.samsungpay.v2.PartnerInfo;
import java.util.List;

public interface ISGetCardListener extends IInterface {

    public static abstract class Stub extends Binder implements ISGetCardListener {

        static class Proxy implements ISGetCardListener {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public final IBinder asBinder() {
                return this.mRemote;
            }

            public final void onSuccess(PartnerInfo partnerInfo, List<Card> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.card.ISGetCardListener");
                    if (partnerInfo != null) {
                        obtain.writeInt(1);
                        partnerInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeTypedList(list);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void onFail(PartnerInfo partnerInfo, int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.card.ISGetCardListener");
                    if (partnerInfo != null) {
                        obtain.writeInt(1);
                        partnerInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, "com.samsung.android.sdk.samsungpay.v2.card.ISGetCardListener");
        }

        public static ISGetCardListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.sdk.samsungpay.v2.card.ISGetCardListener");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ISGetCardListener)) {
                return new Proxy(iBinder);
            }
            return (ISGetCardListener) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                PartnerInfo partnerInfo = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISGetCardListener");
                        if (parcel.readInt() != 0) {
                            partnerInfo = (PartnerInfo) PartnerInfo.CREATOR.createFromParcel(parcel);
                        }
                        onSuccess(partnerInfo, parcel.createTypedArrayList(Card.CREATOR));
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        Bundle bundle;
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISGetCardListener");
                        i = parcel.readInt() != 0 ? (PartnerInfo) PartnerInfo.CREATOR.createFromParcel(parcel) : 0;
                        i2 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        onFail(i, i2, bundle);
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.v2.card.ISGetCardListener");
            return true;
        }
    }

    void onFail(PartnerInfo partnerInfo, int i, Bundle bundle) throws RemoteException;

    void onSuccess(PartnerInfo partnerInfo, List<Card> list) throws RemoteException;
}
