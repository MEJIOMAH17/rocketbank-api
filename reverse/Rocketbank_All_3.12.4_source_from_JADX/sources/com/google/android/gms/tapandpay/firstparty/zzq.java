package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzq implements Creator<zzp> {
    static void zza(zzp zzp, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzp.zzaiI);
        zzc.zza(parcel, 2, zzp.zzbOf, false);
        zzc.zza(parcel, 3, zzp.zzbOg, false);
        zzc.zza(parcel, 4, zzp.zzbOh, false);
        zzc.zza(parcel, 5, zzp.zzacL, false);
        zzc.zza(parcel, 6, zzp.zzbOi, false);
        zzc.zza(parcel, 7, zzp.zzbOj, false);
        zzc.zza(parcel, 8, zzp.zzbOk, false);
        zzc.zza(parcel, 9, zzp.zzbOl, false);
        zzc.zza(parcel, 10, zzp.zzbOm, false);
        zzc.zza(parcel, 11, zzp.zzbOn, false);
        zzc.zza(parcel, 12, zzp.zzbOo, false);
        zzc.zza(parcel, 13, zzp.zzbOp, false);
        zzc.zza(parcel, 14, zzp.zzbOq, false);
        zzc.zza(parcel, 15, zzp.zzbOr);
        zzc.zza(parcel, 16, zzp.zzbOs, false);
        zzc.zza(parcel, 17, zzp.zzbOt, false);
        zzc.zza(parcel, 18, zzp.zzbOu, false);
        zzc.zza(parcel, 19, zzp.zzbOv, false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjH(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zznX(i);
    }

    public zzp zzjH(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        String str11 = str10;
        String str12 = str11;
        String str13 = str12;
        String str14 = str13;
        String str15 = str14;
        String str16 = str15;
        String str17 = str16;
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
                    str2 = zzb.zzq(parcel2, zzaX);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel2, zzaX);
                    break;
                case 5:
                    str4 = zzb.zzq(parcel2, zzaX);
                    break;
                case 6:
                    str5 = zzb.zzq(parcel2, zzaX);
                    break;
                case 7:
                    str6 = zzb.zzq(parcel2, zzaX);
                    break;
                case 8:
                    str7 = zzb.zzq(parcel2, zzaX);
                    break;
                case 9:
                    str8 = zzb.zzq(parcel2, zzaX);
                    break;
                case 10:
                    str9 = zzb.zzq(parcel2, zzaX);
                    break;
                case 11:
                    str10 = zzb.zzq(parcel2, zzaX);
                    break;
                case 12:
                    str11 = zzb.zzq(parcel2, zzaX);
                    break;
                case 13:
                    str12 = zzb.zzq(parcel2, zzaX);
                    break;
                case 14:
                    str13 = zzb.zzq(parcel2, zzaX);
                    break;
                case 15:
                    j = zzb.zzi(parcel2, zzaX);
                    break;
                case 16:
                    str14 = zzb.zzq(parcel2, zzaX);
                    break;
                case 17:
                    str15 = zzb.zzq(parcel2, zzaX);
                    break;
                case 18:
                    str16 = zzb.zzq(parcel2, zzaX);
                    break;
                case 19:
                    str17 = zzb.zzq(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzp(i, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, j, str14, str15, str16, str17);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public zzp[] zznX(int i) {
        return new zzp[i];
    }
}
