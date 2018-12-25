package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzbla extends zza {
    public static final Creator<zzbla> CREATOR = new zzblb();
    final int zzaiI;
    String zzbNy;

    zzbla(int i, String str) {
        this.zzaiI = i;
        this.zzbNy = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzblb.zza(this, parcel, i);
    }
}
