package io.realm;

import ru.rocketbank.core.realm.RealmFriend;
import ru.rocketbank.core.realm.RealmImage;
import ru.rocketbank.core.realm.RealmLinkedCard;
import ru.rocketbank.core.realm.RealmMerchant;
import ru.rocketbank.core.realm.RealmMiles;
import ru.rocketbank.core.realm.RealmMoneyData;
import ru.rocketbank.core.realm.RealmOperationCategory;

public interface RealmOperationRealmProxyInterface {
    RealmOperationCategory realmGet$category();

    String realmGet$comment();

    String realmGet$contextType();

    RealmImage realmGet$cover();

    String realmGet$declineReason();

    String realmGet$details();

    RealmMoneyData realmGet$displayMoney();

    RealmFriend realmGet$friend();

    String realmGet$friendTransferType();

    boolean realmGet$isHasReceipt();

    RealmLinkedCard realmGet$linkedCard();

    RealmMerchant realmGet$merchant();

    RealmMiles realmGet$miles();

    double realmGet$mimimiles();

    RealmMoneyData realmGet$money();

    String realmGet$receiptUrl();

    String realmGet$status();

    void realmSet$category(RealmOperationCategory realmOperationCategory);

    void realmSet$comment(String str);

    void realmSet$contextType(String str);

    void realmSet$cover(RealmImage realmImage);

    void realmSet$declineReason(String str);

    void realmSet$details(String str);

    void realmSet$displayMoney(RealmMoneyData realmMoneyData);

    void realmSet$friend(RealmFriend realmFriend);

    void realmSet$friendTransferType(String str);

    void realmSet$isHasReceipt(boolean z);

    void realmSet$linkedCard(RealmLinkedCard realmLinkedCard);

    void realmSet$merchant(RealmMerchant realmMerchant);

    void realmSet$miles(RealmMiles realmMiles);

    void realmSet$mimimiles(double d);

    void realmSet$money(RealmMoneyData realmMoneyData);

    void realmSet$receiptUrl(String str);

    void realmSet$status(String str);
}
