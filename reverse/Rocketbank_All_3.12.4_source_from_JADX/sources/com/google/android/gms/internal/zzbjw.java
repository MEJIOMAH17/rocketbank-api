package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbjw extends zza {
    public static final Creator<zzbjw> CREATOR = new zzbjx();
    final int zzaiI;
    String zzbNy;

    zzbjw(int i, String str) {
        this.zzaiI = i;
        this.zzbNy = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbjx.zza(this, parcel, i);
    }
}
