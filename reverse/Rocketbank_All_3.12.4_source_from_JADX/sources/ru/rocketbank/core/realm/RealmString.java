package ru.rocketbank.core.realm;

import io.realm.RealmObject;
import io.realm.RealmStringRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RealmCartItem.kt */
public class RealmString extends RealmObject implements RealmStringRealmProxyInterface {
    private String string;

    public String realmGet$string() {
        return this.string;
    }

    public void realmSet$string(String str) {
        this.string = str;
    }

    public RealmString() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$string("");
    }

    public RealmString(String str) {
        Intrinsics.checkParameterIsNotNull(str, "string");
        this();
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        realmSet$string(str);
    }
}
