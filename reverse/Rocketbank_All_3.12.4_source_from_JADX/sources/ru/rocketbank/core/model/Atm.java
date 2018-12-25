package ru.rocketbank.core.model;

import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.realm.RealmAtm;

/* compiled from: Atm.kt */
public final class Atm {
    private String address;
    private transient MarkerOptions cachedMarkerOptions;
    private Boolean eur;
    private Boolean hidden;
    private String hours;
    private int id;
    private float lat;
    private float lon;
    private String name;
    private transient LatLng position;
    private Boolean rur;
    private String type;
    private Boolean usd;

    public final int getId() {
        return this.id;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final Boolean getEur() {
        return this.eur;
    }

    public final void setEur(Boolean bool) {
        this.eur = bool;
    }

    public final Boolean getHidden() {
        return this.hidden;
    }

    public final void setHidden(Boolean bool) {
        this.hidden = bool;
    }

    public final Boolean getRur() {
        return this.rur;
    }

    public final void setRur(Boolean bool) {
        this.rur = bool;
    }

    public final Boolean getUsd() {
        return this.usd;
    }

    public final void setUsd(Boolean bool) {
        this.usd = bool;
    }

    public final float getLat() {
        return this.lat;
    }

    public final void setLat(float f) {
        this.lat = f;
    }

    public final float getLon() {
        return this.lon;
    }

    public final void setLon(float f) {
        this.lon = f;
    }

    public final String getAddress() {
        return this.address;
    }

    public final void setAddress(String str) {
        this.address = str;
    }

    public final String getHours() {
        return this.hours;
    }

    public final void setHours(String str) {
        this.hours = str;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final String getType() {
        return this.type;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public Atm(RealmAtm realmAtm) {
        Intrinsics.checkParameterIsNotNull(realmAtm, "realmAtm");
        this.id = realmAtm.realmGet$id();
        this.eur = realmAtm.realmGet$isEur();
        this.rur = realmAtm.realmGet$isRur();
        this.hidden = realmAtm.realmGet$isHidden();
        this.usd = realmAtm.realmGet$isUsd();
        this.lat = realmAtm.realmGet$lat();
        this.lon = realmAtm.realmGet$lon();
        this.address = realmAtm.realmGet$address();
        this.hours = realmAtm.realmGet$hours();
        this.name = realmAtm.realmGet$name();
        this.type = realmAtm.realmGet$type();
    }

    public Atm(int i, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, float f, float f2, String str, String str2, String str3, String str4) {
        Intrinsics.checkParameterIsNotNull(str, "address");
        Intrinsics.checkParameterIsNotNull(str2, "hours");
        Intrinsics.checkParameterIsNotNull(str3, "name");
        Intrinsics.checkParameterIsNotNull(str4, "type");
        this.id = i;
        this.eur = bool;
        this.rur = bool3;
        this.hidden = bool2;
        this.usd = bool4;
        this.lat = f;
        this.lon = f2;
        this.address = str;
        this.hours = str2;
        this.name = str3;
        this.type = str4;
    }

    public final LatLng getPosition() {
        if (this.position == null) {
            this.position = new LatLng((double) this.lat, (double) this.lon);
        }
        return this.position;
    }

    public final MarkerOptions getMarkerOptions() {
        if (this.cachedMarkerOptions == null) {
            LatLng position = getPosition();
            this.cachedMarkerOptions = position != null ? new MarkerOptions().position(position) : null;
        }
        return this.cachedMarkerOptions;
    }
}
