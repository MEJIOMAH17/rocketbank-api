package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.tapandpay.firstparty.zzt;

public final class zzbkq extends zza {
    public static final Creator<zzbkq> CREATOR = new zzbkr();
    final int zzaiI;
    final zzt zzbPp;

    zzbkq(int i, zzt zzt) {
        this.zzaiI = i;
        this.zzbPp = zzt;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkr.zza(this, parcel, i);
    }
}
