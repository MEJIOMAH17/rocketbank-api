package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;

public class zzd implements Creator<WakeLockEvent> {
    static void zza(WakeLockEvent wakeLockEvent, Parcel parcel, int i) {
        i = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, wakeLockEvent.zzaiI);
        zzc.zza(parcel, 2, wakeLockEvent.getTimeMillis());
        zzc.zza(parcel, 4, wakeLockEvent.zzyM(), false);
        zzc.zzc(parcel, 5, wakeLockEvent.zzyP());
        zzc.zzb(parcel, 6, wakeLockEvent.zzyQ(), false);
        zzc.zza(parcel, 8, wakeLockEvent.zzyS());
        zzc.zza(parcel, 10, wakeLockEvent.zzyN(), false);
        zzc.zzc(parcel, 11, wakeLockEvent.getEventType());
        zzc.zza(parcel, 12, wakeLockEvent.zzyR(), false);
        zzc.zza(parcel, 13, wakeLockEvent.zzyU(), false);
        zzc.zzc(parcel, 14, wakeLockEvent.zzyT());
        zzc.zza(parcel, 15, wakeLockEvent.zzyV());
        zzc.zza(parcel, 16, wakeLockEvent.zzyW());
        zzc.zza(parcel, 17, wakeLockEvent.zzyO(), false);
        zzc.zzJ(parcel, i);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzbj(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzdn(i);
    }

    public WakeLockEvent zzbj(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzaY = zzb.zzaY(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        int i = 0;
        int i2 = i;
        int i3 = i2;
        int i4 = i3;
        String str = null;
        List list = str;
        String str2 = list;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        float f = BitmapDescriptorFactory.HUE_RED;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel2, zzaX);
                    break;
                case 2:
                    j = zzb.zzi(parcel2, zzaX);
                    break;
                case 4:
                    str = zzb.zzq(parcel2, zzaX);
                    break;
                case 5:
                    i3 = zzb.zzg(parcel2, zzaX);
                    break;
                case 6:
                    list = zzb.zzE(parcel2, zzaX);
                    break;
                case 8:
                    j2 = zzb.zzi(parcel2, zzaX);
                    break;
                case 10:
                    str3 = zzb.zzq(parcel2, zzaX);
                    break;
                case 11:
                    i2 = zzb.zzg(parcel2, zzaX);
                    break;
                case 12:
                    str2 = zzb.zzq(parcel2, zzaX);
                    break;
                case 13:
                    str4 = zzb.zzq(parcel2, zzaX);
                    break;
                case 14:
                    i4 = zzb.zzg(parcel2, zzaX);
                    break;
                case 15:
                    f = zzb.zzl(parcel2, zzaX);
                    break;
                case 16:
                    j3 = zzb.zzi(parcel2, zzaX);
                    break;
                case 17:
                    str5 = zzb.zzq(parcel2, zzaX);
                    break;
                default:
                    zzb.zzb(parcel2, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() == zzaY) {
            return new WakeLockEvent(i, j, i2, str, i3, list, str2, j2, i4, str3, str4, f, j3, str5);
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Overread allowed size end=");
        stringBuilder.append(zzaY);
        throw new zza(stringBuilder.toString(), parcel2);
    }

    public WakeLockEvent[] zzdn(int i) {
        return new WakeLockEvent[i];
    }
}
