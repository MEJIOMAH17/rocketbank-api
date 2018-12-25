package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzad;

public class zzbau extends zza {
    public static final Creator<zzbau> CREATOR = new zzbav();
    final int zzaiI;
    final zzad zzbEw;

    zzbau(int i, zzad zzad) {
        this.zzaiI = i;
        this.zzbEw = zzad;
    }

    public zzbau(zzad zzad) {
        this(1, zzad);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbav.zza(this, parcel, i);
    }

    public zzad zzPV() {
        return this.zzbEw;
    }
}
