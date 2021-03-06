package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;

public class zzatd extends zza {
    public static final Creator<zzatd> CREATOR = new zzate();
    public final String packageName;
    public final String zzbhN;
    public final String zzbqK;
    public final String zzbqL;
    public final long zzbqM;
    public final long zzbqN;
    public final String zzbqO;
    public final boolean zzbqP;
    public final boolean zzbqQ;
    public final long zzbqR;
    public final String zzbqS;
    public final long zzbqT;
    public final long zzbqU;
    public final int zzbqV;

    zzatd(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i) {
        zzac.zzdr(str);
        this.packageName = str;
        r0.zzbqK = TextUtils.isEmpty(str2) ? null : str2;
        r0.zzbhN = str3;
        r0.zzbqR = j;
        r0.zzbqL = str4;
        r0.zzbqM = j2;
        r0.zzbqN = j3;
        r0.zzbqO = str5;
        r0.zzbqP = z;
        r0.zzbqQ = z2;
        r0.zzbqS = str6;
        r0.zzbqT = j4;
        r0.zzbqU = j5;
        r0.zzbqV = i;
    }

    zzatd(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, long j5, int i) {
        this.packageName = str;
        this.zzbqK = str2;
        this.zzbhN = str3;
        this.zzbqR = j3;
        this.zzbqL = str4;
        this.zzbqM = j;
        this.zzbqN = j2;
        this.zzbqO = str5;
        this.zzbqP = z;
        this.zzbqQ = z2;
        this.zzbqS = str6;
        this.zzbqT = j4;
        this.zzbqU = j5;
        this.zzbqV = i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzate.zza(this, parcel, i);
    }
}
