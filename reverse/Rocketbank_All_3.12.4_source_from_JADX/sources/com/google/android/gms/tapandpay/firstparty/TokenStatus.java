package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public final class TokenStatus extends zza implements ReflectedParcelable {
    public static final Creator<TokenStatus> CREATOR = new zzw();
    final int zzaiI;
    zzu zzbOG;
    int zzbOH;
    boolean zzbOI;

    TokenStatus(int i, zzu zzu, int i2, boolean z) {
        this.zzaiI = i;
        this.zzbOG = zzu;
        this.zzbOH = i2;
        this.zzbOI = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TokenStatus) {
            TokenStatus tokenStatus = (TokenStatus) obj;
            if (zzaa.equal(this.zzbOG, tokenStatus.zzbOG) && this.zzbOH == tokenStatus.zzbOH && this.zzbOI == tokenStatus.zzbOI) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return zzaa.hashCode(this.zzbOG, Integer.valueOf(this.zzbOH), Boolean.valueOf(this.zzbOI));
    }

    public final String toString() {
        return zzaa.zzv(this).zzg("tokenReference", this.zzbOG).zzg("tokenState", Integer.valueOf(this.zzbOH)).zzg("isSelected", Boolean.valueOf(this.zzbOI)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzw.zza(this, parcel, i);
    }
}
