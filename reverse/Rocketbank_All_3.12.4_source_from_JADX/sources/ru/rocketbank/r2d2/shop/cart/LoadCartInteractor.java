package ru.rocketbank.r2d2.shop.cart;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartStorage;
import ru.rocketbank.core.network.api.ShopApi;
import ru.rocketbank.core.utils.Interactor;
import ru.rocketbank.r2d2.shop.feed.LoadShopItemsInteractor;
import rx.Observable;
import rx.Observable.OnSubscribe;

/* compiled from: LoadCartInteractor.kt */
public final class LoadCartInteractor extends Interactor<Cart> {
    public static final Companion Companion = new Companion();
    private static Cart cart;
    private final CartStorage cartStorage;
    private LoadShopItemsInteractor loadShopItemsInteractor;
    private final ShopApi shopApi;

    /* compiled from: LoadCartInteractor.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Cart getCart() {
            return LoadCartInteractor.cart;
        }

        public final void setCart(Cart cart) {
            LoadCartInteractor.cart = cart;
        }
    }

    public LoadCartInteractor(CartStorage cartStorage, ShopApi shopApi) {
        Intrinsics.checkParameterIsNotNull(cartStorage, "cartStorage");
        Intrinsics.checkParameterIsNotNull(shopApi, "shopApi");
        this.cartStorage = cartStorage;
        this.shopApi = shopApi;
    }

    public final CartStorage getCartStorage() {
        return this.cartStorage;
    }

    public final ShopApi getShopApi() {
        return this.shopApi;
    }

    public final LoadShopItemsInteractor getLoadShopItemsInteractor() {
        return this.loadShopItemsInteractor;
    }

    public final void setLoadShopItemsInteractor(LoadShopItemsInteractor loadShopItemsInteractor) {
        this.loadShopItemsInteractor = loadShopItemsInteractor;
    }

    public final void unsubscribe() {
        super.unsubscribe();
        LoadShopItemsInteractor loadShopItemsInteractor = this.loadShopItemsInteractor;
        if (loadShopItemsInteractor != null) {
            loadShopItemsInteractor.unsubscribe();
        }
    }

    public final Observable<Cart> getObservable() {
        Observable<Cart> create = Observable.create((OnSubscribe) new LoadCartInteractor$observable$1(this));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create<Cart> …)\n            }\n        }");
        return create;
    }
}
