package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.view.ViewCompat;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class PolygonOptions extends zza {
    public static final Creator<PolygonOptions> CREATOR = new zzk();
    private int mFillColor;
    private int mStrokeColor;
    private float mStrokeWidth;
    private final List<LatLng> zzbpK;
    private final List<List<LatLng>> zzbpL;
    private boolean zzbpM;
    private int zzbpN;
    private float zzbph;
    private boolean zzbpi;
    private boolean zzbpj;
    private List<PatternItem> zzbpk;

    public PolygonOptions() {
        this.mStrokeWidth = 10.0f;
        this.mStrokeColor = ViewCompat.MEASURED_STATE_MASK;
        this.mFillColor = 0;
        this.zzbph = BitmapDescriptorFactory.HUE_RED;
        this.zzbpi = true;
        this.zzbpM = false;
        this.zzbpj = false;
        this.zzbpN = 0;
        this.zzbpk = null;
        this.zzbpK = new ArrayList();
        this.zzbpL = new ArrayList();
    }

    PolygonOptions(List<LatLng> list, List list2, float f, int i, int i2, float f2, boolean z, boolean z2, boolean z3, int i3, List<PatternItem> list3) {
        this.mStrokeWidth = 10.0f;
        this.mStrokeColor = ViewCompat.MEASURED_STATE_MASK;
        this.mFillColor = 0;
        this.zzbph = BitmapDescriptorFactory.HUE_RED;
        this.zzbpi = true;
        this.zzbpM = false;
        this.zzbpj = false;
        this.zzbpN = 0;
        this.zzbpk = null;
        this.zzbpK = list;
        this.zzbpL = list2;
        this.mStrokeWidth = f;
        this.mStrokeColor = i;
        this.mFillColor = i2;
        this.zzbph = f2;
        this.zzbpi = z;
        this.zzbpM = z2;
        this.zzbpj = z3;
        this.zzbpN = i3;
        this.zzbpk = list3;
    }

    public final PolygonOptions add(LatLng latLng) {
        this.zzbpK.add(latLng);
        return this;
    }

    public final PolygonOptions add(LatLng... latLngArr) {
        this.zzbpK.addAll(Arrays.asList(latLngArr));
        return this;
    }

    public final PolygonOptions addAll(Iterable<LatLng> iterable) {
        for (LatLng add : iterable) {
            this.zzbpK.add(add);
        }
        return this;
    }

    public final PolygonOptions addHole(Iterable<LatLng> iterable) {
        ArrayList arrayList = new ArrayList();
        for (LatLng add : iterable) {
            arrayList.add(add);
        }
        this.zzbpL.add(arrayList);
        return this;
    }

    public final PolygonOptions clickable(boolean z) {
        this.zzbpj = z;
        return this;
    }

    public final PolygonOptions fillColor(int i) {
        this.mFillColor = i;
        return this;
    }

    public final PolygonOptions geodesic(boolean z) {
        this.zzbpM = z;
        return this;
    }

    public final int getFillColor() {
        return this.mFillColor;
    }

    public final List<List<LatLng>> getHoles() {
        return this.zzbpL;
    }

    public final List<LatLng> getPoints() {
        return this.zzbpK;
    }

    public final int getStrokeColor() {
        return this.mStrokeColor;
    }

    public final int getStrokeJointType() {
        return this.zzbpN;
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

    public final boolean isGeodesic() {
        return this.zzbpM;
    }

    public final boolean isVisible() {
        return this.zzbpi;
    }

    public final PolygonOptions strokeColor(int i) {
        this.mStrokeColor = i;
        return this;
    }

    public final PolygonOptions strokeJointType(int i) {
        this.zzbpN = i;
        return this;
    }

    public final PolygonOptions strokePattern(List<PatternItem> list) {
        this.zzbpk = list;
        return this;
    }

    public final PolygonOptions strokeWidth(float f) {
        this.mStrokeWidth = f;
        return this;
    }

    public final PolygonOptions visible(boolean z) {
        this.zzbpi = z;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }

    public final PolygonOptions zIndex(float f) {
        this.zzbph = f;
        return this;
    }

    final List zzJP() {
        return this.zzbpL;
    }
}
