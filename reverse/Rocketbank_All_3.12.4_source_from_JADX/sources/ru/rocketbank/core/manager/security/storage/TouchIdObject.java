package ru.rocketbank.core.manager.security.storage;

import io.realm.RealmObject;
import io.realm.TouchIdObjectRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* compiled from: TouchIdObject.kt */
public class TouchIdObject extends RealmObject implements TouchIdObjectRealmProxyInterface {
    private String token;

    public String realmGet$token() {
        return this.token;
    }

    public void realmSet$token(String str) {
        this.token = str;
    }

    public TouchIdObject() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$token("");
    }
}
