package com.samsung.android.sdk.samsungpay.v2.payment;

import android.os.Binder;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.samsung.android.sdk.samsungpay.v2.PartnerInfo;
import com.samsung.android.sdk.samsungpay.v2.payment.PaymentInfo.Amount;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.CustomSheet;
import java.util.List;

public interface ISPaymentManager extends IInterface {

    public static abstract class Stub extends Binder implements ISPaymentManager {
        public Stub() {
            attachInterface(this, "com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
                        if (parcel.readInt() != 0) {
                            PartnerInfo.CREATOR.createFromParcel(parcel);
                        }
                        if (parcel.readInt() != 0) {
                            PaymentInfo.CREATOR.createFromParcel(parcel);
                        }
                        com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback.Stub.asInterface(parcel.readStrongBinder());
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
                        if (parcel.readInt() != 0) {
                            Amount.CREATOR.createFromParcel(parcel);
                        }
                        i = updateAmount$53de5cfc();
                        parcel2.writeNoException();
                        parcel2.writeInt(i);
                        return true;
                    case 4:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
                        parcel.readInt();
                        i = invalidAddress$134621();
                        parcel2.writeNoException();
                        parcel2.writeInt(i);
                        return true;
                    case 5:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
                        if (parcel.readInt() != 0) {
                            Bundle.CREATOR.createFromParcel(parcel);
                        }
                        i = requestCardType$55cd6d8();
                        parcel2.writeNoException();
                        parcel2.writeTypedList(i);
                        return true;
                    case 6:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
                        i = isSamsungPaySetupCompleted();
                        parcel2.writeNoException();
                        parcel2.writeInt(i);
                        return true;
                    case 7:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
                        if (parcel.readInt() != 0) {
                            PartnerInfo.CREATOR.createFromParcel(parcel);
                        }
                        if (parcel.readInt() != 0) {
                            CardInfo.CREATOR.createFromParcel(parcel);
                        }
                        com.samsung.android.sdk.samsungpay.v2.ISStatusListener.Stub.asInterface(parcel.readStrongBinder());
                        parcel2.writeNoException();
                        return true;
                    case 8:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
                        if (parcel.readInt() != 0) {
                            PartnerInfo.CREATOR.createFromParcel(parcel);
                        }
                        com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback.Stub.asInterface(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            CustomSheetPaymentInfo.CREATOR.createFromParcel(parcel);
                        }
                        parcel2.writeNoException();
                        return true;
                    case 9:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
                        if (parcel.readInt() != 0) {
                            CustomSheet.CREATOR.createFromParcel(parcel);
                        }
                        i = updateSheet$5b0fe16c();
                        parcel2.writeNoException();
                        parcel2.writeInt(i);
                        return true;
                    case 10:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
                        if (parcel.readInt() != 0) {
                            CustomSheet.CREATOR.createFromParcel(parcel);
                        }
                        parcel.readInt();
                        parcel.readString();
                        i = updateSheetWithCustomMessage$115b0a41();
                        parcel2.writeNoException();
                        parcel2.writeInt(i);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentManager");
            return true;
        }
    }

    int invalidAddress$134621() throws RemoteException;

    boolean isSamsungPaySetupCompleted() throws RemoteException;

    List<CardInfo> requestCardType$55cd6d8() throws RemoteException;

    int updateAmount$53de5cfc() throws RemoteException;

    int updateSheet$5b0fe16c() throws RemoteException;

    int updateSheetWithCustomMessage$115b0a41() throws RemoteException;
}
