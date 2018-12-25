package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public class zzn extends zza {
    public static final Creator<zzn> CREATOR = new zzo();
    final int zzaiI;
    boolean zzbOb;
    int zzbOc;
    int zzbOd;
    int zzbOe;

    zzn(int i, boolean z, int i2, int i3, int i4) {
        this.zzaiI = i;
        this.zzbOb = z;
        this.zzbOc = i2;
        this.zzbOd = i3;
        this.zzbOe = i4;
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzn) {
            zzn zzn = (zzn) obj;
            if (this.zzbOb == zzn.zzbOb && this.zzbOc == zzn.zzbOc && this.zzbOe == zzn.zzbOe && this.zzbOd == zzn.zzbOd) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return zzaa.hashCode(Boolean.valueOf(this.zzbOb), Integer.valueOf(this.zzbOc), Integer.valueOf(this.zzbOe), Integer.valueOf(this.zzbOd));
    }

    public String toString() {
        return zzaa.zzv(this).zzg("requireCdcvmPassing", Boolean.valueOf(this.zzbOb)).zzg("cdcvmExpirtaionInSecs", Integer.valueOf(this.zzbOc)).zzg("unlockedTapLimit", Integer.valueOf(this.zzbOd)).zzg("cdcvmTapLimit", Integer.valueOf(this.zzbOe)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }
}
