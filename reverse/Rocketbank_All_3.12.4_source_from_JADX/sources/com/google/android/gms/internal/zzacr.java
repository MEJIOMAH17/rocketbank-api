package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.internal.zzacp.zza;

public class zzacr implements Creator<zza> {
    static void zza(zza zza, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zza.versionCode);
        zzc.zza(parcel, 2, zza.zzaGV, false);
        zzc.zzc(parcel, 3, zza.zzaGW);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzbd(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzdh(i);
    }

    public zza zzbd(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zza(i, str, i2);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zzb.zza(stringBuilder.toString(), parcel);
    }

    public zza[] zzdh(int i) {
        return new zza[i];
    }
}
