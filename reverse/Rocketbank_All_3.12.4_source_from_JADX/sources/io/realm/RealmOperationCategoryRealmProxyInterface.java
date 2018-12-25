package io.realm;

import ru.rocketbank.core.realm.RealmMoneyData;

public interface RealmOperationCategoryRealmProxyInterface {
    String realmGet$displayName();

    String realmGet$fullName();

    String realmGet$icon();

    long realmGet$id();

    String realmGet$name();

    RealmMoneyData realmGet$spent();

    String realmGet$subIcon();

    void realmSet$displayName(String str);

    void realmSet$fullName(String str);

    void realmSet$icon(String str);

    void realmSet$id(long j);

    void realmSet$name(String str);

    void realmSet$spent(RealmMoneyData realmMoneyData);

    void realmSet$subIcon(String str);
}
