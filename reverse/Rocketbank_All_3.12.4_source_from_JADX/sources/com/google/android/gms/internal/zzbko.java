package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.tapandpay.firstparty.zzx;

public final class zzbko extends zza {
    public static final Creator<zzbko> CREATOR = new zzbkp();
    final int zzaiI;
    final String zzaiu;
    final String zzbPn;
    final zzx zzbPo;

    zzbko(int i, String str, String str2, zzx zzx) {
        this.zzaiI = i;
        this.zzaiu = str;
        this.zzbPn = str2;
        this.zzbPo = zzx;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzbkp.zza(this, parcel, i);
    }
}
