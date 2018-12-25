package ru.rocketbank.r2d2.shop.cart;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartItem;
import ru.rocketbank.core.model.shop.CartStorage;
import ru.rocketbank.core.utils.Interactor;
import rx.Observable;
import rx.Observable.OnSubscribe;

/* compiled from: RemoveCartItemInteractor.kt */
public final class RemoveCartItemInteractor extends Interactor<Cart> {
    private final Cart cart;
    private final CartItem cartItem;
    private final CartStorage cartStorage;

    public RemoveCartItemInteractor(Cart cart, CartItem cartItem, CartStorage cartStorage) {
        Intrinsics.checkParameterIsNotNull(cart, "cart");
        Intrinsics.checkParameterIsNotNull(cartItem, "cartItem");
        Intrinsics.checkParameterIsNotNull(cartStorage, "cartStorage");
        this.cart = cart;
        this.cartItem = cartItem;
        this.cartStorage = cartStorage;
    }

    public final Cart getCart() {
        return this.cart;
    }

    public final CartItem getCartItem() {
        return this.cartItem;
    }

    public final CartStorage getCartStorage() {
        return this.cartStorage;
    }

    public final Observable<Cart> getObservable() {
        Observable<Cart> create = Observable.create((OnSubscribe) new RemoveCartItemInteractor$observable$1(this));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create {\n    …t.onCompleted()\n        }");
        return create;
    }
}
