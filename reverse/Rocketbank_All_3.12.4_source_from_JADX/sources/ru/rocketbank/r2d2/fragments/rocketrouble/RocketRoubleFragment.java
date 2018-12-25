package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.FragmentActivity;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.ViewAnimationUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.FeedManager.FeedRefreshIsNeeded;
import ru.rocketbank.core.model.RocketRubleHistoryOperation;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.model.operation.BarOperation;
import ru.rocketbank.core.model.operation.DelimiterOperation;
import ru.rocketbank.core.model.operation.StatisticsOperation;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: RocketRoubleFragment.kt */
public final class RocketRoubleFragment extends RocketFragment implements SurfaceTextureListener, OnClickListener, ObservableScrollViewCallbacks {
    public static final Companion Companion = new Companion();
    private static final int DELIMITER_AVALIABLE = 0;
    private static final int DELIMITER_DYNAMIC = 2;
    private static final int DELIMITER_HEADER = 4;
    private static final int DELIMITER_HISTORY = 3;
    private static final int DELIMITER_SHOP = 6;
    private static final int DELIMITER_STATISTICS = 1;
    private static final int STATISTICS = 5;
    private static final String TAG = "RocketRouble";
    private HashMap _$_findViewCache;
    private int appBarHeight;
    public FrameLayout appBarLayout;
    private Authorization authorization;
    private double balance;
    private BarChartAdapter barChartAdapter;
    public View cardOverlay;
    private CurrencyManager currencyManager;
    private int fabMargin;
    private int fabTranslationX;
    private float fabTranslationY;
    public ObservableRecyclerView feedView;
    private int flexibleSpaceImageHeight;
    private int flexibleSpaceShowFabOffset;
    public FloatingActionButton floatingActionButton;
    public View headerOverlay;
    private boolean isNeedShowFloating;
    private MediaPlayer mediaPlayer;
    public RocketAutofitTextView money;
    private MoneyFormatter moneyFormatter;
    private int paralaxSize;
    public Toolbar realToolbar;
    private RocketAPI rocketAPI;
    public RocketTextView rocketMoney;
    private RocketRoubleAdapter rocketRoubleAdapter;
    private RocketRoubleModel rocketRoubleModel;
    private Subscription rocketSubscription;
    public RocketTextView rocketTitle;
    public SwipeRefreshLayout swipeRefreshLayout;
    public Toolbar toolbar;
    private int toolbarHeight;
    private UserModel userModel;
    public TextureView videoView;

    /* compiled from: RocketRoubleFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getDELIMITER_AVALIABLE() {
            return RocketRoubleFragment.DELIMITER_AVALIABLE;
        }

        public final int getDELIMITER_STATISTICS() {
            return RocketRoubleFragment.DELIMITER_STATISTICS;
        }

        public final int getDELIMITER_DYNAMIC() {
            return RocketRoubleFragment.DELIMITER_DYNAMIC;
        }

        public final int getDELIMITER_HISTORY() {
            return RocketRoubleFragment.DELIMITER_HISTORY;
        }

        public final int getDELIMITER_HEADER() {
            return RocketRoubleFragment.DELIMITER_HEADER;
        }

        public final int getSTATISTICS() {
            return RocketRoubleFragment.STATISTICS;
        }

        public final int getDELIMITER_SHOP() {
            return RocketRoubleFragment.DELIMITER_SHOP;
        }

        public final String getTAG() {
            return RocketRoubleFragment.TAG;
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

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void onDownMotionEvent() {
    }

    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(surfaceTexture, "surface");
    }

    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        Intrinsics.checkParameterIsNotNull(surfaceTexture, "surface");
    }

    public final void onUpOrCancelMotionEvent(ScrollState scrollState) {
    }

    public static final /* synthetic */ BarChartAdapter access$getBarChartAdapter$p(RocketRoubleFragment rocketRoubleFragment) {
        rocketRoubleFragment = rocketRoubleFragment.barChartAdapter;
        if (rocketRoubleFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("barChartAdapter");
        }
        return rocketRoubleFragment;
    }

    public static final /* synthetic */ RocketRoubleModel access$getRocketRoubleModel$p(RocketRoubleFragment rocketRoubleFragment) {
        rocketRoubleFragment = rocketRoubleFragment.rocketRoubleModel;
        if (rocketRoubleFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketRoubleModel");
        }
        return rocketRoubleFragment;
    }

    public final Toolbar getRealToolbar() {
        Toolbar toolbar = this.realToolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("realToolbar");
        }
        return toolbar;
    }

    public final void setRealToolbar(Toolbar toolbar) {
        Intrinsics.checkParameterIsNotNull(toolbar, "<set-?>");
        this.realToolbar = toolbar;
    }

    public final Toolbar getToolbar() {
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        return toolbar;
    }

    public final void setToolbar(Toolbar toolbar) {
        Intrinsics.checkParameterIsNotNull(toolbar, "<set-?>");
        this.toolbar = toolbar;
    }

    public final FrameLayout getAppBarLayout() {
        FrameLayout frameLayout = this.appBarLayout;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
        }
        return frameLayout;
    }

    public final void setAppBarLayout(FrameLayout frameLayout) {
        Intrinsics.checkParameterIsNotNull(frameLayout, "<set-?>");
        this.appBarLayout = frameLayout;
    }

    public final RocketTextView getRocketTitle() {
        RocketTextView rocketTextView = this.rocketTitle;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketTitle");
        }
        return rocketTextView;
    }

    public final void setRocketTitle(RocketTextView rocketTextView) {
        Intrinsics.checkParameterIsNotNull(rocketTextView, "<set-?>");
        this.rocketTitle = rocketTextView;
    }

    public final RocketAutofitTextView getMoney() {
        RocketAutofitTextView rocketAutofitTextView = this.money;
        if (rocketAutofitTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("money");
        }
        return rocketAutofitTextView;
    }

    public final void setMoney(RocketAutofitTextView rocketAutofitTextView) {
        Intrinsics.checkParameterIsNotNull(rocketAutofitTextView, "<set-?>");
        this.money = rocketAutofitTextView;
    }

    public final RocketTextView getRocketMoney() {
        RocketTextView rocketTextView = this.rocketMoney;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketMoney");
        }
        return rocketTextView;
    }

    public final void setRocketMoney(RocketTextView rocketTextView) {
        Intrinsics.checkParameterIsNotNull(rocketTextView, "<set-?>");
        this.rocketMoney = rocketTextView;
    }

    public final ObservableRecyclerView getFeedView() {
        ObservableRecyclerView observableRecyclerView = this.feedView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedView");
        }
        return observableRecyclerView;
    }

    public final void setFeedView(ObservableRecyclerView observableRecyclerView) {
        Intrinsics.checkParameterIsNotNull(observableRecyclerView, "<set-?>");
        this.feedView = observableRecyclerView;
    }

    public final FloatingActionButton getFloatingActionButton() {
        FloatingActionButton floatingActionButton = this.floatingActionButton;
        if (floatingActionButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        return floatingActionButton;
    }

    public final void setFloatingActionButton(FloatingActionButton floatingActionButton) {
        Intrinsics.checkParameterIsNotNull(floatingActionButton, "<set-?>");
        this.floatingActionButton = floatingActionButton;
    }

    public final View getCardOverlay() {
        View view = this.cardOverlay;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardOverlay");
        }
        return view;
    }

    public final void setCardOverlay(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.cardOverlay = view;
    }

    public final View getHeaderOverlay() {
        View view = this.headerOverlay;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headerOverlay");
        }
        return view;
    }

    public final void setHeaderOverlay(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.headerOverlay = view;
    }

    public final SwipeRefreshLayout getSwipeRefreshLayout() {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefreshLayout");
        }
        return swipeRefreshLayout;
    }

    public final void setSwipeRefreshLayout(SwipeRefreshLayout swipeRefreshLayout) {
        Intrinsics.checkParameterIsNotNull(swipeRefreshLayout, "<set-?>");
        this.swipeRefreshLayout = swipeRefreshLayout;
    }

    public final TextureView getVideoView() {
        TextureView textureView = this.videoView;
        if (textureView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoView");
        }
        return textureView;
    }

    public final void setVideoView(TextureView textureView) {
        Intrinsics.checkParameterIsNotNull(textureView, "<set-?>");
        this.videoView = textureView;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_rocket_rouble, viewGroup, false);
        viewGroup = layoutInflater.findViewById(C0859R.id.toolbarReal);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        this.realToolbar = (Toolbar) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.toolbar);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        this.toolbar = (Toolbar) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.app_bar);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout");
        }
        this.appBarLayout = (FrameLayout) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.real_toolbar_title);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.rocketTitle = (RocketTextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.money);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView");
        }
        this.money = (RocketAutofitTextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.rocket_money);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.rocketMoney = (RocketTextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.feed);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView");
        }
        this.feedView = (ObservableRecyclerView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.fab);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.design.widget.FloatingActionButton");
        }
        this.floatingActionButton = (FloatingActionButton) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.card_overlay);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view.findViewById(R.id.card_overlay)");
        this.cardOverlay = viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.header_overlay);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view.findViewById(R.id.header_overlay)");
        this.headerOverlay = viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.swipeRefresh);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v4.widget.SwipeRefreshLayout");
        }
        this.swipeRefreshLayout = (SwipeRefreshLayout) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.videoView);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.TextureView");
        }
        this.videoView = (TextureView) viewGroup;
        FrameLayout frameLayout = this.appBarLayout;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
        }
        this.rocketRoubleModel = new RocketRoubleModel(false, frameLayout);
        this.paralaxSize = getResources().getDimensionPixelSize(C0859R.dimen.parallax_size);
        this.flexibleSpaceImageHeight = getResources().getDimensionPixelSize(C0859R.dimen.flexible_space_image_height);
        this.flexibleSpaceShowFabOffset = getResources().getDimensionPixelSize(C0859R.dimen.flexible_space_show_fab_offset);
        this.fabMargin = getResources().getDimensionPixelSize(C0859R.dimen.fab_margin);
        return layoutInflater;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.currencyManager = getInjector().getCurrencyManager();
        this.rocketAPI = getInjector().getRocketApi();
        bundle = getActivity();
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(bundle, "activity!!");
        this.barChartAdapter = new BarChartAdapter((Context) bundle);
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
        view = this.currencyManager;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyManager");
        }
        bundle = getActivity();
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(bundle, "activity!!");
        Context context = (Context) bundle;
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        MoneyFormatter moneyFormatter = new MoneyFormatter(context, authorization, view);
        moneyFormatter.setFloorAmount(true);
        this.moneyFormatter = moneyFormatter;
        bundle = this.realToolbar;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("realToolbar");
        }
        bundle.setTitle("");
        if (this.rocketRoubleAdapter == null) {
            ObservableRecyclerView observableRecyclerView;
            observableRecyclerView = this.feedView;
            if (observableRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("feedView");
            }
            RecyclerView recyclerView = observableRecyclerView;
            BarChartAdapter barChartAdapter = this.barChartAdapter;
            if (barChartAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("barChartAdapter");
            }
            RocketRoubleModel rocketRoubleModel = this.rocketRoubleModel;
            if (rocketRoubleModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketRoubleModel");
            }
            this.rocketRoubleAdapter = new RocketRoubleAdapter(recyclerView, barChartAdapter, rocketRoubleModel);
        }
        bundle = this.feedView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedView");
        }
        if (bundle.getLayoutManager() == null) {
            bundle = new LinearLayoutManager(getActivity());
            observableRecyclerView = this.feedView;
            if (observableRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("feedView");
            }
            observableRecyclerView.setLayoutManager((LayoutManager) bundle);
        }
        bundle = this.feedView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedView");
        }
        bundle.setAdapter(this.rocketRoubleAdapter);
        bundle = this.feedView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedView");
        }
        bundle.setScrollViewCallbacks(this);
        bundle = this.feedView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedView");
        }
        bundle.setVerticalScrollbarPosition(0);
        setupToolbar();
        bundle = this.floatingActionButton;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        bundle.hide();
        bundle = this.money;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("money");
        }
        bundle.setOnClickListener(new RocketRoubleFragment$onViewCreated$1(this));
        bundle = this.swipeRefreshLayout;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefreshLayout");
        }
        bundle.setOnRefreshListener(new RocketRoubleFragment$onViewCreated$2(this));
        bundle = this.floatingActionButton;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        bundle.setOnClickListener(this);
        bundle = this.toolbar;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        bundle.setNavigationOnClickListener(getNavigationClick());
        bundle = this.realToolbar;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("realToolbar");
        }
        bundle.setNavigationOnClickListener(getNavigationClick());
        bundle = this.realToolbar;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("realToolbar");
        }
        bundle.setTranslationY((float) (-this.toolbarHeight));
        onScrollChanged(0, true, false);
    }

    private final void showVideo() {
        TextureView textureView = this.videoView;
        if (textureView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoView");
        }
        textureView.setSurfaceTextureListener(this);
    }

    private final String getRawPath(int i) {
        StringBuilder stringBuilder = new StringBuilder("android.resource://");
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        stringBuilder.append(activity.getPackageName());
        stringBuilder.append("/");
        stringBuilder.append(i);
        return stringBuilder.toString();
    }

    public final void onPause() {
        unsubscribe(this.rocketSubscription);
        super.onPause();
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        setUserModel(userModel);
        this.balance = (double) userModel.getMiles();
        showBalance();
        RocketRoubleAdapter rocketRoubleAdapter = this.rocketRoubleAdapter;
        if (rocketRoubleAdapter != null) {
            rocketRoubleAdapter.setUserModel(userModel);
        }
        userModel = this.rocketMoney;
        if (userModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketMoney");
        }
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        UserData userData = authorization.getUserData();
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        userModel.setText(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMenu());
        userModel = this.toolbar;
        if (userModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        userData = authorization.getUserData();
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        userModel.setTitle(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMenu());
        refreshUserData();
    }

    public final void onResume() {
        super.onResume();
        if (this.userModel != null) {
            Toolbar toolbar = this.toolbar;
            if (toolbar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("toolbar");
            }
            Authorization authorization = this.authorization;
            if (authorization == null) {
                Intrinsics.throwUninitializedPropertyAccessException("authorization");
            }
            UserData userData = authorization.getUserData();
            Intrinsics.checkParameterIsNotNull(userData, "userData");
            toolbar.setTitle(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMenu());
        }
        showVideo();
    }

    private final void setUserModel(UserModel userModel) {
        this.userModel = userModel;
    }

    private final void showBalance() {
        if (getActivity() != null) {
            double d = this.balance;
            RocketRoubleModel rocketRoubleModel = this.rocketRoubleModel;
            if (rocketRoubleModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketRoubleModel");
            }
            if (!rocketRoubleModel.isFullMoneyMode()) {
                d = (double) ((int) d);
            }
            MoneyFormatter moneyFormatter = this.moneyFormatter;
            if (moneyFormatter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
            }
            String str = "";
            RocketRoubleModel rocketRoubleModel2 = this.rocketRoubleModel;
            if (rocketRoubleModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketRoubleModel");
            }
            String format = moneyFormatter.format(d, str, rocketRoubleModel2.isFullMoneyMode());
            RocketAutofitTextView rocketAutofitTextView = this.money;
            if (rocketAutofitTextView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("money");
            }
            rocketAutofitTextView.setText(format);
            if (this.userModel != null) {
                Resources resources = getResources();
                Authorization authorization = this.authorization;
                if (authorization == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("authorization");
                }
                UserData userData = authorization.getUserData();
                Intrinsics.checkParameterIsNotNull(userData, "userData");
                format = resources.getQuantityString(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMoney(), (int) d);
                RocketTextView rocketTextView = this.rocketMoney;
                if (rocketTextView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("rocketMoney");
                }
                rocketTextView.setText(format);
            }
            moneyFormatter = this.moneyFormatter;
            if (moneyFormatter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
            }
            ru.rocketbank.core.utils.MoneyFormatter.Companion companion = MoneyFormatter.Companion;
            str = MoneyFormatter.access$getCURRENCY_ROCKET$cp();
            rocketRoubleModel2 = this.rocketRoubleModel;
            if (rocketRoubleModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketRoubleModel");
            }
            String format2 = moneyFormatter.format(d, str, rocketRoubleModel2.isFullMoneyMode());
            RocketTextView rocketTextView2 = this.rocketTitle;
            if (rocketTextView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketTitle");
            }
            rocketTextView2.setText(format2);
        }
    }

    private final void setupToolbar() {
        Toolbar toolbar = this.realToolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("realToolbar");
        }
        toolbar.setNavigationIcon(C0859R.drawable.ic_drawer_black);
        toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        toolbar.setNavigationIcon(C0859R.drawable.ic_drawer_white);
        setupToolbarSizes();
    }

    private final void setupToolbarSizes() {
        this.appBarHeight = getStatusBarHeight();
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        setToolbarSize(toolbar, this.appBarHeight);
        toolbar = this.realToolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("realToolbar");
        }
        setToolbarSize(toolbar, this.appBarHeight);
        toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        LayoutParams layoutParams = toolbar.getLayoutParams();
        int i = layoutParams.height;
        Toolbar toolbar2 = this.realToolbar;
        if (toolbar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("realToolbar");
        }
        toolbar2.setTranslationY((float) (-i));
        this.toolbarHeight = layoutParams.height;
        FrameLayout frameLayout = this.appBarLayout;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
        }
        layoutParams = frameLayout.getLayoutParams();
        layoutParams.height += this.appBarHeight;
        FrameLayout frameLayout2 = this.appBarLayout;
        if (frameLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
        }
        frameLayout2.requestLayout();
        RocketRoubleModel rocketRoubleModel = this.rocketRoubleModel;
        if (rocketRoubleModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketRoubleModel");
        }
        rocketRoubleModel.setHeaderHeight(layoutParams.height);
    }

    public final void onScrollChanged(int i, boolean z, boolean z2) {
        z = false;
        if (i < 0) {
            i = 0;
        }
        z2 = (int) (((double) i) * 0.6d);
        if (z2 > this.paralaxSize) {
            z2 = this.paralaxSize;
        }
        int i2 = ((int) (128.0f * ((((float) z2) / ((float) (this.paralaxSize / 100))) / 100.0f))) << 24;
        View view = this.headerOverlay;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headerOverlay");
        }
        view.setBackgroundColor(i2);
        FrameLayout frameLayout = this.appBarLayout;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
        }
        frameLayout.setTranslationY((float) (-z2));
        z2 = this.rocketRoubleModel;
        if (!z2) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketRoubleModel");
        }
        z2 = z2.getHeaderHeight() - i;
        if (z2 < false) {
            z = z2;
        }
        z2 = this.cardOverlay;
        if (!z2) {
            Intrinsics.throwUninitializedPropertyAccessException("cardOverlay");
        }
        z2.setTranslationY((float) z);
        updateToolbarPosition(i);
        moveFloatingButton(i);
    }

    private final void updateToolbarPosition(int i) {
        int i2 = this.toolbarHeight - i;
        if (i2 < 0) {
            i2 = 0;
        }
        i = this.realToolbar;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("realToolbar");
        }
        i = (float) i.getHeight();
        if (this.toolbarHeight >= i2) {
            i = (float) i2;
        }
        Toolbar toolbar = this.realToolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("realToolbar");
        }
        toolbar.setTranslationY(-i);
    }

    private final void moveFloatingButton(int i) {
        ObservableRecyclerView observableRecyclerView = this.feedView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedView");
        }
        int width = observableRecyclerView.getWidth();
        FloatingActionButton floatingActionButton = this.floatingActionButton;
        if (floatingActionButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        int i2 = floatingActionButton.getLayoutParams().height;
        FloatingActionButton floatingActionButton2 = this.floatingActionButton;
        if (floatingActionButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        int i3 = floatingActionButton2.getLayoutParams().width;
        FloatingActionButton floatingActionButton3 = this.floatingActionButton;
        if (floatingActionButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        int paddingRight = floatingActionButton3.getPaddingRight();
        i2 /= 2;
        int i4 = this.flexibleSpaceImageHeight - i2;
        FloatingActionButton floatingActionButton4 = this.floatingActionButton;
        if (floatingActionButton4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        i4 = (i4 - floatingActionButton4.getPaddingTop()) + this.appBarHeight;
        i = ((-i) + this.flexibleSpaceImageHeight) - i2;
        floatingActionButton = this.floatingActionButton;
        if (floatingActionButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        i = (float) ((i - floatingActionButton.getPaddingTop()) + this.appBarHeight);
        i2 = this.appBarHeight;
        floatingActionButton4 = this.floatingActionButton;
        if (floatingActionButton4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        this.fabTranslationY = Math.min((float) i4, Math.max((float) (i2 - (floatingActionButton4.getHeight() / 2)), i));
        if (VERSION.SDK_INT < 11) {
            i = this.floatingActionButton;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
            }
            i = i.getLayoutParams();
            if (i == 0) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) i;
            observableRecyclerView = this.feedView;
            if (observableRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("feedView");
            }
            width = observableRecyclerView.getWidth() - this.fabMargin;
            floatingActionButton = this.floatingActionButton;
            if (floatingActionButton == null) {
                Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
            }
            layoutParams.leftMargin = (width - floatingActionButton.getWidth()) - paddingRight;
            layoutParams.topMargin = (int) this.fabTranslationY;
            i = this.floatingActionButton;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
            }
            i.requestLayout();
        } else {
            this.fabTranslationX = ((width - this.fabMargin) - i3) - paddingRight;
            i = this.floatingActionButton;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
            }
            i.setTranslationX((float) this.fabTranslationX);
            i = this.floatingActionButton;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
            }
            i.setTranslationY(this.fabTranslationY);
        }
        if (this.isNeedShowFloating == 0) {
            i = this.floatingActionButton;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
            }
            i.hide();
        } else if (this.fabTranslationY < ((float) this.flexibleSpaceShowFabOffset)) {
            i = this.floatingActionButton;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
            }
            i.hide();
        } else {
            i = this.floatingActionButton;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
            }
            i.show();
        }
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        int i = this.fabTranslationX;
        FloatingActionButton floatingActionButton = this.floatingActionButton;
        if (floatingActionButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        int left = floatingActionButton.getLeft();
        FloatingActionButton floatingActionButton2 = this.floatingActionButton;
        if (floatingActionButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        i += (left + floatingActionButton2.getRight()) / 2;
        float f = this.fabTranslationY;
        floatingActionButton2 = this.floatingActionButton;
        if (floatingActionButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        int top = floatingActionButton2.getTop();
        FloatingActionButton floatingActionButton3 = this.floatingActionButton;
        if (floatingActionButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        left = (int) (f + ((float) ((top + floatingActionButton3.getBottom()) / 2)));
        ru.rocketbank.r2d2.fragments.rocketrouble.RocketRubleInfoActivity.Companion companion = RocketRubleInfoActivity.Companion;
        view = view.getContext();
        Intrinsics.checkExpressionValueIsNotNull(view, "v.context");
        companion.startActivity(view, true, i, left);
    }

    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(surfaceTexture, "surfaceTexture");
        i = new Surface(surfaceTexture);
        try {
            this.mediaPlayer = getInjector().getMediaPlayer();
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.reset();
            surfaceTexture = Uri.parse(getRawPath(C0859R.raw.rocketrouble));
            i2 = this.mediaPlayer;
            if (i2 == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            i2.setDataSource(getActivity(), surfaceTexture);
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.setSurface(i);
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.prepare();
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.start();
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.setLooping(0);
        } catch (SurfaceTexture surfaceTexture2) {
            AnalyticsManager.logException(surfaceTexture2);
        }
    }

    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Intrinsics.checkParameterIsNotNull(surfaceTexture, "surface");
        try {
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.setSurface(null);
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.release();
        } catch (SurfaceTexture surfaceTexture2) {
            AnalyticsManager.logException(surfaceTexture2);
        }
        return null;
    }

    private final void enterReveal(View view) {
        int i = this.fabTranslationX;
        FloatingActionButton floatingActionButton = this.floatingActionButton;
        if (floatingActionButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        int left = floatingActionButton.getLeft();
        FloatingActionButton floatingActionButton2 = this.floatingActionButton;
        if (floatingActionButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        i += (left + floatingActionButton2.getRight()) / 2;
        float f = this.fabTranslationY;
        floatingActionButton2 = this.floatingActionButton;
        if (floatingActionButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        int top = floatingActionButton2.getTop();
        FloatingActionButton floatingActionButton3 = this.floatingActionButton;
        if (floatingActionButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        left = (int) (f + ((float) ((top + floatingActionButton3.getBottom()) / 2)));
        float hypot = (float) Math.hypot((double) Math.max(i, view.getWidth() - i), (double) Math.max(left, view.getHeight() - left));
        view.setVisibility(0);
        floatingActionButton3 = this.floatingActionButton;
        if (floatingActionButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        view = ViewAnimationUtils.createCircularReveal(view, i, left, (float) (floatingActionButton3.getWidth() / 2), hypot);
        Intrinsics.checkExpressionValueIsNotNull(view, "animator");
        view.setInterpolator(new AccelerateDecelerateInterpolator());
        view.setDuration(300);
        view.start();
    }

    public final void exitReveal$App_prodRelease(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        int i = this.fabTranslationX;
        FloatingActionButton floatingActionButton = this.floatingActionButton;
        if (floatingActionButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        int left = floatingActionButton.getLeft();
        FloatingActionButton floatingActionButton2 = this.floatingActionButton;
        if (floatingActionButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        i += (left + floatingActionButton2.getRight()) / 2;
        float f = this.fabTranslationY;
        floatingActionButton2 = this.floatingActionButton;
        if (floatingActionButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        int top = floatingActionButton2.getTop();
        FloatingActionButton floatingActionButton3 = this.floatingActionButton;
        if (floatingActionButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floatingActionButton");
        }
        SupportAnimator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, (int) (f + ((float) ((top + floatingActionButton3.getBottom()) / 2))), (float) (view.getWidth() / 2), BitmapDescriptorFactory.HUE_RED);
        createCircularReveal.addListener(new RocketRoubleFragment$exitReveal$1(view));
        createCircularReveal.start();
    }

    public final void onEvent(FeedRefreshIsNeeded feedRefreshIsNeeded) {
        Intrinsics.checkParameterIsNotNull(feedRefreshIsNeeded, "refreshIsNeeded");
        refreshUserData();
    }

    private final void fillAdapterWithData(List<Operation> list, List<Operation> list2, List<Float> list3, Float f) {
        RocketRoubleAdapter rocketRoubleAdapter;
        RocketRoubleAdapter rocketRoubleAdapter2;
        List<Float> list4 = list3;
        DelimiterOperation delimiterOperation = new DelimiterOperation(DELIMITER_AVALIABLE, 0);
        DelimiterOperation delimiterOperation2 = new DelimiterOperation(DELIMITER_SHOP, 1);
        DelimiterOperation delimiterOperation3 = new DelimiterOperation(DELIMITER_STATISTICS, 2);
        DelimiterOperation delimiterOperation4 = new DelimiterOperation(DELIMITER_DYNAMIC, 3);
        DelimiterOperation delimiterOperation5 = new DelimiterOperation(DELIMITER_HISTORY, 4);
        DelimiterOperation delimiterOperation6 = new DelimiterOperation(DELIMITER_HEADER, 5);
        RocketRoubleAdapter rocketRoubleAdapter3 = this.rocketRoubleAdapter;
        if (rocketRoubleAdapter3 == null) {
            Intrinsics.throwNpe();
        }
        rocketRoubleAdapter3.clear();
        rocketRoubleAdapter3 = r0.rocketRoubleAdapter;
        if (rocketRoubleAdapter3 == null) {
            Intrinsics.throwNpe();
        }
        rocketRoubleAdapter3.clearTop();
        StatisticsOperation statisticsOperation = list4 != null ? new StatisticsOperation(STATISTICS, 7, list4, f) : null;
        BarOperation barOperation = new BarOperation();
        RocketRoubleAdapter rocketRoubleAdapter4 = r0.rocketRoubleAdapter;
        if (rocketRoubleAdapter4 == null) {
            Intrinsics.throwNpe();
        }
        rocketRoubleAdapter4.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_HEADER(), delimiterOperation6));
        Authorization authorization = r0.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        if (Cobrand.Companion.fromCobrandName(authorization.getUserData().realmGet$cobrandName()) != Cobrand.ONETWOTRIP) {
            RocketRoubleAdapter rocketRoubleAdapter5 = r0.rocketRoubleAdapter;
            if (rocketRoubleAdapter5 == null) {
                Intrinsics.throwNpe();
            }
            rocketRoubleAdapter5.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_DELIMITER(), delimiterOperation));
            if (list2 != null) {
                for (Operation operation : list2) {
                    RocketRoubleAdapter rocketRoubleAdapter6 = r0.rocketRoubleAdapter;
                    if (rocketRoubleAdapter6 == null) {
                        Intrinsics.throwNpe();
                    }
                    rocketRoubleAdapter6.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_ACTUAL(), operation));
                }
                if (list2.isEmpty()) {
                    rocketRoubleAdapter = r0.rocketRoubleAdapter;
                    if (rocketRoubleAdapter == null) {
                        Intrinsics.throwNpe();
                    }
                    rocketRoubleAdapter.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_NO_COMPENSATION(), null, 2, null));
                }
            }
        }
        UserModel userModel = r0.userModel;
        if (userModel != null ? userModel.isShopWorks() : false) {
            rocketRoubleAdapter = r0.rocketRoubleAdapter;
            if (rocketRoubleAdapter == null) {
                Intrinsics.throwNpe();
            }
            rocketRoubleAdapter.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_DELIMITER(), delimiterOperation2));
            rocketRoubleAdapter = r0.rocketRoubleAdapter;
            if (rocketRoubleAdapter == null) {
                Intrinsics.throwNpe();
            }
            rocketRoubleAdapter.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_ROCKETSHOP(), null, 2, null));
        }
        rocketRoubleAdapter = r0.rocketRoubleAdapter;
        if (rocketRoubleAdapter == null) {
            Intrinsics.throwNpe();
        }
        rocketRoubleAdapter.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_DELIMITER(), delimiterOperation3));
        if (list4 != null) {
            rocketRoubleAdapter = r0.rocketRoubleAdapter;
            if (rocketRoubleAdapter == null) {
                Intrinsics.throwNpe();
            }
            rocketRoubleAdapter.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_STATISTICS(), statisticsOperation));
        }
        rocketRoubleAdapter = r0.rocketRoubleAdapter;
        if (rocketRoubleAdapter == null) {
            Intrinsics.throwNpe();
        }
        rocketRoubleAdapter.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_DELIMITER(), delimiterOperation4));
        if (!(list4 == null || list3.isEmpty())) {
            rocketRoubleAdapter2 = r0.rocketRoubleAdapter;
            if (rocketRoubleAdapter2 == null) {
                Intrinsics.throwNpe();
            }
            rocketRoubleAdapter2.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_BAR(), barOperation));
        }
        rocketRoubleAdapter2 = r0.rocketRoubleAdapter;
        if (rocketRoubleAdapter2 == null) {
            Intrinsics.throwNpe();
        }
        rocketRoubleAdapter2.addTopItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_DELIMITER(), delimiterOperation5));
        if (list != null) {
            for (Operation operation2 : list) {
                RocketRoubleAdapter rocketRoubleAdapter7 = r0.rocketRoubleAdapter;
                if (rocketRoubleAdapter7 == null) {
                    Intrinsics.throwNpe();
                }
                rocketRoubleAdapter7.addItem(new RocketRubleHistoryOperation(RocketRubleHistoryOperation.Companion.getOPERATION_HISTORY(), operation2));
            }
        }
    }

    private final void refreshUserData() {
        RocketRoubleAdapter rocketRoubleAdapter = this.rocketRoubleAdapter;
        if (rocketRoubleAdapter == null) {
            Intrinsics.throwNpe();
        }
        if (rocketRoubleAdapter.getItemCount() == 0) {
            fillAdapterWithData(new ArrayList(), new ArrayList(), null, Float.valueOf(BitmapDescriptorFactory.HUE_RED));
        }
        RocketAPI rocketAPI = this.rocketAPI;
        if (rocketAPI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
        }
        this.rocketSubscription = rocketAPI.getRocketRoubles().observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Subscriber) new RocketRoubleFragment$refreshUserData$1(this));
    }
}
