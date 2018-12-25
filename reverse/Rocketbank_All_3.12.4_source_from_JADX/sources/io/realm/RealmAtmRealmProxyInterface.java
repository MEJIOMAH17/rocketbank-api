package io.realm;

public interface RealmAtmRealmProxyInterface {
    String realmGet$address();

    String realmGet$hours();

    int realmGet$id();

    Boolean realmGet$isEur();

    Boolean realmGet$isHidden();

    Boolean realmGet$isRur();

    Boolean realmGet$isUsd();

    float realmGet$lat();

    float realmGet$lon();

    String realmGet$name();

    String realmGet$type();

    void realmSet$address(String str);

    void realmSet$hours(String str);

    void realmSet$id(int i);

    void realmSet$isEur(Boolean bool);

    void realmSet$isHidden(Boolean bool);

    void realmSet$isRur(Boolean bool);

    void realmSet$isUsd(Boolean bool);

    void realmSet$lat(float f);

    void realmSet$lon(float f);

    void realmSet$name(String str);

    void realmSet$type(String str);
}
