package com.samsung.android.sdk.samsungpay.v2.card;

import android.os.Binder;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ISCardListener extends IInterface {

    public static abstract class Stub extends Binder implements ISCardListener {
        public Stub() {
            attachInterface(this, "com.samsung.android.sdk.samsungpay.v2.card.ISCardListener");
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISCardListener");
                        parcel.readInt();
                        if (parcel.readInt() != 0) {
                            Bundle.CREATOR.createFromParcel(parcel);
                        }
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.card.ISCardListener");
                        parcel.readInt();
                        if (parcel.readInt() != 0) {
                            Bundle.CREATOR.createFromParcel(parcel);
                        }
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.v2.card.ISCardListener");
            return true;
        }
    }
}
