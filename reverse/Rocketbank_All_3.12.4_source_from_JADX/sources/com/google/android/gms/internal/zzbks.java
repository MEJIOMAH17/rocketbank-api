package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbks extends zza {
    public static final Creator<zzbks> CREATOR = new zzbkt();
    String zzaJT;
    final int zzaiI;

    zzbks(int i, String str) {
        this.zzaiI = i;
        this.zzaJT = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkt.zza(this, parcel, i);
    }
}
