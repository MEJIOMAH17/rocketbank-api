package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;

public final class zzatg extends zza {
    public static final Creator<zzatg> CREATOR = new zzath();
    public String packageName;
    public final int versionCode;
    public String zzbqW;
    public zzauq zzbqX;
    public long zzbqY;
    public boolean zzbqZ;
    public String zzbra;
    public zzatq zzbrb;
    public long zzbrc;
    public zzatq zzbrd;
    public long zzbre;
    public zzatq zzbrf;

    zzatg(int i, String str, String str2, zzauq zzauq, long j, boolean z, String str3, zzatq zzatq, long j2, zzatq zzatq2, long j3, zzatq zzatq3) {
        this.versionCode = i;
        this.packageName = str;
        this.zzbqW = str2;
        this.zzbqX = zzauq;
        this.zzbqY = j;
        this.zzbqZ = z;
        this.zzbra = str3;
        this.zzbrb = zzatq;
        this.zzbrc = j2;
        this.zzbrd = zzatq2;
        this.zzbre = j3;
        this.zzbrf = zzatq3;
    }

    zzatg(zzatg zzatg) {
        this.versionCode = 1;
        zzac.zzw(zzatg);
        this.packageName = zzatg.packageName;
        this.zzbqW = zzatg.zzbqW;
        this.zzbqX = zzatg.zzbqX;
        this.zzbqY = zzatg.zzbqY;
        this.zzbqZ = zzatg.zzbqZ;
        this.zzbra = zzatg.zzbra;
        this.zzbrb = zzatg.zzbrb;
        this.zzbrc = zzatg.zzbrc;
        this.zzbrd = zzatg.zzbrd;
        this.zzbre = zzatg.zzbre;
        this.zzbrf = zzatg.zzbrf;
    }

    zzatg(String str, String str2, zzauq zzauq, long j, boolean z, String str3, zzatq zzatq, long j2, zzatq zzatq2, long j3, zzatq zzatq3) {
        this.versionCode = 1;
        this.packageName = str;
        this.zzbqW = str2;
        this.zzbqX = zzauq;
        this.zzbqY = j;
        this.zzbqZ = z;
        this.zzbra = str3;
        this.zzbrb = zzatq;
        this.zzbrc = j2;
        this.zzbrd = zzatq2;
        this.zzbre = j3;
        this.zzbrf = zzatq3;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzath.zza(this, parcel, i);
    }
}
