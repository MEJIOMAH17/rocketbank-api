package ru.rocketbank.core.realm;

import io.realm.RealmAtmRealmProxyInterface;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmAtm.kt */
public class RealmAtm extends RealmObject implements RealmAtmRealmProxyInterface {
    public static final Companion Companion = new Companion();
    public static final String FIELD_HIDDEN = "isHidden";
    public static final String FIELD_ID = "id";
    public static final String FIELD_TYPE = "type";
    private String address;
    private String hours;
    private int id;
    private Boolean isEur;
    private Boolean isHidden;
    private Boolean isRur;
    private Boolean isUsd;
    private float lat;
    private float lon;
    private String name;
    private String type;

    /* compiled from: RealmAtm.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public String realmGet$address() {
        return this.address;
    }

    public String realmGet$hours() {
        return this.hours;
    }

    public int realmGet$id() {
        return this.id;
    }

    public Boolean realmGet$isEur() {
        return this.isEur;
    }

    public Boolean realmGet$isHidden() {
        return this.isHidden;
    }

    public Boolean realmGet$isRur() {
        return this.isRur;
    }

    public Boolean realmGet$isUsd() {
        return this.isUsd;
    }

    public float realmGet$lat() {
        return this.lat;
    }

    public float realmGet$lon() {
        return this.lon;
    }

    public String realmGet$name() {
        return this.name;
    }

    public String realmGet$type() {
        return this.type;
    }

    public void realmSet$address(String str) {
        this.address = str;
    }

    public void realmSet$hours(String str) {
        this.hours = str;
    }

    public void realmSet$id(int i) {
        this.id = i;
    }

    public void realmSet$isEur(Boolean bool) {
        this.isEur = bool;
    }

    public void realmSet$isHidden(Boolean bool) {
        this.isHidden = bool;
    }

    public void realmSet$isRur(Boolean bool) {
        this.isRur = bool;
    }

    public void realmSet$isUsd(Boolean bool) {
        this.isUsd = bool;
    }

    public void realmSet$lat(float f) {
        this.lat = f;
    }

    public void realmSet$lon(float f) {
        this.lon = f;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    public void realmSet$type(String str) {
        this.type = str;
    }

    public RealmAtm() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$type("none");
    }
}
