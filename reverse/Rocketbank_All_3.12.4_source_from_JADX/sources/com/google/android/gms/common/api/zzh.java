package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzh implements Creator<Status> {
    static void zza(Status status, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, status.getStatusCode());
        zzc.zza(parcel, 2, status.getStatusMessage(), false);
        zzc.zza(parcel, 3, status.zzvu(), i, false);
        zzc.zzc(parcel, 1000, status.zzaiI);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaM(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzcz(i);
    }

    public Status zzaM(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        PendingIntent pendingIntent = str;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            int zzdc = zzb.zzdc(zzaX);
            if (zzdc != 1000) {
                switch (zzdc) {
                    case 1:
                        i2 = zzb.zzg(parcel, zzaX);
                        break;
                    case 2:
                        str = zzb.zzq(parcel, zzaX);
                        break;
                    case 3:
                        pendingIntent = (PendingIntent) zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                        break;
                    default:
                        zzb.zzb(parcel, zzaX);
                        break;
                }
            }
            i = zzb.zzg(parcel, zzaX);
        }
        if (parcel.dataPosition() == zzaY) {
            return new Status(i, i2, str, pendingIntent);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public Status[] zzcz(int i) {
        return new Status[i];
    }
}
