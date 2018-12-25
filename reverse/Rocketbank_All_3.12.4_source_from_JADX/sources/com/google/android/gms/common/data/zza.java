package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zza implements Creator<BitmapTeleporter> {
    static void zza(BitmapTeleporter bitmapTeleporter, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, bitmapTeleporter.zzaiI);
        zzc.zza(parcel, 2, bitmapTeleporter.zzSQ, i, false);
        zzc.zzc(parcel, 3, bitmapTeleporter.zzakD);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaN(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzcF(i);
    }

    public BitmapTeleporter zzaN(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    parcelFileDescriptor = (ParcelFileDescriptor) zzb.zza(parcel, zzaX, ParcelFileDescriptor.CREATOR);
                    break;
                case 3:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new BitmapTeleporter(i, parcelFileDescriptor, i2);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza(stringBuilder.toString(), parcel);
    }

    public BitmapTeleporter[] zzcF(int i) {
        return new BitmapTeleporter[i];
    }
}
