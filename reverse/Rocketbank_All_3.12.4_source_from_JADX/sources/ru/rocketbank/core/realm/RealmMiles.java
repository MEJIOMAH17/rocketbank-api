package ru.rocketbank.core.realm;

import io.realm.RealmMilesRealmProxyInterface;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmMiles.kt */
public class RealmMiles extends RealmObject implements RealmMilesRealmProxyInterface {
    public static final Companion Companion = new Companion();
    private float amount;
    private boolean enoughMiles;
    private String status;

    /* compiled from: RealmMiles.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public float realmGet$amount() {
        return this.amount;
    }

    public boolean realmGet$enoughMiles() {
        return this.enoughMiles;
    }

    public String realmGet$status() {
        return this.status;
    }

    public void realmSet$amount(float f) {
        this.amount = f;
    }

    public void realmSet$enoughMiles(boolean z) {
        this.enoughMiles = z;
    }

    public void realmSet$status(String str) {
        this.status = str;
    }

    public RealmMiles() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
