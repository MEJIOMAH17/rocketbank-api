package com.samsung.android.sdk.samsungpay.v2;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ISPartnerAppDeathDetector extends IInterface {

    public static abstract class Stub extends Binder implements ISPartnerAppDeathDetector {
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, "com.samsung.android.sdk.samsungpay.v2.ISPartnerAppDeathDetector");
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.samsung.android.sdk.samsungpay.v2.ISPartnerAppDeathDetector");
            return true;
        }
    }
}
