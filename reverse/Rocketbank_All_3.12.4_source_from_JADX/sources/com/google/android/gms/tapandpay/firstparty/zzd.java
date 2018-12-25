package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzd extends zza {
    public static final Creator<zzd> CREATOR = new zze();
    final int zzaiI;
    AccountInfo zzbNV;

    zzd(int i, AccountInfo accountInfo) {
        this.zzaiI = i;
        this.zzbNV = accountInfo;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
