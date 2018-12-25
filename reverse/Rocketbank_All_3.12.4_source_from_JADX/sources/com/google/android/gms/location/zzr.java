package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzr implements Creator<LocationSettingsResult> {
    static void zza(LocationSettingsResult locationSettingsResult, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, locationSettingsResult.getStatus(), i, false);
        zzc.zza(parcel, 2, locationSettingsResult.getLocationSettingsStates(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgQ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkq(i);
    }

    public LocationSettingsResult zzgQ(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        Status status = null;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    status = (Status) zzb.zza(parcel, zzaX, Status.CREATOR);
                    break;
                case 2:
                    locationSettingsStates = (LocationSettingsStates) zzb.zza(parcel, zzaX, LocationSettingsStates.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new LocationSettingsResult(status, locationSettingsStates);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public LocationSettingsResult[] zzkq(int i) {
        return new LocationSettingsResult[i];
    }
}
