package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzath implements Creator<zzatg> {
    static void zza(zzatg zzatg, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzatg.versionCode);
        zzc.zza(parcel, 2, zzatg.packageName, false);
        zzc.zza(parcel, 3, zzatg.zzbqW, false);
        zzc.zza(parcel, 4, zzatg.zzbqX, i, false);
        zzc.zza(parcel, 5, zzatg.zzbqY);
        zzc.zza(parcel, 6, zzatg.zzbqZ);
        zzc.zza(parcel, 7, zzatg.zzbra, false);
        zzc.zza(parcel, 8, zzatg.zzbrb, i, false);
        zzc.zza(parcel, 9, zzatg.zzbrc);
        zzc.zza(parcel, 10, zzatg.zzbrd, i, false);
        zzc.zza(parcel, 11, zzatg.zzbre);
        zzc.zza(parcel, 12, zzatg.zzbrf, i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhR(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlA(i);
    }

    public zzatg zzhR(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        boolean z = i;
        long j = 0;
        long j2 = j;
        long j3 = j2;
        String str = null;
        String str2 = str;
        zzauq zzauq = str2;
        String str3 = zzauq;
        zzatq zzatq = str3;
        zzatq zzatq2 = zzatq;
        zzatq zzatq3 = zzatq2;
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
                    str2 = zzb.zzq(parcel2, zzaX);
                    break;
                case 4:
                    zzauq = (zzauq) zzb.zza(parcel2, zzaX, zzauq.CREATOR);
                    break;
                case 5:
                    j = zzb.zzi(parcel2, zzaX);
                    break;
                case 6:
                    z = zzb.zzc(parcel2, zzaX);
                    break;
                case 7:
                    str3 = zzb.zzq(parcel2, zzaX);
                    break;
                case 8:
                    zzatq = (zzatq) zzb.zza(parcel2, zzaX, zzatq.CREATOR);
                    break;
                case 9:
                    j2 = zzb.zzi(parcel2, zzaX);
                    break;
                case 10:
                    zzatq2 = (zzatq) zzb.zza(parcel2, zzaX, zzatq.CREATOR);
                    break;
                case 11:
                    j3 = zzb.zzi(parcel2, zzaX);
                    break;
                case 12:
                    zzatq3 = (zzatq) zzb.zza(parcel2, zzaX, zzatq.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzatg(i, str, str2, zzauq, j, z, str3, zzatq, j2, zzatq2, j3, zzatq3);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public zzatg[] zzlA(int i) {
        return new zzatg[i];
    }
}
