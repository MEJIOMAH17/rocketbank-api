package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.List;

public class zza implements Creator<UserAddressRequest> {
    static void zza(UserAddressRequest userAddressRequest, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 2, userAddressRequest.zzbhr, false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgp(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzjG(i);
    }

    public UserAddressRequest zzgp(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        List list = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            if (zzb.zzdc(zzaX) != 2) {
                zzb.zzb(parcel, zzaX);
            } else {
                list = zzb.zzc(parcel, zzaX, CountrySpecification.CREATOR);
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new UserAddressRequest(list);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza(stringBuilder.toString(), parcel);
    }

    public UserAddressRequest[] zzjG(int i) {
        return new UserAddressRequest[i];
    }
}
