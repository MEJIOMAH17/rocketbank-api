package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class LocationSettingsResult extends zza implements Result {
    public static final Creator<LocationSettingsResult> CREATOR = new zzr();
    private final Status zzair;
    private final LocationSettingsStates zzbkh;

    public LocationSettingsResult(Status status) {
        this(status, null);
    }

    public LocationSettingsResult(Status status, LocationSettingsStates locationSettingsStates) {
        this.zzair = status;
        this.zzbkh = locationSettingsStates;
    }

    public final LocationSettingsStates getLocationSettingsStates() {
        return this.zzbkh;
    }

    public final Status getStatus() {
        return this.zzair;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzr.zza(this, parcel, i);
    }
}
