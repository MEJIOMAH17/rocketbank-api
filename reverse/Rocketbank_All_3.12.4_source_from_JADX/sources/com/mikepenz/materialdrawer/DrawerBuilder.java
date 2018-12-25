package com.mikepenz.materialdrawer;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.DrawerListener;
import android.support.v4.widget.DrawerLayout.LayoutParams;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mikepenz.materialdrawer.Drawer.OnDrawerItemClickListener;
import com.mikepenz.materialdrawer.adapter.BaseDrawerAdapter;
import com.mikepenz.materialdrawer.adapter.BaseDrawerAdapter.OnClickListener;
import com.mikepenz.materialdrawer.adapter.BaseDrawerAdapter.OnLongClickListener;
import com.mikepenz.materialdrawer.adapter.DrawerAdapter;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.Identifyable;
import com.mikepenz.materialdrawer.model.interfaces.Selectable;
import com.mikepenz.materialdrawer.util.IdDistributor;
import com.mikepenz.materialdrawer.util.RecyclerViewCacheUtil;
import com.mikepenz.materialize.C0665R;
import com.mikepenz.materialize.MaterializeBuilder;
import com.mikepenz.materialize.util.UIUtils;
import java.util.ArrayList;
import ru.rocketbank.r2d2.C0859R;

public final class DrawerBuilder implements DrawerListener, OnClickListener, OnLongClickListener {
    protected boolean mAccountHeaderSticky = false;
    protected boolean mActionBarDrawerToggleEnabled = true;
    protected Activity mActivity;
    protected BaseDrawerAdapter mAdapter;
    protected boolean mAnimateActionBarDrawerToggle = false;
    protected boolean mAppended = false;
    protected boolean mCloseOnClick = true;
    protected int mCurrentSelection = -1;
    protected int mCurrentStickyFooterSelection = -1;
    protected int mDelayDrawerClickEvent = 0;
    protected int mDelayOnDrawerClose = 50;
    protected Integer mDrawerGravity = Integer.valueOf(GravityCompat.START);
    protected DrawerLayout mDrawerLayout;
    protected int mDrawerWidth = -1;
    protected boolean mFireInitialOnClick = false;
    protected boolean mFooterClickable = false;
    protected boolean mFooterDivider = true;
    protected boolean mFullscreen = false;
    protected boolean mGenerateMiniDrawer = false;
    protected boolean mHasStableIds = false;
    protected boolean mHeaderClickable = false;
    protected boolean mHeaderDivider = true;
    protected boolean mHeaderPadding = true;
    protected View mHeaderView;
    private boolean mInnerShadow = false;
    protected ItemAnimator mItemAnimator = null;
    protected LayoutManager mLayoutManager;
    protected C0665R mMaterialize$5bafd4ee;
    protected MiniDrawer mMiniDrawer = null;
    protected OnDrawerItemClickListener mOnDrawerItemClickListener;
    protected RecyclerView mRecyclerView;
    protected ViewGroup mRootView;
    protected boolean mScrollToTopAfterClick = false;
    protected int mSelectedItemIdentifier = 0;
    protected int mSelectedItemPosition = 0;
    protected boolean mShowDrawerOnFirstLaunch = false;
    protected int mSliderBackgroundColor = 0;
    protected int mSliderBackgroundColorRes = -1;
    protected Drawable mSliderBackgroundDrawable = null;
    protected int mSliderBackgroundDrawableRes = -1;
    protected RelativeLayout mSliderLayout;
    protected int mStatusBarColor = 0;
    protected int mStatusBarColorRes = -1;
    protected ArrayList<IDrawerItem> mStickyDrawerItems = new ArrayList();
    protected boolean mStickyFooterDivider = false;
    protected boolean mStickyFooterShadow = true;
    protected View mStickyFooterShadowView;
    protected ViewGroup mStickyFooterView;
    protected boolean mSystemUIHidden = false;
    protected boolean mTranslucentNavigationBar = false;
    protected boolean mTranslucentNavigationBarProgrammatically = false;
    protected boolean mTranslucentStatusBar = true;
    protected boolean mTranslucentStatusBarProgrammatically = true;
    protected Boolean mTranslucentStatusBarShadow = null;
    protected boolean mUsed = false;

    /* renamed from: com.mikepenz.materialdrawer.DrawerBuilder$1 */
    class C06591 implements View.OnClickListener {
        C06591() {
        }

        public final void onClick(View view) {
            if (DrawerBuilder.this.mDrawerLayout.isDrawerOpen(DrawerBuilder.this.mDrawerGravity.intValue()) != null) {
                DrawerBuilder.this.mDrawerLayout.closeDrawer(DrawerBuilder.this.mDrawerGravity.intValue());
            } else {
                DrawerBuilder.this.mDrawerLayout.openDrawer(DrawerBuilder.this.mDrawerGravity.intValue());
            }
        }
    }

    /* renamed from: com.mikepenz.materialdrawer.DrawerBuilder$4 */
    class C06604 implements View.OnClickListener {
        C06604() {
        }

        public final void onClick(View view) {
            DrawerUtils.onFooterDrawerItemClick(DrawerBuilder.this, (IDrawerItem) view.getTag(), view, Boolean.TRUE);
        }
    }

    /* renamed from: com.mikepenz.materialdrawer.DrawerBuilder$7 */
    class C06617 implements Runnable {
        C06617() {
        }

        public final void run() {
            DrawerBuilder.this.mDrawerLayout.closeDrawers();
        }
    }

    public final void onDrawerClosed(View view) {
    }

    public final void onDrawerOpened(View view) {
    }

    public final void onDrawerSlide(View view, float f) {
    }

    public final void onDrawerStateChanged(int i) {
    }

    public DrawerBuilder() {
        RecyclerViewCacheUtil.getInstance().clear();
    }

    public final DrawerBuilder withActivity(Activity activity) {
        this.mRootView = (ViewGroup) activity.findViewById(16908290);
        this.mActivity = activity;
        this.mLayoutManager = new LinearLayoutManager(this.mActivity);
        return this;
    }

    public final DrawerBuilder withTranslucentStatusBar$4dbba9b3() {
        this.mTranslucentStatusBar = false;
        this.mTranslucentStatusBarProgrammatically = false;
        return this;
    }

    public final DrawerBuilder withStatusBarColor(int i) {
        this.mStatusBarColor = i;
        return this;
    }

    public final DrawerBuilder withSliderBackgroundColorRes$90ebf22() {
        this.mSliderBackgroundColorRes = 17170443;
        return this;
    }

    public final DrawerBuilder withActionBarDrawerToggle$4dbba9b3() {
        this.mActionBarDrawerToggleEnabled = false;
        return this;
    }

    public final DrawerBuilder withHeader(View view) {
        this.mHeaderView = view;
        return this;
    }

    public final DrawerBuilder withHeaderClickable$4dbba9b3() {
        this.mHeaderClickable = true;
        return this;
    }

    public final DrawerBuilder withHeaderDivider$4dbba9b3() {
        this.mHeaderDivider = false;
        return this;
    }

    protected final BaseDrawerAdapter getAdapter() {
        if (this.mAdapter == null) {
            this.mAdapter = new DrawerAdapter();
            this.mAdapter.setHasStableIds(false);
        }
        return this.mAdapter;
    }

    public final DrawerBuilder withOnDrawerItemClickListener(OnDrawerItemClickListener onDrawerItemClickListener) {
        this.mOnDrawerItemClickListener = onDrawerItemClickListener;
        return this;
    }

    public final Drawer build() {
        if (this.mUsed) {
            throw new RuntimeException("you must not reuse a DrawerBuilder builder");
        } else if (this.mActivity == null) {
            throw new RuntimeException("please pass an activity");
        } else {
            int i;
            this.mUsed = true;
            if (this.mDrawerLayout == null) {
                if (this.mActivity == null) {
                    throw new RuntimeException("please pass an activity first to use this call");
                }
                this.mDrawerLayout = (DrawerLayout) this.mActivity.getLayoutInflater().inflate(C0859R.layout.material_drawer, this.mRootView, false);
            }
            this.mMaterialize$5bafd4ee = new MaterializeBuilder().withActivity(this.mActivity).withRootView(this.mRootView).withFullscreen$3b9f1fca().withSystemUIHidden$3b9f1fca().withTranslucentStatusBar(this.mTranslucentStatusBar).withTranslucentStatusBarProgrammatically(this.mTranslucentStatusBarProgrammatically).withTranslucentNavigationBar$3b9f1fca().withTranslucentNavigationBarProgrammatically$3b9f1fca().withContainer(this.mDrawerLayout).withStatusBarColor(this.mStatusBarColor).withStatusBarColorRes(this.mStatusBarColorRes).build$2985112f();
            C06591 c06591 = new C06591();
            this.mDrawerLayout.setDrawerListener(this);
            this.mSliderLayout = (RelativeLayout) this.mActivity.getLayoutInflater().inflate(C0859R.layout.material_drawer_slider, this.mDrawerLayout, false);
            RelativeLayout relativeLayout = this.mSliderLayout;
            Context context = this.mActivity;
            TypedValue typedValue = new TypedValue();
            if (context.getTheme().resolveAttribute(C0859R.attr.material_drawer_background, typedValue, true)) {
                i = typedValue.data;
            } else {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getColor(C0859R.color.material_drawer_background);
            }
            relativeLayout.setBackgroundColor(i);
            LayoutParams layoutParams = (LayoutParams) this.mSliderLayout.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.gravity = this.mDrawerGravity.intValue();
                this.mSliderLayout.setLayoutParams(DrawerUtils.processDrawerLayoutParams(this, layoutParams));
            }
            if (VERSION.SDK_INT < 21 && this.mDrawerLayout != null) {
                if (this.mDrawerGravity.intValue() == GravityCompat.START) {
                    this.mDrawerLayout.setDrawerShadow(C0859R.drawable.material_drawer_shadow_right, this.mDrawerGravity.intValue());
                } else {
                    this.mDrawerLayout.setDrawerShadow(C0859R.drawable.material_drawer_shadow_left, this.mDrawerGravity.intValue());
                }
            }
            if (this.mRecyclerView == null) {
                int statusBarHeight;
                this.mRecyclerView = (RecyclerView) LayoutInflater.from(this.mActivity).inflate(C0859R.layout.material_drawer_recycler_view, this.mSliderLayout, false);
                this.mRecyclerView.setItemAnimator(new DefaultItemAnimator());
                this.mRecyclerView.setFadingEdgeLength(0);
                this.mRecyclerView.setClipToPadding(false);
                this.mRecyclerView.setLayoutManager(this.mLayoutManager);
                if (this.mTranslucentStatusBar) {
                    statusBarHeight = UIUtils.getStatusBarHeight(this.mActivity, false);
                } else {
                    statusBarHeight = 0;
                }
                this.mRecyclerView.setPadding(0, statusBarHeight, 0, 0);
            }
            ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
            layoutParams2.weight = 1.0f;
            this.mSliderLayout.addView(this.mRecyclerView, layoutParams2);
            View findViewById = this.mSliderLayout.findViewById(C0859R.id.material_drawer_shadow_top);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) findViewById.getLayoutParams();
            layoutParams3.height = UIUtils.getStatusBarHeight(this.mActivity, true);
            findViewById.setLayoutParams(layoutParams3);
            if (this.mSliderBackgroundColorRes != -1) {
                this.mSliderLayout.setBackgroundColor(ContextCompat.getColor(this.mActivity, this.mSliderBackgroundColorRes));
            } else if (this.mSliderBackgroundDrawableRes != -1) {
                View view = this.mSliderLayout;
                Drawable compatDrawable = UIUtils.getCompatDrawable(view.getContext(), this.mSliderBackgroundColorRes);
                if (VERSION.SDK_INT < 16) {
                    view.setBackgroundDrawable(compatDrawable);
                } else {
                    view.setBackground(compatDrawable);
                }
            }
            if (!this.mTranslucentStatusBar) {
                findViewById.setVisibility(8);
            } else if (VERSION.SDK_INT >= 21) {
                findViewById.bringToFront();
            } else {
                findViewById.setVisibility(8);
            }
            DrawerUtils.handleHeaderView(this);
            DrawerUtils.handleFooterView(this, new C06604());
            RecyclerView recyclerView = this.mRecyclerView;
            if (this.mAdapter == null) {
                this.mAdapter = new DrawerAdapter();
                this.mAdapter.setHasStableIds(false);
            }
            recyclerView.setAdapter(this.mAdapter);
            if (this.mHeaderView != null && this.mSelectedItemPosition == 0) {
                this.mSelectedItemPosition = 1;
            }
            DrawerUtils.setRecyclerViewSelection$4633d628(this, this.mSelectedItemPosition);
            this.mAdapter.setOnClickListener(this);
            this.mAdapter.setOnLongClickListener(this);
            if (this.mRecyclerView != null) {
                this.mRecyclerView.scrollToPosition(0);
            }
            Drawer drawer = new Drawer(this);
            this.mActivity = null;
            this.mSliderLayout.setId(C0859R.id.material_drawer_slider_layout);
            this.mDrawerLayout.addView(this.mSliderLayout, 1);
            return drawer;
        }
    }

    protected final void closeDrawerDelayed() {
        if (this.mCloseOnClick && this.mDrawerLayout != null) {
            if (this.mDelayOnDrawerClose >= 0) {
                new Handler().postDelayed(new C06617(), (long) this.mDelayOnDrawerClose);
                return;
            }
            this.mDrawerLayout.closeDrawers();
        }
    }

    protected final void resetStickyFooterSelection() {
        if (this.mStickyFooterView instanceof LinearLayout) {
            for (int i = 0; i < this.mStickyFooterView.getChildCount(); i++) {
                if (VERSION.SDK_INT >= 11) {
                    this.mStickyFooterView.getChildAt(i).setActivated(false);
                }
                this.mStickyFooterView.getChildAt(i).setSelected(false);
            }
        }
    }

    public final DrawerBuilder addDrawerItems(IDrawerItem... iDrawerItemArr) {
        if (this.mAdapter == null) {
            this.mAdapter = new DrawerAdapter();
            this.mAdapter.setHasStableIds(false);
        }
        this.mAdapter.addDrawerItems((IDrawerItem[]) IdDistributor.checkIds((Identifyable[]) iDrawerItemArr));
        return this;
    }

    protected final IDrawerItem getDrawerItem(int i) {
        if (this.mAdapter == null) {
            this.mAdapter = new DrawerAdapter();
            this.mAdapter.setHasStableIds(false);
        }
        return this.mAdapter.getItem(i);
    }

    protected final boolean checkDrawerItem$256326a(int i) {
        if (this.mAdapter == null) {
            this.mAdapter = new DrawerAdapter();
            this.mAdapter.setHasStableIds(false);
        }
        if (this.mAdapter.getItem(i) != 0) {
            return true;
        }
        return false;
    }

    public final void onClick(View view, int i, IDrawerItem iDrawerItem) {
        if (iDrawerItem == null || !(iDrawerItem instanceof Selectable) || ((Selectable) iDrawerItem).isSelectable()) {
            resetStickyFooterSelection();
            this.mCurrentSelection = i;
            this.mCurrentStickyFooterSelection = -1;
        }
        boolean z = false;
        if (this.mOnDrawerItemClickListener != null) {
            z = this.mOnDrawerItemClickListener.onItemClick(view, i, iDrawerItem);
        }
        if (!z) {
            closeDrawerDelayed();
        }
    }
}
