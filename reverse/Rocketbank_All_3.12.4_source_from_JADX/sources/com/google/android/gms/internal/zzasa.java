package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzasa implements Creator<zzarz> {
    static void zza(zzarz zzarz, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, zzarz.getStatus(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgU(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkw(i);
    }

    public zzarz zzgU(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        Status status = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            if (zzb.zzdc(zzaX) != 1) {
                zzb.zzb(parcel, zzaX);
            } else {
                status = (Status) zzb.zza(parcel, zzaX, Status.CREATOR);
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzarz(status);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzarz[] zzkw(int i) {
        return new zzarz[i];
    }
}
