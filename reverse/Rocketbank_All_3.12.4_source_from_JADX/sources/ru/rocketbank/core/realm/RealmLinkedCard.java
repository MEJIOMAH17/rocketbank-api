package ru.rocketbank.core.realm;

import io.realm.RealmLinkedCardRealmProxyInterface;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmLinkedCard.kt */
public class RealmLinkedCard extends RealmObject implements RealmLinkedCardRealmProxyInterface {
    public static final Companion Companion = new Companion();
    private String bank;
    private RealmBin bin;
    private String color;
    private String feedIconUrl;
    private String logo;
    private String pan;
    private String token;

    /* compiled from: RealmLinkedCard.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public String realmGet$bank() {
        return this.bank;
    }

    public RealmBin realmGet$bin() {
        return this.bin;
    }

    public String realmGet$color() {
        return this.color;
    }

    public String realmGet$feedIconUrl() {
        return this.feedIconUrl;
    }

    public String realmGet$logo() {
        return this.logo;
    }

    public String realmGet$pan() {
        return this.pan;
    }

    public String realmGet$token() {
        return this.token;
    }

    public void realmSet$bank(String str) {
        this.bank = str;
    }

    public void realmSet$bin(RealmBin realmBin) {
        this.bin = realmBin;
    }

    public void realmSet$color(String str) {
        this.color = str;
    }

    public void realmSet$feedIconUrl(String str) {
        this.feedIconUrl = str;
    }

    public void realmSet$logo(String str) {
        this.logo = str;
    }

    public void realmSet$pan(String str) {
        this.pan = str;
    }

    public void realmSet$token(String str) {
        this.token = str;
    }

    public RealmLinkedCard() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
