package ru.rocketbank.core.model.shop;

import io.realm.Realm;
import io.realm.Realm.Transaction;
import ru.rocketbank.core.realm.RealmCartItem;

/* compiled from: CartStorage.kt */
final class CartStorage$clear$1 implements Transaction {
    final /* synthetic */ CartStorage this$0;

    CartStorage$clear$1(CartStorage cartStorage) {
        this.this$0 = cartStorage;
    }

    public final void execute(Realm realm) {
        this.this$0.getRealm().where(RealmCartItem.class).findAll().deleteAllFromRealm();
    }
}
