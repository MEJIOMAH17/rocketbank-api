package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.WorkSource;

public class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Creator<zza> CREATOR = new zzb();
    private String mTag;
    private String zzaiu;
    private long zzbjj;
    private boolean zzbjk;
    private WorkSource zzbjl;
    private int[] zzbjm;
    private boolean zzbjn;
    private final long zzbjo;

    zza(long j, boolean z, WorkSource workSource, String str, int[] iArr, boolean z2, String str2, long j2) {
        this.zzbjj = j;
        this.zzbjk = z;
        this.zzbjl = workSource;
        this.mTag = str;
        this.zzbjm = iArr;
        this.zzbjn = z2;
        this.zzaiu = str2;
        this.zzbjo = j2;
    }

    public String getAccountName() {
        return this.zzaiu;
    }

    public long getIntervalMillis() {
        return this.zzbjj;
    }

    public String getTag() {
        return this.mTag;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public boolean zzHX() {
        return this.zzbjk;
    }

    public WorkSource zzHY() {
        return this.zzbjl;
    }

    public int[] zzHZ() {
        return this.zzbjm;
    }

    public boolean zzIa() {
        return this.zzbjn;
    }

    public long zzIb() {
        return this.zzbjo;
    }
}
