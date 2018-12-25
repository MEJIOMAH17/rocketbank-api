package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class MarkerOptions extends zza {
    public static final Creator<MarkerOptions> CREATOR = new zzh();
    private float mAlpha = 1.0f;
    private String zzamJ;
    private LatLng zzboK;
    private String zzbpB;
    private BitmapDescriptor zzbpC;
    private boolean zzbpD;
    private boolean zzbpE = false;
    private float zzbpF = BitmapDescriptorFactory.HUE_RED;
    private float zzbpG = 0.5f;
    private float zzbpH = BitmapDescriptorFactory.HUE_RED;
    private float zzbph;
    private boolean zzbpi = true;
    private float zzbpr = 0.5f;
    private float zzbps = 1.0f;

    MarkerOptions(LatLng latLng, String str, String str2, IBinder iBinder, float f, float f2, boolean z, boolean z2, boolean z3, float f3, float f4, float f5, float f6, float f7) {
        this.zzboK = latLng;
        this.zzamJ = str;
        this.zzbpB = str2;
        if (iBinder == null) {
            r0.zzbpC = null;
        } else {
            r0.zzbpC = new BitmapDescriptor(IObjectWrapper.zza.zzcd(iBinder));
        }
        r0.zzbpr = f;
        r0.zzbps = f2;
        r0.zzbpD = z;
        r0.zzbpi = z2;
        r0.zzbpE = z3;
        r0.zzbpF = f3;
        r0.zzbpG = f4;
        r0.zzbpH = f5;
        r0.mAlpha = f6;
        r0.zzbph = f7;
    }

    public final MarkerOptions alpha(float f) {
        this.mAlpha = f;
        return this;
    }

    public final MarkerOptions anchor(float f, float f2) {
        this.zzbpr = f;
        this.zzbps = f2;
        return this;
    }

    public final MarkerOptions draggable(boolean z) {
        this.zzbpD = z;
        return this;
    }

    public final MarkerOptions flat(boolean z) {
        this.zzbpE = z;
        return this;
    }

    public final float getAlpha() {
        return this.mAlpha;
    }

    public final float getAnchorU() {
        return this.zzbpr;
    }

    public final float getAnchorV() {
        return this.zzbps;
    }

    public final BitmapDescriptor getIcon() {
        return this.zzbpC;
    }

    public final float getInfoWindowAnchorU() {
        return this.zzbpG;
    }

    public final float getInfoWindowAnchorV() {
        return this.zzbpH;
    }

    public final LatLng getPosition() {
        return this.zzboK;
    }

    public final float getRotation() {
        return this.zzbpF;
    }

    public final String getSnippet() {
        return this.zzbpB;
    }

    public final String getTitle() {
        return this.zzamJ;
    }

    public final float getZIndex() {
        return this.zzbph;
    }

    public final MarkerOptions icon(BitmapDescriptor bitmapDescriptor) {
        this.zzbpC = bitmapDescriptor;
        return this;
    }

    public final MarkerOptions infoWindowAnchor(float f, float f2) {
        this.zzbpG = f;
        this.zzbpH = f2;
        return this;
    }

    public final boolean isDraggable() {
        return this.zzbpD;
    }

    public final boolean isFlat() {
        return this.zzbpE;
    }

    public final boolean isVisible() {
        return this.zzbpi;
    }

    public final MarkerOptions position(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("latlng cannot be null - a position is required.");
        }
        this.zzboK = latLng;
        return this;
    }

    public final MarkerOptions rotation(float f) {
        this.zzbpF = f;
        return this;
    }

    public final MarkerOptions snippet(String str) {
        this.zzbpB = str;
        return this;
    }

    public final MarkerOptions title(String str) {
        this.zzamJ = str;
        return this;
    }

    public final MarkerOptions visible(boolean z) {
        this.zzbpi = z;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public final MarkerOptions zIndex(float f) {
        this.zzbph = f;
        return this;
    }

    final IBinder zzJM() {
        return this.zzbpC == null ? null : this.zzbpC.zzJm().asBinder();
    }
}
