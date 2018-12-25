package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class LocationRequest extends zza implements ReflectedParcelable {
    public static final Creator<LocationRequest> CREATOR = new zzm();
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
    public static final int PRIORITY_HIGH_ACCURACY = 100;
    public static final int PRIORITY_LOW_POWER = 104;
    public static final int PRIORITY_NO_POWER = 105;
    int mPriority;
    boolean zzaWy;
    long zzbjD;
    long zzbjT;
    long zzbjU;
    int zzbjV;
    float zzbjW;
    long zzbjX;

    public LocationRequest() {
        this.mPriority = 102;
        this.zzbjT = 3600000;
        this.zzbjU = 600000;
        this.zzaWy = false;
        this.zzbjD = Long.MAX_VALUE;
        this.zzbjV = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.zzbjW = BitmapDescriptorFactory.HUE_RED;
        this.zzbjX = 0;
    }

    LocationRequest(int i, long j, long j2, boolean z, long j3, int i2, float f, long j4) {
        this.mPriority = i;
        this.zzbjT = j;
        this.zzbjU = j2;
        this.zzaWy = z;
        this.zzbjD = j3;
        this.zzbjV = i2;
        this.zzbjW = f;
        this.zzbjX = j4;
    }

    public static LocationRequest create() {
        return new LocationRequest();
    }

    private static void zzV(long j) {
        if (j < 0) {
            StringBuilder stringBuilder = new StringBuilder(38);
            stringBuilder.append("invalid interval: ");
            stringBuilder.append(j);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    private static void zze(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            StringBuilder stringBuilder = new StringBuilder(37);
            stringBuilder.append("invalid displacement: ");
            stringBuilder.append(f);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    private static void zzkk(int i) {
        switch (i) {
            case 100:
            case 102:
            case 104:
            case 105:
                return;
            default:
                StringBuilder stringBuilder = new StringBuilder(28);
                stringBuilder.append("invalid quality: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public static String zzkl(int i) {
        switch (i) {
            case 100:
                return "PRIORITY_HIGH_ACCURACY";
            case 102:
                return "PRIORITY_BALANCED_POWER_ACCURACY";
            case 104:
                return "PRIORITY_LOW_POWER";
            case 105:
                return "PRIORITY_NO_POWER";
            default:
                return "???";
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        return this.mPriority == locationRequest.mPriority && this.zzbjT == locationRequest.zzbjT && this.zzbjU == locationRequest.zzbjU && this.zzaWy == locationRequest.zzaWy && this.zzbjD == locationRequest.zzbjD && this.zzbjV == locationRequest.zzbjV && this.zzbjW == locationRequest.zzbjW && getMaxWaitTime() == locationRequest.getMaxWaitTime();
    }

    public final long getExpirationTime() {
        return this.zzbjD;
    }

    public final long getFastestInterval() {
        return this.zzbjU;
    }

    public final long getInterval() {
        return this.zzbjT;
    }

    public final long getMaxWaitTime() {
        long j = this.zzbjX;
        return j < this.zzbjT ? this.zzbjT : j;
    }

    public final int getNumUpdates() {
        return this.zzbjV;
    }

    public final int getPriority() {
        return this.mPriority;
    }

    public final float getSmallestDisplacement() {
        return this.zzbjW;
    }

    public final int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.mPriority), Long.valueOf(this.zzbjT), Float.valueOf(this.zzbjW), Long.valueOf(this.zzbjX));
    }

    public final LocationRequest setExpirationDuration(long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = Long.MAX_VALUE;
        if (j <= Long.MAX_VALUE - elapsedRealtime) {
            j2 = j + elapsedRealtime;
        }
        this.zzbjD = j2;
        if (this.zzbjD < 0) {
            this.zzbjD = 0;
        }
        return this;
    }

    public final LocationRequest setExpirationTime(long j) {
        this.zzbjD = j;
        if (this.zzbjD < 0) {
            this.zzbjD = 0;
        }
        return this;
    }

    public final LocationRequest setFastestInterval(long j) {
        zzV(j);
        this.zzaWy = true;
        this.zzbjU = j;
        return this;
    }

    public final LocationRequest setInterval(long j) {
        zzV(j);
        this.zzbjT = j;
        if (!this.zzaWy) {
            this.zzbjU = (long) (((double) this.zzbjT) / 6.0d);
        }
        return this;
    }

    public final LocationRequest setMaxWaitTime(long j) {
        zzV(j);
        this.zzbjX = j;
        return this;
    }

    public final LocationRequest setNumUpdates(int i) {
        if (i <= 0) {
            StringBuilder stringBuilder = new StringBuilder(31);
            stringBuilder.append("invalid numUpdates: ");
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        this.zzbjV = i;
        return this;
    }

    public final LocationRequest setPriority(int i) {
        zzkk(i);
        this.mPriority = i;
        return this;
    }

    public final LocationRequest setSmallestDisplacement(float f) {
        zze(f);
        this.zzbjW = f;
        return this;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Request[");
        stringBuilder.append(zzkl(this.mPriority));
        if (this.mPriority != 105) {
            stringBuilder.append(" requested=");
            stringBuilder.append(this.zzbjT);
            stringBuilder.append("ms");
        }
        stringBuilder.append(" fastest=");
        stringBuilder.append(this.zzbjU);
        stringBuilder.append("ms");
        if (this.zzbjX > this.zzbjT) {
            stringBuilder.append(" maxWait=");
            stringBuilder.append(this.zzbjX);
            stringBuilder.append("ms");
        }
        if (this.zzbjW > BitmapDescriptorFactory.HUE_RED) {
            stringBuilder.append(" smallestDisplacement=");
            stringBuilder.append(this.zzbjW);
            stringBuilder.append("m");
        }
        if (this.zzbjD != Long.MAX_VALUE) {
            long elapsedRealtime = this.zzbjD - SystemClock.elapsedRealtime();
            stringBuilder.append(" expireIn=");
            stringBuilder.append(elapsedRealtime);
            stringBuilder.append("ms");
        }
        if (this.zzbjV != ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
            stringBuilder.append(" num=");
            stringBuilder.append(this.zzbjV);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }
}
