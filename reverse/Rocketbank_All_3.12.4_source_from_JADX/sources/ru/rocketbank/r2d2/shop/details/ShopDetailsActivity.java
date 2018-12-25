package ru.rocketbank.r2d2.shop.details;

import android.arch.lifecycle.MethodCallsLogger;
import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.network.model.ShopImage;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.core.widgets.ViewPagerAdapter;
import ru.rocketbank.core.widgets.viewpagerindicator.CirclePageIndicator;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.databinding.ActivityShopDetailsBinding;
import ru.rocketbank.r2d2.databinding.ShopDetailsImageBinding;
import ru.rocketbank.r2d2.shop.ShopUtilsKt;
import ru.rocketbank.r2d2.shop.cart.ShopCartActivity;
import ru.rocketbank.r2d2.shop.details.RocketScaleGestureDetector.OnScaleGestureListener;
import ru.rocketbank.r2d2.shop.details.ShopDetailsContract.View;
import ru.rocketbank.r2d2.shop.details.attributes.ShopColorAdapter;
import ru.rocketbank.r2d2.shop.details.attributes.ShopSizeAdapter;

/* compiled from: ShopDetailsActivity.kt */
public final class ShopDetailsActivity extends PresenterSecuredActivity<ShopDetailsPresenter> implements ObservableScrollViewCallbacks, View {
    public static final Companion Companion = new Companion();
    private static final String KEY_STORE_ITEM = "KEY_STORE_ITEM";
    private HashMap _$_findViewCache;
    private int actionBarSize;
    private ActivityShopDetailsBinding binding;
    private int currentToolbarColor;
    private int flexibleSpaceImageHeight;
    private Function1<? super RocketScaleGestureDetector, Boolean> onScale;
    private Function1<? super RocketScaleGestureDetector, Unit> onScaleEnd;
    public RocketScaleGestureDetector scaleDetector;
    private int toolbarColor = -1;

    /* compiled from: ShopDetailsActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getKEY_STORE_ITEM() {
            return ShopDetailsActivity.KEY_STORE_ITEM;
        }

        public final void startActivity(Context context, ShopItem shopItem) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(shopItem, "shopItem");
            Intent intent = new Intent(context, ShopDetailsActivity.class);
            intent.putExtra(getKEY_STORE_ITEM(), shopItem);
            context.startActivity(intent);
        }
    }

    /* compiled from: ShopDetailsActivity.kt */
    public final class ImagePinchListener implements OnScaleGestureListener {
        private final android.view.View child;
        private float lastFocusX;
        private float lastFocusY;
        private float locationX;
        private float locationY;
        private final ViewGroup parent;
        final /* synthetic */ ShopDetailsActivity this$0;
        private float windowLocationX;
        private float windowLocationY;
        private final ViewGroup zoomView;

        public final boolean onScale(RocketScaleGestureDetector rocketScaleGestureDetector) {
            return true;
        }

        public final void onScaleEnd(RocketScaleGestureDetector rocketScaleGestureDetector) {
        }

        public ImagePinchListener(ShopDetailsActivity shopDetailsActivity, android.view.View view) {
            Intrinsics.checkParameterIsNotNull(view, "child");
            this.this$0 = shopDetailsActivity;
            this.child = view;
            shopDetailsActivity = shopDetailsActivity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(shopDetailsActivity, "window");
            shopDetailsActivity = shopDetailsActivity.getDecorView();
            Intrinsics.checkExpressionValueIsNotNull(shopDetailsActivity, "window.decorView");
            shopDetailsActivity = shopDetailsActivity.getRootView();
            if (shopDetailsActivity == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
            }
            this.zoomView = (ViewGroup) shopDetailsActivity;
            shopDetailsActivity = this.child.getParent();
            if (shopDetailsActivity == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
            }
            this.parent = (ViewGroup) shopDetailsActivity;
        }

        public final android.view.View getChild() {
            return this.child;
        }

        public final ViewGroup getZoomView() {
            return this.zoomView;
        }

        public final ViewGroup getParent() {
            return this.parent;
        }

        public final float getWindowLocationX() {
            return this.windowLocationX;
        }

        public final void setWindowLocationX(float f) {
            this.windowLocationX = f;
        }

        public final float getWindowLocationY() {
            return this.windowLocationY;
        }

        public final void setWindowLocationY(float f) {
            this.windowLocationY = f;
        }

        public final float getLocationX() {
            return this.locationX;
        }

        public final void setLocationX(float f) {
            this.locationX = f;
        }

        public final float getLocationY() {
            return this.locationY;
        }

        public final void setLocationY(float f) {
            this.locationY = f;
        }

        public final boolean onScaleBegin(RocketScaleGestureDetector rocketScaleGestureDetector) {
            Intrinsics.checkParameterIsNotNull(rocketScaleGestureDetector, "detector");
            if ((Intrinsics.areEqual(this.child.getParent(), this.parent) ^ 1) != 0) {
                return false;
            }
            this.this$0.showBlockingView(true);
            ((GestureLockableObservableScrollView) this.this$0._$_findCachedViewById(C0859R.id.observableScrollView)).setScrollingEnabled(false);
            int[] iArr = new int[2];
            this.child.getLocationOnScreen(iArr);
            int measuredWidth = this.child.getMeasuredWidth();
            int measuredHeight = this.child.getMeasuredHeight();
            this.lastFocusX = rocketScaleGestureDetector.getFocusX();
            this.lastFocusY = rocketScaleGestureDetector.getFocusY();
            this.windowLocationX = (float) iArr[0];
            this.windowLocationY = (float) iArr[1];
            this.locationX = this.child.getX();
            this.locationY = this.child.getY();
            this.parent.removeView(this.child);
            this.zoomView.addView(this.child, new LayoutParams(measuredWidth, measuredHeight));
            this.child.setPivotX(rocketScaleGestureDetector.getFocusX());
            this.child.setPivotY(rocketScaleGestureDetector.getFocusY());
            this.this$0.setOnScale(new ShopDetailsActivity$ImagePinchListener$onScaleBegin$1(this));
            this.this$0.setOnScaleEnd(new ShopDetailsActivity$ImagePinchListener$onScaleBegin$2(this));
            return true;
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

    public final void onDownMotionEvent() {
    }

    public final void onUpOrCancelMotionEvent(ScrollState scrollState) {
    }

    public final Function1<RocketScaleGestureDetector, Boolean> getOnScale() {
        return this.onScale;
    }

    public final void setOnScale(Function1<? super RocketScaleGestureDetector, Boolean> function1) {
        this.onScale = function1;
    }

    public final Function1<RocketScaleGestureDetector, Unit> getOnScaleEnd() {
        return this.onScaleEnd;
    }

    public final void setOnScaleEnd(Function1<? super RocketScaleGestureDetector, Unit> function1) {
        this.onScaleEnd = function1;
    }

    public final ShopDetailsPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        return (ShopDetailsPresenter) PresenterManager.getOrCreatePresenter("faed860e-dcfe-4803-b575-56c6a81319b2", ShopDetailsPresenter.class);
    }

    public final RocketScaleGestureDetector getScaleDetector() {
        RocketScaleGestureDetector rocketScaleGestureDetector = this.scaleDetector;
        if (rocketScaleGestureDetector == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleDetector");
        }
        return rocketScaleGestureDetector;
    }

    public final void setScaleDetector(RocketScaleGestureDetector rocketScaleGestureDetector) {
        Intrinsics.checkParameterIsNotNull(rocketScaleGestureDetector, "<set-?>");
        this.scaleDetector = rocketScaleGestureDetector;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_shop_details);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…ut.activity_shop_details)");
        this.binding = (ActivityShopDetailsBinding) bundle;
        setSupportActionBar((Toolbar) _$_findCachedViewById(C0859R.id.toolbar));
        ((ShopDetailsPresenter) getPresenter()).setView(this);
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
        Context context = this;
        ((Toolbar) _$_findCachedViewById(C0859R.id.toolbar)).setBackgroundColor(ContextCompat.getColor(context, C0859R.color.white));
        Toolbar toolbar = (Toolbar) _$_findCachedViewById(C0859R.id.toolbar);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        bundle = toolbar.getBackground();
        Intrinsics.checkExpressionValueIsNotNull(bundle, "toolbar.background");
        bundle.setAlpha(0);
        setTitle(C0859R.string.empty);
        this.flexibleSpaceImageHeight = getResources().getDimensionPixelSize(C0859R.dimen.shop_details_header);
        ((GestureLockableObservableScrollView) _$_findCachedViewById(C0859R.id.observableScrollView)).setScrollViewCallbacks(this);
        bundle = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(bundle, "intent");
        showItem(bundle);
        this.scaleDetector = new RocketScaleGestureDetector(context, new ShopDetailsActivity$onCreate$1(this));
        bundle = this.scaleDetector;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleDetector");
        }
        bundle.setQuickScaleEnabled(true);
        showBlockingView(false);
    }

    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        super.dispatchTouchEvent(motionEvent);
        RocketScaleGestureDetector rocketScaleGestureDetector = this.scaleDetector;
        if (rocketScaleGestureDetector == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleDetector");
        }
        return rocketScaleGestureDetector.onTouchEvent(motionEvent);
    }

    protected final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent == null) {
            intent = getIntent();
            Intrinsics.checkExpressionValueIsNotNull(intent, "getIntent()");
        }
        showItem(intent);
    }

    private final void showItem(Intent intent) {
        android.view.View[] viewArr;
        android.view.View[] viewArr2;
        boolean z;
        Integer num;
        int calculateNumOfColumns;
        List sizes;
        android.view.View inflate;
        RocketTextView rocketTextView;
        RecyclerView recyclerView;
        List sizes2;
        ShopSizeAdapter shopSizeAdapter;
        RecyclerView recyclerView2;
        ImageButton imageButton;
        android.view.View inflate2;
        RocketTextView rocketTextView2;
        RecyclerView recyclerView3;
        List colors;
        ShopColorAdapter shopColorAdapter;
        RecyclerView recyclerView4;
        ShopItem shopItem = (ShopItem) intent.getParcelableExtra(KEY_STORE_ITEM);
        RocketTextView rocketTextView3 = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewAmount);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView3, "textViewAmount");
        Context context = this;
        Intrinsics.checkExpressionValueIsNotNull(shopItem, "shopItem");
        rocketTextView3.setText(ShopUtilsKt.createShopItemAmountText(context, shopItem, ContextCompat.getColor(context, C0859R.color.rocketBlack)));
        ActivityShopDetailsBinding activityShopDetailsBinding = this.binding;
        if (activityShopDetailsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityShopDetailsBinding.setItem(shopItem);
        ((ShopDetailsPresenter) getPresenter()).setShopItem(shopItem);
        List images = shopItem.getImages();
        ShopSizeAdapter shopSizeAdapter2 = null;
        if (images != null) {
            Iterable<ShopImage> iterable = images;
            Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
            for (ShopImage shopImage : iterable) {
                android.view.View view;
                ShopDetailsImageBinding inflate3 = ShopDetailsImageBinding.inflate(getLayoutInflater(), (ViewPager) _$_findCachedViewById(C0859R.id.viewPager), false);
                inflate3.setImage(shopImage);
                if (shopImage.getColor() != null) {
                    view = inflate3.viewColor;
                    String color = shopImage.getColor();
                    if (color == null) {
                        color = null;
                    } else if (color == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                    } else {
                        color = StringsKt.trim(color).toString();
                    }
                    view.setBackgroundColor(MethodCallsLogger.parseColor(color));
                }
                ProgressBar progressBar = inflate3.progressBar;
                Intrinsics.checkExpressionValueIsNotNull(progressBar, "imageBinding.progressBar");
                view = progressBar;
                Intrinsics.checkParameterIsNotNull(view, "$receiver");
                view.setVisibility(0);
                Glide.with(this).load(shopImage.getImage_url()).diskCacheStrategy(DiskCacheStrategy.SOURCE).dontTransform().listener(new ShopDetailsActivity$showItem$imageViews$1$1(inflate3)).into(inflate3.imageView);
                Intrinsics.checkExpressionValueIsNotNull(inflate3, "imageBinding");
                android.view.View root = inflate3.getRoot();
                Intrinsics.checkExpressionValueIsNotNull(root, "imageBinding.root");
                FrameLayout frameLayout = (FrameLayout) root.findViewById(C0859R.id.child);
                Intrinsics.checkExpressionValueIsNotNull(frameLayout, "imageBinding.root.child");
                RocketScaleGestureDetector rocketScaleGestureDetector = new RocketScaleGestureDetector(context, new ImagePinchListener(this, frameLayout));
                rocketScaleGestureDetector.setQuickScaleEnabled(true);
                view = inflate3.getRoot();
                Intrinsics.checkExpressionValueIsNotNull(view, "imageBinding.root");
                ((FrameLayout) view.findViewById(C0859R.id.child)).setOnTouchListener(new ShopDetailsActivity$showItem$imageViews$1$2(rocketScaleGestureDetector));
                arrayList.add(inflate3.getRoot());
            }
            Object[] toArray = ((List) arrayList).toArray(new android.view.View[0]);
            if (toArray == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            viewArr = (android.view.View[]) toArray;
        } else {
            viewArr = null;
        }
        ViewPager viewPager = (ViewPager) _$_findCachedViewById(C0859R.id.viewPager);
        Intrinsics.checkExpressionValueIsNotNull(viewPager, "viewPager");
        if (viewArr == null) {
            viewArr2 = new android.view.View[0];
        } else {
            viewArr2 = viewArr;
        }
        viewPager.setAdapter(new ViewPagerAdapter(viewArr2));
        ((CirclePageIndicator) _$_findCachedViewById(C0859R.id.pageIndicator)).setViewPager((ViewPager) _$_findCachedViewById(C0859R.id.viewPager));
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) _$_findCachedViewById(C0859R.id.pageIndicator);
        Intrinsics.checkExpressionValueIsNotNull(circlePageIndicator, "pageIndicator");
        int i = 8;
        circlePageIndicator.setVisibility((viewArr != null ? viewArr.length : 0) > 1 ? 0 : 8);
        ((FloatingActionButton) _$_findCachedViewById(C0859R.id.fab)).setOnClickListener(new ShopDetailsActivity$showItem$1(this, shopItem));
        ((FloatingActionButton) _$_findCachedViewById(C0859R.id.fab)).hide();
        CharSequence price_replacement = shopItem.getPrice_replacement();
        if (price_replacement != null) {
            if (!StringsKt.isBlank(price_replacement)) {
                z = false;
                if (z) {
                    images = shopItem.getSizes();
                    if (images == null) {
                        images = shopItem.getColors();
                        if (images != null) {
                            num = null;
                            calculateNumOfColumns = ShopUtilsKt.calculateNumOfColumns(context, num == null ? num.intValue() : 0);
                            if (shopItem.getSizes() != null) {
                                sizes = shopItem.getSizes();
                                if ((sizes == null ? sizes.size() : 0) > 1) {
                                    inflate = getLayoutInflater().inflate(C0859R.layout.shop_attribute_view, (LinearLayout) _$_findCachedViewById(C0859R.id.attributes), false);
                                    Intrinsics.checkExpressionValueIsNotNull(inflate, "sizes");
                                    rocketTextView = (RocketTextView) inflate.findViewById(C0859R.id.title);
                                    Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "sizes.title");
                                    rocketTextView.setText(getString(C0859R.string.shop_size_title));
                                    recyclerView = (RecyclerView) inflate.findViewById(C0859R.id.recyclerView);
                                    Intrinsics.checkExpressionValueIsNotNull(recyclerView, "sizes.recyclerView");
                                    recyclerView.setLayoutManager(new GridLayoutManager(context, calculateNumOfColumns));
                                    sizes2 = shopItem.getSizes();
                                    if (sizes2 == null) {
                                        Intrinsics.throwNpe();
                                    }
                                    shopSizeAdapter = new ShopSizeAdapter(sizes2, new ShopDetailsActivity$showItem$2(this));
                                    recyclerView2 = (RecyclerView) inflate.findViewById(C0859R.id.recyclerView);
                                    Intrinsics.checkExpressionValueIsNotNull(recyclerView2, "sizes.recyclerView");
                                    recyclerView2.setAdapter(shopSizeAdapter);
                                    imageButton = (ImageButton) inflate.findViewById(C0859R.id.buttonQuestion);
                                    Intrinsics.checkExpressionValueIsNotNull(imageButton, "sizes.buttonQuestion");
                                    if (shopItem.getSizes_table_url() != null) {
                                        i = 0;
                                    }
                                    imageButton.setVisibility(i);
                                    ((ImageButton) inflate.findViewById(C0859R.id.buttonQuestion)).setOnClickListener(new ShopDetailsActivity$showItem$3(this, shopItem));
                                    ((LinearLayout) _$_findCachedViewById(C0859R.id.attributes)).addView(inflate);
                                    shopSizeAdapter2 = shopSizeAdapter;
                                }
                            }
                            if (shopItem.getColors() == null) {
                                sizes = shopItem.getColors();
                                if ((sizes == null ? sizes.size() : 0) <= 1) {
                                    inflate2 = getLayoutInflater().inflate(C0859R.layout.shop_attribute_view, (LinearLayout) _$_findCachedViewById(C0859R.id.attributes), false);
                                    Intrinsics.checkExpressionValueIsNotNull(inflate2, "colors");
                                    rocketTextView2 = (RocketTextView) inflate2.findViewById(C0859R.id.title);
                                    Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "colors.title");
                                    rocketTextView2.setText(getString(C0859R.string.shop_color_title));
                                    recyclerView3 = (RecyclerView) inflate2.findViewById(C0859R.id.recyclerView);
                                    Intrinsics.checkExpressionValueIsNotNull(recyclerView3, "colors.recyclerView");
                                    recyclerView3.setLayoutManager(new GridLayoutManager(context, calculateNumOfColumns));
                                    colors = shopItem.getColors();
                                    if (colors == null) {
                                        Intrinsics.throwNpe();
                                    }
                                    shopColorAdapter = new ShopColorAdapter(colors, new ShopDetailsActivity$showItem$storeColorAdapter$1(this));
                                    recyclerView4 = (RecyclerView) inflate2.findViewById(C0859R.id.recyclerView);
                                    Intrinsics.checkExpressionValueIsNotNull(recyclerView4, "colors.recyclerView");
                                    recyclerView4.setAdapter(shopColorAdapter);
                                    if (shopSizeAdapter2 != null) {
                                        shopSizeAdapter2.setOnCheckChanged(new ShopDetailsActivity$showItem$4(this, shopItem, inflate2, shopColorAdapter));
                                    }
                                    ((LinearLayout) _$_findCachedViewById(C0859R.id.attributes)).addView(inflate2);
                                }
                            }
                        }
                    }
                    num = Integer.valueOf(images.size());
                    if (num == null) {
                    }
                    calculateNumOfColumns = ShopUtilsKt.calculateNumOfColumns(context, num == null ? num.intValue() : 0);
                    if (shopItem.getSizes() != null) {
                        sizes = shopItem.getSizes();
                        if (sizes == null) {
                        }
                        if ((sizes == null ? sizes.size() : 0) > 1) {
                            inflate = getLayoutInflater().inflate(C0859R.layout.shop_attribute_view, (LinearLayout) _$_findCachedViewById(C0859R.id.attributes), false);
                            Intrinsics.checkExpressionValueIsNotNull(inflate, "sizes");
                            rocketTextView = (RocketTextView) inflate.findViewById(C0859R.id.title);
                            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "sizes.title");
                            rocketTextView.setText(getString(C0859R.string.shop_size_title));
                            recyclerView = (RecyclerView) inflate.findViewById(C0859R.id.recyclerView);
                            Intrinsics.checkExpressionValueIsNotNull(recyclerView, "sizes.recyclerView");
                            recyclerView.setLayoutManager(new GridLayoutManager(context, calculateNumOfColumns));
                            sizes2 = shopItem.getSizes();
                            if (sizes2 == null) {
                                Intrinsics.throwNpe();
                            }
                            shopSizeAdapter = new ShopSizeAdapter(sizes2, new ShopDetailsActivity$showItem$2(this));
                            recyclerView2 = (RecyclerView) inflate.findViewById(C0859R.id.recyclerView);
                            Intrinsics.checkExpressionValueIsNotNull(recyclerView2, "sizes.recyclerView");
                            recyclerView2.setAdapter(shopSizeAdapter);
                            imageButton = (ImageButton) inflate.findViewById(C0859R.id.buttonQuestion);
                            Intrinsics.checkExpressionValueIsNotNull(imageButton, "sizes.buttonQuestion");
                            if (shopItem.getSizes_table_url() != null) {
                                i = 0;
                            }
                            imageButton.setVisibility(i);
                            ((ImageButton) inflate.findViewById(C0859R.id.buttonQuestion)).setOnClickListener(new ShopDetailsActivity$showItem$3(this, shopItem));
                            ((LinearLayout) _$_findCachedViewById(C0859R.id.attributes)).addView(inflate);
                            shopSizeAdapter2 = shopSizeAdapter;
                        }
                    }
                    if (shopItem.getColors() == null) {
                        sizes = shopItem.getColors();
                        if (sizes == null) {
                        }
                        if ((sizes == null ? sizes.size() : 0) <= 1) {
                            inflate2 = getLayoutInflater().inflate(C0859R.layout.shop_attribute_view, (LinearLayout) _$_findCachedViewById(C0859R.id.attributes), false);
                            Intrinsics.checkExpressionValueIsNotNull(inflate2, "colors");
                            rocketTextView2 = (RocketTextView) inflate2.findViewById(C0859R.id.title);
                            Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "colors.title");
                            rocketTextView2.setText(getString(C0859R.string.shop_color_title));
                            recyclerView3 = (RecyclerView) inflate2.findViewById(C0859R.id.recyclerView);
                            Intrinsics.checkExpressionValueIsNotNull(recyclerView3, "colors.recyclerView");
                            recyclerView3.setLayoutManager(new GridLayoutManager(context, calculateNumOfColumns));
                            colors = shopItem.getColors();
                            if (colors == null) {
                                Intrinsics.throwNpe();
                            }
                            shopColorAdapter = new ShopColorAdapter(colors, new ShopDetailsActivity$showItem$storeColorAdapter$1(this));
                            recyclerView4 = (RecyclerView) inflate2.findViewById(C0859R.id.recyclerView);
                            Intrinsics.checkExpressionValueIsNotNull(recyclerView4, "colors.recyclerView");
                            recyclerView4.setAdapter(shopColorAdapter);
                            if (shopSizeAdapter2 != null) {
                                shopSizeAdapter2.setOnCheckChanged(new ShopDetailsActivity$showItem$4(this, shopItem, inflate2, shopColorAdapter));
                            }
                            ((LinearLayout) _$_findCachedViewById(C0859R.id.attributes)).addView(inflate2);
                        }
                    }
                }
            }
        }
        z = true;
        if (z) {
            images = shopItem.getSizes();
            if (images == null) {
                images = shopItem.getColors();
                if (images != null) {
                    num = null;
                    if (num == null) {
                    }
                    calculateNumOfColumns = ShopUtilsKt.calculateNumOfColumns(context, num == null ? num.intValue() : 0);
                    if (shopItem.getSizes() != null) {
                        sizes = shopItem.getSizes();
                        if (sizes == null) {
                        }
                        if ((sizes == null ? sizes.size() : 0) > 1) {
                            inflate = getLayoutInflater().inflate(C0859R.layout.shop_attribute_view, (LinearLayout) _$_findCachedViewById(C0859R.id.attributes), false);
                            Intrinsics.checkExpressionValueIsNotNull(inflate, "sizes");
                            rocketTextView = (RocketTextView) inflate.findViewById(C0859R.id.title);
                            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "sizes.title");
                            rocketTextView.setText(getString(C0859R.string.shop_size_title));
                            recyclerView = (RecyclerView) inflate.findViewById(C0859R.id.recyclerView);
                            Intrinsics.checkExpressionValueIsNotNull(recyclerView, "sizes.recyclerView");
                            recyclerView.setLayoutManager(new GridLayoutManager(context, calculateNumOfColumns));
                            sizes2 = shopItem.getSizes();
                            if (sizes2 == null) {
                                Intrinsics.throwNpe();
                            }
                            shopSizeAdapter = new ShopSizeAdapter(sizes2, new ShopDetailsActivity$showItem$2(this));
                            recyclerView2 = (RecyclerView) inflate.findViewById(C0859R.id.recyclerView);
                            Intrinsics.checkExpressionValueIsNotNull(recyclerView2, "sizes.recyclerView");
                            recyclerView2.setAdapter(shopSizeAdapter);
                            imageButton = (ImageButton) inflate.findViewById(C0859R.id.buttonQuestion);
                            Intrinsics.checkExpressionValueIsNotNull(imageButton, "sizes.buttonQuestion");
                            if (shopItem.getSizes_table_url() != null) {
                                i = 0;
                            }
                            imageButton.setVisibility(i);
                            ((ImageButton) inflate.findViewById(C0859R.id.buttonQuestion)).setOnClickListener(new ShopDetailsActivity$showItem$3(this, shopItem));
                            ((LinearLayout) _$_findCachedViewById(C0859R.id.attributes)).addView(inflate);
                            shopSizeAdapter2 = shopSizeAdapter;
                        }
                    }
                    if (shopItem.getColors() == null) {
                        sizes = shopItem.getColors();
                        if (sizes == null) {
                        }
                        if ((sizes == null ? sizes.size() : 0) <= 1) {
                            inflate2 = getLayoutInflater().inflate(C0859R.layout.shop_attribute_view, (LinearLayout) _$_findCachedViewById(C0859R.id.attributes), false);
                            Intrinsics.checkExpressionValueIsNotNull(inflate2, "colors");
                            rocketTextView2 = (RocketTextView) inflate2.findViewById(C0859R.id.title);
                            Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "colors.title");
                            rocketTextView2.setText(getString(C0859R.string.shop_color_title));
                            recyclerView3 = (RecyclerView) inflate2.findViewById(C0859R.id.recyclerView);
                            Intrinsics.checkExpressionValueIsNotNull(recyclerView3, "colors.recyclerView");
                            recyclerView3.setLayoutManager(new GridLayoutManager(context, calculateNumOfColumns));
                            colors = shopItem.getColors();
                            if (colors == null) {
                                Intrinsics.throwNpe();
                            }
                            shopColorAdapter = new ShopColorAdapter(colors, new ShopDetailsActivity$showItem$storeColorAdapter$1(this));
                            recyclerView4 = (RecyclerView) inflate2.findViewById(C0859R.id.recyclerView);
                            Intrinsics.checkExpressionValueIsNotNull(recyclerView4, "colors.recyclerView");
                            recyclerView4.setAdapter(shopColorAdapter);
                            if (shopSizeAdapter2 != null) {
                                shopSizeAdapter2.setOnCheckChanged(new ShopDetailsActivity$showItem$4(this, shopItem, inflate2, shopColorAdapter));
                            }
                            ((LinearLayout) _$_findCachedViewById(C0859R.id.attributes)).addView(inflate2);
                        }
                    }
                }
            }
            num = Integer.valueOf(images.size());
            if (num == null) {
            }
            calculateNumOfColumns = ShopUtilsKt.calculateNumOfColumns(context, num == null ? num.intValue() : 0);
            if (shopItem.getSizes() != null) {
                sizes = shopItem.getSizes();
                if (sizes == null) {
                }
                if ((sizes == null ? sizes.size() : 0) > 1) {
                    inflate = getLayoutInflater().inflate(C0859R.layout.shop_attribute_view, (LinearLayout) _$_findCachedViewById(C0859R.id.attributes), false);
                    Intrinsics.checkExpressionValueIsNotNull(inflate, "sizes");
                    rocketTextView = (RocketTextView) inflate.findViewById(C0859R.id.title);
                    Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "sizes.title");
                    rocketTextView.setText(getString(C0859R.string.shop_size_title));
                    recyclerView = (RecyclerView) inflate.findViewById(C0859R.id.recyclerView);
                    Intrinsics.checkExpressionValueIsNotNull(recyclerView, "sizes.recyclerView");
                    recyclerView.setLayoutManager(new GridLayoutManager(context, calculateNumOfColumns));
                    sizes2 = shopItem.getSizes();
                    if (sizes2 == null) {
                        Intrinsics.throwNpe();
                    }
                    shopSizeAdapter = new ShopSizeAdapter(sizes2, new ShopDetailsActivity$showItem$2(this));
                    recyclerView2 = (RecyclerView) inflate.findViewById(C0859R.id.recyclerView);
                    Intrinsics.checkExpressionValueIsNotNull(recyclerView2, "sizes.recyclerView");
                    recyclerView2.setAdapter(shopSizeAdapter);
                    imageButton = (ImageButton) inflate.findViewById(C0859R.id.buttonQuestion);
                    Intrinsics.checkExpressionValueIsNotNull(imageButton, "sizes.buttonQuestion");
                    if (shopItem.getSizes_table_url() != null) {
                        i = 0;
                    }
                    imageButton.setVisibility(i);
                    ((ImageButton) inflate.findViewById(C0859R.id.buttonQuestion)).setOnClickListener(new ShopDetailsActivity$showItem$3(this, shopItem));
                    ((LinearLayout) _$_findCachedViewById(C0859R.id.attributes)).addView(inflate);
                    shopSizeAdapter2 = shopSizeAdapter;
                }
            }
            if (shopItem.getColors() == null) {
                sizes = shopItem.getColors();
                if (sizes == null) {
                }
                if ((sizes == null ? sizes.size() : 0) <= 1) {
                    inflate2 = getLayoutInflater().inflate(C0859R.layout.shop_attribute_view, (LinearLayout) _$_findCachedViewById(C0859R.id.attributes), false);
                    Intrinsics.checkExpressionValueIsNotNull(inflate2, "colors");
                    rocketTextView2 = (RocketTextView) inflate2.findViewById(C0859R.id.title);
                    Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "colors.title");
                    rocketTextView2.setText(getString(C0859R.string.shop_color_title));
                    recyclerView3 = (RecyclerView) inflate2.findViewById(C0859R.id.recyclerView);
                    Intrinsics.checkExpressionValueIsNotNull(recyclerView3, "colors.recyclerView");
                    recyclerView3.setLayoutManager(new GridLayoutManager(context, calculateNumOfColumns));
                    colors = shopItem.getColors();
                    if (colors == null) {
                        Intrinsics.throwNpe();
                    }
                    shopColorAdapter = new ShopColorAdapter(colors, new ShopDetailsActivity$showItem$storeColorAdapter$1(this));
                    recyclerView4 = (RecyclerView) inflate2.findViewById(C0859R.id.recyclerView);
                    Intrinsics.checkExpressionValueIsNotNull(recyclerView4, "colors.recyclerView");
                    recyclerView4.setAdapter(shopColorAdapter);
                    if (shopSizeAdapter2 != null) {
                        shopSizeAdapter2.setOnCheckChanged(new ShopDetailsActivity$showItem$4(this, shopItem, inflate2, shopColorAdapter));
                    }
                    ((LinearLayout) _$_findCachedViewById(C0859R.id.attributes)).addView(inflate2);
                }
            }
        }
    }

    public final void showAddToCartMessage() {
        Snackbar.make((CoordinatorLayout) _$_findCachedViewById(C0859R.id.content), C0859R.string.item_was_added_to_cart, 0).setAction(C0859R.string.go_to, new ShopDetailsActivity$showAddToCartMessage$1(this)).show();
    }

    public final void showAddToCartButton() {
        ((FloatingActionButton) _$_findCachedViewById(C0859R.id.fab)).show();
    }

    public final void hideAddToCartButton() {
        ((FloatingActionButton) _$_findCachedViewById(C0859R.id.fab)).hide();
    }

    public final void showCart() {
        ShopCartActivity.Companion.startActivity(this);
    }

    public final void onScrollChanged(int i, boolean z, boolean z2) {
        i = Math.min(true, Math.max(false, ((float) i) / ((float) ((this.flexibleSpaceImageHeight - (2 * this.actionBarSize)) - getStatusBarHeight()))));
        Toolbar toolbar = (Toolbar) _$_findCachedViewById(C0859R.id.toolbar);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        z = toolbar.getBackground();
        Intrinsics.checkExpressionValueIsNotNull(z, "toolbar.background");
        z.setAlpha((int) (i * true));
    }

    private final void showBlockingView(boolean z) {
        if (z) {
            z = _$_findCachedViewById(C0859R.id.blockingView);
            Intrinsics.checkExpressionValueIsNotNull(z, "blockingView");
            z.setVisibility(0);
            z = _$_findCachedViewById(C0859R.id.blockingView);
            Intrinsics.checkExpressionValueIsNotNull(z, "blockingView");
            z.setClickable(true);
            return;
        }
        z = _$_findCachedViewById(C0859R.id.blockingView);
        Intrinsics.checkExpressionValueIsNotNull(z, "blockingView");
        z.setVisibility(8);
        z = _$_findCachedViewById(C0859R.id.blockingView);
        Intrinsics.checkExpressionValueIsNotNull(z, "blockingView");
        z.setClickable(false);
    }

    public final boolean onCreateOptionsMenu(Menu menu) {
        return super.onCreateOptionsMenu(menu);
    }
}
