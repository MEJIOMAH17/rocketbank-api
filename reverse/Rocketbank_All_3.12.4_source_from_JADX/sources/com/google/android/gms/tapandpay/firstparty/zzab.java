package com.google.android.gms.tapandpay.firstparty;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzab implements Creator<ValuableInfo> {
    static void zza(ValuableInfo valuableInfo, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, valuableInfo.zzaiI);
        zzc.zza(parcel, 2, valuableInfo.title, false);
        zzc.zza(parcel, 3, valuableInfo.zzbOS, false);
        zzc.zza(parcel, 4, valuableInfo.zzbOT, false);
        zzc.zza(parcel, 5, valuableInfo.zzbOU, i, false);
        zzc.zzc(parcel, 6, valuableInfo.backgroundColor);
        zzc.zzc(parcel, 7, valuableInfo.textColor);
        zzc.zzc(parcel, 8, valuableInfo.zzbOV);
        zzc.zza(parcel, 9, valuableInfo.zzbOW, i, false);
        zzc.zza(parcel, 10, valuableInfo.zzbOX, i, false);
        zzc.zza(parcel, 11, valuableInfo.zzbOY, false);
        zzc.zza(parcel, 12, valuableInfo.zzbOZ, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjO(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzog(i);
    }

    public ValuableInfo zzjO(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        int i2 = i;
        int i3 = i2;
        int i4 = i3;
        String str = null;
        String str2 = str;
        String str3 = str2;
        Uri uri = str3;
        Uri uri2 = uri;
        Uri uri3 = uri2;
        String str4 = uri3;
        String str5 = str4;
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
                    uri = (Uri) zzb.zza(parcel2, zzaX, Uri.CREATOR);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel2, zzaX);
                    break;
                case 7:
                    i3 = zzb.zzg(parcel2, zzaX);
                    break;
                case 8:
                    i4 = zzb.zzg(parcel2, zzaX);
                    break;
                case 9:
                    uri2 = (Uri) zzb.zza(parcel2, zzaX, Uri.CREATOR);
                    break;
                case 10:
                    uri3 = (Uri) zzb.zza(parcel2, zzaX, Uri.CREATOR);
                    break;
                case 11:
                    str4 = zzb.zzq(parcel2, zzaX);
                    break;
                case 12:
                    str5 = zzb.zzq(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new ValuableInfo(i, str, str2, str3, uri, i2, i3, i4, uri2, uri3, str4, str5);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public ValuableInfo[] zzog(int i) {
        return new ValuableInfo[i];
    }
}
