package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbke extends zza {
    public static final Creator<zzbke> CREATOR = new zzbkf();
    final int versionCode;

    public zzbke() {
        this(1);
    }

    zzbke(int i) {
        this.versionCode = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkf.zza(this, parcel, i);
    }
}
