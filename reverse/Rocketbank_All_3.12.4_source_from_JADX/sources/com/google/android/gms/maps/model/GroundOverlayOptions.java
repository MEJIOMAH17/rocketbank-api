package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class GroundOverlayOptions extends zza {
    public static final Creator<GroundOverlayOptions> CREATOR = new zzd();
    public static final float NO_DIMENSION = -1.0f;
    private LatLngBounds zzbno;
    private float zzbpc;
    private float zzbph;
    private boolean zzbpi = true;
    private boolean zzbpj = false;
    private BitmapDescriptor zzbpm;
    private LatLng zzbpn;
    private float zzbpo;
    private float zzbpp;
    private float zzbpq = BitmapDescriptorFactory.HUE_RED;
    private float zzbpr = 0.5f;
    private float zzbps = 0.5f;

    GroundOverlayOptions(IBinder iBinder, LatLng latLng, float f, float f2, LatLngBounds latLngBounds, float f3, float f4, boolean z, float f5, float f6, float f7, boolean z2) {
        this.zzbpm = new BitmapDescriptor(IObjectWrapper.zza.zzcd(iBinder));
        this.zzbpn = latLng;
        this.zzbpo = f;
        this.zzbpp = f2;
        this.zzbno = latLngBounds;
        this.zzbpc = f3;
        this.zzbph = f4;
        this.zzbpi = z;
        this.zzbpq = f5;
        this.zzbpr = f6;
        this.zzbps = f7;
        this.zzbpj = z2;
    }

    private GroundOverlayOptions zza(LatLng latLng, float f, float f2) {
        this.zzbpn = latLng;
        this.zzbpo = f;
        this.zzbpp = f2;
        return this;
    }

    public final GroundOverlayOptions anchor(float f, float f2) {
        this.zzbpr = f;
        this.zzbps = f2;
        return this;
    }

    public final GroundOverlayOptions bearing(float f) {
        this.zzbpc = ((f % 360.0f) + 360.0f) % 360.0f;
        return this;
    }

    public final GroundOverlayOptions clickable(boolean z) {
        this.zzbpj = z;
        return this;
    }

    public final float getAnchorU() {
        return this.zzbpr;
    }

    public final float getAnchorV() {
        return this.zzbps;
    }

    public final float getBearing() {
        return this.zzbpc;
    }

    public final LatLngBounds getBounds() {
        return this.zzbno;
    }

    public final float getHeight() {
        return this.zzbpp;
    }

    public final BitmapDescriptor getImage() {
        return this.zzbpm;
    }

    public final LatLng getLocation() {
        return this.zzbpn;
    }

    public final float getTransparency() {
        return this.zzbpq;
    }

    public final float getWidth() {
        return this.zzbpo;
    }

    public final float getZIndex() {
        return this.zzbph;
    }

    public final GroundOverlayOptions image(BitmapDescriptor bitmapDescriptor) {
        zzac.zzb((Object) bitmapDescriptor, (Object) "imageDescriptor must not be null");
        this.zzbpm = bitmapDescriptor;
        return this;
    }

    public final boolean isClickable() {
        return this.zzbpj;
    }

    public final boolean isVisible() {
        return this.zzbpi;
    }

    public final GroundOverlayOptions position(LatLng latLng, float f) {
        boolean z = false;
        zzac.zza(this.zzbno == null, (Object) "Position has already been set using positionFromBounds");
        zzac.zzb(latLng != null, (Object) "Location must be specified");
        if (f >= BitmapDescriptorFactory.HUE_RED) {
            z = true;
        }
        zzac.zzb(z, (Object) "Width must be non-negative");
        return zza(latLng, f, -1.0f);
    }

    public final GroundOverlayOptions position(LatLng latLng, float f, float f2) {
        boolean z = false;
        zzac.zza(this.zzbno == null, (Object) "Position has already been set using positionFromBounds");
        zzac.zzb(latLng != null, (Object) "Location must be specified");
        zzac.zzb(f >= BitmapDescriptorFactory.HUE_RED, (Object) "Width must be non-negative");
        if (f2 >= BitmapDescriptorFactory.HUE_RED) {
            z = true;
        }
        zzac.zzb(z, (Object) "Height must be non-negative");
        return zza(latLng, f, f2);
    }

    public final GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        boolean z = this.zzbpn == null;
        String valueOf = String.valueOf(this.zzbpn);
        StringBuilder stringBuilder = new StringBuilder(46 + String.valueOf(valueOf).length());
        stringBuilder.append("Position has already been set using position: ");
        stringBuilder.append(valueOf);
        zzac.zza(z, stringBuilder.toString());
        this.zzbno = latLngBounds;
        return this;
    }

    public final GroundOverlayOptions transparency(float f) {
        boolean z = f >= BitmapDescriptorFactory.HUE_RED && f <= 1.0f;
        zzac.zzb(z, (Object) "Transparency must be in the range [0..1]");
        this.zzbpq = f;
        return this;
    }

    public final GroundOverlayOptions visible(boolean z) {
        this.zzbpi = z;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public final GroundOverlayOptions zIndex(float f) {
        this.zzbph = f;
        return this;
    }

    final IBinder zzJK() {
        return this.zzbpm.zzJm().asBinder();
    }
}
