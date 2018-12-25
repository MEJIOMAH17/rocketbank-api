package ru.rocketbank.r2d2.shop.cart;

import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartItem;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: AddToCartInteractor.kt */
final class AddToCartInteractor$observable$1<T> implements OnSubscribe<T> {
    final /* synthetic */ AddToCartInteractor this$0;

    AddToCartInteractor$observable$1(AddToCartInteractor addToCartInteractor) {
        this.this$0 = addToCartInteractor;
    }

    public final void call(Subscriber<? super Cart> subscriber) {
        CartItem cartItem = new CartItem(this.this$0.getShopItem(), null, this.this$0.getSize(), this.this$0.getColor(), 2, null);
        this.this$0.getCartStorage().save(cartItem);
        this.this$0.getCart().add(cartItem);
        subscriber.onNext(this.this$0.getCart());
        subscriber.onCompleted();
    }
}
