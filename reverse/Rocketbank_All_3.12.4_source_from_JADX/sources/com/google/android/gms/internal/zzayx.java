package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;

public class zzayx extends zza implements Comparable<zzayx> {
    public static final Creator<zzayx> CREATOR = new zzayy();
    public final int zzbBB;
    public final zzayz[] zzbBC;
    public final String[] zzbBD;
    public final Map<String, zzayz> zzbBE = new TreeMap();

    public zzayx(int i, zzayz[] zzayzArr, String[] strArr) {
        this.zzbBB = i;
        this.zzbBC = zzayzArr;
        for (zzayz zzayz : zzayzArr) {
            this.zzbBE.put(zzayz.name, zzayz);
        }
        this.zzbBD = strArr;
        if (this.zzbBD != null) {
            Arrays.sort(this.zzbBD);
        }
    }

    public /* synthetic */ int compareTo(Object obj) {
        return zza((zzayx) obj);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzayx)) {
            zzayx zzayx = (zzayx) obj;
            if (this.zzbBB == zzayx.zzbBB && zzaa.equal(this.zzbBE, zzayx.zzbBE) && Arrays.equals(this.zzbBD, zzayx.zzbBD)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Configuration(");
        stringBuilder.append(this.zzbBB);
        stringBuilder.append(", ");
        stringBuilder.append("(");
        for (zzayz append : this.zzbBE.values()) {
            stringBuilder.append(append);
            stringBuilder.append(", ");
        }
        stringBuilder.append(")");
        stringBuilder.append(", ");
        stringBuilder.append("(");
        if (this.zzbBD != null) {
            for (String append2 : this.zzbBD) {
                stringBuilder.append(append2);
                stringBuilder.append(", ");
            }
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(")");
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzayy.zza(this, parcel, i);
    }

    public int zza(zzayx zzayx) {
        return this.zzbBB - zzayx.zzbBB;
    }
}
