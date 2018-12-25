package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzo implements Creator<StreetViewPanoramaLocation> {
    static void zza(StreetViewPanoramaLocation streetViewPanoramaLocation, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, streetViewPanoramaLocation.links, i, false);
        zzc.zza(parcel, 3, streetViewPanoramaLocation.position, i, false);
        zzc.zza(parcel, 4, streetViewPanoramaLocation.panoId, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhL(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlt(i);
    }

    public StreetViewPanoramaLocation zzhL(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        StreetViewPanoramaLink[] streetViewPanoramaLinkArr = null;
        LatLng latLng = null;
        String str = latLng;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    streetViewPanoramaLinkArr = (StreetViewPanoramaLink[]) zzb.zzb(parcel, zzaX, StreetViewPanoramaLink.CREATOR);
                    break;
                case 3:
                    latLng = (LatLng) zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 4:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new StreetViewPanoramaLocation(streetViewPanoramaLinkArr, latLng, str);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public StreetViewPanoramaLocation[] zzlt(int i) {
        return new StreetViewPanoramaLocation[i];
    }
}
