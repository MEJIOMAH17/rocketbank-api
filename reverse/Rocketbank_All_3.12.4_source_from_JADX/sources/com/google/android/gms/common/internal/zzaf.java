package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zza;

public class zzaf extends zza {
    public static final Creator<zzaf> CREATOR = new zzag();
    private boolean zzaBx;
    IBinder zzaEW;
    private ConnectionResult zzaGE;
    private boolean zzaGF;
    final int zzaiI;

    zzaf(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.zzaiI = i;
        this.zzaEW = iBinder;
        this.zzaGE = connectionResult;
        this.zzaBx = z;
        this.zzaGF = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaf)) {
            return false;
        }
        zzaf zzaf = (zzaf) obj;
        return this.zzaGE.equals(zzaf.zzaGE) && zzyg().equals(zzaf.zzyg());
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzag.zza(this, parcel, i);
    }

    public zzr zzyg() {
        return zzr.zza.zzbr(this.zzaEW);
    }

    public ConnectionResult zzyh() {
        return this.zzaGE;
    }

    public boolean zzyi() {
        return this.zzaBx;
    }

    public boolean zzyj() {
        return this.zzaGF;
    }
}
