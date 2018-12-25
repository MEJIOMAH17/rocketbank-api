package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.tapandpay.firstparty.zzt;

public class zzbkr implements Creator<zzbkq> {
    static void zza(zzbkq zzbkq, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzbkq.zzaiI);
        zzc.zza(parcel, 2, zzbkq.zzbPp, i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzkc(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzou(i);
    }

    public zzbkq zzkc(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        zzt zzt = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    zzt = (zzt) zzb.zza(parcel, zzaX, zzt.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzbkq(i, zzt);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzbkq[] zzou(int i) {
        return new zzbkq[i];
    }
}
