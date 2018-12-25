package ru.rocketbank.core.model.shop;

import io.realm.Realm;
import io.realm.Realm.Transaction;
import ru.rocketbank.core.realm.RealmCartItem;

/* compiled from: CartStorage.kt */
final class CartStorage$save$1 implements Transaction {
    final /* synthetic */ CartItem $cartItem;
    final /* synthetic */ CartStorage this$0;

    CartStorage$save$1(CartStorage cartStorage, CartItem cartItem) {
        this.this$0 = cartStorage;
        this.$cartItem = cartItem;
    }

    public final void execute(Realm realm) {
        long longValue;
        realm = this.$cartItem.getId();
        if (realm != null) {
            longValue = realm.longValue();
        } else {
            realm = this.this$0.getRealm().where(RealmCartItem.class).max("id");
            if (realm == null) {
                realm = Integer.valueOf(-1);
            }
            longValue = realm.longValue() + 1;
        }
        this.$cartItem.setId(Long.valueOf(longValue));
        this.this$0.getRealm().copyToRealm(new RealmCartItem(longValue, this.$cartItem));
    }
}
