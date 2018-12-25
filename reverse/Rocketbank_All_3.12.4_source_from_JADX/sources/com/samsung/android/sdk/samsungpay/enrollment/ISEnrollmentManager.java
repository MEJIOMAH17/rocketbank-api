package com.samsung.android.sdk.samsungpay.enrollment;

import android.os.Binder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ISEnrollmentManager extends IInterface {

    public static abstract class Stub extends Binder implements ISEnrollmentManager {
        public Stub() {
            attachInterface(this, "com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentManager");
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentManager");
                        parcel.readString();
                        parcel.readString();
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentManager");
                        parcel.readString();
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentManager");
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentManager");
                        parcel.readStrongBinder();
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentManager");
                        com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback.Stub.asInterface(parcel.readStrongBinder());
                        parcel2.writeNoException();
                        return true;
                    case 6:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentManager");
                        parcel.readString();
                        i = enrollCard$552c4e0e();
                        parcel2.writeNoException();
                        parcel2.writeInt(i);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentManager");
            return true;
        }
    }

    int enrollCard$552c4e0e() throws RemoteException;
}
