package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzw implements Creator<TokenStatus> {
    static void zza(TokenStatus tokenStatus, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, tokenStatus.zzaiI);
        zzc.zza(parcel, 2, tokenStatus.zzbOG, i, false);
        zzc.zzc(parcel, 3, tokenStatus.zzbOH);
        zzc.zza(parcel, 4, tokenStatus.zzbOI);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzjL(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzod(i);
    }

    public TokenStatus zzjL(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        zzu zzu = null;
        int i2 = 0;
        boolean z = i2;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    zzu = (zzu) zzb.zza(parcel, zzaX, zzu.CREATOR);
                    break;
                case 3:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new TokenStatus(i, zzu, i2, z);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public TokenStatus[] zzod(int i) {
        return new TokenStatus[i];
    }
}
