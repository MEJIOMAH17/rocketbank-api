package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzg implements Creator<MapStyleOptions> {
    static void zza(MapStyleOptions mapStyleOptions, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, mapStyleOptions.zzJL(), false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhD(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzll(i);
    }

    public MapStyleOptions zzhD(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            if (zzb.zzdc(zzaX) != 2) {
                zzb.zzb(parcel, zzaX);
            } else {
                str = zzb.zzq(parcel, zzaX);
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new MapStyleOptions(str);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public MapStyleOptions[] zzll(int i) {
        return new MapStyleOptions[i];
    }
}
