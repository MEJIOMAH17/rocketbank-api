package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import com.google.android.gms.C0537R;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;

public final class CameraPosition extends zza implements ReflectedParcelable {
    public static final Creator<CameraPosition> CREATOR = new zza();
    public final float bearing;
    public final LatLng target;
    public final float tilt;
    public final float zoom;

    public static final class Builder {
        private LatLng zzboZ;
        private float zzbpa;
        private float zzbpb;
        private float zzbpc;

        public Builder(CameraPosition cameraPosition) {
            this.zzboZ = cameraPosition.target;
            this.zzbpa = cameraPosition.zoom;
            this.zzbpb = cameraPosition.tilt;
            this.zzbpc = cameraPosition.bearing;
        }

        public final Builder bearing(float f) {
            this.zzbpc = f;
            return this;
        }

        public final CameraPosition build() {
            return new CameraPosition(this.zzboZ, this.zzbpa, this.zzbpb, this.zzbpc);
        }

        public final Builder target(LatLng latLng) {
            this.zzboZ = latLng;
            return this;
        }

        public final Builder tilt(float f) {
            this.zzbpb = f;
            return this;
        }

        public final Builder zoom(float f) {
            this.zzbpa = f;
            return this;
        }
    }

    public CameraPosition(LatLng latLng, float f, float f2, float f3) {
        zzac.zzb((Object) latLng, (Object) "null camera target");
        boolean z = BitmapDescriptorFactory.HUE_RED <= f2 && f2 <= 90.0f;
        zzac.zzb(z, "Tilt needs to be between 0 and 90 inclusive: %s", Float.valueOf(f2));
        this.target = latLng;
        this.zoom = f;
        this.tilt = f2 + BitmapDescriptorFactory.HUE_RED;
        if (((double) f3) <= 0.0d) {
            f3 = (f3 % 360.0f) + 360.0f;
        }
        this.bearing = f3 % 360.0f;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder builder(CameraPosition cameraPosition) {
        return new Builder(cameraPosition);
    }

    public static CameraPosition createFromAttributes(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C0537R.styleable.MapAttrs);
        LatLng latLng = new LatLng((double) (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_cameraTargetLat) ? obtainAttributes.getFloat(C0537R.styleable.MapAttrs_cameraTargetLat, BitmapDescriptorFactory.HUE_RED) : BitmapDescriptorFactory.HUE_RED), (double) (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_cameraTargetLng) ? obtainAttributes.getFloat(C0537R.styleable.MapAttrs_cameraTargetLng, BitmapDescriptorFactory.HUE_RED) : BitmapDescriptorFactory.HUE_RED));
        Builder builder = builder();
        builder.target(latLng);
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_cameraZoom)) {
            builder.zoom(obtainAttributes.getFloat(C0537R.styleable.MapAttrs_cameraZoom, BitmapDescriptorFactory.HUE_RED));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_cameraBearing)) {
            builder.bearing(obtainAttributes.getFloat(C0537R.styleable.MapAttrs_cameraBearing, BitmapDescriptorFactory.HUE_RED));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_cameraTilt)) {
            builder.tilt(obtainAttributes.getFloat(C0537R.styleable.MapAttrs_cameraTilt, BitmapDescriptorFactory.HUE_RED));
        }
        return builder.build();
    }

    public static final CameraPosition fromLatLngZoom(LatLng latLng, float f) {
        return new CameraPosition(latLng, f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraPosition)) {
            return false;
        }
        CameraPosition cameraPosition = (CameraPosition) obj;
        return this.target.equals(cameraPosition.target) && Float.floatToIntBits(this.zoom) == Float.floatToIntBits(cameraPosition.zoom) && Float.floatToIntBits(this.tilt) == Float.floatToIntBits(cameraPosition.tilt) && Float.floatToIntBits(this.bearing) == Float.floatToIntBits(cameraPosition.bearing);
    }

    public final int hashCode() {
        return zzaa.hashCode(this.target, Float.valueOf(this.zoom), Float.valueOf(this.tilt), Float.valueOf(this.bearing));
    }

    public final String toString() {
        return zzaa.zzv(this).zzg("target", this.target).zzg("zoom", Float.valueOf(this.zoom)).zzg("tilt", Float.valueOf(this.tilt)).zzg("bearing", Float.valueOf(this.bearing)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
