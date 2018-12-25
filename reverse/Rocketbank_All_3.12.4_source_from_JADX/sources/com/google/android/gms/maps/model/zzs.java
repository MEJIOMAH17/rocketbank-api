package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzs implements Creator<VisibleRegion> {
    static void zza(VisibleRegion visibleRegion, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, visibleRegion.nearLeft, i, false);
        zzc.zza(parcel, 3, visibleRegion.nearRight, i, false);
        zzc.zza(parcel, 4, visibleRegion.farLeft, i, false);
        zzc.zza(parcel, 5, visibleRegion.farRight, i, false);
        zzc.zza(parcel, 6, visibleRegion.latLngBounds, i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhP(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlx(i);
    }

    public VisibleRegion zzhP(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        LatLng latLng = null;
        LatLng latLng2 = latLng;
        LatLng latLng3 = latLng2;
        LatLng latLng4 = latLng3;
        LatLngBounds latLngBounds = latLng4;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    latLng = (LatLng) zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 3:
                    latLng2 = (LatLng) zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 4:
                    latLng3 = (LatLng) zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 5:
                    latLng4 = (LatLng) zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) zzb.zza(parcel, zzaX, LatLngBounds.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new VisibleRegion(latLng, latLng2, latLng3, latLng4, latLngBounds);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public VisibleRegion[] zzlx(int i) {
        return new VisibleRegion[i];
    }
}
