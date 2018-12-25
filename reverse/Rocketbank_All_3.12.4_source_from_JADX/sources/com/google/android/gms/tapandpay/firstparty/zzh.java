package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzh extends zza {
    public static final Creator<zzh> CREATOR = new zzi();
    final int zzaiI;
    AccountInfo zzbNV;
    CardInfo[] zzbNW;

    zzh(int i, CardInfo[] cardInfoArr, AccountInfo accountInfo) {
        this.zzaiI = i;
        this.zzbNW = cardInfoArr;
        this.zzbNV = accountInfo;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
