package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzatr implements Creator<zzatq> {
    static void zza(zzatq zzatq, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, zzatq.name, false);
        zzc.zza(parcel, 3, zzatq.zzbrH, i, false);
        zzc.zza(parcel, 4, zzatq.zzbqW, false);
        zzc.zza(parcel, 5, zzatq.zzbrI);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhT(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlC(i);
    }

    public zzatq zzhT(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        zzato zzato = str;
        String str2 = zzato;
        long j = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    zzato = (zzato) zzb.zza(parcel, zzaX, zzato.CREATOR);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzatq(str, zzato, str2, j);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzatq[] zzlC(int i) {
        return new zzatq[i];
    }
}
