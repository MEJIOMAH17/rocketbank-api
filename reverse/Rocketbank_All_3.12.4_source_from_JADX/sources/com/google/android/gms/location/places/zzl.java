package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzl implements Creator<PlaceReport> {
    static void zza(PlaceReport placeReport, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, placeReport.zzaiI);
        zzc.zza(parcel, 2, placeReport.getPlaceId(), false);
        zzc.zza(parcel, 3, placeReport.getTag(), false);
        zzc.zza(parcel, 4, placeReport.getSource(), false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhf(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkL(i);
    }

    public PlaceReport zzhf(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        int i = 0;
        String str2 = null;
        String str3 = str2;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new PlaceReport(i, str, str2, str3);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public PlaceReport[] zzkL(int i) {
        return new PlaceReport[i];
    }
}
