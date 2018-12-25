package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbkg extends zza {
    public static final Creator<zzbkg> CREATOR = new zzbkh();
    final int zzaiI;
    final String zzaiu;
    final String zzbPm;

    zzbkg(int i, String str, String str2) {
        this.zzaiI = i;
        this.zzbPm = str;
        this.zzaiu = str2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkh.zza(this, parcel, i);
    }
}
