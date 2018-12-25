package ru.rocketbank.core.realm;

import io.realm.RealmObject;
import io.realm.RealmOperationCategoryRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmOperationCategory.kt */
public class RealmOperationCategory extends RealmObject implements RealmOperationCategoryRealmProxyInterface {
    public static final Companion Companion = new Companion();
    private String displayName;
    private String fullName;
    private String icon;
    private long id;
    private String name;
    private RealmMoneyData spent;
    private String subIcon;

    /* compiled from: RealmOperationCategory.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public String realmGet$displayName() {
        return this.displayName;
    }

    public String realmGet$fullName() {
        return this.fullName;
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

    public RealmMoneyData realmGet$spent() {
        return this.spent;
    }

    public String realmGet$subIcon() {
        return this.subIcon;
    }

    public void realmSet$displayName(String str) {
        this.displayName = str;
    }

    public void realmSet$fullName(String str) {
        this.fullName = str;
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

    public void realmSet$spent(RealmMoneyData realmMoneyData) {
        this.spent = realmMoneyData;
    }

    public void realmSet$subIcon(String str) {
        this.subIcon = str;
    }

    public RealmOperationCategory() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
