package com.samsung.android.sdk.samsungpay.v2.card;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ISAddCardListener extends IInterface {

    public static abstract class Stub extends Binder implements ISAddCardListener {

        static class Proxy implements ISAddCardListener {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public final IBinder asBinder() {
                return this.mRemote;
            }

            public final void onSuccess(int i, Card card) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener");
                    obtain.writeInt(i);
                    if (card != null) {
                        obtain.writeInt(1);
                        card.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void onFail(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener");
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

            public final void onProgress(int i, int i2, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(3, obtain, obtain2, 0);
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
            attachInterface(this, "com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener");
        }

        public static ISAddCardListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ISAddCardListener)) {
                return new Proxy(iBinder);
            }
            return (ISAddCardListener) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                Card card = null;
                Bundle bundle;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener");
                        i = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            card = (Card) Card.CREATOR.createFromParcel(parcel);
                        }
                        onSuccess(i, card);
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener");
                        i = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        onFail(i, bundle);
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener");
                        i = parcel.readInt();
                        i2 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        onProgress(i, i2, bundle);
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener");
            return true;
        }
    }

    void onFail(int i, Bundle bundle) throws RemoteException;

    void onProgress(int i, int i2, Bundle bundle) throws RemoteException;

    void onSuccess(int i, Card card) throws RemoteException;
}
