package ru.rocketbank.r2d2.activities;

import android.graphics.Point;
import android.os.Bundle;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxData;
import ru.rocketbank.r2d2.widgets.recycler.parallax.ObservableParallaxListener;

/* compiled from: ParallaxActivity.kt */
public class ParallaxActivity extends SecuredActivity {
    private HashMap _$_findViewCache;
    private int headerHeight;
    private View headerLayout;
    private ObservableRecyclerView observableRecyclerView;
    private ParallaxAdapter parallaxAdapter;
    private ParallaxData parallaxData;
    private ObservableParallaxListener parallaxListener;
    private int parallaxSize;
    private int toolbarHeight;
    private int windowWidth;

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public final ParallaxAdapter getParallaxAdapter() {
        return this.parallaxAdapter;
    }

    public final void setParallaxAdapter(ParallaxAdapter parallaxAdapter) {
        this.parallaxAdapter = parallaxAdapter;
    }

    public final int getHeaderHeight() {
        return this.headerHeight;
    }

    public final void setHeaderHeight(int i) {
        this.headerHeight = i;
    }

    public final int getToolbarHeight() {
        return this.toolbarHeight;
    }

    public final void setToolbarHeight(int i) {
        this.toolbarHeight = i;
    }

    public final int getParallaxSize() {
        return this.parallaxSize;
    }

    public final void setParallaxSize(int i) {
        this.parallaxSize = i;
    }

    public final void scrollToTop(int i) {
        ObservableRecyclerView observableRecyclerView = this.observableRecyclerView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("observableRecyclerView");
        }
        LayoutManager layoutManager = observableRecyclerView.getLayoutManager();
        if (layoutManager == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager");
        }
        ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(i, this.toolbarHeight);
    }

    public static /* bridge */ /* synthetic */ void createParallax$default(ParallaxActivity parallaxActivity, ObservableRecyclerView observableRecyclerView, ParallaxData parallaxData, ParallaxAdapter parallaxAdapter, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createParallax");
        }
        if ((i2 & 4) != null) {
            parallaxAdapter = null;
        }
        if ((i2 & 8) != 0) {
            i = 0;
        }
        parallaxActivity.createParallax(observableRecyclerView, parallaxData, parallaxAdapter, i);
    }

    protected final void createParallax(ObservableRecyclerView observableRecyclerView, ParallaxData parallaxData, ParallaxAdapter parallaxAdapter, int i) {
        Intrinsics.checkParameterIsNotNull(observableRecyclerView, "recyclerView");
        Intrinsics.checkParameterIsNotNull(parallaxData, "parallaxData");
        this.parallaxData = parallaxData;
        this.observableRecyclerView = observableRecyclerView;
        if (i == 0) {
            i = getResources().getDimensionPixelSize(C0859R.dimen.parallax_size);
        }
        this.parallaxSize = i;
        if (this.parallaxListener == null) {
            this.parallaxListener = new ObservableParallaxListener(0, this.headerHeight, this.parallaxSize, parallaxData, this.toolbarHeight);
        } else {
            observableRecyclerView = this.parallaxListener;
            if (observableRecyclerView != null) {
                observableRecyclerView.update(parallaxData);
            }
        }
        observableRecyclerView = this.observableRecyclerView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("observableRecyclerView");
        }
        if (observableRecyclerView.getLayoutManager() == null) {
            observableRecyclerView = new LinearLayoutManager(this);
            i = this.observableRecyclerView;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("observableRecyclerView");
            }
            i.setLayoutManager((LayoutManager) observableRecyclerView);
        }
        if (this.parallaxAdapter == null) {
            this.parallaxAdapter = newAdaperInstance(parallaxAdapter);
        } else {
            observableRecyclerView = this.parallaxAdapter;
            if (observableRecyclerView != null) {
                parallaxAdapter = this.headerLayout;
                if (parallaxAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("headerLayout");
                }
                observableRecyclerView.setAppBarLayout(parallaxAdapter);
            }
            observableRecyclerView = this.parallaxAdapter;
            if (observableRecyclerView != null) {
                observableRecyclerView.setParallaxData(parallaxData);
            }
        }
        observableRecyclerView = this.observableRecyclerView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("observableRecyclerView");
        }
        observableRecyclerView.setAdapter((Adapter) this.parallaxAdapter);
        observableRecyclerView = getSystemService("window");
        if (observableRecyclerView == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
        observableRecyclerView = ((WindowManager) observableRecyclerView).getDefaultDisplay();
        parallaxData = new Point();
        observableRecyclerView.getSize(parallaxData);
        this.windowWidth = parallaxData.x;
    }

    public ParallaxAdapter newAdaperInstance(ParallaxAdapter parallaxAdapter) {
        if (parallaxAdapter == null) {
            ParallaxData parallaxData = this.parallaxData;
            if (parallaxData == null) {
                Intrinsics.throwUninitializedPropertyAccessException("parallaxData");
            }
            int i = this.headerHeight;
            View view = this.headerLayout;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("headerLayout");
            }
            parallaxAdapter = new ParallaxAdapter(parallaxData, view, i);
        }
        return parallaxAdapter;
    }

    protected final void setupView(Toolbar toolbar, Toolbar toolbar2, View view) {
        Intrinsics.checkParameterIsNotNull(toolbar, "toolbar");
        Intrinsics.checkParameterIsNotNull(toolbar2, "realToolbar");
        Intrinsics.checkParameterIsNotNull(view, "headerLayout");
        int statusBarHeight = getStatusBarHeight();
        setToolbarSize(toolbar, statusBarHeight);
        setToolbarSize(toolbar2, statusBarHeight);
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.design.widget.CoordinatorLayout.LayoutParams");
        }
        CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
        layoutParams2.setMargins(0, -getStatusBarHeight(), 0, 0);
        view.setLayoutParams(layoutParams2);
        view.requestLayout();
        toolbar = toolbar.getLayoutParams().height;
        toolbar2.setTranslationY((float) (-toolbar));
        toolbar2 = view.getLayoutParams();
        toolbar2.height += statusBarHeight;
        view.requestLayout();
        this.toolbarHeight = toolbar;
        this.headerHeight = toolbar2.height;
        this.headerLayout = view;
    }

    public final void addFab(FloatingActionButton floatingActionButton) {
        Intrinsics.checkParameterIsNotNull(floatingActionButton, "fab");
        int dimensionPixelSize = getResources().getDimensionPixelSize(C0859R.dimen.flexible_space_show_fab_offset);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(C0859R.dimen.fab_margin);
        ObservableParallaxListener observableParallaxListener = this.parallaxListener;
        if (observableParallaxListener != null) {
            observableParallaxListener.addFab(this.windowWidth, floatingActionButton, dimensionPixelSize, dimensionPixelSize2);
        }
    }

    protected final void parallaxHeightToView(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view.getLayoutParams().height = this.headerHeight;
        view.requestLayout();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        ObservableParallaxListener observableParallaxListener = this.parallaxListener;
        if (observableParallaxListener != null) {
            observableParallaxListener.onSaveInstanceState(bundle);
        }
    }

    protected void onCreate(Bundle bundle) {
        Window window = getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window, "window");
        View decorView = window.getDecorView();
        Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
        decorView.setSystemUiVisibility(1280);
        super.onCreate(bundle);
        ObservableParallaxListener observableParallaxListener = this.parallaxListener;
        if (observableParallaxListener != null) {
            observableParallaxListener.onRestore(bundle);
        }
    }

    protected void onResume() {
        super.onResume();
        ObservableRecyclerView observableRecyclerView = this.observableRecyclerView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("observableRecyclerView");
        }
        observableRecyclerView.setScrollViewCallbacks(this.parallaxListener);
        ParallaxAdapter parallaxAdapter = this.parallaxAdapter;
        if (parallaxAdapter != null) {
            parallaxAdapter.notifyItemChanged(0);
        }
    }

    protected void onPause() {
        super.onPause();
        ObservableRecyclerView observableRecyclerView = this.observableRecyclerView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("observableRecyclerView");
        }
        observableRecyclerView.setScrollViewCallbacks(null);
    }
}
