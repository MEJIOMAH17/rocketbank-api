package ru.rocketbank.core.realm;

import io.realm.RealmBinRealmProxyInterface;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmBin.kt */
public class RealmBin extends RealmObject implements RealmBinRealmProxyInterface {
    public static final Companion Companion = new Companion();
    private String advice;
    private String name;
    private String transferHint;
    private boolean transferWorks;
    private boolean works;

    /* compiled from: RealmBin.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public String realmGet$advice() {
        return this.advice;
    }

    public String realmGet$name() {
        return this.name;
    }

    public String realmGet$transferHint() {
        return this.transferHint;
    }

    public boolean realmGet$transferWorks() {
        return this.transferWorks;
    }

    public boolean realmGet$works() {
        return this.works;
    }

    public void realmSet$advice(String str) {
        this.advice = str;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    public void realmSet$transferHint(String str) {
        this.transferHint = str;
    }

    public void realmSet$transferWorks(boolean z) {
        this.transferWorks = z;
    }

    public void realmSet$works(boolean z) {
        this.works = z;
    }

    public RealmBin() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
