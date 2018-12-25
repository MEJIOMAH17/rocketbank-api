package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzbkd implements Creator<zzbkc> {
    static void zza(zzbkc zzbkc, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzbkc.zzaiI);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjV(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzon(i);
    }

    public zzbkc zzjV(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            if (zzb.zzdc(zzaX) != 1) {
                zzb.zzb(parcel, zzaX);
            } else {
                i = zzb.zzg(parcel, zzaX);
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzbkc(i);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzbkc[] zzon(int i) {
        return new zzbkc[i];
    }
}
