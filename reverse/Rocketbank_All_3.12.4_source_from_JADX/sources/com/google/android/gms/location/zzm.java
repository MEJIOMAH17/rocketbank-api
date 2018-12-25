package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class zzm implements Creator<LocationRequest> {
    static void zza(LocationRequest locationRequest, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, locationRequest.mPriority);
        zzc.zza(parcel, 2, locationRequest.zzbjT);
        zzc.zza(parcel, 3, locationRequest.zzbjU);
        zzc.zza(parcel, 4, locationRequest.zzaWy);
        zzc.zza(parcel, 5, locationRequest.zzbjD);
        zzc.zzc(parcel, 6, locationRequest.zzbjV);
        zzc.zza(parcel, 7, locationRequest.zzbjW);
        zzc.zza(parcel, 8, locationRequest.zzbjX);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgM(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkm(i);
    }

    public LocationRequest zzgM(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        int i = 102;
        long j = 3600000;
        long j2 = 600000;
        boolean z = false;
        long j3 = Long.MAX_VALUE;
        int i2 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        float f = BitmapDescriptorFactory.HUE_RED;
        long j4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel2, zzaX);
                    break;
                case 2:
                    j = zzb.zzi(parcel2, zzaX);
                    break;
                case 3:
                    j2 = zzb.zzi(parcel2, zzaX);
                    break;
                case 4:
                    z = zzb.zzc(parcel2, zzaX);
                    break;
                case 5:
                    j3 = zzb.zzi(parcel2, zzaX);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel2, zzaX);
                    break;
                case 7:
                    f = zzb.zzl(parcel2, zzaX);
                    break;
                case 8:
                    j4 = zzb.zzi(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new LocationRequest(i, j, j2, z, j3, i2, f, j4);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public LocationRequest[] zzkm(int i) {
        return new LocationRequest[i];
    }
}
