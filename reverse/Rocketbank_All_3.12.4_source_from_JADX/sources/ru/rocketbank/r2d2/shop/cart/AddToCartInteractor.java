package ru.rocketbank.r2d2.shop.cart;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartStorage;
import ru.rocketbank.core.model.shop.Color;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.model.shop.Size;
import ru.rocketbank.core.utils.Interactor;
import rx.Observable;
import rx.Observable.OnSubscribe;

/* compiled from: AddToCartInteractor.kt */
public final class AddToCartInteractor extends Interactor<Cart> {
    private final Cart cart;
    private final CartStorage cartStorage;
    private final Color color;
    private final ShopItem shopItem;
    private final Size size;

    public AddToCartInteractor(Cart cart, CartStorage cartStorage, ShopItem shopItem, Size size, Color color) {
        Intrinsics.checkParameterIsNotNull(cart, "cart");
        Intrinsics.checkParameterIsNotNull(cartStorage, "cartStorage");
        Intrinsics.checkParameterIsNotNull(shopItem, "shopItem");
        this.cart = cart;
        this.cartStorage = cartStorage;
        this.shopItem = shopItem;
        this.size = size;
        this.color = color;
    }

    public /* synthetic */ AddToCartInteractor(Cart cart, CartStorage cartStorage, ShopItem shopItem, Size size, Color color, int i, Ref ref) {
        this(cart, cartStorage, shopItem, (i & 8) != null ? null : size, (i & 16) != null ? null : color);
    }

    public final Cart getCart() {
        return this.cart;
    }

    public final CartStorage getCartStorage() {
        return this.cartStorage;
    }

    public final Color getColor() {
        return this.color;
    }

    public final ShopItem getShopItem() {
        return this.shopItem;
    }

    public final Size getSize() {
        return this.size;
    }

    public final Observable<Cart> getObservable() {
        Observable<Cart> create = Observable.create((OnSubscribe) new AddToCartInteractor$observable$1(this));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create {\n    …t.onCompleted()\n        }");
        return create;
    }
}
