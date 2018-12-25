package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.internal.zzacw.zza;
import java.util.ArrayList;

public class zzacx implements Creator<zzacw> {
    static void zza(zzacw zzacw, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzacw.zzaiI);
        zzc.zzc(parcel, 2, zzacw.zzyE(), false);
        zzc.zza(parcel, 3, zzacw.zzyF(), false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzbg(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzdk(i);
    }

    public zzacw zzbg(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        ArrayList arrayList = null;
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    arrayList = zzb.zzc(parcel, zzaX, zza.CREATOR);
                    break;
                case 3:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzacw(i, arrayList, str);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zzb.zza(stringBuilder.toString(), parcel);
    }

    public zzacw[] zzdk(int i) {
        return new zzacw[i];
    }
}
