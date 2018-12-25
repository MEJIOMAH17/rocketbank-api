package com.mikepenz.materialize;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.mikepenz.materialize.util.UIUtils;
import com.mikepenz.materialize.view.IScrimInsetsLayout;
import com.mikepenz.materialize.view.ScrimInsetsFrameLayout;
import ru.rocketbank.r2d2.C0859R;

public final class MaterializeBuilder {
    protected Activity mActivity;
    protected ViewGroup mContainer = null;
    protected LayoutParams mContainerLayoutParams = null;
    protected ViewGroup mContentRoot;
    protected boolean mFullscreen = false;
    protected ViewGroup mRootView;
    protected IScrimInsetsLayout mScrimInsetsLayout;
    protected int mStatusBarColor = 0;
    protected int mStatusBarColorRes = -1;
    protected boolean mSystemUIHidden = false;
    protected boolean mTintNavigationBar = false;
    protected boolean mTintStatusBar = true;
    protected boolean mTranslucentActionBarCompatibility = false;
    protected boolean mTranslucentNavigationBar = false;
    protected boolean mTranslucentNavigationBarProgrammatically = false;
    protected boolean mTranslucentStatusBar = true;
    protected boolean mTranslucentStatusBarProgrammatically = true;

    public final MaterializeBuilder withActivity(Activity activity) {
        this.mRootView = (ViewGroup) activity.findViewById(16908290);
        this.mActivity = activity;
        return this;
    }

    public final MaterializeBuilder withRootView(ViewGroup viewGroup) {
        this.mRootView = viewGroup;
        this.mTranslucentStatusBar = false;
        this.mTranslucentStatusBarProgrammatically = false;
        return this;
    }

    public final MaterializeBuilder withStatusBarColor(int i) {
        this.mStatusBarColor = i;
        return this;
    }

    public final MaterializeBuilder withStatusBarColorRes(int i) {
        this.mStatusBarColorRes = i;
        return this;
    }

    public final MaterializeBuilder withTranslucentStatusBar(boolean z) {
        this.mTranslucentStatusBar = z;
        if (!z) {
            this.mTranslucentStatusBarProgrammatically = false;
        }
        return this;
    }

    public final MaterializeBuilder withTranslucentStatusBarProgrammatically(boolean z) {
        this.mTranslucentStatusBarProgrammatically = z;
        if (z) {
            this.mTranslucentStatusBar = true;
        }
        return this;
    }

    public final MaterializeBuilder withTranslucentNavigationBar$3b9f1fca() {
        this.mTranslucentNavigationBar = false;
        this.mTranslucentNavigationBarProgrammatically = false;
        return this;
    }

    public final MaterializeBuilder withTranslucentNavigationBarProgrammatically$3b9f1fca() {
        this.mTranslucentNavigationBarProgrammatically = false;
        return this;
    }

    public final MaterializeBuilder withFullscreen$3b9f1fca() {
        this.mFullscreen = false;
        return this;
    }

    public final MaterializeBuilder withSystemUIHidden$3b9f1fca() {
        this.mSystemUIHidden = false;
        return this;
    }

    public final MaterializeBuilder withContainer(ViewGroup viewGroup) {
        this.mContainer = viewGroup;
        return this;
    }

    public final C0665R build$2985112f() {
        if (this.mActivity == null) {
            throw new RuntimeException("please pass an activity");
        }
        this.mScrimInsetsLayout = (ScrimInsetsFrameLayout) this.mActivity.getLayoutInflater().inflate(C0859R.layout.materialize, this.mRootView, false);
        if (this.mRootView != null) {
            if (this.mRootView.getChildCount() != 0) {
                View childAt = this.mRootView.getChildAt(0);
                boolean z = childAt.getId() == C0859R.id.materialize_root;
                if (this.mStatusBarColor == 0 && this.mStatusBarColorRes != -1) {
                    this.mStatusBarColor = this.mActivity.getResources().getColor(this.mStatusBarColorRes);
                } else if (this.mStatusBarColor == 0) {
                    int i;
                    Context context = this.mActivity;
                    TypedValue typedValue = new TypedValue();
                    if (context.getTheme().resolveAttribute(C0859R.attr.colorPrimaryDark, typedValue, true)) {
                        i = typedValue.data;
                    } else {
                        i = 0;
                    }
                    if (i == 0) {
                        i = context.getResources().getColor(C0859R.color.materialize_primary_dark);
                    }
                    this.mStatusBarColor = i;
                }
                this.mScrimInsetsLayout.setInsetForeground(this.mStatusBarColor);
                this.mScrimInsetsLayout.setTintStatusBar(this.mTintStatusBar);
                this.mScrimInsetsLayout.setTintNavigationBar$1385ff();
                this.mScrimInsetsLayout.setSystemUIVisible(true);
                if (!z && this.mTranslucentStatusBar) {
                    if (VERSION.SDK_INT >= 19 && VERSION.SDK_INT < 21) {
                        Activity activity = this.mActivity;
                        if (VERSION.SDK_INT >= 19) {
                            UIUtils.setFlag(activity, 67108864, true);
                        }
                    }
                    if (VERSION.SDK_INT >= 19 && this.mTranslucentStatusBarProgrammatically) {
                        this.mActivity.getWindow().getDecorView().setSystemUiVisibility(1280);
                    }
                    if (VERSION.SDK_INT >= 21) {
                        Activity activity2 = this.mActivity;
                        if (VERSION.SDK_INT >= 19) {
                            UIUtils.setFlag(activity2, 67108864, false);
                        }
                        if (this.mTranslucentStatusBarProgrammatically) {
                            this.mActivity.getWindow().setStatusBarColor(0);
                        }
                    }
                    this.mScrimInsetsLayout.getView().setPadding(0, UIUtils.getStatusBarHeight(this.mActivity, false), 0, 0);
                }
                if (z) {
                    this.mRootView.removeAllViews();
                } else {
                    this.mRootView.removeView(childAt);
                }
                this.mScrimInsetsLayout.getView().addView(childAt, new FrameLayout.LayoutParams(-1, -1));
                this.mContentRoot = this.mScrimInsetsLayout.getView();
                if (this.mContainer != null) {
                    this.mContentRoot = this.mContainer;
                    this.mContentRoot.addView(this.mScrimInsetsLayout.getView(), new LayoutParams(-1, -1));
                }
                this.mContentRoot.setId(C0859R.id.materialize_root);
                if (this.mContainerLayoutParams == null) {
                    this.mContainerLayoutParams = new LayoutParams(-1, -1);
                }
                this.mRootView.addView(this.mContentRoot, this.mContainerLayoutParams);
                this.mActivity = null;
                return new C0665R(this);
            }
        }
        throw new RuntimeException("You have to set your layout for this activity with setContentView() first. Or you build the drawer on your own with .buildView()");
    }
}
