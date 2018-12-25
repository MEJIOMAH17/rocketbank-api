package io.realm;

import ru.rocketbank.core.realm.RealmBin;

public interface RealmLinkedCardRealmProxyInterface {
    String realmGet$bank();

    RealmBin realmGet$bin();

    String realmGet$color();

    String realmGet$feedIconUrl();

    String realmGet$logo();

    String realmGet$pan();

    String realmGet$token();

    void realmSet$bank(String str);

    void realmSet$bin(RealmBin realmBin);

    void realmSet$color(String str);

    void realmSet$feedIconUrl(String str);

    void realmSet$logo(String str);

    void realmSet$pan(String str);

    void realmSet$token(String str);
}
