package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class zzarz extends zza implements Result {
    public static final Creator<zzarz> CREATOR = new zzasa();
    public static final zzarz zzbkA = new zzarz(Status.zzazx);
    private final Status zzair;

    public zzarz(Status status) {
        this.zzair = status;
    }

    public final Status getStatus() {
        return this.zzair;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzasa.zza(this, parcel, i);
    }
}
