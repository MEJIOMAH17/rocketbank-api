package com.google.android.gms.tapandpay.issuer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class TokenStatus implements SafeParcelable {
    public static final Creator<TokenStatus> CREATOR = new zzb();
    final int versionCode;
    String zzbNM;
    int zzbOH;
    boolean zzbOI;

    TokenStatus(int i, String str, int i2, boolean z) {
        this.versionCode = i;
        this.zzbNM = str;
        this.zzbOH = i2;
        this.zzbOI = z;
    }

    public final int describeContents() {
        return 0;
    }

    public final int getTokenState() {
        return this.zzbOH;
    }

    public final boolean isSelected() {
        return this.zzbOI;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
