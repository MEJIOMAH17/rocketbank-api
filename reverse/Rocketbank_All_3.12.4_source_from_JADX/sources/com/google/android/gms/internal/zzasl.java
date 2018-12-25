package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzasl implements Creator<zzask> {
    static void zza(zzask zzask, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zzask.zzbkO);
        zzc.zza(parcel, 2, zzask.zzbkP, i, false);
        zzc.zza(parcel, 3, zzask.zzIr(), false);
        zzc.zza(parcel, 4, zzask.mPendingIntent, i, false);
        zzc.zza(parcel, 5, zzask.zzIs(), false);
        zzc.zza(parcel, 6, zzask.zzIt(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgW(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkz(i);
    }

    public zzask zzgW(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        zzasi zzasi = null;
        IBinder iBinder = zzasi;
        PendingIntent pendingIntent = iBinder;
        IBinder iBinder2 = pendingIntent;
        IBinder iBinder3 = iBinder2;
        int i = 1;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    zzasi = (zzasi) zzb.zza(parcel, zzaX, zzasi.CREATOR);
                    break;
                case 3:
                    iBinder = zzb.zzr(parcel, zzaX);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinder2 = zzb.zzr(parcel, zzaX);
                    break;
                case 6:
                    iBinder3 = zzb.zzr(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzask(i, zzasi, iBinder, pendingIntent, iBinder2, iBinder3);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzask[] zzkz(int i) {
        return new zzask[i];
    }
}
