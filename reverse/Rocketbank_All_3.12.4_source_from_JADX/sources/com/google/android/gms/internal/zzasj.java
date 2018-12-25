package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public class zzasj implements Creator<zzasi> {
    static void zza(zzasi zzasi, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, zzasi.zzaWw, i, false);
        zzc.zzc(parcel, 5, zzasi.zzbjw, false);
        zzc.zza(parcel, 6, zzasi.mTag, false);
        zzc.zza(parcel, 7, zzasi.zzbkM);
        zzc.zza(parcel, 8, zzasi.zzbkN);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgV(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzky(i);
    }

    public zzasi zzgV(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        List list = zzasi.zzbkL;
        boolean z = false;
        boolean z2 = z;
        LocationRequest locationRequest = null;
        String str = locationRequest;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            int zzdc = zzb.zzdc(zzaX);
            if (zzdc != 1) {
                switch (zzdc) {
                    case 5:
                        list = zzb.zzc(parcel, zzaX, zzarw.CREATOR);
                        break;
                    case 6:
                        str = zzb.zzq(parcel, zzaX);
                        break;
                    case 7:
                        z = zzb.zzc(parcel, zzaX);
                        break;
                    case 8:
                        z2 = zzb.zzc(parcel, zzaX);
                        break;
                    default:
                        zzb.zzb(parcel, zzaX);
                        break;
                }
            }
            locationRequest = (LocationRequest) zzb.zza(parcel, zzaX, LocationRequest.CREATOR);
        }
        if (parcel.dataPosition() == zzaY) {
            return new zzasi(locationRequest, list, str, z, z2);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public zzasi[] zzky(int i) {
        return new zzasi[i];
    }
}
