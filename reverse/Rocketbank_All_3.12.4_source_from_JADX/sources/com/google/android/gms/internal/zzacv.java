package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.internal.zzacs.zza;
import com.google.android.gms.internal.zzacw.zzb;

public class zzacv implements Creator<zzb> {
    static void zza(zzb zzb, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzb.versionCode);
        zzc.zza(parcel, 2, zzb.zzaB, false);
        zzc.zza(parcel, 3, zzb.zzaHl, i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzbf(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzdj(i);
    }

    public zzb zzbf(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        int i = 0;
        zza zza = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    zza = (zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zza.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzb(i, str, zza);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza(stringBuilder.toString(), parcel);
    }

    public zzb[] zzdj(int i) {
        return new zzb[i];
    }
}
