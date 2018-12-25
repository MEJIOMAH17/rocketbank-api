package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzbka extends zza {
    public static final Creator<zzbka> CREATOR = new zzbkb();
    final int zzaiI;
    final String zzaiu;

    zzbka(int i, String str) {
        this.zzaiI = i;
        this.zzaiu = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkb.zza(this, parcel, i);
    }
}
