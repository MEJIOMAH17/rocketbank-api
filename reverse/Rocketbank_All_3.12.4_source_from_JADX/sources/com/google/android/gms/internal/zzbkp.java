package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.tapandpay.firstparty.zzx;

public class zzbkp implements Creator<zzbko> {
    static void zza(zzbko zzbko, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzbko.zzaiI);
        zzc.zza(parcel, 2, zzbko.zzaiu, false);
        zzc.zza(parcel, 3, zzbko.zzbPn, false);
        zzc.zza(parcel, 4, zzbko.zzbPo, i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzkb(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzot(i);
    }

    public zzbko zzkb(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        int i = 0;
        String str2 = null;
        zzx zzx = str2;
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
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    zzx = (zzx) zzb.zza(parcel, zzaX, zzx.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzbko(i, str, str2, zzx);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzbko[] zzot(int i) {
        return new zzbko[i];
    }
}
