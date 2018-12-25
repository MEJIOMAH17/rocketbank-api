package ru.rocketbank.r2d2.shop.feed;

import java.util.List;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.r2d2.shop.ShopPresenterInterface;
import ru.rocketbank.r2d2.shop.ShopViewInterface;

/* compiled from: ShopFeedContract.kt */
public interface ShopFeedContract {

    /* compiled from: ShopFeedContract.kt */
    public interface Presenter extends ShopPresenterInterface {
        void loadItems();

        void onCartButtonClick();

        void onItemClick(ShopItem shopItem);
    }

    /* compiled from: ShopFeedContract.kt */
    public interface View extends ShopViewInterface {
        void hideCartButton();

        void onItemsEmpty();

        void onItemsLoaded(List<? extends ShopItem> list);

        void onItemsLoadingError();

        void onLoadingInProgress();

        void showCart();

        void showCartButton(int i);

        void showItemInfo(ShopItem shopItem);
    }
}
