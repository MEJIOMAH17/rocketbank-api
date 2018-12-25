package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.internal.zzarw;
import java.util.List;

public class zzg implements Creator<zzf> {
    static void zza(zzf zzf, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzf.zzId(), false);
        zzc.zza(parcel, 2, zzf.getTag(), false);
        zzc.zzc(parcel, 3, zzf.zzIe(), false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgI(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkd(i);
    }

    public zzf zzgI(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        List list = null;
        String str = null;
        List list2 = str;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    list = zzb.zzc(parcel, zzaX, zzd.CREATOR);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    list2 = zzb.zzc(parcel, zzaX, zzarw.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzf(list, str, list2);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzf[] zzkd(int i) {
        return new zzf[i];
    }
}
