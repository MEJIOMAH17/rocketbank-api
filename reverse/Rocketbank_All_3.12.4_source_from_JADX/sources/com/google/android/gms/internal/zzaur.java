package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzaur implements Creator<zzauq> {
    static void zza(zzauq zzauq, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzauq.versionCode);
        zzc.zza(parcel, 2, zzauq.name, false);
        zzc.zza(parcel, 3, zzauq.zzbwf);
        zzc.zza(parcel, 4, zzauq.zzbwg, false);
        zzc.zza(parcel, 5, zzauq.zzbwh, false);
        zzc.zza(parcel, 6, zzauq.zzaGV, false);
        zzc.zza(parcel, 7, zzauq.zzbqW, false);
        zzc.zza(parcel, 8, zzauq.zzbwi, false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhU(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlE(i);
    }

    public zzauq zzhU(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        Long l = str;
        Float f = l;
        String str2 = f;
        String str3 = str2;
        Double d = str3;
        int i = 0;
        long j = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel2, zzaX);
                    break;
                case 2:
                    str = zzb.zzq(parcel2, zzaX);
                    break;
                case 3:
                    j = zzb.zzi(parcel2, zzaX);
                    break;
                case 4:
                    l = zzb.zzj(parcel2, zzaX);
                    break;
                case 5:
                    f = zzb.zzm(parcel2, zzaX);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel2, zzaX);
                    break;
                case 7:
                    str3 = zzb.zzq(parcel2, zzaX);
                    break;
                case 8:
                    d = zzb.zzo(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzauq(i, str, j, l, f, str2, str3, d);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public zzauq[] zzlE(int i) {
        return new zzauq[i];
    }
}
