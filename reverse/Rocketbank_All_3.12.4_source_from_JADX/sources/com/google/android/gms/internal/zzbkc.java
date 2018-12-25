package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbkc extends zza {
    public static final Creator<zzbkc> CREATOR = new zzbkd();
    final int zzaiI;

    public zzbkc() {
        this(1);
    }

    zzbkc(int i) {
        this.zzaiI = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkd.zza(this, parcel, i);
    }
}
