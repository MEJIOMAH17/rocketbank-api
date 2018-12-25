package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.view.ViewCompat;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class PolylineOptions extends zza {
    public static final Creator<PolylineOptions> CREATOR = new zzl();
    private int mColor;
    private final List<LatLng> zzbpK;
    private boolean zzbpM;
    private Cap zzbpP;
    private Cap zzbpQ;
    private int zzbpR;
    private List<PatternItem> zzbpS;
    private float zzbph;
    private boolean zzbpi;
    private boolean zzbpj;
    private float zzbpo;

    public PolylineOptions() {
        this.zzbpo = 10.0f;
        this.mColor = ViewCompat.MEASURED_STATE_MASK;
        this.zzbph = BitmapDescriptorFactory.HUE_RED;
        this.zzbpi = true;
        this.zzbpM = false;
        this.zzbpj = false;
        this.zzbpP = new ButtCap();
        this.zzbpQ = new ButtCap();
        this.zzbpR = 0;
        this.zzbpS = null;
        this.zzbpK = new ArrayList();
    }

    PolylineOptions(List list, float f, int i, float f2, boolean z, boolean z2, boolean z3, Cap cap, Cap cap2, int i2, List<PatternItem> list2) {
        this.zzbpo = 10.0f;
        this.mColor = ViewCompat.MEASURED_STATE_MASK;
        this.zzbph = BitmapDescriptorFactory.HUE_RED;
        this.zzbpi = true;
        this.zzbpM = false;
        this.zzbpj = false;
        this.zzbpP = new ButtCap();
        this.zzbpQ = new ButtCap();
        this.zzbpR = 0;
        this.zzbpS = null;
        this.zzbpK = list;
        this.zzbpo = f;
        this.mColor = i;
        this.zzbph = f2;
        this.zzbpi = z;
        this.zzbpM = z2;
        this.zzbpj = z3;
        if (cap != null) {
            this.zzbpP = cap;
        }
        if (cap2 != null) {
            this.zzbpQ = cap2;
        }
        this.zzbpR = i2;
        this.zzbpS = list2;
    }

    public final PolylineOptions add(LatLng latLng) {
        this.zzbpK.add(latLng);
        return this;
    }

    public final PolylineOptions add(LatLng... latLngArr) {
        this.zzbpK.addAll(Arrays.asList(latLngArr));
        return this;
    }

    public final PolylineOptions addAll(Iterable<LatLng> iterable) {
        for (LatLng add : iterable) {
            this.zzbpK.add(add);
        }
        return this;
    }

    public final PolylineOptions clickable(boolean z) {
        this.zzbpj = z;
        return this;
    }

    public final PolylineOptions color(int i) {
        this.mColor = i;
        return this;
    }

    public final PolylineOptions endCap(Cap cap) {
        this.zzbpQ = (Cap) zzac.zzb((Object) cap, (Object) "endCap must not be null");
        return this;
    }

    public final PolylineOptions geodesic(boolean z) {
        this.zzbpM = z;
        return this;
    }

    public final int getColor() {
        return this.mColor;
    }

    public final Cap getEndCap() {
        return this.zzbpQ;
    }

    public final int getJointType() {
        return this.zzbpR;
    }

    public final List<PatternItem> getPattern() {
        return this.zzbpS;
    }

    public final List<LatLng> getPoints() {
        return this.zzbpK;
    }

    public final Cap getStartCap() {
        return this.zzbpP;
    }

    public final float getWidth() {
        return this.zzbpo;
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

    public final PolylineOptions jointType(int i) {
        this.zzbpR = i;
        return this;
    }

    public final PolylineOptions pattern(List<PatternItem> list) {
        this.zzbpS = list;
        return this;
    }

    public final PolylineOptions startCap(Cap cap) {
        this.zzbpP = (Cap) zzac.zzb((Object) cap, (Object) "startCap must not be null");
        return this;
    }

    public final PolylineOptions visible(boolean z) {
        this.zzbpi = z;
        return this;
    }

    public final PolylineOptions width(float f) {
        this.zzbpo = f;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }

    public final PolylineOptions zIndex(float f) {
        this.zzbph = f;
        return this;
    }
}
