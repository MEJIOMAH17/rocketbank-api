package ru.rocketbank.r2d2.shop.details;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.Color;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.model.shop.Size;
import ru.rocketbank.core.utils.Interactor;
import ru.rocketbank.r2d2.shop.AbstractShopPresenter;
import ru.rocketbank.r2d2.shop.cart.AddToCartInteractor;
import ru.rocketbank.r2d2.shop.cart.LoadCartInteractor;
import ru.rocketbank.r2d2.shop.details.ShopDetailsContract.Presenter;
import ru.rocketbank.r2d2.shop.details.ShopDetailsContract.View;

/* compiled from: ShopDetailsPresenter.kt */
public final class ShopDetailsPresenter extends AbstractShopPresenter<View> implements Presenter {
    private Color color;
    public ShopItem shopItem;
    private Size size;

    public final ShopItem getShopItem() {
        ShopItem shopItem = this.shopItem;
        if (shopItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopItem");
        }
        return shopItem;
    }

    public final void setShopItem(ShopItem shopItem) {
        Intrinsics.checkParameterIsNotNull(shopItem, "<set-?>");
        this.shopItem = shopItem;
    }

    public final void selectSize(Size size) {
        this.size = size;
        updateButton();
    }

    public final void selectColor(Color color) {
        this.color = color;
        updateButton();
    }

    public final void onAttached(Object obj) {
        Intrinsics.checkParameterIsNotNull(obj, "target");
        super.onAttached(obj);
        updateButton();
    }

    private final void updateButton() {
        View view;
        if (canAdd()) {
            view = (View) getView();
            if (view != null) {
                view.showAddToCartButton();
            }
            return;
        }
        view = (View) getView();
        if (view != null) {
            view.hideAddToCartButton();
        }
    }

    private final boolean canAdd() {
        boolean z;
        ShopItem shopItem = this.shopItem;
        if (shopItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopItem");
        }
        List sizes = shopItem.getSizes();
        boolean z2 = (sizes != null ? sizes.size() : 0) > 1;
        ShopItem shopItem2 = this.shopItem;
        if (shopItem2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopItem");
        }
        List colors = shopItem2.getColors();
        boolean z3 = (colors != null ? colors.size() : 0) > 1;
        ShopItem shopItem3 = this.shopItem;
        if (shopItem3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopItem");
        }
        CharSequence price_replacement = shopItem3.getPrice_replacement();
        if (price_replacement != null) {
            if (!StringsKt.isBlank(price_replacement)) {
                z = false;
                if (z3 && !z2 && z) {
                    return true;
                }
                return (z2 || this.size != null) && (!(z3 && this.color == null) && z);
            }
        }
        z = true;
        if (z3) {
        }
        if (z2) {
        }
    }

    public final void addToCart(ShopItem shopItem) {
        Intrinsics.checkParameterIsNotNull(shopItem, "shopItem");
        Cart cart = LoadCartInteractor.Companion.getCart();
        if (cart == null) {
            cart = new Cart(CollectionsKt.emptyList());
        }
        Interactor.execute$default(new AddToCartInteractor(cart, getCartStorage(), shopItem, this.size, this.color), (Function1) new ShopDetailsPresenter$addToCart$1(this), null, null, 6, null);
    }

    public final void onCartButtonClick() {
        View view = (View) getView();
        if (view != null) {
            view.showCart();
        }
    }
}
