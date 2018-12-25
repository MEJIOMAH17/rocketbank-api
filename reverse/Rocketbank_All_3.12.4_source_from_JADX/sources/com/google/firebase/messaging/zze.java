package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public final class zze implements Creator<RemoteMessage> {
    static void zza$55993b6c(RemoteMessage remoteMessage, Parcel parcel) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, remoteMessage.zzaic, false);
        zzc.zzJ(parcel, zzaZ);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new RemoteMessage[i];
    }

    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            if (zzb.zzdc(zzaX) != 2) {
                zzb.zzb(parcel, zzaX);
            } else {
                bundle = zzb.zzs(parcel, zzaX);
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new RemoteMessage(bundle);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }
}
