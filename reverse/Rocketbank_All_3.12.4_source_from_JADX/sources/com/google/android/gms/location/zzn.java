package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzn implements Creator<LocationResult> {
    static void zza(LocationResult locationResult, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, locationResult.getLocations(), false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgN(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkn(i);
    }

    public LocationResult zzgN(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        List list = LocationResult.zzbjY;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            if (zzb.zzdc(zzaX) != 1) {
                zzb.zzb(parcel, zzaX);
            } else {
                list = zzb.zzc(parcel, zzaX, Location.CREATOR);
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new LocationResult(list);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public LocationResult[] zzkn(int i) {
        return new LocationResult[i];
    }
}
