package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzbju implements Creator<zzbjt> {
    static void zza(zzbjt zzbjt, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzbjt.zzaiI);
        zzc.zza(parcel, 2, zzbjt.timeoutMillis);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjR(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzoj(i);
    }

    public zzbjt zzjR(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        long j = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzbjt(i, j);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzbjt[] zzoj(int i) {
        return new zzbjt[i];
    }
}
