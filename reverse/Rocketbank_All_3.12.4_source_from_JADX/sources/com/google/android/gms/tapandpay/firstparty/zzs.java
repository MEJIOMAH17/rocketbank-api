package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzs implements Creator<zzr> {
    static void zza(zzr zzr, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzr.zzaiI);
        zzc.zza(parcel, 2, zzr.zzbOw, false);
        zzc.zza(parcel, 3, zzr.zzbOx, false);
        zzc.zzc(parcel, 4, zzr.zzbOy);
        zzc.zzc(parcel, 5, zzr.zzbOz);
        zzc.zza(parcel, 6, zzr.zzbOA, false);
        zzc.zza(parcel, 7, zzr.zzbOB, false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjI(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zznY(i);
    }

    public zzr zzjI(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        int i2 = i;
        int i3 = i2;
        String str = null;
        byte[] bArr = str;
        String str2 = bArr;
        String str3 = str2;
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
                    bArr = zzb.zzt(parcel, zzaX);
                    break;
                case 4:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzr(i, str, bArr, i2, i3, str2, str3);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzr[] zznY(int i) {
        return new zzr[i];
    }
}
