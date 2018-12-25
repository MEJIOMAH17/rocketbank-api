package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzate implements Creator<zzatd> {
    static void zza(zzatd zzatd, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, zzatd.packageName, false);
        zzc.zza(parcel, 3, zzatd.zzbqK, false);
        zzc.zza(parcel, 4, zzatd.zzbhN, false);
        zzc.zza(parcel, 5, zzatd.zzbqL, false);
        zzc.zza(parcel, 6, zzatd.zzbqM);
        zzc.zza(parcel, 7, zzatd.zzbqN);
        zzc.zza(parcel, 8, zzatd.zzbqO, false);
        zzc.zza(parcel, 9, zzatd.zzbqP);
        zzc.zza(parcel, 10, zzatd.zzbqQ);
        zzc.zza(parcel, 11, zzatd.zzbqR);
        zzc.zza(parcel, 12, zzatd.zzbqS, false);
        zzc.zza(parcel, 13, zzatd.zzbqT);
        zzc.zza(parcel, 14, zzatd.zzbqU);
        zzc.zzc(parcel, 15, zzatd.zzbqV);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhQ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlz(i);
    }

    public zzatd zzhQ(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        boolean z = false;
        int i = z;
        long j = 0;
        long j2 = j;
        long j3 = j2;
        long j4 = j3;
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        boolean z2 = true;
        long j5 = -2147483648L;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    str = zzb.zzq(parcel2, zzaX);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel2, zzaX);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel2, zzaX);
                    break;
                case 5:
                    str4 = zzb.zzq(parcel2, zzaX);
                    break;
                case 6:
                    j = zzb.zzi(parcel2, zzaX);
                    break;
                case 7:
                    j2 = zzb.zzi(parcel2, zzaX);
                    break;
                case 8:
                    str5 = zzb.zzq(parcel2, zzaX);
                    break;
                case 9:
                    z2 = zzb.zzc(parcel2, zzaX);
                    break;
                case 10:
                    z = zzb.zzc(parcel2, zzaX);
                    break;
                case 11:
                    j5 = zzb.zzi(parcel2, zzaX);
                    break;
                case 12:
                    str6 = zzb.zzq(parcel2, zzaX);
                    break;
                case 13:
                    j3 = zzb.zzi(parcel2, zzaX);
                    break;
                case 14:
                    j4 = zzb.zzi(parcel2, zzaX);
                    break;
                case 15:
                    i = zzb.zzg(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzatd(str, str2, str3, str4, j, j2, str5, z2, z, j5, str6, j3, j4, i);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public zzatd[] zzlz(int i) {
        return new zzatd[i];
    }
}
