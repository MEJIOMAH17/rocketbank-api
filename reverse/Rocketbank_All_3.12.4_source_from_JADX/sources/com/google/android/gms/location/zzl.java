package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzl implements Creator<LocationAvailability> {
    static void zza(LocationAvailability locationAvailability, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, locationAvailability.zzbjP);
        zzc.zzc(parcel, 2, locationAvailability.zzbjQ);
        zzc.zza(parcel, 3, locationAvailability.zzbjR);
        zzc.zzc(parcel, 4, locationAvailability.zzbjS);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgL(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkj(i);
    }

    public LocationAvailability zzgL(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 1;
        int i2 = i;
        int i3 = 1000;
        long j = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new LocationAvailability(i3, i, i2, j);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public LocationAvailability[] zzkj(int i) {
        return new LocationAvailability[i];
    }
}
