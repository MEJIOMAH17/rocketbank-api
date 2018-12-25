package ru.rocketbank.r2d2.shop.cart;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartItem;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.databinding.ActivityShopCartBinding;
import ru.rocketbank.r2d2.fragments.rocketrouble.RocketRubleInfoActivity;
import ru.rocketbank.r2d2.shop.cart.ShopCartContract.Presenter.DefaultImpls;
import ru.rocketbank.r2d2.shop.cart.ShopCartContract.View;
import ru.rocketbank.r2d2.shop.details.ShopDetailsActivity;
import ru.rocketbank.r2d2.shop.feed.ShopFragmentData;
import ru.rocketbank.r2d2.shop.order.ShopOrderActivity;

/* compiled from: ShopCartActivity.kt */
public final class ShopCartActivity extends PresenterSecuredActivity<ShopCartPresenter> implements View {
    public static final Companion Companion = new Companion();
    private static final int REQUEST_CODE = 0;
    private HashMap _$_findViewCache;
    private final ShopCartViewModel data = new ShopCartViewModel();
    public ShopCartAdapter shopCartAdapter;

    /* compiled from: ShopCartActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getREQUEST_CODE() {
            return ShopCartActivity.REQUEST_CODE;
        }

        public final void startActivity(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            context.startActivity(new Intent(context, ShopCartActivity.class));
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final android.view.View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        android.view.View view = (android.view.View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public final ShopCartViewModel getData() {
        return this.data;
    }

    public final ShopCartAdapter getShopCartAdapter() {
        ShopCartAdapter shopCartAdapter = this.shopCartAdapter;
        if (shopCartAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopCartAdapter");
        }
        return shopCartAdapter;
    }

    public final void setShopCartAdapter(ShopCartAdapter shopCartAdapter) {
        Intrinsics.checkParameterIsNotNull(shopCartAdapter, "<set-?>");
        this.shopCartAdapter = shopCartAdapter;
    }

    public final ShopCartPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        return (ShopCartPresenter) PresenterManager.getOrCreatePresenter("df346d56-a4d2-48c4-8da8-9f5411566c8f", ShopCartPresenter.class);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_shop_cart);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…ayout.activity_shop_cart)");
        ActivityShopCartBinding activityShopCartBinding = (ActivityShopCartBinding) bundle;
        setSupportActionBar((Toolbar) _$_findCachedViewById(C0859R.id.toolbar));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        setTitle(C0859R.string.cart_activity_title);
        activityShopCartBinding.setData(this.data);
        ((ShopCartPresenter) getPresenter()).setView(this);
        this.shopCartAdapter = new ShopCartAdapter(new ShopCartActivity$onCreate$1(this), new ShopCartActivity$onCreate$2(this), new ShopCartActivity$onCreate$3(this));
        RecyclerView recyclerView = (RecyclerView) _$_findCachedViewById(C0859R.id.recyclerView);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView = (RecyclerView) _$_findCachedViewById(C0859R.id.recyclerView);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
        ShopCartAdapter shopCartAdapter = this.shopCartAdapter;
        if (shopCartAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopCartAdapter");
        }
        recyclerView.setAdapter(shopCartAdapter);
        ((RocketButton) _$_findCachedViewById(C0859R.id.checkoutButton)).setOnClickListener(new ShopCartActivity$onCreate$4(this));
    }

    protected final void onStart() {
        super.onStart();
        DefaultImpls.load$default((ShopCartPresenter) getPresenter(), false, 1, null);
    }

    public final void onUserModel(UserModel userModel) {
        super.onUserModel(userModel);
        DefaultImpls.load$default((ShopCartPresenter) getPresenter(), false, 1, null);
    }

    public final void onItemDeleted(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "cartItem");
        ShopCartAdapter shopCartAdapter = this.shopCartAdapter;
        if (shopCartAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopCartAdapter");
        }
        shopCartAdapter.delete(cartItem);
    }

    public final void showCheckoutActivity(Cart cart) {
        Intrinsics.checkParameterIsNotNull(cart, "cart");
        startActivityForResult(ShopOrderActivity.Companion.createIntent(this, cart), REQUEST_CODE);
    }

    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE && i2 == -1) {
            setResult(-1);
            finish();
        }
    }

    public final void onLoadingInProgress() {
        ShopFragmentData.set$default(this.data, true, false, false, false, 14, null);
    }

    public final void onCartLoaded(Cart cart, double d) {
        Intrinsics.checkParameterIsNotNull(cart, "cart");
        ShopFragmentData.set$default(this.data, false, false, false, true, 7, null);
        ShopCartAdapter shopCartAdapter = this.shopCartAdapter;
        if (shopCartAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopCartAdapter");
        }
        shopCartAdapter.setData(cart.getItems(), cart.getAmount(), d);
    }

    public final void onItemsLoadingError() {
        ShopFragmentData.set$default(this.data, false, true, false, false, 13, null);
    }

    public final void onItemsEmpty() {
        ShopFragmentData.set$default(this.data, false, false, true, false, 11, null);
    }

    public final void showItemInfo(ShopItem shopItem) {
        Intrinsics.checkParameterIsNotNull(shopItem, "shopItem");
        ShopDetailsActivity.Companion.startActivity(this, shopItem);
    }

    public final void updateAmount(double d) {
        ShopCartAdapter shopCartAdapter = this.shopCartAdapter;
        if (shopCartAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopCartAdapter");
        }
        shopCartAdapter.getAmount().set(d);
    }

    public final void updateDeficit(double d) {
        ShopCartAdapter shopCartAdapter = this.shopCartAdapter;
        if (shopCartAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopCartAdapter");
        }
        shopCartAdapter.setDeficit(d);
    }

    public final void hideDeficit() {
        ShopCartAdapter shopCartAdapter = this.shopCartAdapter;
        if (shopCartAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopCartAdapter");
        }
        shopCartAdapter.setDeficit(0.0d);
    }

    public final void enableCheckoutButton(boolean z) {
        this.data.getEnableCheckoutButton().set(z);
    }

    public final void showRocketrublesInfo() {
        ShopCartAdapter shopCartAdapter = this.shopCartAdapter;
        if (shopCartAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopCartAdapter");
        }
        android.view.View infoButton = shopCartAdapter.getInfoButton();
        int[] iArr = new int[]{0, 0};
        if (infoButton != null) {
            infoButton.getLocationOnScreen(iArr);
        }
        int i = 0;
        int width = iArr[0] + ((infoButton != null ? infoButton.getWidth() : 0) / 2);
        int i2 = iArr[1];
        if (infoButton != null) {
            i = infoButton.getWidth();
        }
        RocketRubleInfoActivity.Companion.startActivity(this, true, width, i2 + (i / 2));
    }
}
