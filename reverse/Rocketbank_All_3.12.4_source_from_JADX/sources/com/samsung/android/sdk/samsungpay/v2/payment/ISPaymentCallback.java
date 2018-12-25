package com.samsung.android.sdk.samsungpay.v2.payment;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.samsung.android.sdk.samsungpay.v2.payment.sheet.CustomSheet;

public interface ISPaymentCallback extends IInterface {

    public static abstract class Stub extends Binder implements ISPaymentCallback {

        static class Proxy implements ISPaymentCallback {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public final IBinder asBinder() {
                return this.mRemote;
            }

            public final void onInitiateCompleted(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
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

            public final void onFailPayment(int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void onAddressInfoChanged(PaymentInfo paymentInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                    if (paymentInfo != null) {
                        obtain.writeInt(1);
                        paymentInfo.writeToParcel(obtain, 0);
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

            public final void onCardInfoChanged(CardInfo cardInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                    if (cardInfo != null) {
                        obtain.writeInt(1);
                        cardInfo.writeToParcel(obtain, 0);
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

            public final void onApproveTransaction(PaymentInfo paymentInfo, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                    if (paymentInfo != null) {
                        obtain.writeInt(1);
                        paymentInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void onCustomSheetUpdated(String str, CustomSheet customSheet) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                    obtain.writeString(str);
                    if (customSheet != null) {
                        obtain.writeInt(1);
                        customSheet.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void onCustomSheetTransactionApproved(String str, Bundle bundle, CustomSheetPaymentInfo customSheetPaymentInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (customSheetPaymentInfo != null) {
                        obtain.writeInt(1);
                        customSheetPaymentInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void onCustomSheetCardInfoUpdated(CardInfo cardInfo, CustomSheet customSheet) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                    if (cardInfo != null) {
                        obtain.writeInt(1);
                        cardInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (customSheet != null) {
                        obtain.writeInt(1);
                        customSheet.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void onFailPaymentForCustomSheet(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
        }

        public static ISPaymentCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ISPaymentCallback)) {
                return new Proxy(iBinder);
            }
            return (ISPaymentCallback) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                Bundle bundle = null;
                PaymentInfo paymentInfo;
                CustomSheet customSheet;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        onInitiateCompleted(bundle);
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                        onFailPayment(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                        if (parcel.readInt() != 0) {
                            paymentInfo = (PaymentInfo) PaymentInfo.CREATOR.createFromParcel(parcel);
                        }
                        onAddressInfoChanged(paymentInfo);
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        CardInfo cardInfo;
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                        if (parcel.readInt() != 0) {
                            cardInfo = (CardInfo) CardInfo.CREATOR.createFromParcel(parcel);
                        }
                        onCardInfoChanged(cardInfo);
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                        if (parcel.readInt() != 0) {
                            paymentInfo = (PaymentInfo) PaymentInfo.CREATOR.createFromParcel(parcel);
                        }
                        onApproveTransaction(paymentInfo, parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 6:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                        i = parcel.readString();
                        if (parcel.readInt() != 0) {
                            customSheet = (CustomSheet) CustomSheet.CREATOR.createFromParcel(parcel);
                        }
                        onCustomSheetUpdated(i, customSheet);
                        parcel2.writeNoException();
                        return true;
                    case 7:
                        CustomSheetPaymentInfo customSheetPaymentInfo;
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                        i = parcel.readString();
                        i2 = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : 0;
                        if (parcel.readInt() != 0) {
                            customSheetPaymentInfo = (CustomSheetPaymentInfo) CustomSheetPaymentInfo.CREATOR.createFromParcel(parcel);
                        }
                        onCustomSheetTransactionApproved(i, i2, customSheetPaymentInfo);
                        parcel2.writeNoException();
                        return true;
                    case 8:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                        i = parcel.readInt() != 0 ? (CardInfo) CardInfo.CREATOR.createFromParcel(parcel) : 0;
                        if (parcel.readInt() != 0) {
                            customSheet = (CustomSheet) CustomSheet.CREATOR.createFromParcel(parcel);
                        }
                        onCustomSheetCardInfoUpdated(i, customSheet);
                        parcel2.writeNoException();
                        return true;
                    case 9:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
                        i = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        onFailPaymentForCustomSheet(i, bundle);
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.v2.payment.ISPaymentCallback");
            return true;
        }
    }

    void onAddressInfoChanged(PaymentInfo paymentInfo) throws RemoteException;

    void onApproveTransaction(PaymentInfo paymentInfo, String str) throws RemoteException;

    void onCardInfoChanged(CardInfo cardInfo) throws RemoteException;

    void onCustomSheetCardInfoUpdated(CardInfo cardInfo, CustomSheet customSheet) throws RemoteException;

    void onCustomSheetTransactionApproved(String str, Bundle bundle, CustomSheetPaymentInfo customSheetPaymentInfo) throws RemoteException;

    void onCustomSheetUpdated(String str, CustomSheet customSheet) throws RemoteException;

    void onFailPayment(int i, String str) throws RemoteException;

    void onFailPaymentForCustomSheet(int i, Bundle bundle) throws RemoteException;

    void onInitiateCompleted(Bundle bundle) throws RemoteException;
}
