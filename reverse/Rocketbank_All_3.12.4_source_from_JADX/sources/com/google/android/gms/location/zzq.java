package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzq implements Creator<LocationSettingsRequest> {
    static void zza(LocationSettingsRequest locationSettingsRequest, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, locationSettingsRequest.zzDf(), false);
        zzc.zza(parcel, 2, locationSettingsRequest.zzIj());
        zzc.zza(parcel, 3, locationSettingsRequest.zzIk());
        zzc.zza(parcel, 5, locationSettingsRequest.zzIl(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgP(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkp(i);
    }

    public LocationSettingsRequest zzgP(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        boolean z = false;
        List list = null;
        boolean z2 = false;
        zzo zzo = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            int zzdc = zzb.zzdc(zzaX);
            if (zzdc != 5) {
                switch (zzdc) {
                    case 1:
                        list = zzb.zzc(parcel, zzaX, LocationRequest.CREATOR);
                        break;
                    case 2:
                        z = zzb.zzc(parcel, zzaX);
                        break;
                    case 3:
                        z2 = zzb.zzc(parcel, zzaX);
                        break;
                    default:
                        zzb.zzb(parcel, zzaX);
                        break;
                }
            }
            zzo = (zzo) zzb.zza(parcel, zzaX, zzo.CREATOR);
        }
        if (parcel.dataPosition() == zzaY) {
            return new LocationSettingsRequest(list, z, z2, zzo);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public LocationSettingsRequest[] zzkp(int i) {
        return new LocationSettingsRequest[i];
    }
}
