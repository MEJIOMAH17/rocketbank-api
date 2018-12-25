package io.realm;

import ru.rocketbank.core.realm.WidgetData;

public interface UserDataRealmProxyInterface {
    String realmGet$activation();

    String realmGet$avatar();

    Double realmGet$balance();

    String realmGet$cobrandName();

    String realmGet$cover();

    String realmGet$deviceId();

    String realmGet$firstName();

    String realmGet$geneder();

    long realmGet$id();

    String realmGet$lastName();

    String realmGet$login();

    Double realmGet$miles();

    int realmGet$providersHash();

    String realmGet$status();

    String realmGet$token();

    WidgetData realmGet$widgetData();

    String realmGet$widgetToken();

    void realmSet$activation(String str);

    void realmSet$avatar(String str);

    void realmSet$balance(Double d);

    void realmSet$cobrandName(String str);

    void realmSet$cover(String str);

    void realmSet$deviceId(String str);

    void realmSet$firstName(String str);

    void realmSet$geneder(String str);

    void realmSet$id(long j);

    void realmSet$lastName(String str);

    void realmSet$login(String str);

    void realmSet$miles(Double d);

    void realmSet$providersHash(int i);

    void realmSet$status(String str);

    void realmSet$token(String str);

    void realmSet$widgetData(WidgetData widgetData);

    void realmSet$widgetToken(String str);
}
