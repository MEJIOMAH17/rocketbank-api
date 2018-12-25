package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbku extends zza {
    public static final Creator<zzbku> CREATOR = new zzbkv();
    final int versionCode;
    boolean zzbPq;

    zzbku(int i, boolean z) {
        this.versionCode = i;
        this.zzbPq = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkv.zza(this, parcel, i);
    }
}
