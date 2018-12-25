package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;

public final class zzatq extends zza {
    public static final Creator<zzatq> CREATOR = new zzatr();
    public final String name;
    public final String zzbqW;
    public final zzato zzbrH;
    public final long zzbrI;

    zzatq(zzatq zzatq, long j) {
        zzac.zzw(zzatq);
        this.name = zzatq.name;
        this.zzbrH = zzatq.zzbrH;
        this.zzbqW = zzatq.zzbqW;
        this.zzbrI = j;
    }

    public zzatq(String str, zzato zzato, String str2, long j) {
        this.name = str;
        this.zzbrH = zzato;
        this.zzbqW = str2;
        this.zzbrI = j;
    }

    public final String toString() {
        String str = this.zzbqW;
        String str2 = this.name;
        String valueOf = String.valueOf(this.zzbrH);
        StringBuilder stringBuilder = new StringBuilder(((21 + String.valueOf(str).length()) + String.valueOf(str2).length()) + String.valueOf(valueOf).length());
        stringBuilder.append("origin=");
        stringBuilder.append(str);
        stringBuilder.append(",name=");
        stringBuilder.append(str2);
        stringBuilder.append(",params=");
        stringBuilder.append(valueOf);
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzatr.zza(this, parcel, i);
    }
}
