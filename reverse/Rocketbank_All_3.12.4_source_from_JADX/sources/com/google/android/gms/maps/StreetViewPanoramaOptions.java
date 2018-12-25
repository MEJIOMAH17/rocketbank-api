package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public final class StreetViewPanoramaOptions extends zza implements ReflectedParcelable {
    public static final Creator<StreetViewPanoramaOptions> CREATOR = new zzb();
    private Boolean zzbnY;
    private StreetViewPanoramaCamera zzboI;
    private String zzboJ;
    private LatLng zzboK;
    private Integer zzboL;
    private Boolean zzboM = Boolean.TRUE;
    private Boolean zzboN = Boolean.TRUE;
    private Boolean zzboO = Boolean.TRUE;
    private Boolean zzboe = Boolean.TRUE;

    StreetViewPanoramaOptions(StreetViewPanoramaCamera streetViewPanoramaCamera, String str, LatLng latLng, Integer num, byte b, byte b2, byte b3, byte b4, byte b5) {
        this.zzboI = streetViewPanoramaCamera;
        this.zzboK = latLng;
        this.zzboL = num;
        this.zzboJ = str;
        this.zzboM = com.google.android.gms.maps.internal.zza.zza(b);
        this.zzboe = com.google.android.gms.maps.internal.zza.zza(b2);
        this.zzboN = com.google.android.gms.maps.internal.zza.zza(b3);
        this.zzboO = com.google.android.gms.maps.internal.zza.zza(b4);
        this.zzbnY = com.google.android.gms.maps.internal.zza.zza(b5);
    }

    public final Boolean getPanningGesturesEnabled() {
        return this.zzboN;
    }

    public final String getPanoramaId() {
        return this.zzboJ;
    }

    public final LatLng getPosition() {
        return this.zzboK;
    }

    public final Integer getRadius() {
        return this.zzboL;
    }

    public final Boolean getStreetNamesEnabled() {
        return this.zzboO;
    }

    public final StreetViewPanoramaCamera getStreetViewPanoramaCamera() {
        return this.zzboI;
    }

    public final Boolean getUseViewLifecycleInFragment() {
        return this.zzbnY;
    }

    public final Boolean getUserNavigationEnabled() {
        return this.zzboM;
    }

    public final Boolean getZoomGesturesEnabled() {
        return this.zzboe;
    }

    public final StreetViewPanoramaOptions panningGesturesEnabled(boolean z) {
        this.zzboN = Boolean.valueOf(z);
        return this;
    }

    public final StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        this.zzboI = streetViewPanoramaCamera;
        return this;
    }

    public final StreetViewPanoramaOptions panoramaId(String str) {
        this.zzboJ = str;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng) {
        this.zzboK = latLng;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, Integer num) {
        this.zzboK = latLng;
        this.zzboL = num;
        return this;
    }

    public final StreetViewPanoramaOptions streetNamesEnabled(boolean z) {
        this.zzboO = Boolean.valueOf(z);
        return this;
    }

    public final StreetViewPanoramaOptions useViewLifecycleInFragment(boolean z) {
        this.zzbnY = Boolean.valueOf(z);
        return this;
    }

    public final StreetViewPanoramaOptions userNavigationEnabled(boolean z) {
        this.zzboM = Boolean.valueOf(z);
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public final StreetViewPanoramaOptions zoomGesturesEnabled(boolean z) {
        this.zzboe = Boolean.valueOf(z);
        return this;
    }

    final byte zzJB() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboM);
    }

    final byte zzJC() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboN);
    }

    final byte zzJD() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboO);
    }

    final byte zzJp() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzbnY);
    }

    final byte zzJt() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboe);
    }
}
