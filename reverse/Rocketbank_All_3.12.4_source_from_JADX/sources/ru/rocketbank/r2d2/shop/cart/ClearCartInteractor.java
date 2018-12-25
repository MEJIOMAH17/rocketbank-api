package ru.rocketbank.r2d2.shop.cart;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartStorage;
import ru.rocketbank.core.utils.Interactor;
import rx.Observable;
import rx.Observable.OnSubscribe;

/* compiled from: ClearCartInteractor.kt */
public final class ClearCartInteractor extends Interactor<Cart> {
    private final Cart cart;
    private final CartStorage cartStorage;

    public ClearCartInteractor(Cart cart, CartStorage cartStorage) {
        Intrinsics.checkParameterIsNotNull(cart, "cart");
        Intrinsics.checkParameterIsNotNull(cartStorage, "cartStorage");
        this.cart = cart;
        this.cartStorage = cartStorage;
    }

    public final Cart getCart() {
        return this.cart;
    }

    public final CartStorage getCartStorage() {
        return this.cartStorage;
    }

    public final Observable<Cart> getObservable() {
        Observable<Cart> create = Observable.create((OnSubscribe) new ClearCartInteractor$observable$1(this));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create {\n    …t.onCompleted()\n        }");
        return create;
    }
}
