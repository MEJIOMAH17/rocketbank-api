package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzy implements Creator<zzx> {
    static void zza(zzx zzx, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzx.zzaiI);
        zzc.zza(parcel, 2, zzx.zzbOJ);
        zzc.zza(parcel, 3, zzx.zzbOK, false);
        zzc.zza(parcel, 4, zzx.zzbOL);
        zzc.zza(parcel, 5, zzx.zzbOM, false);
        zzc.zzc(parcel, 6, zzx.zzbON);
        zzc.zza(parcel, 7, zzx.zzbOO, false);
        zzc.zzc(parcel, 8, zzx.zzbOP);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjM(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzoe(i);
    }

    public zzx zzjM(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        long j = 0;
        long j2 = j;
        String str = null;
        String str2 = str;
        List list = str2;
        int i = 0;
        int i2 = i;
        int i3 = i2;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel2, zzaX);
                    break;
                case 2:
                    j = zzb.zzi(parcel2, zzaX);
                    break;
                case 3:
                    str = zzb.zzq(parcel2, zzaX);
                    break;
                case 4:
                    j2 = zzb.zzi(parcel2, zzaX);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel2, zzaX);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel2, zzaX);
                    break;
                case 7:
                    list = zzb.zzD(parcel2, zzaX);
                    break;
                case 8:
                    i3 = zzb.zzg(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzx(i, j, str, j2, str2, i2, list, i3);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public zzx[] zzoe(int i) {
        return new zzx[i];
    }
}
