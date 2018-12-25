package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbki extends zza {
    public static final Creator<zzbki> CREATOR = new zzbkj();
    final int zzaiI;

    public zzbki() {
        this(1);
    }

    zzbki(int i) {
        this.zzaiI = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkj.zza(this, parcel, i);
    }
}
