package ru.rocketbank.r2d2.shop.cart;

import ru.rocketbank.core.model.shop.Cart;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: RemoveCartItemInteractor.kt */
final class RemoveCartItemInteractor$observable$1<T> implements OnSubscribe<T> {
    final /* synthetic */ RemoveCartItemInteractor this$0;

    RemoveCartItemInteractor$observable$1(RemoveCartItemInteractor removeCartItemInteractor) {
        this.this$0 = removeCartItemInteractor;
    }

    public final void call(Subscriber<? super Cart> subscriber) {
        this.this$0.getCartStorage().delete(this.this$0.getCartItem());
        this.this$0.getCart().remove(this.this$0.getCartItem());
        subscriber.onNext(this.this$0.getCart());
        subscriber.onCompleted();
    }
}
