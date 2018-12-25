package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzbkz implements Creator<zzbky> {
    static void zza(zzbky zzbky, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzbky.zzaiI);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzkg(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzoy(i);
    }

    public zzbky zzkg(Parcel parcel) {
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
            return new zzbky(i);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzbky[] zzoy(int i) {
        return new zzbky[i];
    }
}
