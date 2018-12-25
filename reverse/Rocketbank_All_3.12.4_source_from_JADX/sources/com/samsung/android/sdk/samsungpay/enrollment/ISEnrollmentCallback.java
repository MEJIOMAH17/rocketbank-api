package com.samsung.android.sdk.samsungpay.enrollment;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ISEnrollmentCallback extends IInterface {

    public static abstract class Stub extends Binder implements ISEnrollmentCallback {

        static class Proxy implements ISEnrollmentCallback {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public final IBinder asBinder() {
                return this.mRemote;
            }

            public final void onInitiateCompleted(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
                    obtain.writeString(str);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void onInitiateFailed(int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void onReadyEnrollment(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
                    obtain.writeString(str);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final void onCardEnrolled() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
        }

        public static ISEnrollmentCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ISEnrollmentCallback)) {
                return new Proxy(iBinder);
            }
            return (ISEnrollmentCallback) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
                        onInitiateCompleted(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
                        onInitiateFailed(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
                        onReadyEnrollment(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
                        onCardEnrolled();
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.enrollment.ISEnrollmentCallback");
            return true;
        }
    }

    void onCardEnrolled() throws RemoteException;

    void onInitiateCompleted(String str) throws RemoteException;

    void onInitiateFailed(int i, String str) throws RemoteException;

    void onReadyEnrollment(String str) throws RemoteException;
}
