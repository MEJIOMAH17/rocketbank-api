package ru.rocketbank.r2d2.shop.order;

import java.util.List;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.network.model.AddressData;
import ru.rocketbank.r2d2.shop.ShopPresenterInterface;
import ru.rocketbank.r2d2.shop.ShopViewInterface;

/* compiled from: ShopOrderContract.kt */
public interface ShopOrderContract {

    /* compiled from: ShopOrderContract.kt */
    public interface Presenter extends ShopPresenterInterface {
        void confirm();

        void haveQuestion();

        void init(Cart cart);

        void onAddressTyped(String str);

        void onResult(boolean z);
    }

    /* compiled from: ShopOrderContract.kt */
    public interface View extends ShopViewInterface {
        void back();

        void onConfirmed(Cart cart);

        void setConfirmButtonEnabled(boolean z);

        void showAddresses(List<AddressData> list);

        void showAmount(double d);

        void showShopInfo();
    }
}
