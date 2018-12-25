package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;

public final class Scope extends zza implements ReflectedParcelable {
    public static final Creator<Scope> CREATOR = new zzg();
    final int zzaiI;
    private final String zzazw;

    Scope(int i, String str) {
        zzac.zzh(str, "scopeUri must not be null or empty");
        this.zzaiI = i;
        this.zzazw = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public final boolean equals(Object obj) {
        return this == obj ? true : !(obj instanceof Scope) ? false : this.zzazw.equals(((Scope) obj).zzazw);
    }

    public final int hashCode() {
        return this.zzazw.hashCode();
    }

    public final String toString() {
        return this.zzazw;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    public final String zzvt() {
        return this.zzazw;
    }
}
