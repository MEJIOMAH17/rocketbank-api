package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzada implements Creator<zzacz> {
    static void zza(zzacz zzacz, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzacz.getVersionCode());
        zzc.zza(parcel, 2, zzacz.zzyH(), false);
        zzc.zza(parcel, 3, zzacz.zzyI(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzbi(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzdm(i);
    }

    public zzacz zzbi(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        Parcel parcel2 = null;
        int i = 0;
        zzacw zzacw = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    parcel2 = zzb.zzF(parcel, zzaX);
                    break;
                case 3:
                    zzacw = (zzacw) zzb.zza(parcel, zzaX, zzacw.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzacz(i, parcel2, zzacw);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzacz[] zzdm(int i) {
        return new zzacz[i];
    }
}
