package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.view.ViewCompat;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.List;

public final class CircleOptions extends zza {
    public static final Creator<CircleOptions> CREATOR = new zzc();
    private int mFillColor = 0;
    private int mStrokeColor = ViewCompat.MEASURED_STATE_MASK;
    private float mStrokeWidth = 10.0f;
    private LatLng zzbpf = null;
    private double zzbpg = 0.0d;
    private float zzbph = BitmapDescriptorFactory.HUE_RED;
    private boolean zzbpi = true;
    private boolean zzbpj = false;
    private List<PatternItem> zzbpk = null;

    CircleOptions(LatLng latLng, double d, float f, int i, int i2, float f2, boolean z, boolean z2, List<PatternItem> list) {
        this.zzbpf = latLng;
        this.zzbpg = d;
        this.mStrokeWidth = f;
        this.mStrokeColor = i;
        this.mFillColor = i2;
        this.zzbph = f2;
        this.zzbpi = z;
        this.zzbpj = z2;
        this.zzbpk = list;
    }

    public final CircleOptions center(LatLng latLng) {
        this.zzbpf = latLng;
        return this;
    }

    public final CircleOptions clickable(boolean z) {
        this.zzbpj = z;
        return this;
    }

    public final CircleOptions fillColor(int i) {
        this.mFillColor = i;
        return this;
    }

    public final LatLng getCenter() {
        return this.zzbpf;
    }

    public final int getFillColor() {
        return this.mFillColor;
    }

    public final double getRadius() {
        return this.zzbpg;
    }

    public final int getStrokeColor() {
        return this.mStrokeColor;
    }

    public final List<PatternItem> getStrokePattern() {
        return this.zzbpk;
    }

    public final float getStrokeWidth() {
        return this.mStrokeWidth;
    }

    public final float getZIndex() {
        return this.zzbph;
    }

    public final boolean isClickable() {
        return this.zzbpj;
    }

    public final boolean isVisible() {
        return this.zzbpi;
    }

    public final CircleOptions radius(double d) {
        this.zzbpg = d;
        return this;
    }

    public final CircleOptions strokeColor(int i) {
        this.mStrokeColor = i;
        return this;
    }

    public final CircleOptions strokePattern(List<PatternItem> list) {
        this.zzbpk = list;
        return this;
    }

    public final CircleOptions strokeWidth(float f) {
        this.mStrokeWidth = f;
        return this;
    }

    public final CircleOptions visible(boolean z) {
        this.zzbpi = z;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    public final CircleOptions zIndex(float f) {
        this.zzbph = f;
        return this;
    }
}
