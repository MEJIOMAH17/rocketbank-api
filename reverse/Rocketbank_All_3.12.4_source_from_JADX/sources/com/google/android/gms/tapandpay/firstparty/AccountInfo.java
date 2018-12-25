package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public final class AccountInfo extends zza implements ReflectedParcelable {
    public static final Creator<AccountInfo> CREATOR = new zza();
    String zzaJT;
    final int zzaiI;
    String zzbNx;

    AccountInfo(int i, String str, String str2) {
        this.zzaiI = i;
        this.zzbNx = str;
        this.zzaJT = str2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AccountInfo) {
            AccountInfo accountInfo = (AccountInfo) obj;
            if (zzaa.equal(this.zzbNx, accountInfo.zzbNx) && zzaa.equal(this.zzaJT, accountInfo.zzaJT)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return zzaa.hashCode(this.zzbNx, this.zzaJT);
    }

    public final String toString() {
        return zzaa.zzv(this).zzg("accountId", this.zzbNx).zzg("accountName", this.zzaJT).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
