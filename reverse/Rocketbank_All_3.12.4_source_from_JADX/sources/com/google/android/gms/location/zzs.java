package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzs implements Creator<LocationSettingsStates> {
    static void zza(LocationSettingsStates locationSettingsStates, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, locationSettingsStates.isGpsUsable());
        zzc.zza(parcel, 2, locationSettingsStates.isNetworkLocationUsable());
        zzc.zza(parcel, 3, locationSettingsStates.isBleUsable());
        zzc.zza(parcel, 4, locationSettingsStates.isGpsPresent());
        zzc.zza(parcel, 5, locationSettingsStates.isNetworkLocationPresent());
        zzc.zza(parcel, 6, locationSettingsStates.isBlePresent());
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgR(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkr(i);
    }

    public LocationSettingsStates zzgR(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        boolean z = false;
        boolean z2 = z;
        boolean z3 = z2;
        boolean z4 = z3;
        boolean z5 = z4;
        boolean z6 = z5;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 2:
                    z2 = zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    z3 = zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    z4 = zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    z5 = zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    z6 = zzb.zzc(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new LocationSettingsStates(z, z2, z3, z4, z5, z6);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public LocationSettingsStates[] zzkr(int i) {
        return new LocationSettingsStates[i];
    }
}
