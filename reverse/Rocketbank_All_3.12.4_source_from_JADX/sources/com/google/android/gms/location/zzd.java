package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public class zzd extends zza {
    public static final Creator<zzd> CREATOR = new zze();
    private final int zzaSu;
    private final int zzbjt;

    zzd(int i, int i2) {
        this.zzaSu = i;
        this.zzbjt = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzd)) {
            return false;
        }
        zzd zzd = (zzd) obj;
        return this.zzaSu == zzd.zzaSu && this.zzbjt == zzd.zzbjt;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzaSu), Integer.valueOf(this.zzbjt));
    }

    public String toString() {
        int i = this.zzaSu;
        int i2 = this.zzbjt;
        StringBuilder stringBuilder = new StringBuilder(75);
        stringBuilder.append("ActivityTransition [mActivityType=");
        stringBuilder.append(i);
        stringBuilder.append(", mTransitionType=");
        stringBuilder.append(i2);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public int zzBW() {
        return this.zzaSu;
    }

    public int zzIc() {
        return this.zzbjt;
    }
}
