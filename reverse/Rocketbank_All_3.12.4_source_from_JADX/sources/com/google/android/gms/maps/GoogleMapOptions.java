package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import com.google.android.gms.C0537R;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;

public final class GoogleMapOptions extends zza implements ReflectedParcelable {
    public static final Creator<GoogleMapOptions> CREATOR = new zza();
    private Boolean zzbnX;
    private Boolean zzbnY;
    private int zzbnZ = -1;
    private CameraPosition zzboa;
    private Boolean zzbob;
    private Boolean zzboc;
    private Boolean zzbod;
    private Boolean zzboe;
    private Boolean zzbof;
    private Boolean zzbog;
    private Boolean zzboh;
    private Boolean zzboi;
    private Boolean zzboj;
    private Float zzbok = null;
    private Float zzbol = null;
    private LatLngBounds zzbom = null;

    GoogleMapOptions(byte b, byte b2, int i, CameraPosition cameraPosition, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8, byte b9, byte b10, byte b11, Float f, Float f2, LatLngBounds latLngBounds) {
        this.zzbnX = com.google.android.gms.maps.internal.zza.zza(b);
        this.zzbnY = com.google.android.gms.maps.internal.zza.zza(b2);
        this.zzbnZ = i;
        this.zzboa = cameraPosition;
        this.zzbob = com.google.android.gms.maps.internal.zza.zza(b3);
        this.zzboc = com.google.android.gms.maps.internal.zza.zza(b4);
        this.zzbod = com.google.android.gms.maps.internal.zza.zza(b5);
        this.zzboe = com.google.android.gms.maps.internal.zza.zza(b6);
        this.zzbof = com.google.android.gms.maps.internal.zza.zza(b7);
        this.zzbog = com.google.android.gms.maps.internal.zza.zza(b8);
        this.zzboh = com.google.android.gms.maps.internal.zza.zza(b9);
        this.zzboi = com.google.android.gms.maps.internal.zza.zza(b10);
        this.zzboj = com.google.android.gms.maps.internal.zza.zza(b11);
        this.zzbok = f;
        this.zzbol = f2;
        this.zzbom = latLngBounds;
    }

    public static GoogleMapOptions createFromAttributes(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C0537R.styleable.MapAttrs);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_mapType)) {
            googleMapOptions.mapType(obtainAttributes.getInt(C0537R.styleable.MapAttrs_mapType, -1));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_zOrderOnTop)) {
            googleMapOptions.zOrderOnTop(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_zOrderOnTop, false));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_useViewLifecycle)) {
            googleMapOptions.useViewLifecycleInFragment(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_useViewLifecycle, false));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_uiCompass)) {
            googleMapOptions.compassEnabled(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_uiCompass, true));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_uiRotateGestures)) {
            googleMapOptions.rotateGesturesEnabled(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_uiRotateGestures, true));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_uiScrollGestures)) {
            googleMapOptions.scrollGesturesEnabled(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_uiScrollGestures, true));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_uiTiltGestures)) {
            googleMapOptions.tiltGesturesEnabled(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_uiTiltGestures, true));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_uiZoomGestures)) {
            googleMapOptions.zoomGesturesEnabled(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_uiZoomGestures, true));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_uiZoomControls)) {
            googleMapOptions.zoomControlsEnabled(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_uiZoomControls, true));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_liteMode)) {
            googleMapOptions.liteMode(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_liteMode, false));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_uiMapToolbar)) {
            googleMapOptions.mapToolbarEnabled(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_uiMapToolbar, true));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_ambientEnabled)) {
            googleMapOptions.ambientEnabled(obtainAttributes.getBoolean(C0537R.styleable.MapAttrs_ambientEnabled, false));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_cameraMinZoomPreference)) {
            googleMapOptions.minZoomPreference(obtainAttributes.getFloat(C0537R.styleable.MapAttrs_cameraMinZoomPreference, Float.NEGATIVE_INFINITY));
        }
        if (obtainAttributes.hasValue(C0537R.styleable.MapAttrs_cameraMinZoomPreference)) {
            googleMapOptions.maxZoomPreference(obtainAttributes.getFloat(C0537R.styleable.MapAttrs_cameraMaxZoomPreference, Float.POSITIVE_INFINITY));
        }
        googleMapOptions.latLngBoundsForCameraTarget(LatLngBounds.createFromAttributes(context, attributeSet));
        googleMapOptions.camera(CameraPosition.createFromAttributes(context, attributeSet));
        obtainAttributes.recycle();
        return googleMapOptions;
    }

    public final GoogleMapOptions ambientEnabled(boolean z) {
        this.zzboj = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions camera(CameraPosition cameraPosition) {
        this.zzboa = cameraPosition;
        return this;
    }

    public final GoogleMapOptions compassEnabled(boolean z) {
        this.zzboc = Boolean.valueOf(z);
        return this;
    }

    public final Boolean getAmbientEnabled() {
        return this.zzboj;
    }

    public final CameraPosition getCamera() {
        return this.zzboa;
    }

    public final Boolean getCompassEnabled() {
        return this.zzboc;
    }

    public final LatLngBounds getLatLngBoundsForCameraTarget() {
        return this.zzbom;
    }

    public final Boolean getLiteMode() {
        return this.zzboh;
    }

    public final Boolean getMapToolbarEnabled() {
        return this.zzboi;
    }

    public final int getMapType() {
        return this.zzbnZ;
    }

    public final Float getMaxZoomPreference() {
        return this.zzbol;
    }

    public final Float getMinZoomPreference() {
        return this.zzbok;
    }

    public final Boolean getRotateGesturesEnabled() {
        return this.zzbog;
    }

    public final Boolean getScrollGesturesEnabled() {
        return this.zzbod;
    }

    public final Boolean getTiltGesturesEnabled() {
        return this.zzbof;
    }

    public final Boolean getUseViewLifecycleInFragment() {
        return this.zzbnY;
    }

    public final Boolean getZOrderOnTop() {
        return this.zzbnX;
    }

    public final Boolean getZoomControlsEnabled() {
        return this.zzbob;
    }

    public final Boolean getZoomGesturesEnabled() {
        return this.zzboe;
    }

    public final GoogleMapOptions latLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
        this.zzbom = latLngBounds;
        return this;
    }

    public final GoogleMapOptions liteMode(boolean z) {
        this.zzboh = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions mapToolbarEnabled(boolean z) {
        this.zzboi = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions mapType(int i) {
        this.zzbnZ = i;
        return this;
    }

    public final GoogleMapOptions maxZoomPreference(float f) {
        this.zzbol = Float.valueOf(f);
        return this;
    }

    public final GoogleMapOptions minZoomPreference(float f) {
        this.zzbok = Float.valueOf(f);
        return this;
    }

    public final GoogleMapOptions rotateGesturesEnabled(boolean z) {
        this.zzbog = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions scrollGesturesEnabled(boolean z) {
        this.zzbod = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions tiltGesturesEnabled(boolean z) {
        this.zzbof = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions useViewLifecycleInFragment(boolean z) {
        this.zzbnY = Boolean.valueOf(z);
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public final GoogleMapOptions zOrderOnTop(boolean z) {
        this.zzbnX = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions zoomControlsEnabled(boolean z) {
        this.zzbob = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions zoomGesturesEnabled(boolean z) {
        this.zzboe = Boolean.valueOf(z);
        return this;
    }

    final byte zzJo() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzbnX);
    }

    final byte zzJp() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzbnY);
    }

    final byte zzJq() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzbob);
    }

    final byte zzJr() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboc);
    }

    final byte zzJs() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzbod);
    }

    final byte zzJt() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboe);
    }

    final byte zzJu() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzbof);
    }

    final byte zzJv() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzbog);
    }

    final byte zzJw() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboh);
    }

    final byte zzJx() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboi);
    }

    final byte zzJy() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboj);
    }
}
