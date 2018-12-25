package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public class zzarw extends zza {
    public static final Creator<zzarw> CREATOR = new zzarx();
    public final String packageName;
    public final int uid;

    public zzarw(int i, String str) {
        this.uid = i;
        this.packageName = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof zzarw)) {
            return false;
        }
        zzarw zzarw = (zzarw) obj;
        return zzarw.uid == this.uid && zzaa.equal(zzarw.packageName, this.packageName);
    }

    public int hashCode() {
        return this.uid;
    }

    public String toString() {
        return String.format("%d:%s", new Object[]{Integer.valueOf(this.uid), this.packageName});
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzarx.zza(this, parcel, i);
    }
}
