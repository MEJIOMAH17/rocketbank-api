package com.samsung.android.sdk.samsungpay.payment;

import android.os.Binder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.samsung.android.sdk.samsungpay.payment.PaymentInfo.Amount;
import java.util.List;

public interface ISPaymentManager extends IInterface {

    public static abstract class Stub extends Binder implements ISPaymentManager {
        public Stub() {
            attachInterface(this, "com.samsung.android.sdk.samsungpay.payment.ISPaymentManager");
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.payment.ISPaymentManager");
                        parcel.readString();
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                            PaymentInfo.CREATOR.createFromParcel(parcel);
                        }
                        com.samsung.android.sdk.samsungpay.payment.ISPaymentCallback.Stub.asInterface(parcel.readStrongBinder());
                        parcel.readStrongBinder();
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.payment.ISPaymentManager");
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.payment.ISPaymentManager");
                        if (parcel.readInt() != 0) {
                            Amount.CREATOR.createFromParcel(parcel);
                        }
                        i = updateAmount$7bcb711b();
                        parcel2.writeNoException();
                        parcel2.writeInt(i);
                        return true;
                    case 4:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.payment.ISPaymentManager");
                        parcel.readInt();
                        i = invalidAddress$134621();
                        parcel2.writeNoException();
                        parcel2.writeInt(i);
                        return true;
                    case 5:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.payment.ISPaymentManager");
                        i = requestCardType();
                        parcel2.writeNoException();
                        parcel2.writeTypedList(i);
                        return true;
                    case 6:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.payment.ISPaymentManager");
                        i = isSamsungPaySetupCompleted();
                        parcel2.writeNoException();
                        parcel2.writeInt(i);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.payment.ISPaymentManager");
            return true;
        }
    }

    int invalidAddress$134621() throws RemoteException;

    boolean isSamsungPaySetupCompleted() throws RemoteException;

    List<CardInfo> requestCardType() throws RemoteException;

    int updateAmount$7bcb711b() throws RemoteException;
}
