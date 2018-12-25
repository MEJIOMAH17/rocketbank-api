package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbjt extends zza {
    public static final Creator<zzbjt> CREATOR = new zzbju();
    long timeoutMillis;
    final int zzaiI;

    zzbjt(int i, long j) {
        this.zzaiI = i;
        this.timeoutMillis = j;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbju.zza(this, parcel, i);
    }
}
