package ru.rocketbank.r2d2.shop.order;

import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.shop.AbstractShopPresenter;
import ru.rocketbank.r2d2.shop.order.ShopOrderContract.Presenter;
import ru.rocketbank.r2d2.shop.order.ShopOrderContract.View;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: ShopOrderPresenter.kt */
public final class ShopOrderPresenter extends AbstractShopPresenter<View> implements Presenter {
    public Cart cart;
    public StoreCheckoutViewModel data;
    private final RocketAPI rocketApi = RocketApplication.Companion.getInjector().getRocketApi();
    private Subscription subscription;

    public final RocketAPI getRocketApi() {
        return this.rocketApi;
    }

    public final StoreCheckoutViewModel getData() {
        StoreCheckoutViewModel storeCheckoutViewModel = this.data;
        if (storeCheckoutViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
        }
        return storeCheckoutViewModel;
    }

    public final void setData(StoreCheckoutViewModel storeCheckoutViewModel) {
        Intrinsics.checkParameterIsNotNull(storeCheckoutViewModel, "<set-?>");
        this.data = storeCheckoutViewModel;
    }

    public final Cart getCart() {
        Cart cart = this.cart;
        if (cart == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cart");
        }
        return cart;
    }

    public final void setCart(Cart cart) {
        Intrinsics.checkParameterIsNotNull(cart, "<set-?>");
        this.cart = cart;
    }

    public final Subscription getSubscription() {
        return this.subscription;
    }

    public final void setSubscription(Subscription subscription) {
        this.subscription = subscription;
    }

    public final void init(Cart cart) {
        Intrinsics.checkParameterIsNotNull(cart, "cart");
        this.cart = cart;
        StoreCheckoutViewModel storeCheckoutViewModel = this.data;
        if (storeCheckoutViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
        }
        Observable observeOn = storeCheckoutViewModel.getValidObservable().observeOn(AndroidSchedulers.mainThread());
        Action1 shopOrderPresenter$init$validSubscription$1 = new ShopOrderPresenter$init$validSubscription$1(this);
        Function1 function1 = ShopOrderPresenter$init$validSubscription$2.INSTANCE;
        if (function1 != null) {
            function1 = new ShopOrderPresenter$sam$rx_functions_Action1$0(function1);
        }
        Subscription subscribe = observeOn.subscribe(shopOrderPresenter$init$validSubscription$1, (Action1) function1);
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "validSubscription");
        addSubscription(subscribe);
        View view = (View) getView();
        if (view != null) {
            view.showAmount(cart.getAmount());
        }
    }

    public final void haveQuestion() {
        View view = (View) getView();
        if (view != null) {
            view.showShopInfo();
        }
    }

    private final void updateConfirmButton(boolean z) {
        View view = (View) getView();
        if (view != null) {
            view.setConfirmButtonEnabled(z);
        }
    }

    public final void confirm() {
        View view = (View) getView();
        if (view != null) {
            Cart cart = this.cart;
            if (cart == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cart");
            }
            view.onConfirmed(cart);
        }
    }

    public final void onResult(boolean z) {
        View view = (View) getView();
        if (view != null) {
            view.back();
        }
    }

    public final void onAddressTyped(String str) {
        Intrinsics.checkParameterIsNotNull(str, "address");
        unsubscribe(this.subscription);
        str = this.rocketApi.addresses(str).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new ShopOrderPresenter$onAddressTyped$s$1(this), (Action1) new ShopOrderPresenter$onAddressTyped$s$2(this));
        Intrinsics.checkExpressionValueIsNotNull(str, "s");
        addSubscription(str);
        this.subscription = str;
    }
}
