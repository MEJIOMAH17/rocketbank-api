package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbkw extends zza {
    public static final Creator<zzbkw> CREATOR = new zzbkx();
    final int zzaiI;
    String zzbNy;

    zzbkw(int i, String str) {
        this.zzaiI = i;
        this.zzbNy = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkx.zza(this, parcel, i);
    }
}
