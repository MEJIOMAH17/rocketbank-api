package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzt extends IInterface {

    public static abstract class zza extends Binder implements zzt {
        public zza() {
            attachInterface(this, "com.google.android.gms.common.internal.ICertData");
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.google.android.gms.common.internal.ICertData");
                        IObjectWrapper zzva = zzva();
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(zzva != null ? zzva.asBinder() : null);
                        return true;
                    case 2:
                        parcel.enforceInterface("com.google.android.gms.common.internal.ICertData");
                        i = zzvb();
                        parcel2.writeNoException();
                        parcel2.writeInt(i);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.google.android.gms.common.internal.ICertData");
            return true;
        }
    }

    IObjectWrapper zzva() throws RemoteException;

    int zzvb() throws RemoteException;
}
