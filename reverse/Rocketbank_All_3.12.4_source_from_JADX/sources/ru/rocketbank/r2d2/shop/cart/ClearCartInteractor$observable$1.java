package ru.rocketbank.r2d2.shop.cart;

import ru.rocketbank.core.model.shop.Cart;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: ClearCartInteractor.kt */
final class ClearCartInteractor$observable$1<T> implements OnSubscribe<T> {
    final /* synthetic */ ClearCartInteractor this$0;

    ClearCartInteractor$observable$1(ClearCartInteractor clearCartInteractor) {
        this.this$0 = clearCartInteractor;
    }

    public final void call(Subscriber<? super Cart> subscriber) {
        this.this$0.getCartStorage().clear();
        this.this$0.getCart().clear();
        subscriber.onNext(this.this$0.getCart());
        subscriber.onCompleted();
    }
}
