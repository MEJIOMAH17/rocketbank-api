package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.List;

public class zzl implements Creator<PolylineOptions> {
    static void zza(PolylineOptions polylineOptions, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 2, polylineOptions.getPoints(), false);
        zzc.zza(parcel, 3, polylineOptions.getWidth());
        zzc.zzc(parcel, 4, polylineOptions.getColor());
        zzc.zza(parcel, 5, polylineOptions.getZIndex());
        zzc.zza(parcel, 6, polylineOptions.isVisible());
        zzc.zza(parcel, 7, polylineOptions.isGeodesic());
        zzc.zza(parcel, 8, polylineOptions.isClickable());
        zzc.zza(parcel, 9, polylineOptions.getStartCap(), i, false);
        zzc.zza(parcel, 10, polylineOptions.getEndCap(), i, false);
        zzc.zzc(parcel, 11, polylineOptions.getJointType());
        zzc.zzc(parcel, 12, polylineOptions.getPattern(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhI(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzlq(i);
    }

    public PolylineOptions zzhI(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = f;
        List list = null;
        Cap cap = list;
        Cap cap2 = cap;
        List list2 = cap2;
        int i = 0;
        boolean z = i;
        boolean z2 = z;
        boolean z3 = z2;
        int i2 = z3;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    list = zzb.zzc(parcel2, zzaX, LatLng.CREATOR);
                    break;
                case 3:
                    f = zzb.zzl(parcel2, zzaX);
                    break;
                case 4:
                    i = zzb.zzg(parcel2, zzaX);
                    break;
                case 5:
                    f2 = zzb.zzl(parcel2, zzaX);
                    break;
                case 6:
                    z = zzb.zzc(parcel2, zzaX);
                    break;
                case 7:
                    z2 = zzb.zzc(parcel2, zzaX);
                    break;
                case 8:
                    z3 = zzb.zzc(parcel2, zzaX);
                    break;
                case 9:
                    cap = (Cap) zzb.zza(parcel2, zzaX, Cap.CREATOR);
                    break;
                case 10:
                    cap2 = (Cap) zzb.zza(parcel2, zzaX, Cap.CREATOR);
                    break;
                case 11:
                    i2 = zzb.zzg(parcel2, zzaX);
                    break;
                case 12:
                    list2 = zzb.zzc(parcel2, zzaX, PatternItem.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new PolylineOptions(list, f, i, f2, z, z2, z3, cap, cap2, i2, list2);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public PolylineOptions[] zzlq(int i) {
        return new PolylineOptions[i];
    }
}
