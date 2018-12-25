package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.List;

public final class WakeLockEvent extends StatsEvent {
    public static final Creator<WakeLockEvent> CREATOR = new zzd();
    private final long mTimeout;
    private final long zzaHD;
    private int zzaHE;
    private final String zzaHF;
    private final String zzaHG;
    private final String zzaHH;
    private final int zzaHI;
    private final List<String> zzaHJ;
    private final String zzaHK;
    private final long zzaHL;
    private int zzaHM;
    private final String zzaHN;
    private final float zzaHO;
    private long zzaHP;
    final int zzaiI;

    WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5) {
        this.zzaiI = i;
        this.zzaHD = j;
        this.zzaHE = i2;
        this.zzaHF = str;
        this.zzaHG = str3;
        this.zzaHH = str5;
        this.zzaHI = i3;
        this.zzaHP = -1;
        this.zzaHJ = list;
        this.zzaHK = str2;
        this.zzaHL = j2;
        this.zzaHM = i4;
        this.zzaHN = str4;
        this.zzaHO = f;
        this.mTimeout = j3;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3, String str5) {
        this(2, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3, str5);
    }

    public final int getEventType() {
        return this.zzaHE;
    }

    public final long getTimeMillis() {
        return this.zzaHD;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public final long zzyK() {
        return this.zzaHP;
    }

    public final String zzyL() {
        String valueOf = String.valueOf("\t");
        String valueOf2 = String.valueOf(zzyM());
        String valueOf3 = String.valueOf("\t");
        int zzyP = zzyP();
        String valueOf4 = String.valueOf("\t");
        String join = zzyQ() == null ? "" : TextUtils.join(",", zzyQ());
        String valueOf5 = String.valueOf("\t");
        int zzyT = zzyT();
        String valueOf6 = String.valueOf("\t");
        String zzyN = zzyN() == null ? "" : zzyN();
        String valueOf7 = String.valueOf("\t");
        String zzyU = zzyU() == null ? "" : zzyU();
        String valueOf8 = String.valueOf("\t");
        float zzyV = zzyV();
        String valueOf9 = String.valueOf("\t");
        String zzyO = zzyO() == null ? "" : zzyO();
        float f = zzyV;
        String str = zzyO;
        StringBuilder stringBuilder = new StringBuilder(((((((((((((37 + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()) + String.valueOf(valueOf4).length()) + String.valueOf(join).length()) + String.valueOf(valueOf5).length()) + String.valueOf(valueOf6).length()) + String.valueOf(zzyN).length()) + String.valueOf(valueOf7).length()) + String.valueOf(zzyU).length()) + String.valueOf(valueOf8).length()) + String.valueOf(valueOf9).length()) + String.valueOf(zzyO).length());
        stringBuilder.append(valueOf);
        stringBuilder.append(valueOf2);
        stringBuilder.append(valueOf3);
        stringBuilder.append(zzyP);
        stringBuilder.append(valueOf4);
        stringBuilder.append(join);
        stringBuilder.append(valueOf5);
        stringBuilder.append(zzyT);
        stringBuilder.append(valueOf6);
        stringBuilder.append(zzyN);
        stringBuilder.append(valueOf7);
        stringBuilder.append(zzyU);
        stringBuilder.append(valueOf8);
        stringBuilder.append(f);
        stringBuilder.append(valueOf9);
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    public final String zzyM() {
        return this.zzaHF;
    }

    public final String zzyN() {
        return this.zzaHG;
    }

    public final String zzyO() {
        return this.zzaHH;
    }

    public final int zzyP() {
        return this.zzaHI;
    }

    public final List<String> zzyQ() {
        return this.zzaHJ;
    }

    public final String zzyR() {
        return this.zzaHK;
    }

    public final long zzyS() {
        return this.zzaHL;
    }

    public final int zzyT() {
        return this.zzaHM;
    }

    public final String zzyU() {
        return this.zzaHN;
    }

    public final float zzyV() {
        return this.zzaHO;
    }

    public final long zzyW() {
        return this.mTimeout;
    }
}
