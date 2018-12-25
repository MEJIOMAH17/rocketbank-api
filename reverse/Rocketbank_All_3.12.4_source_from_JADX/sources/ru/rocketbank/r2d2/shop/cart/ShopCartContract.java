package ru.rocketbank.r2d2.shop.cart;

import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartItem;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.r2d2.shop.ShopPresenterInterface;
import ru.rocketbank.r2d2.shop.ShopViewInterface;

/* compiled from: ShopCartContract.kt */
public interface ShopCartContract {

    /* compiled from: ShopCartContract.kt */
    public interface Presenter extends ShopPresenterInterface {

        /* compiled from: ShopCartContract.kt */
        public static final class DefaultImpls {
            public static /* bridge */ /* synthetic */ void load$default(Presenter presenter, boolean z, int i, Object obj) {
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: load");
                }
                if ((i & 1) != 0) {
                    z = false;
                }
                presenter.load(z);
            }
        }

        void checkout();

        void load(boolean z);

        void onInfoClick();

        void onItemClick(CartItem cartItem);

        void remove(CartItem cartItem);
    }

    /* compiled from: ShopCartContract.kt */
    public interface View extends ShopViewInterface {
        void enableCheckoutButton(boolean z);

        void hideDeficit();

        void onCartLoaded(Cart cart, double d);

        void onItemDeleted(CartItem cartItem);

        void onItemsEmpty();

        void onItemsLoadingError();

        void onLoadingInProgress();

        void showCheckoutActivity(Cart cart);

        void showItemInfo(ShopItem shopItem);

        void showRocketrublesInfo();

        void updateAmount(double d);

        void updateDeficit(double d);
    }
}
