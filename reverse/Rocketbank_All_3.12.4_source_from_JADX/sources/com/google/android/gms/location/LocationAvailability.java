package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public final class LocationAvailability extends zza implements ReflectedParcelable {
    public static final Creator<LocationAvailability> CREATOR = new zzl();
    int zzbjP;
    int zzbjQ;
    long zzbjR;
    int zzbjS;

    LocationAvailability(int i, int i2, int i3, long j) {
        this.zzbjS = i;
        this.zzbjP = i2;
        this.zzbjQ = i3;
        this.zzbjR = j;
    }

    public static LocationAvailability extractLocationAvailability(Intent intent) {
        return !hasLocationAvailability(intent) ? null : (LocationAvailability) intent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public static boolean hasLocationAvailability(Intent intent) {
        return intent == null ? false : intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LocationAvailability)) {
            return false;
        }
        LocationAvailability locationAvailability = (LocationAvailability) obj;
        return this.zzbjS == locationAvailability.zzbjS && this.zzbjP == locationAvailability.zzbjP && this.zzbjQ == locationAvailability.zzbjQ && this.zzbjR == locationAvailability.zzbjR;
    }

    public final int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzbjS), Integer.valueOf(this.zzbjP), Integer.valueOf(this.zzbjQ), Long.valueOf(this.zzbjR));
    }

    public final boolean isLocationAvailable() {
        return this.zzbjS < 1000;
    }

    public final String toString() {
        boolean isLocationAvailable = isLocationAvailable();
        StringBuilder stringBuilder = new StringBuilder(48);
        stringBuilder.append("LocationAvailability[isLocationAvailable: ");
        stringBuilder.append(isLocationAvailable);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }
}
