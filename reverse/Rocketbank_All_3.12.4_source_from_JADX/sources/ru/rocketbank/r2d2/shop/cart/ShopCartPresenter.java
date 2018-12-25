package ru.rocketbank.r2d2.shop.cart;

import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartItem;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.Interactor;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.shop.AbstractShopPresenter;
import ru.rocketbank.r2d2.shop.cart.ShopCartContract.Presenter;
import ru.rocketbank.r2d2.shop.cart.ShopCartContract.View;
import rx.functions.Action1;

/* compiled from: ShopCartPresenter.kt */
public final class ShopCartPresenter extends AbstractShopPresenter<View> implements Presenter {
    private final Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
    private double miles;

    public final void load(boolean z) {
        View view = (View) getView();
        if (view != null) {
            view.onLoadingInProgress();
        }
        Interactor loadCartInteractor = new LoadCartInteractor(getCartStorage(), getShopApi());
        addInteractor(loadCartInteractor);
        Interactor.execute$default(loadCartInteractor, (Function1) new ShopCartPresenter$load$1(this), (Function1) new ShopCartPresenter$load$2(this), null, 4, null);
    }

    private final void onCartLoaded(Cart cart) {
        this.authorization.getUser().subscribe((Action1) new ShopCartPresenter$onCartLoaded$1(this, cart));
    }

    private final void updateDeficit(double d) {
        int i = d != 0.0d ? 1 : 0;
        View view = (View) getView();
        if (view != null) {
            view.enableCheckoutButton(i ^ 1);
        }
        if (i != 0) {
            View view2 = (View) getView();
            if (view2 != null) {
                view2.updateDeficit(d);
            }
            return;
        }
        View view3 = (View) getView();
        if (view3 != null) {
            view3.hideDeficit();
        }
    }

    private final void onLoadingError(Throwable th) {
        th.printStackTrace();
        View view = (View) getView();
        if (view != null) {
            view.onItemsLoadingError();
        }
    }

    public final void onItemClick(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "cartItem");
        View view = (View) getView();
        if (view != null) {
            view.showItemInfo(cartItem.getShopItem());
        }
    }

    public final void remove(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "cartItem");
        Cart cart = LoadCartInteractor.Companion.getCart();
        if (cart == null) {
            cart = new Cart(CollectionsKt.emptyList());
        }
        Interactor removeCartItemInteractor = new RemoveCartItemInteractor(cart, cartItem, getCartStorage());
        addInteractor(removeCartItemInteractor);
        Interactor.execute$default(removeCartItemInteractor, new ShopCartPresenter$remove$1(this, cartItem), null, null, 6, null);
    }

    private final void cartIsEmpty() {
        View view = (View) getView();
        if (view != null) {
            view.onItemsEmpty();
        }
        view = (View) getView();
        if (view != null) {
            view.enableCheckoutButton(false);
        }
    }

    public final void checkout() {
        if (LoadCartInteractor.Companion.getCart() != null) {
            Cart cart = LoadCartInteractor.Companion.getCart();
            if (cart == null) {
                Intrinsics.throwNpe();
            }
            if (cart.getDeficit(this.miles) == 0.0d) {
                View view = (View) getView();
                if (view != null) {
                    Cart cart2 = LoadCartInteractor.Companion.getCart();
                    if (cart2 == null) {
                        Intrinsics.throwNpe();
                    }
                    view.showCheckoutActivity(cart2);
                }
            }
        }
    }

    public final void onInfoClick() {
        View view = (View) getView();
        if (view != null) {
            view.showRocketrublesInfo();
        }
    }
}
