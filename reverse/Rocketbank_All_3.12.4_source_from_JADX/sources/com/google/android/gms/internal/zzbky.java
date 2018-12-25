package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbky extends zza {
    public static final Creator<zzbky> CREATOR = new zzbkz();
    final int zzaiI;

    public zzbky() {
        this(1);
    }

    zzbky(int i) {
        this.zzaiI = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkz.zza(this, parcel, i);
    }
}
