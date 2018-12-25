package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zza implements Creator<CameraPosition> {
    static void zza(CameraPosition cameraPosition, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, cameraPosition.target, i, false);
        zzc.zza(parcel, 3, cameraPosition.zoom);
        zzc.zza(parcel, 4, cameraPosition.tilt);
        zzc.zza(parcel, 5, cameraPosition.bearing);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhx(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlf(i);
    }

    public CameraPosition zzhx(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        float f = BitmapDescriptorFactory.HUE_RED;
        LatLng latLng = null;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = f2;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    latLng = (LatLng) zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 3:
                    f = zzb.zzl(parcel, zzaX);
                    break;
                case 4:
                    f2 = zzb.zzl(parcel, zzaX);
                    break;
                case 5:
                    f3 = zzb.zzl(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new CameraPosition(latLng, f, f2, f3);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza(stringBuilder.toString(), parcel);
    }

    public CameraPosition[] zzlf(int i) {
        return new CameraPosition[i];
    }
}
