package ru.rocketbank.r2d2.root.feed;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.AppBarLayout.OnOffsetChangedListener;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.MenuItemCompat.OnActionExpandListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.RecyclerListener;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.SearchView.OnCloseListener;
import android.support.v7.widget.SearchView.OnQueryTextListener;
import android.support.v7.widget.Toolbar;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bumptech.glide.BitmapRequestBuilder;
import com.bumptech.glide.DrawableRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import java.util.Arrays;
import java.util.HashMap;
import jp.wasabeef.glide.transformations.ColorFilterTransformation;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import ru.rocketbank.core.NewPassportOperation;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.FeedManager.FeedRefreshIsNeeded;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.CoverModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.databinding.FragmentFeedBinding;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.fragments.refill.UserFeedRefillFragment;
import ru.rocketbank.r2d2.registration.new_passport.NewPassportActivity;

/* compiled from: FeedFragment.kt */
public final class FeedFragment extends RocketFragment implements OnOffsetChangedListener, OnActionExpandListener, OnRefreshListener, OnCloseListener, OnQueryTextListener, OnClickListener, ObservableScrollViewCallbacks, Feed {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(FeedFragment.class), "moneyFormatter", "getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(FeedFragment.class), "feedManager", "getFeedManager()Lru/rocketbank/core/manager/FeedManager;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(FeedFragment.class), "authorization", "getAuthorization()Lru/rocketbank/core/user/Authorization;"))};
    public static final Companion Companion = new Companion();
    public static final int NEW_PASSPORT_REQUEST = 402;
    private static final int OPERATION_LOADING = -1;
    private static final String TAG = "FeedFragment";
    private HashMap _$_findViewCache;
    private int actionBarSize;
    private double amount;
    private final Lazy authorization$delegate = ExceptionsKt__ExceptionsKt.lazy(FeedFragment$authorization$2.INSTANCE);
    private FragmentFeedBinding binding;
    private CropCircleTransformation cropCircleTransformation;
    private String currencyCode = "";
    private int fabMargin;
    private FeedAdapter feedAdapter;
    private final Lazy feedManager$delegate = ExceptionsKt__ExceptionsKt.lazy(FeedFragment$feedManager$2.INSTANCE);
    private FeedModel feedModel;
    private FeedPresenter feedPresenter;
    private int flexibleSpaceImageHeight;
    private int flexibleSpaceShowFabOffset;
    private final Handler handler = new Handler();
    private boolean isFullMoneyMode;
    private boolean isFullRocketMode;
    private boolean isSearchLocked;
    private boolean isToolbarAnimation;
    private LinearLayoutManager linearLayoutManager;
    private Runnable loadNextPageRunnable = new FeedFragment$loadNextPageRunnable$1(this);
    private double miles;
    private final Lazy moneyFormatter$delegate = ExceptionsKt__ExceptionsKt.lazy(FeedFragment$moneyFormatter$2.INSTANCE);
    private int parallaxSize;
    private ProgressDialog progressDialog;
    private Runnable refreshLimits = new FeedFragment$refreshLimits$1(this);
    private MenuItem searchMenuItem;
    private SearchView searchView;
    private int toolbarHeight;
    private UserModel userModel;
    private Vibrator vibrator;
    private int windowWidth;

    /* compiled from: FeedFragment.kt */
    public static final class Companion {
        public static /* synthetic */ void OPERATION_LOADING$annotations() {
        }

        private static /* synthetic */ void TAG$annotations() {
        }

        private Companion() {
        }

        public final int getOPERATION_LOADING() {
            return FeedFragment.OPERATION_LOADING;
        }
    }

    private final Authorization getAuthorization() {
        return (Authorization) this.authorization$delegate.getValue();
    }

    private final FeedManager getFeedManager() {
        return (FeedManager) this.feedManager$delegate.getValue();
    }

    private final MoneyFormatter getMoneyFormatter() {
        return (MoneyFormatter) this.moneyFormatter$delegate.getValue();
    }

    public static final int getOPERATION_LOADING() {
        return OPERATION_LOADING;
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

    public final void onDownMotionEvent() {
    }

    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        Intrinsics.checkParameterIsNotNull(menuItem, "item");
        return false;
    }

    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        Intrinsics.checkParameterIsNotNull(menuItem, "item");
        return false;
    }

    public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        Intrinsics.checkParameterIsNotNull(appBarLayout, "appBarLayout");
    }

    public final void onUpOrCancelMotionEvent(ScrollState scrollState) {
    }

    public static final /* synthetic */ FragmentFeedBinding access$getBinding$p(FeedFragment feedFragment) {
        feedFragment = feedFragment.binding;
        if (feedFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return feedFragment;
    }

    public static final /* synthetic */ MenuItem access$getSearchMenuItem$p(FeedFragment feedFragment) {
        feedFragment = feedFragment.searchMenuItem;
        if (feedFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchMenuItem");
        }
        return feedFragment;
    }

    public final Handler getHandler() {
        return this.handler;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        this.feedModel = new FeedModel();
        layoutInflater = FragmentFeedBinding.inflate(layoutInflater, viewGroup, null);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentFeedBinding.infl…flater, container, false)");
        this.binding = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        viewGroup = this.feedModel;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        layoutInflater.setFeed(viewGroup);
        this.parallaxSize = getResources().getDimensionPixelSize(C0859R.dimen.parallax_size);
        this.flexibleSpaceImageHeight = getResources().getDimensionPixelSize(C0859R.dimen.flexible_space_image_height);
        this.flexibleSpaceShowFabOffset = getResources().getDimensionPixelSize(C0859R.dimen.flexible_space_show_fab_offset);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.root;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.root");
        layoutInflater = layoutInflater.getContext().getSystemService("window");
        if (layoutInflater == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
        layoutInflater = ((WindowManager) layoutInflater).getDefaultDisplay();
        viewGroup = new Point();
        layoutInflater.getSize(viewGroup);
        this.windowWidth = viewGroup.x;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return (View) layoutInflater.root;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.vibrator = (Vibrator) view.getContext().getSystemService("vibrator");
        this.isSearchLocked = false;
        bundle = this.feedModel;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        bundle.setAppBarHeight(getStatusBarHeight());
        this.cropCircleTransformation = new CropCircleTransformation(getContext());
        setHasOptionsMenu(true);
        setupToolbar();
        initializeHeaderView();
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.feedView;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.feedView");
        if (bundle.getLayoutManager() == null) {
            this.linearLayoutManager = new LinearLayoutManager(getActivity());
            bundle = this.binding;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            bundle = bundle.feedView;
            Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.feedView");
            LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
            if (linearLayoutManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("linearLayoutManager");
            }
            bundle.setLayoutManager(linearLayoutManager);
        }
        if (this.feedPresenter == null) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
            Activity activity2 = activity;
            Feed feed = this;
            FeedAdapter feedAdapter = this.feedAdapter;
            FeedModel feedModel = this.feedModel;
            if (feedModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("feedModel");
            }
            this.feedPresenter = new FeedPresenter(activity2, feed, feedAdapter, feedModel);
        } else {
            bundle = this.feedPresenter;
            if (bundle != null) {
                FeedModel feedModel2 = this.feedModel;
                if (feedModel2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("feedModel");
                }
                bundle.setFeedModel(feedModel2);
            }
        }
        if (this.feedAdapter == null) {
            CropCircleTransformation cropCircleTransformation = this.cropCircleTransformation;
            if (cropCircleTransformation == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropCircleTransformation");
            }
            FeedPresenter feedPresenter = this.feedPresenter;
            if (feedPresenter == null) {
                Intrinsics.throwNpe();
            }
            FeedModel feedModel3 = this.feedModel;
            if (feedModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("feedModel");
            }
            FragmentFeedBinding fragmentFeedBinding = this.binding;
            if (fragmentFeedBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            this.feedAdapter = new FeedAdapter(cropCircleTransformation, feedPresenter, feedModel3, fragmentFeedBinding);
        } else {
            bundle = this.feedAdapter;
            if (bundle != null) {
                FragmentFeedBinding fragmentFeedBinding2 = this.binding;
                if (fragmentFeedBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                bundle.setBinding(fragmentFeedBinding2);
            }
        }
        bundle = this.feedPresenter;
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        bundle.setFeedAdapter(this.feedAdapter);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.feedView;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.feedView");
        bundle.setAdapter(this.feedAdapter);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.feedView.setHasFixedSize(false);
        view = this.binding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        view.feedView.setScrollViewCallbacks(this);
        view = this.binding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        view.feedView.setRecyclerListener((RecyclerListener) FeedFragment$onViewCreated$1.INSTANCE);
        view = this.binding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        view.floatingActionButton.setOnClickListener(this);
        this.fabMargin = getResources().getDimensionPixelSize(C0859R.dimen.fab_margin);
        view = this.binding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        view.swipeRefreshLayout.setOnRefreshListener(this);
        setInterfaceActions();
        view = this.feedPresenter;
        if (view != null) {
            view.attachPresenter();
        }
        disableRefresh();
    }

    public final void disableRefresh() {
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        SwipeRefreshLayout swipeRefreshLayout = fragmentFeedBinding.swipeRefreshLayout;
        swipeRefreshLayout.setRefreshing(false);
        swipeRefreshLayout.destroyDrawingCache();
        swipeRefreshLayout.clearAnimation();
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            if (i == NEW_PASSPORT_REQUEST) {
                if (intent != null) {
                    NewPassportOperation newPassportOperation = (NewPassportOperation) intent.getParcelableExtra(NewPassportActivity.KEY_OPERATION);
                    if (newPassportOperation != null) {
                        i2 = new FeedItem(19, newPassportOperation);
                        i = this.feedPresenter;
                        if (i != 0) {
                            i.removeOperation(i2);
                        }
                    }
                }
            }
        }
    }

    public final void enableSearchMode() {
        showAndLockSearch();
    }

    public final void disableSearchMode() {
        hideNotFound();
        releaseSearchLock();
    }

    private final void toggleMoneyMode() {
        this.isFullMoneyMode ^= 1;
        showMoneyAmount(this.amount, this.currencyCode, this.miles);
    }

    private final void toggleRocketMode() {
        this.isFullRocketMode ^= 1;
        showMoneyAmount(this.amount, this.currencyCode, this.miles);
    }

    private final void initializeHeaderView() {
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Toolbar toolbar = fragmentFeedBinding.toolbar;
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.toolbar");
        LayoutParams layoutParams = toolbar.getLayoutParams();
        FragmentFeedBinding fragmentFeedBinding2 = this.binding;
        if (fragmentFeedBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FrameLayout frameLayout = fragmentFeedBinding2.header;
        FragmentFeedBinding fragmentFeedBinding3 = this.binding;
        if (fragmentFeedBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView = fragmentFeedBinding3.coverImage;
        int i = layoutParams.height;
        FeedModel feedModel = this.feedModel;
        if (feedModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        this.actionBarSize = i + feedModel.getAppBarHeight();
        fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        toolbar = fragmentFeedBinding.toolbar;
        feedModel = this.feedModel;
        if (feedModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        setToolbarSize(toolbar, feedModel.getAppBarHeight());
        fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        this.handler.post(new FeedFragment$initializeHeaderView$1(this, fragmentFeedBinding.toolbar));
        Intrinsics.checkExpressionValueIsNotNull(frameLayout, "headerView");
        layoutParams = frameLayout.getLayoutParams();
        int i2 = layoutParams.height;
        feedModel = this.feedModel;
        if (feedModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        layoutParams.height = i2 + feedModel.getAppBarHeight();
        FeedModel feedModel2 = this.feedModel;
        if (feedModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        feedModel2.setHeaderHeight(layoutParams.height);
        Intrinsics.checkExpressionValueIsNotNull(imageView, "coverImage");
        layoutParams = imageView.getLayoutParams();
        feedModel2 = this.feedModel;
        if (feedModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        layoutParams.height = feedModel2.getHeaderHeight();
        imageView.requestLayout();
        fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        View view = fragmentFeedBinding.cardOverlay;
        fragmentFeedBinding2 = this.binding;
        if (fragmentFeedBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView2 = fragmentFeedBinding2.userPic;
        Intrinsics.checkExpressionValueIsNotNull(view, "cardOverlay");
        LayoutParams layoutParams2 = view.getLayoutParams();
        feedModel = this.feedModel;
        if (feedModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        layoutParams2.height = feedModel.getHeaderHeight();
        view.requestLayout();
        OnClickListener onClickListener = this;
        imageView2.setOnClickListener(onClickListener);
        fragmentFeedBinding2 = this.binding;
        if (fragmentFeedBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentFeedBinding2.money.setOnClickListener(onClickListener);
        fragmentFeedBinding2 = this.binding;
        if (fragmentFeedBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentFeedBinding2.rocketMoney.setOnClickListener(onClickListener);
    }

    private final void updateHeaderImages() {
        Transformation[] transformationArr;
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView = fragmentFeedBinding.userPic;
        UserModel userModel = this.userModel;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        String userpicUrl = userModel.getUserpicUrl();
        int dimensionPixelSize;
        DrawableRequestBuilder centerCrop;
        CropCircleTransformation cropCircleTransformation;
        if (userpicUrl != null) {
            dimensionPixelSize = getResources().getDimensionPixelSize(C0859R.dimen.userpic_feed_size);
            centerCrop = Glide.with(this).load(userpicUrl).diskCacheStrategy(DiskCacheStrategy.ALL).override(dimensionPixelSize, dimensionPixelSize).centerCrop();
            transformationArr = new Transformation[1];
            cropCircleTransformation = this.cropCircleTransformation;
            if (cropCircleTransformation == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropCircleTransformation");
            }
            transformationArr[0] = cropCircleTransformation;
            centerCrop.bitmapTransform(transformationArr).into(imageView);
        } else {
            userpicUrl = "male";
            UserModel userModel2 = this.userModel;
            if (userModel2 == null) {
                Intrinsics.throwNpe();
            }
            int i = StringsKt.equals(userpicUrl, userModel2.getGender(), true) ? C0859R.drawable.ic_avatar_boy : C0859R.drawable.ic_avatar_girl;
            dimensionPixelSize = getResources().getDimensionPixelSize(C0859R.dimen.userpic_feed_size);
            centerCrop = Glide.with(this).load(Integer.valueOf(i)).diskCacheStrategy(DiskCacheStrategy.ALL).override(dimensionPixelSize, dimensionPixelSize).centerCrop();
            transformationArr = new Transformation[1];
            cropCircleTransformation = this.cropCircleTransformation;
            if (cropCircleTransformation == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropCircleTransformation");
            }
            transformationArr[0] = cropCircleTransformation;
            centerCrop.bitmapTransform(transformationArr).into(imageView);
        }
        fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        imageView = fragmentFeedBinding.coverImage;
        userModel = this.userModel;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        CoverModel cover = userModel.getCover();
        BitmapRequestBuilder diskCacheStrategy;
        FeedPresenter feedPresenter;
        UserData userData;
        Cobrand fromCobrandName;
        if (cover.getUrl() != null) {
            diskCacheStrategy = Glide.with(this).load(cover.getUrl()).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL);
            transformationArr = new Transformation[2];
            transformationArr[0] = new ColorFilterTransformation(getActivity(), Color.argb(95, 0, 0, 0));
            Glide glide = Glide.get(getActivity());
            Intrinsics.checkExpressionValueIsNotNull(glide, "Glide.get(activity)");
            transformationArr[1] = new CenterCrop(glide.getBitmapPool());
            diskCacheStrategy = diskCacheStrategy.transform(transformationArr);
            feedPresenter = this.feedPresenter;
            if (feedPresenter == null) {
                Intrinsics.throwNpe();
            }
            diskCacheStrategy = diskCacheStrategy.placeholder(feedPresenter.getColorDrawable(ViewCompat.MEASURED_STATE_MASK));
            userData = getAuthorization().getUserData();
            if (userData != null) {
                fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
                if (fromCobrandName != null) {
                    diskCacheStrategy.error(fromCobrandName.getDrawableResId()).into(imageView);
                    return;
                }
            }
            fromCobrandName = Cobrand.ROCKETBANK;
            diskCacheStrategy.error(fromCobrandName.getDrawableResId()).into(imageView);
            return;
        }
        RequestManager with = Glide.with(this);
        userData = getAuthorization().getUserData();
        if (userData != null) {
            fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
            if (fromCobrandName != null) {
                diskCacheStrategy = with.load(Integer.valueOf(fromCobrandName.getDrawableResId())).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL);
                transformationArr = new Transformation[2];
                transformationArr[0] = new ColorFilterTransformation(getActivity(), Color.argb(95, 0, 0, 0));
                glide = Glide.get(getActivity());
                Intrinsics.checkExpressionValueIsNotNull(glide, "Glide.get(activity)");
                transformationArr[1] = new CenterCrop(glide.getBitmapPool());
                diskCacheStrategy = diskCacheStrategy.transform(transformationArr);
                feedPresenter = this.feedPresenter;
                if (feedPresenter == null) {
                    Intrinsics.throwNpe();
                }
                diskCacheStrategy.placeholder(feedPresenter.getColorDrawable(ViewCompat.MEASURED_STATE_MASK)).into(imageView);
            }
        }
        fromCobrandName = Cobrand.ROCKETBANK;
        diskCacheStrategy = with.load(Integer.valueOf(fromCobrandName.getDrawableResId())).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL);
        transformationArr = new Transformation[2];
        transformationArr[0] = new ColorFilterTransformation(getActivity(), Color.argb(95, 0, 0, 0));
        glide = Glide.get(getActivity());
        Intrinsics.checkExpressionValueIsNotNull(glide, "Glide.get(activity)");
        transformationArr[1] = new CenterCrop(glide.getBitmapPool());
        diskCacheStrategy = diskCacheStrategy.transform(transformationArr);
        feedPresenter = this.feedPresenter;
        if (feedPresenter == null) {
            Intrinsics.throwNpe();
        }
        diskCacheStrategy.placeholder(feedPresenter.getColorDrawable(ViewCompat.MEASURED_STATE_MASK)).into(imageView);
    }

    private final void setInterfaceActions() {
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentFeedBinding.floatingActionButton.setOnClickListener(this);
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        this.handler.post(new FeedFragment$onUserModel$1(this));
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.setUserModel(userModel);
        }
        Log.v(TAG, "New user model");
        this.userModel = userModel;
        this.handler.post(this.refreshLimits);
        Log.v(TAG, "updateHeaderImages");
        updateHeaderImages();
        Log.v(TAG, "notifyItemChanged");
        userModel = this.feedAdapter;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        userModel.notifyItemChanged(0);
        Log.v(TAG, "showUserDetails");
        this.handler.post(new FeedFragment$onUserModel$2(this));
        userModel = this.feedPresenter;
        if (userModel != null) {
            userModel.refreshIfIsNeeded();
        }
        Log.v(TAG, "New user model done");
    }

    public final boolean onBackPressed() {
        if (!this.isSearchLocked) {
            return super.onBackPressed();
        }
        SearchView searchView = this.searchView;
        if (searchView != null) {
            searchView.setIconified(true);
            searchView.onActionViewCollapsed();
        }
        MenuItem menuItem = this.searchMenuItem;
        if (menuItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchMenuItem");
        }
        menuItem.collapseActionView();
        FeedPresenter feedPresenter = this.feedPresenter;
        if (feedPresenter != null) {
            feedPresenter.showRegularFeed();
        }
        KeyboardUtil.hideKeyboard(getActivity());
        return true;
    }

    private final void setupToolbar() {
        setupToolbarSizes();
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        this.handler.post(new FeedFragment$setupToolbar$1(this, fragmentFeedBinding.realToolbar));
    }

    private final void showSearch() {
        showAndLockSearch();
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ObservableRecyclerView observableRecyclerView = fragmentFeedBinding.feedView;
        View childAt = observableRecyclerView.getChildAt(0);
        if (childAt != null) {
            int height = 0 / childAt.getHeight();
            LayoutManager layoutManager = observableRecyclerView.getLayoutManager();
            if (layoutManager == null || !(layoutManager instanceof LinearLayoutManager)) {
                observableRecyclerView.scrollToPosition(height);
            } else {
                ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(height, 0);
            }
        }
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.removeBottom();
        feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.clear();
        feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.notifyDataSetChanged();
        fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentFeedBinding.feedView.requestLayout();
    }

    private final void setupToolbarSizes() {
        TypedValue typedValue = new TypedValue();
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        activity.getTheme().resolveAttribute(16843499, typedValue, true);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Object systemService = activity.getSystemService("window");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
        ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        this.toolbarHeight = setToolbarSize(fragmentFeedBinding.realToolbar, getStatusBarHeight());
        if (!this.isSearchLocked) {
            fragmentFeedBinding = this.binding;
            if (fragmentFeedBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            Toolbar toolbar = fragmentFeedBinding.realToolbar;
            Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.realToolbar");
            toolbar.setTranslationY((float) (-this.toolbarHeight));
        }
    }

    private final void showUserDetails() {
        if (getActivity() != null) {
            UserModel userModel = this.userModel;
            if (userModel == null) {
                Intrinsics.throwNpe();
            }
            AccountModel currentAccount = userModel.getCurrentAccount();
            if (currentAccount != null) {
                double balance = currentAccount.getBalance();
                String currencyCode = currentAccount.getCurrencyCode();
                UserModel userModel2 = this.userModel;
                if (userModel2 == null) {
                    Intrinsics.throwNpe();
                }
                float miles = userModel2.getMiles();
                if (currencyCode != null) {
                    double d = balance;
                    String str = currencyCode;
                    double d2 = (double) miles;
                    setBalance(d, str, d2);
                    showMoneyAmount(d, str, d2);
                }
            }
        }
    }

    public final boolean onQueryTextSubmit(String str) {
        Intrinsics.checkParameterIsNotNull(str, SearchIntents.EXTRA_QUERY);
        Log.v(TAG, str);
        return null;
    }

    public final boolean onQueryTextChange(String str) {
        Intrinsics.checkParameterIsNotNull(str, "newText");
        SearchView searchView = this.searchView;
        if (searchView == null) {
            Intrinsics.throwNpe();
        }
        if (searchView.isIconified()) {
            str = this.binding;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            str.feedView.requestLayout();
            return null;
        }
        showAndLockSearch();
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.clear();
        feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.notifyDataSetChanged();
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentFeedBinding.feedView.requestLayout();
        FeedPresenter feedPresenter = this.feedPresenter;
        if (feedPresenter != null) {
            feedPresenter.updateSearchString(str);
        }
        return true;
    }

    public final void showError(String str) {
        if (str != null) {
            if ((((CharSequence) str).length() == 0 ? 1 : 0) == 0) {
                String string = getString(C0859R.string.not_found_request);
                FragmentFeedBinding fragmentFeedBinding = this.binding;
                if (fragmentFeedBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                FrameLayout frameLayout = fragmentFeedBinding.nothingFound;
                Intrinsics.checkExpressionValueIsNotNull(frameLayout, "binding.nothingFound");
                frameLayout.setVisibility(0);
                int dimensionPixelSize = getResources().getDimensionPixelSize(C0859R.dimen.cat_size);
                DrawableRequestBuilder fitCenter = Glide.with(this).load(Integer.valueOf(C0859R.drawable.cat)).override(dimensionPixelSize, dimensionPixelSize).fitCenter();
                FragmentFeedBinding fragmentFeedBinding2 = this.binding;
                if (fragmentFeedBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                fitCenter.into(fragmentFeedBinding2.catView);
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(string, "searchFailedString");
                str = String.format(string, Arrays.copyOf(new Object[]{str}, 1));
                Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(format, *args)");
                FragmentFeedBinding fragmentFeedBinding3 = this.binding;
                if (fragmentFeedBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                RocketTextView rocketTextView = fragmentFeedBinding3.nothingFoundText;
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "binding.nothingFoundText");
                rocketTextView.setText(str);
                str = this.binding;
                if (str == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                str = str.nothingFoundText;
                Intrinsics.checkExpressionValueIsNotNull(str, "binding.nothingFoundText");
                str.setVisibility(0);
                return;
            }
        }
        str = this.binding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Glide.clear((View) str.catView);
        str = this.binding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        str.catView.setImageDrawable(null);
        str = this.binding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        str = str.nothingFound;
        Intrinsics.checkExpressionValueIsNotNull(str, "binding.nothingFound");
        str.setVisibility(8);
    }

    private final void setBalance(double d, String str, double d2) {
        this.amount = d;
        this.currencyCode = str;
        this.miles = d2;
    }

    private final void showMoneyAmount(double d, String str, double d2) {
        String format = getMoneyFormatter().format(d, str, false);
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketTextView rocketTextView = fragmentFeedBinding.toolbarTitle;
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "binding.toolbarTitle");
        rocketTextView.setText(format);
        FragmentFeedBinding fragmentFeedBinding2 = this.binding;
        if (fragmentFeedBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentFeedBinding2.toolbarTitle.setOnClickListener(this);
        d = getMoneyFormatter().format(d, str, this.isFullMoneyMode);
        FragmentFeedBinding fragmentFeedBinding3 = this.binding;
        if (fragmentFeedBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketAutofitTextView rocketAutofitTextView = fragmentFeedBinding3.money;
        Intrinsics.checkExpressionValueIsNotNull(rocketAutofitTextView, "binding.money");
        rocketAutofitTextView.setText((CharSequence) d);
        d = this.binding;
        if (d == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        d = d.rocketMoney;
        Intrinsics.checkExpressionValueIsNotNull(d, "binding.rocketMoney");
        MoneyFormatter moneyFormatter = getMoneyFormatter();
        str = MoneyFormatter.Companion;
        d.setText(moneyFormatter.format(d2, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), this.isFullRocketMode));
    }

    public final void onEvent(FeedRefreshIsNeeded feedRefreshIsNeeded) {
        Intrinsics.checkParameterIsNotNull(feedRefreshIsNeeded, "refreshIsNeeded");
        onRefresh();
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        MainActivity mainActivity = (MainActivity) getActivity();
        if (mainActivity != null) {
            switch (view.getId()) {
                case C0859R.id.floatingActionButton:
                    openRefill(mainActivity);
                    return;
                case C0859R.id.money:
                    toggleMoneyMode();
                    return;
                case C0859R.id.rocket_money:
                    toggleRocketMode();
                    break;
                case C0859R.id.toolbar_title:
                    showAll();
                    return;
                case C0859R.id.userPic:
                    mainActivity.showProfile();
                    return;
                default:
                    break;
            }
        }
    }

    private final void openRefill(MainActivity mainActivity) {
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FloatingActionButton floatingActionButton = fragmentFeedBinding.floatingActionButton;
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton, "binding.floatingActionButton");
        int i = floatingActionButton.getLayoutParams().height;
        FragmentFeedBinding fragmentFeedBinding2 = this.binding;
        if (fragmentFeedBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FloatingActionButton floatingActionButton2 = fragmentFeedBinding2.floatingActionButton;
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton2, "binding.floatingActionButton");
        int i2 = floatingActionButton2.getLayoutParams().width;
        FragmentFeedBinding fragmentFeedBinding3 = this.binding;
        if (fragmentFeedBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FloatingActionButton floatingActionButton3 = fragmentFeedBinding3.floatingActionButton;
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton3, "binding.floatingActionButton");
        int paddingRight = floatingActionButton3.getPaddingRight();
        FragmentFeedBinding fragmentFeedBinding4 = this.binding;
        if (fragmentFeedBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FloatingActionButton floatingActionButton4 = fragmentFeedBinding4.floatingActionButton;
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton4, "binding.floatingActionButton");
        float translationY = floatingActionButton4.getTranslationY() + ((float) (i / 2));
        fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        floatingActionButton = fragmentFeedBinding.floatingActionButton;
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton, "binding.floatingActionButton");
        translationY -= (float) floatingActionButton.getPaddingTop();
        FeedModel feedModel = this.feedModel;
        if (feedModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        translationY += (float) feedModel.getAppBarHeight();
        i = ((this.windowWidth - this.fabMargin) - (i2 / 4)) - paddingRight;
        UserModel userModel = this.userModel;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        AccountModel currentAccount = userModel.getCurrentAccount();
        if (currentAccount != null) {
            mainActivity.pushFragment(UserFeedRefillFragment.newInstance(currentAccount.getToken(), false, (float) i, translationY));
        }
    }

    public final void onPause() {
        this.handler.removeCallbacks(this.loadNextPageRunnable);
        Log.v(TAG, "onPause started");
        Log.v(TAG, "Stop refresh");
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        SwipeRefreshLayout swipeRefreshLayout = fragmentFeedBinding.swipeRefreshLayout;
        Intrinsics.checkExpressionValueIsNotNull(swipeRefreshLayout, "binding.swipeRefreshLayout");
        swipeRefreshLayout.setRefreshing(false);
        fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentFeedBinding.swipeRefreshLayout.destroyDrawingCache();
        fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentFeedBinding.swipeRefreshLayout.clearAnimation();
        hideProgress();
        this.handler.removeCallbacks(this.refreshLimits);
        super.onPause();
    }

    public final void onDestroyView() {
        FeedPresenter feedPresenter = this.feedPresenter;
        if (feedPresenter != null) {
            feedPresenter.detachPresenter();
        }
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    private final void showAll() {
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentFeedBinding.feedView.smoothScrollToPosition(0);
    }

    public final boolean onClose() {
        FeedPresenter feedPresenter = this.feedPresenter;
        if (feedPresenter != null) {
            feedPresenter.showRegularFeed();
        }
        return false;
    }

    public final void hideNotFound() {
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FrameLayout frameLayout = fragmentFeedBinding.nothingFound;
        Intrinsics.checkExpressionValueIsNotNull(frameLayout, "binding.nothingFound");
        frameLayout.setVisibility(8);
    }

    public final void onRefresh() {
        if (this.isSearchLocked) {
            SearchView searchView = this.searchView;
            onQueryTextChange(String.valueOf(searchView != null ? searchView.getQuery() : null));
            return;
        }
        getAuthorization().refreshBackgroundProfile();
        getFeedManager().refreshTail();
        FeedPresenter feedPresenter = this.feedPresenter;
        if (feedPresenter != null) {
            feedPresenter.refreshTop();
        }
    }

    private final void releaseSearchLock() {
        if (this.isSearchLocked) {
            FragmentFeedBinding fragmentFeedBinding;
            fragmentFeedBinding = this.binding;
            if (fragmentFeedBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            Toolbar toolbar = fragmentFeedBinding.realToolbar;
            Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.realToolbar");
            FragmentFeedBinding fragmentFeedBinding2 = this.binding;
            if (fragmentFeedBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            Toolbar toolbar2 = fragmentFeedBinding2.realToolbar;
            Intrinsics.checkExpressionValueIsNotNull(toolbar2, "binding.realToolbar");
            toolbar.setTranslationY((float) (-toolbar2.getHeight()));
        }
        if (this.isToolbarAnimation) {
            fragmentFeedBinding = this.binding;
            if (fragmentFeedBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            fragmentFeedBinding.realToolbar.animate().cancel();
        }
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.setRegularMode();
        }
        this.isSearchLocked = false;
    }

    private final void showAndLockSearch() {
        Log.v(TAG, "showAndLockSearch");
        this.isSearchLocked = true;
        if (!this.isToolbarAnimation) {
            FragmentFeedBinding fragmentFeedBinding = this.binding;
            if (fragmentFeedBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            fragmentFeedBinding.floatingActionButton.hide();
            fragmentFeedBinding = this.binding;
            if (fragmentFeedBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            Toolbar toolbar = fragmentFeedBinding.realToolbar;
            Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.realToolbar");
            if (toolbar.getTranslationY() != BitmapDescriptorFactory.HUE_RED) {
                fragmentFeedBinding = this.binding;
                if (fragmentFeedBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                fragmentFeedBinding.realToolbar.animate().translationY(BitmapDescriptorFactory.HUE_RED).setListener(new FeedFragment$showAndLockSearch$1(this)).start();
            }
            FeedAdapter feedAdapter = this.feedAdapter;
            if (feedAdapter != null) {
                feedAdapter.setSearchMode();
            }
        }
    }

    public final void onScrollChanged(int i, boolean z, boolean z2) {
        z = false;
        if (i < 0) {
            i = 0;
        }
        z2 = (int) (((double) i) * 0.5d);
        if (z2 > this.parallaxSize) {
            z2 = this.parallaxSize;
        }
        int i2 = ((int) (128.0f * ((((float) z2) / ((float) (this.parallaxSize / 100))) / 100.0f))) << 24;
        FeedModel feedModel = this.feedModel;
        if (feedModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        feedModel.getOverlayBackground().set(i2);
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FrameLayout frameLayout = fragmentFeedBinding.header;
        Intrinsics.checkExpressionValueIsNotNull(frameLayout, "binding.header");
        frameLayout.setTranslationY((float) (-z2));
        z2 = this.feedModel;
        if (!z2) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        z2 = z2.getHeaderHeight() - i;
        if (this.isSearchLocked) {
            z2 = false;
        }
        if (z2 < false) {
            z = z2;
        }
        z2 = this.binding;
        if (!z2) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        z2 = z2.cardOverlay;
        Intrinsics.checkExpressionValueIsNotNull(z2, "binding.cardOverlay");
        z2.setTranslationY((float) z);
        loadNextPageIfNeeded();
        if (!this.isSearchLocked) {
            updateToolbarPosition(i);
            moveFloatingButton(i);
        }
    }

    private final void updateToolbarPosition(int i) {
        int i2 = this.toolbarHeight - i;
        if (i2 < 0) {
            i2 = 0;
        }
        i = this.binding;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        i = i.realToolbar;
        Intrinsics.checkExpressionValueIsNotNull(i, "binding.realToolbar");
        i = (float) i.getHeight();
        if (this.toolbarHeight >= i2) {
            i = (float) i2;
        }
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Toolbar toolbar = fragmentFeedBinding.realToolbar;
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.realToolbar");
        toolbar.setTranslationY(-i);
    }

    private final void loadNextPageIfNeeded() {
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ObservableRecyclerView observableRecyclerView = fragmentFeedBinding.feedView;
        Intrinsics.checkExpressionValueIsNotNull(observableRecyclerView, "binding.feedView");
        LayoutManager layoutManager = observableRecyclerView.getLayoutManager();
        if (layoutManager == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager");
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        if (((double) (feedAdapter.getItemCount() - findLastVisibleItemPosition)) < ((double) (findLastVisibleItemPosition - findFirstVisibleItemPosition)) * 1.5d) {
            this.handler.post(this.loadNextPageRunnable);
        }
    }

    private final void moveFloatingButton(int i) {
        FragmentFeedBinding fragmentFeedBinding = this.binding;
        if (fragmentFeedBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FloatingActionButton floatingActionButton = fragmentFeedBinding.floatingActionButton;
        FragmentFeedBinding fragmentFeedBinding2 = this.binding;
        if (fragmentFeedBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FloatingActionButton floatingActionButton2 = fragmentFeedBinding2.floatingActionButton;
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton2, "binding.floatingActionButton");
        int i2 = floatingActionButton2.getLayoutParams().height;
        FragmentFeedBinding fragmentFeedBinding3 = this.binding;
        if (fragmentFeedBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FloatingActionButton floatingActionButton3 = fragmentFeedBinding3.floatingActionButton;
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton3, "binding.floatingActionButton");
        int i3 = floatingActionButton3.getLayoutParams().width;
        FragmentFeedBinding fragmentFeedBinding4 = this.binding;
        if (fragmentFeedBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FloatingActionButton floatingActionButton4 = fragmentFeedBinding4.floatingActionButton;
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton4, "binding.floatingActionButton");
        int paddingTop = floatingActionButton4.getPaddingTop();
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton, "floatingActionButton");
        int paddingRight = floatingActionButton.getPaddingRight();
        FeedModel feedModel = this.feedModel;
        if (feedModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedModel");
        }
        int headerHeight = feedModel.getHeaderHeight();
        i2 /= 2;
        i = Math.min((float) ((headerHeight - i2) - paddingTop), Math.max(BitmapDescriptorFactory.HUE_RED, (float) (((headerHeight - i) - i2) - paddingTop)));
        floatingActionButton.setTranslationX((float) (((this.windowWidth - this.fabMargin) - i3) - paddingRight));
        floatingActionButton.setTranslationY(i);
        if (i < ((float) this.flexibleSpaceShowFabOffset)) {
            floatingActionButton.hide();
        } else {
            floatingActionButton.show();
        }
    }

    public final void hideProgress() {
        if (this.progressDialog != null) {
            ProgressDialog progressDialog = this.progressDialog;
            if (progressDialog == null) {
                Intrinsics.throwNpe();
            }
            progressDialog.dismiss();
            this.progressDialog = null;
        }
    }

    public final void showProgressExecution() {
        ProgressDialog progressDialog = new ProgressDialog(getActivity());
        this.progressDialog = progressDialog;
        progressDialog.setMessage(getResources().getString(C0859R.string.action_doing));
        progressDialog.setCancelable(false);
        progressDialog.setOnDismissListener(new FeedFragment$showProgressExecution$1(this));
        progressDialog.show();
    }
}
