package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzi implements Creator<PatternItem> {
    static void zza(PatternItem patternItem, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 2, patternItem.getType());
        zzc.zza(parcel, 3, patternItem.zzJN(), false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhF(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzln(i);
    }

    public PatternItem zzhF(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        Float f = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    f = zzb.zzm(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new PatternItem(i, f);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public PatternItem[] zzln(int i) {
        return new PatternItem[i];
    }
}
