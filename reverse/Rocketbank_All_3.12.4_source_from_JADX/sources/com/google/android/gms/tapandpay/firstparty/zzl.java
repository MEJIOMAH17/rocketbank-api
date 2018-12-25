package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public class zzl extends zza {
    public static final Creator<zzl> CREATOR = new zzm();
    final int zzaiI;
    int zzbNZ;
    int zzbOa;

    zzl(int i, int i2, int i3) {
        this.zzaiI = i;
        this.zzbNZ = i2;
        this.zzbOa = i3;
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzl) {
            zzl zzl = (zzl) obj;
            if (this.zzbNZ == zzl.zzbNZ && this.zzbOa == zzl.zzbOa) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzbNZ), Integer.valueOf(this.zzbOa));
    }

    public String toString() {
        return zzaa.zzv(this).zzg("cdcvmExpirtaionInSecs", Integer.valueOf(this.zzbNZ)).zzg("cdcvmTransactionLimit", Integer.valueOf(this.zzbOa)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }
}
