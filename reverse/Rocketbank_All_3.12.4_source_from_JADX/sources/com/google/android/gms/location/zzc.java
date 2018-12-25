package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import java.util.List;

public class zzc implements Creator<ActivityRecognitionResult> {
    static void zza(ActivityRecognitionResult activityRecognitionResult, Parcel parcel, int i) {
        i = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, activityRecognitionResult.zzbjp, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, activityRecognitionResult.zzbjq);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, activityRecognitionResult.zzbjr);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, activityRecognitionResult.zzbjs);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, activityRecognitionResult.extras, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzgG(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzkb(i);
    }

    public ActivityRecognitionResult zzgG(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        long j = 0;
        long j2 = j;
        List list = null;
        Bundle bundle = list;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    list = zzb.zzc(parcel, zzaX, DetectedActivity.CREATOR);
                    break;
                case 2:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new ActivityRecognitionResult(list, j, j2, i, bundle);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel);
    }

    public ActivityRecognitionResult[] zzkb(int i) {
        return new ActivityRecognitionResult[i];
    }
}
