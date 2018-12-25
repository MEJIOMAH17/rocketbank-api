package io.realm;

import ru.rocketbank.core.realm.RealmString;

public interface RealmCartItemRealmProxyInterface {
    RealmString realmGet$colorID();

    long realmGet$id();

    RealmString realmGet$sizeID();

    long realmGet$storeItemId();

    void realmSet$colorID(RealmString realmString);

    void realmSet$id(long j);

    void realmSet$sizeID(RealmString realmString);

    void realmSet$storeItemId(long j);
}
