package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbjy extends zza {
    public static final Creator<zzbjy> CREATOR = new zzbjz();
    final int zzaiI;

    public zzbjy() {
        this(1);
    }

    zzbjy(int i) {
        this.zzaiI = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbjz.zza(this, parcel, i);
    }
}
