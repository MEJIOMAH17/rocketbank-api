package ru.rocketbank.r2d2.shop.cart;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.r2d2.shop.cart.ShopCartContract.View;
import rx.functions.Action1;

/* compiled from: ShopCartPresenter.kt */
final class ShopCartPresenter$onCartLoaded$1<T> implements Action1<UserModel> {
    final /* synthetic */ Cart $cart;
    final /* synthetic */ ShopCartPresenter this$0;

    ShopCartPresenter$onCartLoaded$1(ShopCartPresenter shopCartPresenter, Cart cart) {
        this.this$0 = shopCartPresenter;
        this.$cart = cart;
    }

    public final void call(UserModel userModel) {
        ShopCartPresenter shopCartPresenter = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(userModel, "it");
        shopCartPresenter.miles = (double) userModel.getMiles();
        if (this.$cart.isEmpty() != null) {
            this.this$0.cartIsEmpty();
            return;
        }
        double deficit = this.$cart.getDeficit(this.this$0.miles);
        View view = (View) this.this$0.getView();
        if (view != null) {
            view.onCartLoaded(this.$cart, deficit);
        }
        this.this$0.updateDeficit(deficit);
    }
}
