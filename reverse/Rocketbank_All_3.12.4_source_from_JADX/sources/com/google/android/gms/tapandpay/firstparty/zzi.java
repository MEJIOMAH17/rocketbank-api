package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzi implements Creator<zzh> {
    static void zza(zzh zzh, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzh.zzaiI);
        zzc.zza(parcel, 2, zzh.zzbNW, i, false);
        zzc.zza(parcel, 3, zzh.zzbNV, i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjD(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zznT(i);
    }

    public zzh zzjD(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        CardInfo[] cardInfoArr = null;
        int i = 0;
        AccountInfo accountInfo = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    cardInfoArr = (CardInfo[]) zzb.zzb(parcel, zzaX, CardInfo.CREATOR);
                    break;
                case 3:
                    accountInfo = (AccountInfo) zzb.zza(parcel, zzaX, AccountInfo.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzh(i, cardInfoArr, accountInfo);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzh[] zznT(int i) {
        return new zzh[i];
    }
}
