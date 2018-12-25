package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzo implements Creator<zzn> {
    static void zza(zzn zzn, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzn.zzaiI);
        zzc.zza(parcel, 2, zzn.zzbOb);
        zzc.zzc(parcel, 3, zzn.zzbOc);
        zzc.zzc(parcel, 4, zzn.zzbOd);
        zzc.zzc(parcel, 5, zzn.zzbOe);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjG(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zznW(i);
    }

    public zzn zzjG(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        boolean z = i;
        int i2 = z;
        int i3 = i2;
        int i4 = i3;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i4 = zzb.zzg(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzn(i, z, i2, i3, i4);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzn[] zznW(int i) {
        return new zzn[i];
    }
}
