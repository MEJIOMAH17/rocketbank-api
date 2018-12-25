package ru.rocketbank.core.realm;

import io.realm.RealmMerchantRealmProxyInterface;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmMerchant.kt */
public class RealmMerchant extends RealmObject implements RealmMerchantRealmProxyInterface {
    public static final Companion Companion = new Companion();
    private String icon;
    private long id;
    private String name;

    /* compiled from: RealmMerchant.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public String realmGet$icon() {
        return this.icon;
    }

    public long realmGet$id() {
        return this.id;
    }

    public String realmGet$name() {
        return this.name;
    }

    public void realmSet$icon(String str) {
        this.icon = str;
    }

    public void realmSet$id(long j) {
        this.id = j;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    public RealmMerchant() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
