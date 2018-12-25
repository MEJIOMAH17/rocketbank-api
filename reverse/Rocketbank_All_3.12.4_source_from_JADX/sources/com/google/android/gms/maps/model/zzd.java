package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzd implements Creator<GroundOverlayOptions> {
    static void zza(GroundOverlayOptions groundOverlayOptions, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, groundOverlayOptions.zzJK(), false);
        zzc.zza(parcel, 3, groundOverlayOptions.getLocation(), i, false);
        zzc.zza(parcel, 4, groundOverlayOptions.getWidth());
        zzc.zza(parcel, 5, groundOverlayOptions.getHeight());
        zzc.zza(parcel, 6, groundOverlayOptions.getBounds(), i, false);
        zzc.zza(parcel, 7, groundOverlayOptions.getBearing());
        zzc.zza(parcel, 8, groundOverlayOptions.getZIndex());
        zzc.zza(parcel, 9, groundOverlayOptions.isVisible());
        zzc.zza(parcel, 10, groundOverlayOptions.getTransparency());
        zzc.zza(parcel, 11, groundOverlayOptions.getAnchorU());
        zzc.zza(parcel, 12, groundOverlayOptions.getAnchorV());
        zzc.zza(parcel, 13, groundOverlayOptions.isClickable());
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhA(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzli(i);
    }

    public GroundOverlayOptions zzhA(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        boolean z = false;
        boolean z2 = z;
        IBinder iBinder = null;
        LatLng latLng = iBinder;
        LatLngBounds latLngBounds = latLng;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = f;
        float f3 = f2;
        float f4 = f3;
        float f5 = f4;
        float f6 = f5;
        float f7 = f6;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    iBinder = zzb.zzr(parcel2, zzaX);
                    break;
                case 3:
                    latLng = (LatLng) zzb.zza(parcel2, zzaX, LatLng.CREATOR);
                    break;
                case 4:
                    f = zzb.zzl(parcel2, zzaX);
                    break;
                case 5:
                    f2 = zzb.zzl(parcel2, zzaX);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) zzb.zza(parcel2, zzaX, LatLngBounds.CREATOR);
                    break;
                case 7:
                    f3 = zzb.zzl(parcel2, zzaX);
                    break;
                case 8:
                    f4 = zzb.zzl(parcel2, zzaX);
                    break;
                case 9:
                    z = zzb.zzc(parcel2, zzaX);
                    break;
                case 10:
                    f5 = zzb.zzl(parcel2, zzaX);
                    break;
                case 11:
                    f6 = zzb.zzl(parcel2, zzaX);
                    break;
                case 12:
                    f7 = zzb.zzl(parcel2, zzaX);
                    break;
                case 13:
                    z2 = zzb.zzc(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new GroundOverlayOptions(iBinder, latLng, f, f2, latLngBounds, f3, f4, z, f5, f6, f7, z2);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public GroundOverlayOptions[] zzli(int i) {
        return new GroundOverlayOptions[i];
    }
}
