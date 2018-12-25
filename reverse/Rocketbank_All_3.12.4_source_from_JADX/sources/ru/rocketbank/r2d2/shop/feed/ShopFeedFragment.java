package ru.rocketbank.r2d2.shop.feed;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.FragmentShopFeedBinding;
import ru.rocketbank.r2d2.fragments.PresenterFragment;
import ru.rocketbank.r2d2.shop.cart.ShopCartActivity;
import ru.rocketbank.r2d2.shop.details.ShopDetailsActivity;
import ru.rocketbank.r2d2.shop.feed.ShopFeedContract.View;

/* compiled from: ShopFeedFragment.kt */
public final class ShopFeedFragment extends PresenterFragment<ShopFeedPresenter> implements View {
    public static final Companion Companion = new Companion();
    private static List<? extends ShopItem> items;
    private HashMap _$_findViewCache;
    private final ShopFragmentData data = new ShopFragmentData();
    public ShopFeedAdapter shopFeedAdapter;

    /* compiled from: ShopFeedFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final List<ShopItem> getItems() {
            return ShopFeedFragment.items;
        }

        public final void setItems(List<? extends ShopItem> list) {
            ShopFeedFragment.items = list;
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
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final ShopFragmentData getData() {
        return this.data;
    }

    public final ShopFeedAdapter getShopFeedAdapter() {
        ShopFeedAdapter shopFeedAdapter = this.shopFeedAdapter;
        if (shopFeedAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopFeedAdapter");
        }
        return shopFeedAdapter;
    }

    public final void setShopFeedAdapter(ShopFeedAdapter shopFeedAdapter) {
        Intrinsics.checkParameterIsNotNull(shopFeedAdapter, "<set-?>");
        this.shopFeedAdapter = shopFeedAdapter;
    }

    public final ShopFeedPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        return (ShopFeedPresenter) PresenterManager.getOrCreatePresenter("d560c71c-400c-45e3-a40d-d8011ce08409", ShopFeedPresenter.class);
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.shopFeedAdapter = new ShopFeedAdapter(CollectionsKt.emptyList(), new ShopFeedFragment$onCreate$1(this));
        ((ShopFeedPresenter) getPresenter()).setView(this);
    }

    public final android.view.View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentShopFeedBinding.inflate(layoutInflater);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding");
        layoutInflater.setData(this.data);
        layoutInflater = layoutInflater.getRoot();
        setupDefaultToolbar(layoutInflater, C0859R.id.toolbar);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "view");
        ((Toolbar) layoutInflater.findViewById(C0859R.id.toolbar)).setTitle(C0859R.string.shop_title);
        RecyclerView recyclerView = (RecyclerView) layoutInflater.findViewById(C0859R.id.recyclerView);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "view.recyclerView");
        recyclerView.setLayoutManager((LayoutManager) new LinearLayoutManager(getContext()));
        recyclerView = (RecyclerView) layoutInflater.findViewById(C0859R.id.recyclerView);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "view.recyclerView");
        bundle = this.shopFeedAdapter;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopFeedAdapter");
        }
        recyclerView.setAdapter((Adapter) bundle);
        ((ImageButton) layoutInflater.findViewById(C0859R.id.cartButton)).setOnClickListener((OnClickListener) new ShopFeedFragment$onCreateView$1(this));
        return layoutInflater;
    }

    public final void onViewCreated(android.view.View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ((ShopFeedPresenter) getPresenter()).loadItems();
    }

    public final void onLoadingInProgress() {
        ShopFragmentData.set$default(this.data, true, false, false, false, 14, null);
    }

    public final void onItemsLoaded(List<? extends ShopItem> list) {
        Intrinsics.checkParameterIsNotNull(list, "items");
        ShopFragmentData.set$default(this.data, false, false, false, true, 7, null);
        items = list;
        ShopFeedAdapter shopFeedAdapter = this.shopFeedAdapter;
        if (shopFeedAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopFeedAdapter");
        }
        shopFeedAdapter.setItems(list);
    }

    public final void onItemsLoadingError() {
        ShopFragmentData.set$default(this.data, false, true, false, false, 13, null);
    }

    public final void onItemsEmpty() {
        ShopFragmentData.set$default(this.data, false, false, true, false, 11, null);
    }

    public final void showItemInfo(ShopItem shopItem) {
        Intrinsics.checkParameterIsNotNull(shopItem, "shopItem");
        ru.rocketbank.r2d2.shop.details.ShopDetailsActivity.Companion companion = ShopDetailsActivity.Companion;
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        companion.startActivity(context, shopItem);
    }

    public final void showCart() {
        ru.rocketbank.r2d2.shop.cart.ShopCartActivity.Companion companion = ShopCartActivity.Companion;
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        companion.startActivity(context);
    }

    public final void showCartButton(int i) {
        this.data.getCartSize().set(String.valueOf(i));
        this.data.getCartButtonEnabled().set(true);
    }

    public final void hideCartButton() {
        this.data.getCartButtonEnabled().set(false);
    }
}
