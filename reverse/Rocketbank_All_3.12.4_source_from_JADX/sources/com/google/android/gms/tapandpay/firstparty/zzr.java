package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzr extends zza {
    public static final Creator<zzr> CREATOR = new zzs();
    final int zzaiI;
    final String zzbOA;
    final String zzbOB;
    final String zzbOw;
    final byte[] zzbOx;
    final int zzbOy;
    final int zzbOz;

    public zzr(int i, String str, byte[] bArr, int i2, int i3, String str2, String str3) {
        this.zzaiI = i;
        this.zzbOw = str;
        this.zzbOx = bArr;
        this.zzbOy = i2;
        this.zzbOz = i3;
        this.zzbOA = str2;
        this.zzbOB = str3;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzs.zza(this, parcel, i);
    }
}
