package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zzh implements Creator<MarkerOptions> {
    static void zza(MarkerOptions markerOptions, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, markerOptions.getPosition(), i, false);
        zzc.zza(parcel, 3, markerOptions.getTitle(), false);
        zzc.zza(parcel, 4, markerOptions.getSnippet(), false);
        zzc.zza(parcel, 5, markerOptions.zzJM(), false);
        zzc.zza(parcel, 6, markerOptions.getAnchorU());
        zzc.zza(parcel, 7, markerOptions.getAnchorV());
        zzc.zza(parcel, 8, markerOptions.isDraggable());
        zzc.zza(parcel, 9, markerOptions.isVisible());
        zzc.zza(parcel, 10, markerOptions.isFlat());
        zzc.zza(parcel, 11, markerOptions.getRotation());
        zzc.zza(parcel, 12, markerOptions.getInfoWindowAnchorU());
        zzc.zza(parcel, 13, markerOptions.getInfoWindowAnchorV());
        zzc.zza(parcel, 14, markerOptions.getAlpha());
        zzc.zza(parcel, 15, markerOptions.getZIndex());
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhE(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlm(i);
    }

    public MarkerOptions zzhE(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        boolean z = false;
        boolean z2 = z;
        boolean z3 = z2;
        LatLng latLng = null;
        String str = latLng;
        String str2 = str;
        IBinder iBinder = str2;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = f;
        float f3 = f2;
        float f4 = f3;
        float f5 = f4;
        float f6 = 0.5f;
        float f7 = 1.0f;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    latLng = (LatLng) zzb.zza(parcel2, zzaX, LatLng.CREATOR);
                    break;
                case 3:
                    str = zzb.zzq(parcel2, zzaX);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel2, zzaX);
                    break;
                case 5:
                    iBinder = zzb.zzr(parcel2, zzaX);
                    break;
                case 6:
                    f = zzb.zzl(parcel2, zzaX);
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
                    z3 = zzb.zzc(parcel2, zzaX);
                    break;
                case 11:
                    f3 = zzb.zzl(parcel2, zzaX);
                    break;
                case 12:
                    f6 = zzb.zzl(parcel2, zzaX);
                    break;
                case 13:
                    f4 = zzb.zzl(parcel2, zzaX);
                    break;
                case 14:
                    f7 = zzb.zzl(parcel2, zzaX);
                    break;
                case 15:
                    f5 = zzb.zzl(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new MarkerOptions(latLng, str, str2, iBinder, f, f2, z, z2, z3, f3, f6, f4, f7, f5);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public MarkerOptions[] zzlm(int i) {
        return new MarkerOptions[i];
    }
}
