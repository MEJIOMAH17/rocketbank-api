package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzb implements Creator<UserAddress> {
    static void zza(UserAddress userAddress, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, userAddress.name, false);
        zzc.zza(parcel, 3, userAddress.zzbhu, false);
        zzc.zza(parcel, 4, userAddress.zzbhv, false);
        zzc.zza(parcel, 5, userAddress.zzbhw, false);
        zzc.zza(parcel, 6, userAddress.zzbhx, false);
        zzc.zza(parcel, 7, userAddress.zzbhy, false);
        zzc.zza(parcel, 8, userAddress.zzbhz, false);
        zzc.zza(parcel, 9, userAddress.zzbhA, false);
        zzc.zza(parcel, 10, userAddress.zzUI, false);
        zzc.zza(parcel, 11, userAddress.zzbhB, false);
        zzc.zza(parcel, 12, userAddress.zzbhC, false);
        zzc.zza(parcel, 13, userAddress.phoneNumber, false);
        zzc.zza(parcel, 14, userAddress.zzbhD);
        zzc.zza(parcel, 15, userAddress.zzbhE, false);
        zzc.zza(parcel, 16, userAddress.zzbhF, false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgr(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzjI(i);
    }

    public UserAddress zzgr(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
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
        boolean z = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 6:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 7:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 8:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 9:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 10:
                    str9 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 11:
                    str10 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 12:
                    str11 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 13:
                    str12 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 14:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, zzaX);
                    break;
                case 15:
                    str13 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                case 16:
                    str14 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new UserAddress(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, z, str13, str14);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public UserAddress[] zzjI(int i) {
        return new UserAddress[i];
    }
}
