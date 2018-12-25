package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public final class zzz extends zza {
    public static final Creator<zzz> CREATOR = new zzaa();
    final int zzaiI;
    int zzbOQ;
    int zzbOR;

    zzz(int i, int i2, int i3) {
        this.zzaiI = i;
        this.zzbOQ = i2;
        this.zzbOR = i3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzz) {
            zzz zzz = (zzz) obj;
            if (this.zzbOQ == zzz.zzbOQ && this.zzbOR == zzz.zzbOR) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzbOQ), Integer.valueOf(this.zzbOR));
    }

    public final String toString() {
        return zzaa.zzv(this).zzg("transactionDelivery", Integer.valueOf(this.zzbOQ)).zzg("transactionLimit", Integer.valueOf(this.zzbOR)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzaa.zza(this, parcel, i);
    }
}
