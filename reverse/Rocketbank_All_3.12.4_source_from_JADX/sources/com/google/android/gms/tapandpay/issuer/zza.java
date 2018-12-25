package com.google.android.gms.tapandpay.issuer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.identity.intents.model.UserAddress;

public class zza implements Creator<PushTokenizeRequest> {
    static void zza(PushTokenizeRequest pushTokenizeRequest, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, pushTokenizeRequest.versionCode);
        zzc.zzc(parcel, 2, pushTokenizeRequest.zzbPr);
        zzc.zzc(parcel, 3, pushTokenizeRequest.zzbPs);
        zzc.zza(parcel, 4, pushTokenizeRequest.zzbPt, false);
        zzc.zza(parcel, 5, pushTokenizeRequest.zzbPu, false);
        zzc.zza(parcel, 6, pushTokenizeRequest.zzbNB, false);
        zzc.zza(parcel, 7, pushTokenizeRequest.zzbPv, i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzki(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzoA(i);
    }

    public PushTokenizeRequest zzki(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        int i2 = i;
        int i3 = i2;
        byte[] bArr = null;
        String str = bArr;
        String str2 = str;
        UserAddress userAddress = str2;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i3 = zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    bArr = zzb.zzt(parcel, zzaX);
                    break;
                case 5:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    userAddress = (UserAddress) zzb.zza(parcel, zzaX, UserAddress.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new PushTokenizeRequest(i, i2, i3, bArr, str, str2, userAddress);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new com.google.android.gms.common.internal.safeparcel.zzb.zza(stringBuilder.toString(), parcel);
    }

    public PushTokenizeRequest[] zzoA(int i) {
        return new PushTokenizeRequest[i];
    }
}
