package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;

public final class LatLngBounds extends zza implements ReflectedParcelable {
    public static final Creator<LatLngBounds> CREATOR = new zze();
    public final LatLng northeast;
    public final LatLng southwest;

    public static final class Builder {
        private double zzbpv = Double.POSITIVE_INFINITY;
        private double zzbpw = Double.NEGATIVE_INFINITY;
        private double zzbpx = Double.NaN;
        private double zzbpy = Double.NaN;

        private boolean zzi(double d) {
            return this.zzbpx <= this.zzbpy ? this.zzbpx <= d && d <= this.zzbpy : this.zzbpx <= d || d <= this.zzbpy;
        }

        public final LatLngBounds build() {
            zzac.zza(Double.isNaN(this.zzbpx) ^ 1, (Object) "no included points");
            return new LatLngBounds(new LatLng(this.zzbpv, this.zzbpx), new LatLng(this.zzbpw, this.zzbpy));
        }

        public final Builder include(LatLng latLng) {
            this.zzbpv = Math.min(this.zzbpv, latLng.latitude);
            this.zzbpw = Math.max(this.zzbpw, latLng.latitude);
            double d = latLng.longitude;
            if (Double.isNaN(this.zzbpx)) {
                this.zzbpx = d;
            } else {
                if (!zzi(d)) {
                    if (LatLngBounds.zzb(this.zzbpx, d) < LatLngBounds.zzc(this.zzbpy, d)) {
                        this.zzbpx = d;
                        return this;
                    }
                }
                return this;
            }
            this.zzbpy = d;
            return this;
        }
    }

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        zzac.zzb((Object) latLng, (Object) "null southwest");
        zzac.zzb((Object) latLng2, (Object) "null northeast");
        zzac.zzb(latLng2.latitude >= latLng.latitude, "southern latitude exceeds northern latitude (%s > %s)", Double.valueOf(latLng.latitude), Double.valueOf(latLng2.latitude));
        this.southwest = latLng;
        this.northeast = latLng2;
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.maps.model.LatLngBounds createFromAttributes(android.content.Context r6, android.util.AttributeSet r7) {
        /*
        r0 = 0;
        if (r6 == 0) goto L_0x008e;
    L_0x0003:
        if (r7 != 0) goto L_0x0006;
    L_0x0005:
        return r0;
    L_0x0006:
        r6 = r6.getResources();
        r1 = com.google.android.gms.C0537R.styleable.MapAttrs;
        r6 = r6.obtainAttributes(r7, r1);
        r7 = com.google.android.gms.C0537R.styleable.MapAttrs_latLngBoundsSouthWestLatitude;
        r7 = r6.hasValue(r7);
        r1 = 0;
        if (r7 == 0) goto L_0x0024;
    L_0x0019:
        r7 = com.google.android.gms.C0537R.styleable.MapAttrs_latLngBoundsSouthWestLatitude;
        r7 = r6.getFloat(r7, r1);
        r7 = java.lang.Float.valueOf(r7);
        goto L_0x0025;
    L_0x0024:
        r7 = r0;
    L_0x0025:
        r2 = com.google.android.gms.C0537R.styleable.MapAttrs_latLngBoundsSouthWestLongitude;
        r2 = r6.hasValue(r2);
        if (r2 == 0) goto L_0x0038;
    L_0x002d:
        r2 = com.google.android.gms.C0537R.styleable.MapAttrs_latLngBoundsSouthWestLongitude;
        r2 = r6.getFloat(r2, r1);
        r2 = java.lang.Float.valueOf(r2);
        goto L_0x0039;
    L_0x0038:
        r2 = r0;
    L_0x0039:
        r3 = com.google.android.gms.C0537R.styleable.MapAttrs_latLngBoundsNorthEastLatitude;
        r3 = r6.hasValue(r3);
        if (r3 == 0) goto L_0x004c;
    L_0x0041:
        r3 = com.google.android.gms.C0537R.styleable.MapAttrs_latLngBoundsNorthEastLatitude;
        r3 = r6.getFloat(r3, r1);
        r3 = java.lang.Float.valueOf(r3);
        goto L_0x004d;
    L_0x004c:
        r3 = r0;
    L_0x004d:
        r4 = com.google.android.gms.C0537R.styleable.MapAttrs_latLngBoundsNorthEastLongitude;
        r4 = r6.hasValue(r4);
        if (r4 == 0) goto L_0x0060;
    L_0x0055:
        r4 = com.google.android.gms.C0537R.styleable.MapAttrs_latLngBoundsNorthEastLongitude;
        r6 = r6.getFloat(r4, r1);
        r6 = java.lang.Float.valueOf(r6);
        goto L_0x0061;
    L_0x0060:
        r6 = r0;
    L_0x0061:
        if (r7 == 0) goto L_0x008e;
    L_0x0063:
        if (r2 == 0) goto L_0x008e;
    L_0x0065:
        if (r3 == 0) goto L_0x008e;
    L_0x0067:
        if (r6 != 0) goto L_0x006a;
    L_0x0069:
        return r0;
    L_0x006a:
        r0 = new com.google.android.gms.maps.model.LatLng;
        r7 = r7.floatValue();
        r4 = (double) r7;
        r7 = r2.floatValue();
        r1 = (double) r7;
        r0.<init>(r4, r1);
        r7 = new com.google.android.gms.maps.model.LatLng;
        r1 = r3.floatValue();
        r1 = (double) r1;
        r6 = r6.floatValue();
        r3 = (double) r6;
        r7.<init>(r1, r3);
        r6 = new com.google.android.gms.maps.model.LatLngBounds;
        r6.<init>(r0, r7);
        return r6;
    L_0x008e:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.LatLngBounds.createFromAttributes(android.content.Context, android.util.AttributeSet):com.google.android.gms.maps.model.LatLngBounds");
    }

    private static double zzb(double d, double d2) {
        return ((d - d2) + 360.0d) % 360.0d;
    }

    private static double zzc(double d, double d2) {
        return ((d2 - d) + 360.0d) % 360.0d;
    }

    private boolean zzh(double d) {
        return this.southwest.latitude <= d && d <= this.northeast.latitude;
    }

    private boolean zzi(double d) {
        return this.southwest.longitude <= this.northeast.longitude ? this.southwest.longitude <= d && d <= this.northeast.longitude : this.southwest.longitude <= d || d <= this.northeast.longitude;
    }

    public final boolean contains(LatLng latLng) {
        return zzh(latLng.latitude) && zzi(latLng.longitude);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.southwest.equals(latLngBounds.southwest) && this.northeast.equals(latLngBounds.northeast);
    }

    public final LatLng getCenter() {
        double d = (this.southwest.latitude + this.northeast.latitude) / 2.0d;
        double d2 = this.northeast.longitude;
        double d3 = this.southwest.longitude;
        if (d3 > d2) {
            d2 += 360.0d;
        }
        return new LatLng(d, (d2 + d3) / 2.0d);
    }

    public final int hashCode() {
        return zzaa.hashCode(this.southwest, this.northeast);
    }

    public final LatLngBounds including(LatLng latLng) {
        double min = Math.min(this.southwest.latitude, latLng.latitude);
        double max = Math.max(this.northeast.latitude, latLng.latitude);
        double d = this.northeast.longitude;
        double d2 = this.southwest.longitude;
        double d3 = latLng.longitude;
        if (!zzi(d3)) {
            if (zzb(d2, d3) < zzc(d, d3)) {
                d2 = d3;
            } else {
                d = d3;
            }
        }
        return new LatLngBounds(new LatLng(min, d2), new LatLng(max, d));
    }

    public final String toString() {
        return zzaa.zzv(this).zzg("southwest", this.southwest).zzg("northeast", this.northeast).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
