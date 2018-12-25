package ru.rocketbank.r2d2.shop.cart;

import android.databinding.ObservableBoolean;
import ru.rocketbank.r2d2.shop.feed.ShopFragmentData;

/* compiled from: ShopCartActivity.kt */
public final class ShopCartViewModel extends ShopFragmentData {
    private final ObservableBoolean enableCheckoutButton = new ObservableBoolean(false);

    public final ObservableBoolean getEnableCheckoutButton() {
        return this.enableCheckoutButton;
    }
}
