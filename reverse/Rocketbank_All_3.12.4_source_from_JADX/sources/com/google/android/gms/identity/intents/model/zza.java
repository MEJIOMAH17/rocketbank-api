package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zza implements Creator<CountrySpecification> {
    static void zza(CountrySpecification countrySpecification, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, countrySpecification.zzUI, false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgq(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzjH(i);
    }

    public CountrySpecification zzgq(Parcel parcel) {
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
            return new CountrySpecification(str);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza(stringBuilder.toString(), parcel);
    }

    public CountrySpecification[] zzjH(int i) {
        return new CountrySpecification[i];
    }
}
