package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbjp extends zza {
    public static final Creator<zzbjp> CREATOR = new zzbjq();
    final int zzaiI;
    boolean zzbPl;

    zzbjp(int i, boolean z) {
        this.zzaiI = i;
        this.zzbPl = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbjq.zza(this, parcel, i);
    }
}
