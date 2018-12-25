package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.internal.zzacs.zza;

public class zzacu implements Creator<zza> {
    static void zza(zza zza, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zza.getVersionCode());
        zzc.zzc(parcel, 2, zza.zzys());
        zzc.zza(parcel, 3, zza.zzyt());
        zzc.zzc(parcel, 4, zza.zzyu());
        zzc.zza(parcel, 5, zza.zzyv());
        zzc.zza(parcel, 6, zza.zzyw(), false);
        zzc.zzc(parcel, 7, zza.zzyx());
        zzc.zza(parcel, 8, zza.zzyz(), false);
        zzc.zza(parcel, 9, zza.zzyB(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzbe(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzdi(i);
    }

    public zza zzbe(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        String str2 = str;
        zzacn zzacn = str2;
        int i = 0;
        int i2 = i;
        boolean z = i2;
        int i3 = z;
        boolean z2 = i3;
        int i4 = z2;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    z2 = zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    i4 = zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    zzacn = (zzacn) zzb.zza(parcel, zzaX, zzacn.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new zza(i, i2, z, i3, z2, str, i4, str2, zzacn);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zzb.zza(stringBuilder.toString(), parcel);
    }

    public zza[] zzdi(int i) {
        return new zza[i];
    }
}
