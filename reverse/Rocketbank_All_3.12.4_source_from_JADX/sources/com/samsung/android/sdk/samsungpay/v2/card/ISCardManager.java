package com.samsung.android.sdk.samsungpay.v2.card;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.samsung.android.sdk.samsungpay.v2.ISStatusListener;
import com.samsung.android.sdk.samsungpay.v2.PartnerInfo;

public interface ISCardManager extends IInterface {

    public static abstract class Stub extends Binder implements ISCardManager {

        static class Proxy implements ISCardManager {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public final IBinder asBinder() {
                return this.mRemote;
            }

            public final void getAllCards(PartnerInfo partnerInfo, Bundle bundle, ISGetCardListener iSGetCardListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
                    if (partnerInfo != null) {
                        obtain.writeInt(1);
                        partnerInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iSGetCardListener != null ? iSGetCardListener.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void verifyCardIdv(PartnerInfo partnerInfo, IdvVerifyInfo idvVerifyInfo, ISStatusListener iSStatusListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
                    if (partnerInfo != null) {
                        obtain.writeInt(1);
                        partnerInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (idvVerifyInfo != null) {
                        obtain.writeInt(1);
                        idvVerifyInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iSStatusListener != null ? iSStatusListener.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void addCard(PartnerInfo partnerInfo, AddCardInfo addCardInfo, ISAddCardListener iSAddCardListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
                    if (partnerInfo != null) {
                        obtain.writeInt(1);
                        partnerInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (addCardInfo != null) {
                        obtain.writeInt(1);
                        addCardInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iSAddCardListener != null ? iSAddCardListener.asBinder() : null);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void initiateSessionWithCardInfo(PartnerInfo partnerInfo, ISInitiateSessionCallback iSInitiateSessionCallback, Card card) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
                    if (partnerInfo != null) {
                        obtain.writeInt(1);
                        partnerInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iSInitiateSessionCallback != null ? iSInitiateSessionCallback.asBinder() : null);
                    if (card != null) {
                        obtain.writeInt(1);
                        card.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void terminateSession() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
        }

        public static ISCardManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ISCardManager)) {
                return new Proxy(iBinder);
            }
            return (ISCardManager) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                Bundle bundle = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
                        i = parcel.readInt() != 0 ? (PartnerInfo) PartnerInfo.CREATOR.createFromParcel(parcel) : 0;
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        getAllCards(i, bundle, com.samsung.android.sdk.samsungpay.v2.card.ISGetCardListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        IdvVerifyInfo idvVerifyInfo;
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
                        i = parcel.readInt() != 0 ? (PartnerInfo) PartnerInfo.CREATOR.createFromParcel(parcel) : 0;
                        if (parcel.readInt() != 0) {
                            idvVerifyInfo = (IdvVerifyInfo) IdvVerifyInfo.CREATOR.createFromParcel(parcel);
                        }
                        verifyCardIdv(i, idvVerifyInfo, com.samsung.android.sdk.samsungpay.v2.ISStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        AddCardInfo addCardInfo;
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
                        i = parcel.readInt() != 0 ? (PartnerInfo) PartnerInfo.CREATOR.createFromParcel(parcel) : 0;
                        if (parcel.readInt() != 0) {
                            addCardInfo = (AddCardInfo) AddCardInfo.CREATOR.createFromParcel(parcel);
                        }
                        addCard(i, addCardInfo, com.samsung.android.sdk.samsungpay.v2.card.ISAddCardListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        Card card;
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
                        i = parcel.readInt() != 0 ? (PartnerInfo) PartnerInfo.CREATOR.createFromParcel(parcel) : 0;
                        i2 = com.samsung.android.sdk.samsungpay.v2.card.ISInitiateSessionCallback.Stub.asInterface(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            card = (Card) Card.CREATOR.createFromParcel(parcel);
                        }
                        initiateSessionWithCardInfo(i, i2, card);
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
                        terminateSession();
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.v2.card.ISCardManager");
            return true;
        }
    }

    void addCard(PartnerInfo partnerInfo, AddCardInfo addCardInfo, ISAddCardListener iSAddCardListener) throws RemoteException;

    void getAllCards(PartnerInfo partnerInfo, Bundle bundle, ISGetCardListener iSGetCardListener) throws RemoteException;

    void initiateSessionWithCardInfo(PartnerInfo partnerInfo, ISInitiateSessionCallback iSInitiateSessionCallback, Card card) throws RemoteException;

    void terminateSession() throws RemoteException;

    void verifyCardIdv(PartnerInfo partnerInfo, IdvVerifyInfo idvVerifyInfo, ISStatusListener iSStatusListener) throws RemoteException;
}
