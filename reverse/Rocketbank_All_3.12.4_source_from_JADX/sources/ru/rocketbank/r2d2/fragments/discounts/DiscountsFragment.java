package ru.rocketbank.r2d2.fragments.discounts;

import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.loader.cacher.discounts.DiscountCache;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.r2d2.ActionBarTitleInstaller;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.IHostFragment;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.adapters.discounts.CachingDiscountsAdapter;
import ru.rocketbank.r2d2.databinding.FragmentDiscountsBinding;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: DiscountsFragment.kt */
public final class DiscountsFragment extends RocketFragment implements OnRefreshListener, ActionBarTitleInstaller, IHostFragment {
    public static final Companion Companion = new Companion();
    private static final String TAG = "DiscountsFragment";
    private HashMap _$_findViewCache;
    private FragmentDiscountsBinding binding;
    private Subscription collectionSubscription;
    private CachingDiscountsAdapter discountAdapter;
    public DiscountCache discountCache;
    private RecyclerView recyclerView;
    public RocketAPI rocketAPI;
    private SwipeRefreshLayout swipeRefresh;

    /* compiled from: DiscountsFragment.kt */
    public static final class Companion {
        private static /* synthetic */ void TAG$annotations() {
        }

        private Companion() {
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
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

    public final boolean canBack() {
        return false;
    }

    public final boolean canShowMenu() {
        return false;
    }

    public final void moveBack() {
    }

    public static final /* synthetic */ CachingDiscountsAdapter access$getDiscountAdapter$p(DiscountsFragment discountsFragment) {
        discountsFragment = discountsFragment.discountAdapter;
        if (discountsFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("discountAdapter");
        }
        return discountsFragment;
    }

    public static final /* synthetic */ SwipeRefreshLayout access$getSwipeRefresh$p(DiscountsFragment discountsFragment) {
        discountsFragment = discountsFragment.swipeRefresh;
        if (discountsFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefresh");
        }
        return discountsFragment;
    }

    public final RocketAPI getRocketAPI() {
        RocketAPI rocketAPI = this.rocketAPI;
        if (rocketAPI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
        }
        return rocketAPI;
    }

    public final void setRocketAPI(RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(rocketAPI, "<set-?>");
        this.rocketAPI = rocketAPI;
    }

    public final DiscountCache getDiscountCache() {
        DiscountCache discountCache = this.discountCache;
        if (discountCache == null) {
            Intrinsics.throwUninitializedPropertyAccessException("discountCache");
        }
        return discountCache;
    }

    public final void setDiscountCache(DiscountCache discountCache) {
        Intrinsics.checkParameterIsNotNull(discountCache, "<set-?>");
        this.discountCache = discountCache;
    }

    public final String getActionBarTitle() {
        String string = getString(C0859R.string.fragment_discounts_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.fragment_discounts_title)");
        return string;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentDiscountsBinding.inflate(layoutInflater, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentDiscountsBinding…flater, container, false)");
        this.binding = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.swipeRefresh;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.swipeRefresh");
        this.swipeRefresh = layoutInflater;
        layoutInflater = this.swipeRefresh;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefresh");
        }
        layoutInflater.setColorSchemeResources(new int[]{C0859R.color.orange_variant_2});
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return layoutInflater.getRoot();
    }

    public final void onEvent(DiscountUpdateEvent discountUpdateEvent) {
        Intrinsics.checkParameterIsNotNull(discountUpdateEvent, NotificationCompat.CATEGORY_EVENT);
        load$default(this, null, 1, null);
    }

    public final void onStart() {
        super.onStart();
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefresh;
        if (swipeRefreshLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefresh");
        }
        swipeRefreshLayout.setOnRefreshListener(this);
    }

    public final void onStop() {
        super.onStop();
        Subscription subscription = this.collectionSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        hideSpinner();
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefresh;
        if (swipeRefreshLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefresh");
        }
        swipeRefreshLayout.setOnRefreshListener(null);
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.rocketAPI = getInjector().getRocketApi();
        this.discountCache = getInjector().getDiscountCache();
        view = this.binding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        view = view.recyclerView;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.recyclerView");
        this.recyclerView = view;
        view = this.recyclerView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        view.setLayoutManager((LayoutManager) new LinearLayoutManager(getContext()));
        view = this.binding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        view = view.toolbar;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view = view.toolbar;
        setToolbarSize(view, getStatusBarHeight());
        setToolbarActionBar(view);
        this.discountAdapter = new CachingDiscountsAdapter();
        view = this.recyclerView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        bundle = this.discountAdapter;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("discountAdapter");
        }
        view.setAdapter((Adapter) bundle);
        RocketApplication.Companion.getInjector().getAnalyticsManager().discounts();
        load$default(this, null, 1, null);
    }

    public final void onDestroyView() {
        super.onDestroyView();
        CachingDiscountsAdapter cachingDiscountsAdapter = this.discountAdapter;
        if (cachingDiscountsAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("discountAdapter");
        }
        cachingDiscountsAdapter.onDestroy();
        _$_clearFindViewByIdCache();
    }

    public final void onRefresh() {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefresh;
        if (swipeRefreshLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefresh");
        }
        swipeRefreshLayout.setRefreshing(true);
        load(true);
    }

    static /* bridge */ /* synthetic */ void load$default(DiscountsFragment discountsFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        discountsFragment.load(z);
    }

    private final void load(boolean z) {
        DiscountCache discountCache = this.discountCache;
        if (discountCache == null) {
            Intrinsics.throwUninitializedPropertyAccessException("discountCache");
        }
        if (!discountCache.isEmpty()) {
            CachingDiscountsAdapter cachingDiscountsAdapter = this.discountAdapter;
            if (cachingDiscountsAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("discountAdapter");
            }
            DiscountCache discountCache2 = this.discountCache;
            if (discountCache2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("discountCache");
            }
            cachingDiscountsAdapter.swap(discountCache2.getLastCollection());
        } else if (!z) {
            RocketFragment.showSpinner$default(this, 0, 1, null);
        }
        RocketAPI rocketAPI = this.rocketAPI;
        if (rocketAPI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
        }
        this.collectionSubscription = rocketAPI.getDiscounts().observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new DiscountsFragment$load$1(this, z));
    }
}
