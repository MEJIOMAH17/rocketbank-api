package ru.rocketbank.r2d2.shop.details;

import ru.rocketbank.core.model.shop.Color;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.model.shop.Size;
import ru.rocketbank.r2d2.shop.ShopPresenterInterface;
import ru.rocketbank.r2d2.shop.ShopViewInterface;

/* compiled from: ShopDetailsContract.kt */
public interface ShopDetailsContract {

    /* compiled from: ShopDetailsContract.kt */
    public interface Presenter extends ShopPresenterInterface {
        void addToCart(ShopItem shopItem);

        void onCartButtonClick();

        void selectColor(Color color);

        void selectSize(Size size);
    }

    /* compiled from: ShopDetailsContract.kt */
    public interface View extends ShopViewInterface {
        void hideAddToCartButton();

        void showAddToCartButton();

        void showAddToCartMessage();

        void showCart();
    }
}
