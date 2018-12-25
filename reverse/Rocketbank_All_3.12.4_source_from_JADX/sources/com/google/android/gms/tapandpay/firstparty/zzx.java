package com.google.android.gms.tapandpay.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import java.util.List;

public class zzx extends zza {
    public static final Creator<zzx> CREATOR = new zzy();
    final int zzaiI;
    long zzbOJ;
    @Deprecated
    String zzbOK;
    long zzbOL;
    String zzbOM;
    int zzbON;
    List<Integer> zzbOO;
    int zzbOP;

    zzx(int i, long j, String str, long j2, String str2, int i2, List<Integer> list, int i3) {
        this.zzaiI = i;
        this.zzbOJ = j;
        this.zzbOK = str;
        this.zzbOL = j2;
        this.zzbOM = str2;
        this.zzbON = i2;
        this.zzbOO = list;
        this.zzbOP = i3;
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzx) {
            zzx zzx = (zzx) obj;
            if (zzaa.equal(Long.valueOf(this.zzbOJ), Long.valueOf(zzx.zzbOJ)) && zzaa.equal(this.zzbOK, zzx.zzbOK) && zzaa.equal(Long.valueOf(this.zzbOL), Long.valueOf(zzx.zzbOL)) && zzaa.equal(this.zzbOM, zzx.zzbOM) && zzaa.equal(Integer.valueOf(this.zzbON), Integer.valueOf(zzx.zzbON)) && zzaa.equal(this.zzbOO, zzx.zzbOO) && zzaa.equal(Integer.valueOf(this.zzbOP), Integer.valueOf(zzx.zzbOP))) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return zzaa.hashCode(Long.valueOf(this.zzbOJ), this.zzbOK, Long.valueOf(this.zzbOL), this.zzbOM, Integer.valueOf(this.zzbON), this.zzbOO, Integer.valueOf(this.zzbOP));
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzy.zza(this, parcel, i);
    }
}
