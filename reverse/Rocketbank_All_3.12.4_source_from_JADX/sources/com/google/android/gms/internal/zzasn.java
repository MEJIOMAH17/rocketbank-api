package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class zzasn implements Creator<zzasm> {
    static void zza(zzasm zzasm, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, zzasm.getRequestId(), false);
        zzc.zza(parcel, 2, zzasm.getExpirationTime());
        zzc.zza(parcel, 3, zzasm.zzIu());
        zzc.zza(parcel, 4, zzasm.getLatitude());
        zzc.zza(parcel, 5, zzasm.getLongitude());
        zzc.zza(parcel, 6, zzasm.getRadius());
        zzc.zzc(parcel, 7, zzasm.zzIv());
        zzc.zzc(parcel, 8, zzasm.zzIw());
        zzc.zzc(parcel, 9, zzasm.zzIx());
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgX(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkC(i);
    }

    public zzasm zzgX(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        double d = 0.0d;
        double d2 = d;
        int i = 0;
        short s = i;
        int i2 = s;
        String str = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        long j = 0;
        int i3 = -1;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str = zzb.zzq(parcel2, zzaX);
                    break;
                case 2:
                    j = zzb.zzi(parcel2, zzaX);
                    break;
                case 3:
                    s = zzb.zzf(parcel2, zzaX);
                    break;
                case 4:
                    d = zzb.zzn(parcel2, zzaX);
                    break;
                case 5:
                    d2 = zzb.zzn(parcel2, zzaX);
                    break;
                case 6:
                    f = zzb.zzl(parcel2, zzaX);
                    break;
                case 7:
                    i = zzb.zzg(parcel2, zzaX);
                    break;
                case 8:
                    i2 = zzb.zzg(parcel2, zzaX);
                    break;
                case 9:
                    i3 = zzb.zzg(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzasm(str, i, s, d, d2, f, j, i2, i3);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public zzasm[] zzkC(int i) {
        return new zzasm[i];
    }
}
