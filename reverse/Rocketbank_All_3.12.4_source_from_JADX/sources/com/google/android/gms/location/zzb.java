package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.WorkSource;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzb implements Creator<zza> {
    static void zza(zza zza, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, zza.getIntervalMillis());
        zzc.zza(parcel, 2, zza.zzHX());
        zzc.zza(parcel, 3, zza.zzHY(), i, false);
        zzc.zza(parcel, 4, zza.getTag(), false);
        zzc.zza(parcel, 5, zza.zzHZ(), false);
        zzc.zza(parcel, 6, zza.zzIa());
        zzc.zza(parcel, 7, zza.getAccountName(), false);
        zzc.zza(parcel, 8, zza.zzIb());
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgF(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzka(i);
    }

    public zza zzgF(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = false;
        boolean z2 = z;
        long j = 0;
        long j2 = j;
        WorkSource workSource = null;
        String str = workSource;
        int[] iArr = str;
        String str2 = iArr;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel2, zzaX);
                    break;
                case 2:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, zzaX);
                    break;
                case 3:
                    workSource = (WorkSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, zzaX, WorkSource.CREATOR);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 5:
                    iArr = com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel2, zzaX);
                    break;
                case 6:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, zzaX);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 8:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel2, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zza(j, z, workSource, str, iArr, z2, str2, j2);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public zza[] zzka(int i) {
        return new zza[i];
    }
}
