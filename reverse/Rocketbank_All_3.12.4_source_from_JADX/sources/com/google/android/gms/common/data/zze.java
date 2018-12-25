package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzb.zza;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class zze implements Creator<DataHolder> {
    static void zza(DataHolder dataHolder, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, dataHolder.zzxl(), false);
        zzc.zza(parcel, 2, dataHolder.zzxm(), i, false);
        zzc.zzc(parcel, 3, dataHolder.getStatusCode());
        zzc.zza(parcel, 4, dataHolder.zzxf(), false);
        zzc.zzc(parcel, 1000, dataHolder.zzaiI);
        zzc.zzJ(parcel, zzaZ);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zzaO(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return zzcL(i);
    }

    public DataHolder zzaO(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        int i2 = i;
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = strArr;
        Bundle bundle = cursorWindowArr;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            int zzdc = zzb.zzdc(zzaX);
            if (zzdc != 1000) {
                switch (zzdc) {
                    case 1:
                        strArr = zzb.zzC(parcel, zzaX);
                        break;
                    case 2:
                        cursorWindowArr = (CursorWindow[]) zzb.zzb(parcel, zzaX, CursorWindow.CREATOR);
                        break;
                    case 3:
                        i2 = zzb.zzg(parcel, zzaX);
                        break;
                    case 4:
                        bundle = zzb.zzs(parcel, zzaX);
                        break;
                    default:
                        zzb.zzb(parcel, zzaX);
                        break;
                }
            }
            i = zzb.zzg(parcel, zzaX);
        }
        if (parcel.dataPosition() != zzaY) {
            StringBuilder stringBuilder = new StringBuilder(37);
            stringBuilder.append("Overread allowed size end=");
            stringBuilder.append(zzaY);
            throw new zza(stringBuilder.toString(), parcel);
        }
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.zzxk();
        return dataHolder;
    }

    public DataHolder[] zzcL(int i) {
        return new DataHolder[i];
    }
}
