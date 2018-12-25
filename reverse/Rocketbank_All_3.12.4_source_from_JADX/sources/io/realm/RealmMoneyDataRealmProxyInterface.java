package io.realm;

public interface RealmMoneyDataRealmProxyInterface {
    double realmGet$amount();

    String realmGet$currencyCode();

    String realmGet$formatted();

    String realmGet$formattedExact();

    void realmSet$amount(double d);

    void realmSet$currencyCode(String str);

    void realmSet$formatted(String str);

    void realmSet$formattedExact(String str);
}
