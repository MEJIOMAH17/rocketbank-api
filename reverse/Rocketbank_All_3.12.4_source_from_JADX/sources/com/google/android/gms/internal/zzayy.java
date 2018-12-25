package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzayy implements Creator<zzayx> {
    static void zza(zzayx zzayx, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 2, zzayx.zzbBB);
        zzc.zza(parcel, 3, zzayx.zzbBC, i, false);
        zzc.zza(parcel, 4, zzayx.zzbBD, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzja(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzmX(i);
    }

    public zzayx zzja(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        zzayz[] zzayzArr = null;
        int i = 0;
        String[] strArr = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    zzayzArr = (zzayz[]) zzb.zzb(parcel, zzaX, zzayz.CREATOR);
                    break;
                case 4:
                    strArr = zzb.zzC(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzayx(i, zzayzArr, strArr);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzayx[] zzmX(int i) {
        return new zzayx[i];
    }
}
