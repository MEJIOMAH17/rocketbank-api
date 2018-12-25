package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbkk extends zza {
    public static final Creator<zzbkk> CREATOR = new zzbkl();
    final int zzaiI;

    public zzbkk() {
        this(1);
    }

    zzbkk(int i) {
        this.zzaiI = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkl.zza(this, parcel, i);
    }
}
