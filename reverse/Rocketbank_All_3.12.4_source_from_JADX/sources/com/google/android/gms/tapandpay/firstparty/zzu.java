package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public final class zzu extends zza {
    public static final Creator<zzu> CREATOR = new zzv();
    final int zzaiI;
    String zzbOE;
    int zzbOF;

    zzu(int i, String str, int i2) {
        this.zzaiI = i;
        this.zzbOE = str;
        this.zzbOF = i2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzu) {
            zzu zzu = (zzu) obj;
            if (zzaa.equal(this.zzbOE, zzu.zzbOE) && this.zzbOF == zzu.zzbOF) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return zzaa.hashCode(this.zzbOE, Integer.valueOf(this.zzbOF));
    }

    public final String toString() {
        return zzaa.zzv(this).zzg("tokenReferenceId", this.zzbOE).zzg("tokenProvider", Integer.valueOf(this.zzbOF)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzv.zza(this, parcel, i);
    }
}
