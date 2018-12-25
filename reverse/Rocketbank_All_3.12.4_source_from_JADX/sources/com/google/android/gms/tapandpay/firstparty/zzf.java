package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzf extends zza {
    public static final Creator<zzf> CREATOR = new zzg();
    final int zzaiI;
    CardInfo[] zzbNW;

    zzf(int i, CardInfo[] cardInfoArr) {
        this.zzaiI = i;
        this.zzbNW = cardInfoArr;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }
}
