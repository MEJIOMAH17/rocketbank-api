package io.realm;

import io.realm.internal.RealmObjectProxy;

public abstract class RealmObject implements RealmModel {
    public static <E extends RealmModel> boolean isValid(E e) {
        if (!(e instanceof RealmObjectProxy)) {
            return true;
        }
        e = ((RealmObjectProxy) e).realmGet$proxyState().getRow$realm();
        if (e == null || e.isAttached() == null) {
            return null;
        }
        return true;
    }

    public static <E extends RealmModel> boolean isManaged(E e) {
        return e instanceof RealmObjectProxy;
    }
}
