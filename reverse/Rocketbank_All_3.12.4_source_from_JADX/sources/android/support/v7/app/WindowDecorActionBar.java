package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.support.v7.appcompat.C0219R;
import android.support.v7.view.ActionBarPolicy;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode.Callback;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.ViewPropertyAnimatorCompatSet;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback;
import android.support.v7.widget.DecorToolbar;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import ru.rocketbank.r2d2.C0859R;

@RestrictTo
public class WindowDecorActionBar extends ActionBar implements ActionBarVisibilityCallback {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Interpolator sHideInterpolator = new AccelerateInterpolator();
    private static final Interpolator sShowInterpolator = new DecelerateInterpolator();
    ActionModeImpl mActionMode;
    private Activity mActivity;
    ActionBarContainer mContainerView;
    boolean mContentAnimations = true;
    View mContentView;
    Context mContext;
    ActionBarContextView mContextView;
    private int mCurWindowVisibility = 0;
    ViewPropertyAnimatorCompatSet mCurrentShowAnim;
    DecorToolbar mDecorToolbar;
    ActionMode mDeferredDestroyActionMode;
    Callback mDeferredModeDestroyCallback;
    private Dialog mDialog;
    private boolean mDisplayHomeAsUpSet;
    private boolean mHasEmbeddedTabs;
    boolean mHiddenBySystem;
    final ViewPropertyAnimatorListener mHideListener = new C13581();
    boolean mHideOnContentScroll;
    private boolean mLastMenuVisibility;
    private ArrayList<Object> mMenuVisibilityListeners = new ArrayList();
    private boolean mNowShowing = true;
    ActionBarOverlayLayout mOverlayLayout;
    private int mSavedTabPosition = -1;
    private boolean mShowHideAnimationEnabled;
    final ViewPropertyAnimatorListener mShowListener = new C13592();
    private boolean mShowingForMode;
    private ArrayList<Object> mTabs = new ArrayList();
    private Context mThemedContext;
    final ViewPropertyAnimatorUpdateListener mUpdateListener = new C09423();

    /* renamed from: android.support.v7.app.WindowDecorActionBar$3 */
    class C09423 implements ViewPropertyAnimatorUpdateListener {
        C09423() {
        }

        public final void onAnimationUpdate(View view) {
            ((View) WindowDecorActionBar.this.mContainerView.getParent()).invalidate();
        }
    }

    @RestrictTo
    public class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {
        private final Context mActionModeContext;
        private Callback mCallback;
        private WeakReference<View> mCustomView;
        private final MenuBuilder mMenu;

        public ActionModeImpl(Context context, Callback callback) {
            this.mActionModeContext = context;
            this.mCallback = callback;
            this.mMenu = new MenuBuilder(context).setDefaultShowAsAction(1);
            this.mMenu.setCallback(this);
        }

        public final MenuInflater getMenuInflater() {
            return new SupportMenuInflater(this.mActionModeContext);
        }

        public final Menu getMenu() {
            return this.mMenu;
        }

        public final void finish() {
            if (WindowDecorActionBar.this.mActionMode == this) {
                if (WindowDecorActionBar.checkShowingFlags$49605cc3(WindowDecorActionBar.this.mHiddenBySystem)) {
                    this.mCallback.onDestroyActionMode(this);
                } else {
                    WindowDecorActionBar.this.mDeferredDestroyActionMode = this;
                    WindowDecorActionBar.this.mDeferredModeDestroyCallback = this.mCallback;
                }
                this.mCallback = null;
                WindowDecorActionBar.this.animateToMode(false);
                WindowDecorActionBar.this.mContextView.closeMode();
                WindowDecorActionBar.this.mDecorToolbar.getViewGroup().sendAccessibilityEvent(32);
                WindowDecorActionBar.this.mOverlayLayout.setHideOnContentScrollEnabled(WindowDecorActionBar.this.mHideOnContentScroll);
                WindowDecorActionBar.this.mActionMode = null;
            }
        }

        public final void invalidate() {
            if (WindowDecorActionBar.this.mActionMode == this) {
                this.mMenu.stopDispatchingItemsChanged();
                try {
                    this.mCallback.onPrepareActionMode(this, this.mMenu);
                } finally {
                    this.mMenu.startDispatchingItemsChanged();
                }
            }
        }

        public final boolean dispatchOnCreate() {
            this.mMenu.stopDispatchingItemsChanged();
            try {
                boolean onCreateActionMode = this.mCallback.onCreateActionMode(this, this.mMenu);
                return onCreateActionMode;
            } finally {
                this.mMenu.startDispatchingItemsChanged();
            }
        }

        public final void setCustomView(View view) {
            WindowDecorActionBar.this.mContextView.setCustomView(view);
            this.mCustomView = new WeakReference(view);
        }

        public final void setSubtitle(CharSequence charSequence) {
            WindowDecorActionBar.this.mContextView.setSubtitle(charSequence);
        }

        public final void setTitle(CharSequence charSequence) {
            WindowDecorActionBar.this.mContextView.setTitle(charSequence);
        }

        public final void setTitle(int i) {
            WindowDecorActionBar.this.mContextView.setTitle(WindowDecorActionBar.this.mContext.getResources().getString(i));
        }

        public final void setSubtitle(int i) {
            WindowDecorActionBar.this.mContextView.setSubtitle(WindowDecorActionBar.this.mContext.getResources().getString(i));
        }

        public final CharSequence getTitle() {
            return WindowDecorActionBar.this.mContextView.getTitle();
        }

        public final CharSequence getSubtitle() {
            return WindowDecorActionBar.this.mContextView.getSubtitle();
        }

        public final void setTitleOptionalHint(boolean z) {
            super.setTitleOptionalHint(z);
            WindowDecorActionBar.this.mContextView.setTitleOptional(z);
        }

        public final boolean isTitleOptional() {
            return WindowDecorActionBar.this.mContextView.isTitleOptional();
        }

        public final View getCustomView() {
            return this.mCustomView != null ? (View) this.mCustomView.get() : null;
        }

        public final boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            return this.mCallback != null ? this.mCallback.onActionItemClicked(this, menuItem) : null;
        }

        public final void onMenuModeChange(MenuBuilder menuBuilder) {
            if (this.mCallback != null) {
                invalidate();
                WindowDecorActionBar.this.mContextView.showOverflowMenu();
            }
        }
    }

    /* renamed from: android.support.v7.app.WindowDecorActionBar$1 */
    class C13581 extends ViewPropertyAnimatorListenerAdapter {
        C13581() {
        }

        public final void onAnimationEnd(View view) {
            if (!(WindowDecorActionBar.this.mContentAnimations == null || WindowDecorActionBar.this.mContentView == null)) {
                WindowDecorActionBar.this.mContentView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                WindowDecorActionBar.this.mContainerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
            WindowDecorActionBar.this.mContainerView.setVisibility(8);
            WindowDecorActionBar.this.mContainerView.setTransitioning(false);
            WindowDecorActionBar.this.mCurrentShowAnim = null;
            view = WindowDecorActionBar.this;
            if (view.mDeferredModeDestroyCallback != null) {
                view.mDeferredModeDestroyCallback.onDestroyActionMode(view.mDeferredDestroyActionMode);
                view.mDeferredDestroyActionMode = null;
                view.mDeferredModeDestroyCallback = null;
            }
            if (WindowDecorActionBar.this.mOverlayLayout != null) {
                ViewCompat.requestApplyInsets(WindowDecorActionBar.this.mOverlayLayout);
            }
        }
    }

    /* renamed from: android.support.v7.app.WindowDecorActionBar$2 */
    class C13592 extends ViewPropertyAnimatorListenerAdapter {
        C13592() {
        }

        public final void onAnimationEnd(View view) {
            WindowDecorActionBar.this.mCurrentShowAnim = null;
            WindowDecorActionBar.this.mContainerView.requestLayout();
        }
    }

    static boolean checkShowingFlags$49605cc3(boolean z) {
        return !z;
    }

    public void onContentScrollStopped() {
    }

    public WindowDecorActionBar(Activity activity, boolean z) {
        this.mActivity = activity;
        activity = activity.getWindow().getDecorView();
        init(activity);
        if (!z) {
            this.mContentView = activity.findViewById(true);
        }
    }

    public WindowDecorActionBar(Dialog dialog) {
        this.mDialog = dialog;
        init(dialog.getWindow().getDecorView());
    }

    private void init(View view) {
        this.mOverlayLayout = (ActionBarOverlayLayout) view.findViewById(C0859R.id.decor_content_parent);
        if (this.mOverlayLayout != null) {
            this.mOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.mDecorToolbar = getDecorToolbar(view.findViewById(C0859R.id.action_bar));
        this.mContextView = (ActionBarContextView) view.findViewById(C0859R.id.action_context_bar);
        this.mContainerView = (ActionBarContainer) view.findViewById(C0859R.id.action_bar_container);
        if (!(this.mDecorToolbar == null || this.mContextView == null)) {
            if (this.mContainerView != null) {
                this.mContext = this.mDecorToolbar.getContext();
                boolean z = true;
                view = (this.mDecorToolbar.getDisplayOptions() & 4) != null ? 1 : null;
                if (view != null) {
                    this.mDisplayHomeAsUpSet = true;
                }
                ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(this.mContext);
                if (!actionBarPolicy.enableHomeButtonByDefault()) {
                    if (view == null) {
                        z = false;
                    }
                }
                this.mDecorToolbar.setHomeButtonEnabled(z);
                setHasEmbeddedTabs(actionBarPolicy.hasEmbeddedTabs());
                view = this.mContext.obtainStyledAttributes(null, C0219R.styleable.ActionBar, C0859R.attr.actionBarStyle, 0);
                if (view.getBoolean(C0219R.styleable.ActionBar_hideOnContentScroll, false)) {
                    setHideOnContentScrollEnabled$1385ff();
                }
                int dimensionPixelSize = view.getDimensionPixelSize(C0219R.styleable.ActionBar_elevation, 0);
                if (dimensionPixelSize != 0) {
                    ViewCompat.setElevation(this.mContainerView, (float) dimensionPixelSize);
                }
                view.recycle();
                return;
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append(" can only be used with a compatible window decor layout");
        throw new IllegalStateException(stringBuilder.toString());
    }

    private static DecorToolbar getDecorToolbar(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of ".concat(String.valueOf(view)) != null ? view.getClass().getSimpleName() : "null");
    }

    public final void setElevation$133aeb() {
        ViewCompat.setElevation(this.mContainerView, BitmapDescriptorFactory.HUE_RED);
    }

    public final void onConfigurationChanged(Configuration configuration) {
        setHasEmbeddedTabs(ActionBarPolicy.get(this.mContext).hasEmbeddedTabs());
    }

    private void setHasEmbeddedTabs(boolean z) {
        this.mHasEmbeddedTabs = z;
        if (this.mHasEmbeddedTabs) {
            this.mContainerView.setTabContainer(null);
            this.mDecorToolbar.setEmbeddedTabView(null);
        } else {
            this.mDecorToolbar.setEmbeddedTabView(null);
            this.mContainerView.setTabContainer(null);
        }
        boolean z2 = false;
        z = this.mDecorToolbar.getNavigationMode();
        DecorToolbar decorToolbar = this.mDecorToolbar;
        boolean z3 = !this.mHasEmbeddedTabs && z;
        decorToolbar.setCollapsible(z3);
        ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
        if (!this.mHasEmbeddedTabs && z) {
            z2 = true;
        }
        actionBarOverlayLayout.setHasNonEmbeddedTabs(z2);
    }

    public void onWindowVisibilityChanged(int i) {
        this.mCurWindowVisibility = i;
    }

    public final void setShowHideAnimationEnabled(boolean z) {
        this.mShowHideAnimationEnabled = z;
        if (!z && this.mCurrentShowAnim) {
            this.mCurrentShowAnim.cancel();
        }
    }

    public final void dispatchMenuVisibilityChanged(boolean z) {
        if (z != this.mLastMenuVisibility) {
            this.mLastMenuVisibility = z;
            z = this.mMenuVisibilityListeners.size();
            for (boolean z2 = false; z2 < z; z2++) {
                this.mMenuVisibilityListeners.get(z2);
            }
        }
    }

    public final void setDisplayShowHomeEnabled$1385ff() {
        setDisplayOptions(2, 2);
    }

    public final void setDisplayHomeAsUpEnabled(boolean z) {
        setDisplayOptions(z ? true : false, 4);
    }

    public final void setHomeButtonEnabled(boolean z) {
        this.mDecorToolbar.setHomeButtonEnabled(z);
    }

    public final void setTitle(int i) {
        this.mDecorToolbar.setTitle(this.mContext.getString(i));
    }

    public final void setTitle(CharSequence charSequence) {
        this.mDecorToolbar.setTitle(charSequence);
    }

    public final void setWindowTitle(CharSequence charSequence) {
        this.mDecorToolbar.setWindowTitle(charSequence);
    }

    private void setDisplayOptions(int i, int i2) {
        int displayOptions = this.mDecorToolbar.getDisplayOptions();
        if ((i2 & 4) != 0) {
            this.mDisplayHomeAsUpSet = true;
        }
        this.mDecorToolbar.setDisplayOptions((i & i2) | ((i2 ^ -1) & displayOptions));
    }

    public final void setBackgroundDrawable(Drawable drawable) {
        this.mContainerView.setPrimaryBackground(drawable);
    }

    public final int getDisplayOptions() {
        return this.mDecorToolbar.getDisplayOptions();
    }

    public final ActionMode startActionMode(Callback callback) {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        this.mOverlayLayout.setHideOnContentScrollEnabled(false);
        this.mContextView.killMode();
        ActionMode actionModeImpl = new ActionModeImpl(this.mContextView.getContext(), callback);
        if (actionModeImpl.dispatchOnCreate() == null) {
            return null;
        }
        this.mActionMode = actionModeImpl;
        actionModeImpl.invalidate();
        this.mContextView.initForMode(actionModeImpl);
        animateToMode(true);
        this.mContextView.sendAccessibilityEvent(32);
        return actionModeImpl;
    }

    public final int getHeight() {
        return this.mContainerView.getHeight();
    }

    public void enableContentAnimations(boolean z) {
        this.mContentAnimations = z;
    }

    private void showForActionMode() {
        if (!this.mShowingForMode) {
            this.mShowingForMode = true;
            if (this.mOverlayLayout != null) {
                this.mOverlayLayout.setShowingForActionMode(true);
            }
            updateVisibility(false);
        }
    }

    public void showForSystem() {
        if (this.mHiddenBySystem) {
            this.mHiddenBySystem = false;
            updateVisibility(true);
        }
    }

    private void hideForActionMode() {
        if (this.mShowingForMode) {
            this.mShowingForMode = false;
            if (this.mOverlayLayout != null) {
                this.mOverlayLayout.setShowingForActionMode(false);
            }
            updateVisibility(false);
        }
    }

    public void hideForSystem() {
        if (!this.mHiddenBySystem) {
            this.mHiddenBySystem = true;
            updateVisibility(true);
        }
    }

    public final void setHideOnContentScrollEnabled$1385ff() {
        if (this.mOverlayLayout.isInOverlayMode()) {
            this.mHideOnContentScroll = true;
            this.mOverlayLayout.setHideOnContentScrollEnabled(true);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    private void updateVisibility(boolean z) {
        boolean z2 = this.mShowingForMode || !this.mHiddenBySystem;
        if (z2) {
            if (!this.mNowShowing) {
                this.mNowShowing = true;
                doShow(z);
            }
        } else if (this.mNowShowing) {
            this.mNowShowing = false;
            doHide(z);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void doShow(boolean r5) {
        /*
        r4 = this;
        r0 = r4.mCurrentShowAnim;
        if (r0 == 0) goto L_0x0009;
    L_0x0004:
        r0 = r4.mCurrentShowAnim;
        r0.cancel();
    L_0x0009:
        r0 = r4.mContainerView;
        r1 = 0;
        r0.setVisibility(r1);
        r0 = r4.mCurWindowVisibility;
        r1 = 0;
        if (r0 != 0) goto L_0x0082;
    L_0x0014:
        r0 = r4.mShowHideAnimationEnabled;
        if (r0 != 0) goto L_0x001a;
    L_0x0018:
        if (r5 == 0) goto L_0x0082;
    L_0x001a:
        r0 = r4.mContainerView;
        r0.setTranslationY(r1);
        r0 = r4.mContainerView;
        r0 = r0.getHeight();
        r0 = -r0;
        r0 = (float) r0;
        if (r5 == 0) goto L_0x0039;
    L_0x0029:
        r5 = 2;
        r5 = new int[r5];
        r5 = {0, 0};
        r2 = r4.mContainerView;
        r2.getLocationInWindow(r5);
        r2 = 1;
        r5 = r5[r2];
        r5 = (float) r5;
        r0 = r0 - r5;
    L_0x0039:
        r5 = r4.mContainerView;
        r5.setTranslationY(r0);
        r5 = new android.support.v7.view.ViewPropertyAnimatorCompatSet;
        r5.<init>();
        r2 = r4.mContainerView;
        r2 = android.support.v4.view.ViewCompat.animate(r2);
        r2 = r2.translationY(r1);
        r3 = r4.mUpdateListener;
        r2.setUpdateListener(r3);
        r5.play(r2);
        r2 = r4.mContentAnimations;
        if (r2 == 0) goto L_0x006f;
    L_0x0059:
        r2 = r4.mContentView;
        if (r2 == 0) goto L_0x006f;
    L_0x005d:
        r2 = r4.mContentView;
        r2.setTranslationY(r0);
        r0 = r4.mContentView;
        r0 = android.support.v4.view.ViewCompat.animate(r0);
        r0 = r0.translationY(r1);
        r5.play(r0);
    L_0x006f:
        r0 = sShowInterpolator;
        r5.setInterpolator(r0);
        r5.setDuration$20eda383();
        r0 = r4.mShowListener;
        r5.setListener(r0);
        r4.mCurrentShowAnim = r5;
        r5.start();
        goto L_0x00a1;
    L_0x0082:
        r5 = r4.mContainerView;
        r0 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r5.setAlpha(r0);
        r5 = r4.mContainerView;
        r5.setTranslationY(r1);
        r5 = r4.mContentAnimations;
        if (r5 == 0) goto L_0x009b;
    L_0x0092:
        r5 = r4.mContentView;
        if (r5 == 0) goto L_0x009b;
    L_0x0096:
        r5 = r4.mContentView;
        r5.setTranslationY(r1);
    L_0x009b:
        r5 = r4.mShowListener;
        r0 = 0;
        r5.onAnimationEnd(r0);
    L_0x00a1:
        r5 = r4.mOverlayLayout;
        if (r5 == 0) goto L_0x00aa;
    L_0x00a5:
        r5 = r4.mOverlayLayout;
        android.support.v4.view.ViewCompat.requestApplyInsets(r5);
    L_0x00aa:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.WindowDecorActionBar.doShow(boolean):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void doHide(boolean r5) {
        /*
        r4 = this;
        r0 = r4.mCurrentShowAnim;
        if (r0 == 0) goto L_0x0009;
    L_0x0004:
        r0 = r4.mCurrentShowAnim;
        r0.cancel();
    L_0x0009:
        r0 = r4.mCurWindowVisibility;
        if (r0 != 0) goto L_0x0078;
    L_0x000d:
        r0 = r4.mShowHideAnimationEnabled;
        if (r0 != 0) goto L_0x0013;
    L_0x0011:
        if (r5 == 0) goto L_0x0078;
    L_0x0013:
        r0 = r4.mContainerView;
        r1 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0.setAlpha(r1);
        r0 = r4.mContainerView;
        r1 = 1;
        r0.setTransitioning(r1);
        r0 = new android.support.v7.view.ViewPropertyAnimatorCompatSet;
        r0.<init>();
        r2 = r4.mContainerView;
        r2 = r2.getHeight();
        r2 = -r2;
        r2 = (float) r2;
        if (r5 == 0) goto L_0x003e;
    L_0x002f:
        r5 = 2;
        r5 = new int[r5];
        r5 = {0, 0};
        r3 = r4.mContainerView;
        r3.getLocationInWindow(r5);
        r5 = r5[r1];
        r5 = (float) r5;
        r2 = r2 - r5;
    L_0x003e:
        r5 = r4.mContainerView;
        r5 = android.support.v4.view.ViewCompat.animate(r5);
        r5 = r5.translationY(r2);
        r1 = r4.mUpdateListener;
        r5.setUpdateListener(r1);
        r0.play(r5);
        r5 = r4.mContentAnimations;
        if (r5 == 0) goto L_0x0065;
    L_0x0054:
        r5 = r4.mContentView;
        if (r5 == 0) goto L_0x0065;
    L_0x0058:
        r5 = r4.mContentView;
        r5 = android.support.v4.view.ViewCompat.animate(r5);
        r5 = r5.translationY(r2);
        r0.play(r5);
    L_0x0065:
        r5 = sHideInterpolator;
        r0.setInterpolator(r5);
        r0.setDuration$20eda383();
        r5 = r4.mHideListener;
        r0.setListener(r5);
        r4.mCurrentShowAnim = r0;
        r0.start();
        return;
    L_0x0078:
        r5 = r4.mHideListener;
        r0 = 0;
        r5.onAnimationEnd(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.WindowDecorActionBar.doHide(boolean):void");
    }

    public final void animateToMode(boolean z) {
        if (z) {
            showForActionMode();
        } else {
            hideForActionMode();
        }
        if (ViewCompat.isLaidOut(this.mContainerView)) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat;
            if (z) {
                z = this.mDecorToolbar.setupAnimatorToVisibility(4, 100);
                viewPropertyAnimatorCompat = this.mContextView.setupAnimatorToVisibility(0, 200);
            } else {
                viewPropertyAnimatorCompat = this.mDecorToolbar.setupAnimatorToVisibility(0, 200);
                z = this.mContextView.setupAnimatorToVisibility(8, 100);
            }
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
            viewPropertyAnimatorCompatSet.playSequentially(z, viewPropertyAnimatorCompat);
            viewPropertyAnimatorCompatSet.start();
        } else if (z) {
            this.mDecorToolbar.setVisibility(4);
            this.mContextView.setVisibility(0);
        } else {
            this.mDecorToolbar.setVisibility(0);
            this.mContextView.setVisibility(8);
        }
    }

    public final Context getThemedContext() {
        if (this.mThemedContext == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(C0859R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.mThemedContext = new ContextThemeWrapper(this.mContext, i);
            } else {
                this.mThemedContext = this.mContext;
            }
        }
        return this.mThemedContext;
    }

    public final void setHomeAsUpIndicator(Drawable drawable) {
        this.mDecorToolbar.setNavigationIcon(drawable);
    }

    public final void setHomeActionContentDescription(int i) {
        this.mDecorToolbar.setNavigationContentDescription(i);
    }

    public void onContentScrollStarted() {
        if (this.mCurrentShowAnim != null) {
            this.mCurrentShowAnim.cancel();
            this.mCurrentShowAnim = null;
        }
    }

    public final boolean collapseActionView() {
        if (this.mDecorToolbar == null || !this.mDecorToolbar.hasExpandedActionView()) {
            return false;
        }
        this.mDecorToolbar.collapseActionView();
        return true;
    }

    public final void setDefaultDisplayHomeAsUpEnabled(boolean z) {
        if (!this.mDisplayHomeAsUpSet) {
            setDisplayOptions(z ? true : false, 4);
        }
    }

    public final boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        if (this.mActionMode == null) {
            return false;
        }
        Menu menu = this.mActionMode.getMenu();
        if (menu == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        menu.setQwertyMode(z);
        return menu.performShortcut(i, keyEvent, 0);
    }
}
