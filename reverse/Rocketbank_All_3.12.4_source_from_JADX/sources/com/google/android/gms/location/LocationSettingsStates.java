package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class LocationSettingsStates extends zza {
    public static final Creator<LocationSettingsStates> CREATOR = new zzs();
    private final boolean zzbki;
    private final boolean zzbkj;
    private final boolean zzbkk;
    private final boolean zzbkl;
    private final boolean zzbkm;
    private final boolean zzbkn;

    public LocationSettingsStates(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.zzbki = z;
        this.zzbkj = z2;
        this.zzbkk = z3;
        this.zzbkl = z4;
        this.zzbkm = z5;
        this.zzbkn = z6;
    }

    public static LocationSettingsStates fromIntent(Intent intent) {
        return (LocationSettingsStates) zzd.zza(intent, "com.google.android.gms.location.LOCATION_SETTINGS_STATES", CREATOR);
    }

    public final boolean isBlePresent() {
        return this.zzbkn;
    }

    public final boolean isBleUsable() {
        return this.zzbkk;
    }

    public final boolean isGpsPresent() {
        return this.zzbkl;
    }

    public final boolean isGpsUsable() {
        return this.zzbki;
    }

    public final boolean isLocationPresent() {
        if (!this.zzbkl) {
            if (!this.zzbkm) {
                return false;
            }
        }
        return true;
    }

    public final boolean isLocationUsable() {
        if (!this.zzbki) {
            if (!this.zzbkj) {
                return false;
            }
        }
        return true;
    }

    public final boolean isNetworkLocationPresent() {
        return this.zzbkm;
    }

    public final boolean isNetworkLocationUsable() {
        return this.zzbkj;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzs.zza(this, parcel, i);
    }
}
