package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;

public class zza implements Creator<GoogleMapOptions> {
    static void zza(GoogleMapOptions googleMapOptions, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, googleMapOptions.zzJo());
        zzc.zza(parcel, 3, googleMapOptions.zzJp());
        zzc.zzc(parcel, 4, googleMapOptions.getMapType());
        zzc.zza(parcel, 5, googleMapOptions.getCamera(), i, false);
        zzc.zza(parcel, 6, googleMapOptions.zzJq());
        zzc.zza(parcel, 7, googleMapOptions.zzJr());
        zzc.zza(parcel, 8, googleMapOptions.zzJs());
        zzc.zza(parcel, 9, googleMapOptions.zzJt());
        zzc.zza(parcel, 10, googleMapOptions.zzJu());
        zzc.zza(parcel, 11, googleMapOptions.zzJv());
        zzc.zza(parcel, 12, googleMapOptions.zzJw());
        zzc.zza(parcel, 14, googleMapOptions.zzJx());
        zzc.zza(parcel, 15, googleMapOptions.zzJy());
        zzc.zza(parcel, 16, googleMapOptions.getMinZoomPreference(), false);
        zzc.zza(parcel, 17, googleMapOptions.getMaxZoomPreference(), false);
        zzc.zza(parcel, 18, googleMapOptions.getLatLngBoundsForCameraTarget(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzhv(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzld(i);
    }

    public GoogleMapOptions zzhv(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        CameraPosition cameraPosition = null;
        Float f = cameraPosition;
        Float f2 = f;
        LatLngBounds latLngBounds = f2;
        byte b = (byte) -1;
        byte b2 = b;
        byte b3 = b2;
        byte b4 = b3;
        byte b5 = b4;
        byte b6 = b5;
        byte b7 = b6;
        byte b8 = b7;
        byte b9 = b8;
        byte b10 = b9;
        byte b11 = b10;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    b = zzb.zze(parcel2, zzaX);
                    break;
                case 3:
                    b2 = zzb.zze(parcel2, zzaX);
                    break;
                case 4:
                    i = zzb.zzg(parcel2, zzaX);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) zzb.zza(parcel2, zzaX, CameraPosition.CREATOR);
                    break;
                case 6:
                    b3 = zzb.zze(parcel2, zzaX);
                    break;
                case 7:
                    b4 = zzb.zze(parcel2, zzaX);
                    break;
                case 8:
                    b5 = zzb.zze(parcel2, zzaX);
                    break;
                case 9:
                    b6 = zzb.zze(parcel2, zzaX);
                    break;
                case 10:
                    b7 = zzb.zze(parcel2, zzaX);
                    break;
                case 11:
                    b8 = zzb.zze(parcel2, zzaX);
                    break;
                case 12:
                    b9 = zzb.zze(parcel2, zzaX);
                    break;
                case 14:
                    b10 = zzb.zze(parcel2, zzaX);
                    break;
                case 15:
                    b11 = zzb.zze(parcel2, zzaX);
                    break;
                case 16:
                    f = zzb.zzm(parcel2, zzaX);
                    break;
                case 17:
                    f2 = zzb.zzm(parcel2, zzaX);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) zzb.zza(parcel2, zzaX, LatLngBounds.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new GoogleMapOptions(b, b2, i, cameraPosition, b3, b4, b5, b6, b7, b8, b9, b10, b11, f, f2, latLngBounds);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza(stringBuilder.toString(), parcel2);
    }

    public GoogleMapOptions[] zzld(int i) {
        return new GoogleMapOptions[i];
    }
}
