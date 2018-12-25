package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzatp implements Creator<zzato> {
    static void zza(zzato zzato, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, zzato.zzLW(), false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhS(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlB(i);
    }

    public zzato zzhS(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            if (zzb.zzdc(zzaX) != 2) {
                zzb.zzb(parcel, zzaX);
            } else {
                bundle = zzb.zzs(parcel, zzaX);
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzato(bundle);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzato[] zzlB(int i) {
        return new zzato[i];
    }
}
