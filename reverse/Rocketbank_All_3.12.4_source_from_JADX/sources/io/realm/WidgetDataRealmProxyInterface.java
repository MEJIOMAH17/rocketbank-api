package io.realm;

import ru.rocketbank.core.realm.RealmOperation;
import ru.rocketbank.core.realm.RealmWidgetFriend;

public interface WidgetDataRealmProxyInterface {
    String realmGet$balance();

    RealmList<RealmWidgetFriend> realmGet$friends();

    long realmGet$id();

    int realmGet$limit();

    String realmGet$miles();

    String realmGet$number();

    RealmList<RealmOperation> realmGet$operation();

    String realmGet$operator();

    boolean realmGet$unlimitedCashouts();

    int realmGet$usedOperation();

    void realmSet$balance(String str);

    void realmSet$friends(RealmList<RealmWidgetFriend> realmList);

    void realmSet$id(long j);

    void realmSet$limit(int i);

    void realmSet$miles(String str);

    void realmSet$number(String str);

    void realmSet$operation(RealmList<RealmOperation> realmList);

    void realmSet$operator(String str);

    void realmSet$unlimitedCashouts(boolean z);

    void realmSet$usedOperation(int i);
}
