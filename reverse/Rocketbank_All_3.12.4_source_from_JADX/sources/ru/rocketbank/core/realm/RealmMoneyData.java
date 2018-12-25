package ru.rocketbank.core.realm;

import io.realm.RealmMoneyDataRealmProxyInterface;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmMoneyData.kt */
public class RealmMoneyData extends RealmObject implements RealmMoneyDataRealmProxyInterface {
    public static final Companion Companion = new Companion();
    private double amount;
    private String currencyCode;
    private String formatted;
    private String formattedExact;

    /* compiled from: RealmMoneyData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public double realmGet$amount() {
        return this.amount;
    }

    public String realmGet$currencyCode() {
        return this.currencyCode;
    }

    public String realmGet$formatted() {
        return this.formatted;
    }

    public String realmGet$formattedExact() {
        return this.formattedExact;
    }

    public void realmSet$amount(double d) {
        this.amount = d;
    }

    public void realmSet$currencyCode(String str) {
        this.currencyCode = str;
    }

    public void realmSet$formatted(String str) {
        this.formatted = str;
    }

    public void realmSet$formattedExact(String str) {
        this.formattedExact = str;
    }

    public RealmMoneyData() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
