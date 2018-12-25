package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbjr extends zza {
    public static final Creator<zzbjr> CREATOR = new zzbjs();
    final int zzaiI;
    String zzbNy;

    zzbjr(int i, String str) {
        this.zzaiI = i;
        this.zzbNy = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbjs.zza(this, parcel, i);
    }
}
