package ru.rocketbank.core.model.shop;

import io.realm.Realm;
import io.realm.Realm.Transaction;
import ru.rocketbank.core.realm.RealmCartItem;

/* compiled from: CartStorage.kt */
final class CartStorage$delete$1 implements Transaction {
    final /* synthetic */ CartItem $cartItem;
    final /* synthetic */ CartStorage this$0;

    CartStorage$delete$1(CartStorage cartStorage, CartItem cartItem) {
        this.this$0 = cartStorage;
        this.$cartItem = cartItem;
    }

    public final void execute(Realm realm) {
        this.this$0.getRealm().where(RealmCartItem.class).equalTo("id", this.$cartItem.getId()).findAll().deleteAllFromRealm();
    }
}
