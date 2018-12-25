package ru.rocketbank.core.realm;

import io.realm.RealmImageRealmProxyInterface;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmImage.kt */
public class RealmImage extends RealmObject implements RealmImageRealmProxyInterface {
    public static final Companion Companion = new Companion();
    private String color;
    private int height;
    private String id;
    private String url;
    private int width;

    /* compiled from: RealmImage.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public String realmGet$color() {
        return this.color;
    }

    public int realmGet$height() {
        return this.height;
    }

    public String realmGet$id() {
        return this.id;
    }

    public String realmGet$url() {
        return this.url;
    }

    public int realmGet$width() {
        return this.width;
    }

    public void realmSet$color(String str) {
        this.color = str;
    }

    public void realmSet$height(int i) {
        this.height = i;
    }

    public void realmSet$id(String str) {
        this.id = str;
    }

    public void realmSet$url(String str) {
        this.url = str;
    }

    public void realmSet$width(int i) {
        this.width = i;
    }

    public RealmImage() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
