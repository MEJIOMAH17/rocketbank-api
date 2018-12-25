package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbkm extends zza {
    public static final Creator<zzbkm> CREATOR = new zzbkn();
    final int zzaiI;

    public zzbkm() {
        this(1);
    }

    zzbkm(int i) {
        this.zzaiI = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkn.zza(this, parcel, i);
    }
}
