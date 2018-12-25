package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import java.util.List;

public class zzc implements Creator<CircleOptions> {
    static void zza(CircleOptions circleOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, circleOptions.getCenter(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, circleOptions.getRadius());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, circleOptions.getStrokeWidth());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, circleOptions.getStrokeColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, circleOptions.getFillColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, circleOptions.getZIndex());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, circleOptions.isVisible());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, circleOptions.isClickable());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, circleOptions.getStrokePattern(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhz(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlh(i);
    }

    public CircleOptions zzhz(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = f;
        LatLng latLng = null;
        List list = latLng;
        int i = 0;
        int i2 = i;
        boolean z = i2;
        boolean z2 = z;
        double d = 0.0d;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    latLng = (LatLng) zzb.zza(parcel2, zzaX, LatLng.CREATOR);
                    break;
                case 3:
                    d = zzb.zzn(parcel2, zzaX);
                    break;
                case 4:
                    f = zzb.zzl(parcel2, zzaX);
                    break;
                case 5:
                    i = zzb.zzg(parcel2, zzaX);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel2, zzaX);
                    break;
                case 7:
                    f2 = zzb.zzl(parcel2, zzaX);
                    break;
                case 8:
                    z = zzb.zzc(parcel2, zzaX);
                    break;
                case 9:
                    z2 = zzb.zzc(parcel2, zzaX);
                    break;
                case 10:
                    list = zzb.zzc(parcel2, zzaX, PatternItem.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new CircleOptions(latLng, d, f, i, i2, f2, z, z2, list);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public CircleOptions[] zzlh(int i) {
        return new CircleOptions[i];
    }
}
