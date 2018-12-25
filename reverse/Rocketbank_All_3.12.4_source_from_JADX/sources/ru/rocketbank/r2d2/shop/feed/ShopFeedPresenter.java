package ru.rocketbank.r2d2.shop.feed;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.utils.Interactor;
import ru.rocketbank.r2d2.shop.AbstractShopPresenter;
import ru.rocketbank.r2d2.shop.cart.LoadCartInteractor;
import ru.rocketbank.r2d2.shop.feed.ShopFeedContract.Presenter;
import ru.rocketbank.r2d2.shop.feed.ShopFeedContract.View;

/* compiled from: ShopFeedPresenter.kt */
public final class ShopFeedPresenter extends AbstractShopPresenter<View> implements Presenter {
    public final void loadItems() {
        View view = (View) getView();
        if (view != null) {
            view.onLoadingInProgress();
        }
        Interactor loadShopItemsInteractor = new LoadShopItemsInteractor(getShopApi());
        addInteractor(loadShopItemsInteractor);
        Interactor.execute$default(loadShopItemsInteractor, new ShopFeedPresenter$loadItems$1(this), new ShopFeedPresenter$loadItems$2(this), null, 4, null);
    }

    private final void onItemsLoaded(List<? extends ShopItem> list) {
        if (list.isEmpty()) {
            View view = (View) getView();
            if (view != null) {
                view.onItemsEmpty();
            }
        } else {
            View view2 = (View) getView();
            if (view2 != null) {
                view2.onItemsLoaded(list);
            }
        }
        Interactor loadCartInteractor = new LoadCartInteractor(getCartStorage(), getShopApi());
        addInteractor(loadCartInteractor);
        Interactor.execute$default(loadCartInteractor, (Function1) new ShopFeedPresenter$onItemsLoaded$1(this), (Function1) new ShopFeedPresenter$onItemsLoaded$2(this), null, 4, null);
    }

    private final void onLoadingError(Throwable th) {
        th.printStackTrace();
        View view = (View) getView();
        if (view != null) {
            view.onItemsLoadingError();
        }
    }

    private final void onCartLoaded(Cart cart) {
        if (cart.isEmpty()) {
            View view = (View) getView();
            if (view != null) {
                view.hideCartButton();
            }
            return;
        }
        View view2 = (View) getView();
        if (view2 != null) {
            view2.showCartButton(cart.getItems().size());
        }
    }

    public final void onItemClick(ShopItem shopItem) {
        Intrinsics.checkParameterIsNotNull(shopItem, "shopItem");
        View view = (View) getView();
        if (view != null) {
            view.showItemInfo(shopItem);
        }
    }

    public final void onCartButtonClick() {
        View view = (View) getView();
        if (view != null) {
            view.showCart();
        }
    }
}
