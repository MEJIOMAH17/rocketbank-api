package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzu implements Creator<zzt> {
    static void zza(zzt zzt, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzb(parcel, 1, zzt.zzIm(), false);
        zzc.zza(parcel, 2, zzt.zzvu(), i, false);
        zzc.zza(parcel, 3, zzt.getTag(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgS(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzku(i);
    }

    public zzt zzgS(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        List list = null;
        String str = "";
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    list = zzb.zzE(parcel, zzaX);
                    break;
                case 2:
                    pendingIntent = (PendingIntent) zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
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
            return new zzt(list, pendingIntent, str);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzt[] zzku(int i) {
        return new zzt[i];
    }
}
