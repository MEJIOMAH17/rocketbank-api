package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.v4.app.NavUtils;
import android.support.v4.view.LayoutInflaterCompat;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.appcompat.C0219R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.view.menu.ListMenuPresenter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.ContentFrameLayout.OnAttachListener;
import android.support.v7.widget.DecorContentParent;
import android.support.v7.widget.FitWindowsViewGroup;
import android.support.v7.widget.FitWindowsViewGroup.OnFitSystemWindowsListener;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.VectorEnabledTintResources;
import android.support.v7.widget.ViewUtils;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.LayoutInflater.Factory2;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
import ru.rocketbank.r2d2.C0859R;

class AppCompatDelegateImplV9 extends AppCompatDelegateImplBase implements Callback, Factory2 {
    private static final boolean IS_PRE_LOLLIPOP = (VERSION.SDK_INT < 21);
    private ActionMenuPresenterCallback mActionMenuPresenterCallback;
    ActionMode mActionMode;
    PopupWindow mActionModePopup;
    ActionBarContextView mActionModeView;
    private AppCompatViewInflater mAppCompatViewInflater;
    private boolean mClosingActionMenu;
    private DecorContentParent mDecorContentParent;
    private boolean mEnableDefaultActionBarUp;
    ViewPropertyAnimatorCompat mFadeAnim = null;
    private boolean mFeatureIndeterminateProgress;
    private boolean mFeatureProgress;
    int mInvalidatePanelMenuFeatures;
    boolean mInvalidatePanelMenuPosted;
    private final Runnable mInvalidatePanelMenuRunnable = new C02151();
    private boolean mLongPressBackDown;
    private PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private PanelFeatureState[] mPanels;
    private PanelFeatureState mPreparedPanel;
    Runnable mShowActionModePopup;
    private View mStatusGuard;
    private ViewGroup mSubDecor;
    private boolean mSubDecorInstalled;
    private Rect mTempRect1;
    private Rect mTempRect2;
    private TextView mTitleView;

    /* renamed from: android.support.v7.app.AppCompatDelegateImplV9$1 */
    class C02151 implements Runnable {
        C02151() {
        }

        public final void run() {
            if ((AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures & 1) != 0) {
                AppCompatDelegateImplV9.this.doInvalidatePanelMenu(0);
            }
            if ((AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures & 4096) != 0) {
                AppCompatDelegateImplV9.this.doInvalidatePanelMenu(108);
            }
            AppCompatDelegateImplV9.this.mInvalidatePanelMenuPosted = false;
            AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures = 0;
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImplV9$5 */
    class C02165 implements Runnable {

        /* renamed from: android.support.v7.app.AppCompatDelegateImplV9$5$1 */
        class C13551 extends ViewPropertyAnimatorListenerAdapter {
            C13551() {
            }

            public final void onAnimationStart(View view) {
                AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
            }

            public final void onAnimationEnd(View view) {
                AppCompatDelegateImplV9.this.mActionModeView.setAlpha(1.0f);
                AppCompatDelegateImplV9.this.mFadeAnim.setListener(null);
                AppCompatDelegateImplV9.this.mFadeAnim = null;
            }
        }

        C02165() {
        }

        public final void run() {
            AppCompatDelegateImplV9.this.mActionModePopup.showAtLocation(AppCompatDelegateImplV9.this.mActionModeView, 55, 0, 0);
            AppCompatDelegateImplV9 appCompatDelegateImplV9 = AppCompatDelegateImplV9.this;
            if (appCompatDelegateImplV9.mFadeAnim != null) {
                appCompatDelegateImplV9.mFadeAnim.cancel();
            }
            if (AppCompatDelegateImplV9.this.shouldAnimateActionModeView()) {
                AppCompatDelegateImplV9.this.mActionModeView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                AppCompatDelegateImplV9.this.mFadeAnim = ViewCompat.animate(AppCompatDelegateImplV9.this.mActionModeView).alpha(1.0f);
                AppCompatDelegateImplV9.this.mFadeAnim.setListener(new C13551());
                return;
            }
            AppCompatDelegateImplV9.this.mActionModeView.setAlpha(1.0f);
            AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
        }
    }

    public static final class PanelFeatureState {
        int background;
        View createdPanelView;
        ViewGroup decorView;
        int featureId;
        Bundle frozenActionViewState;
        int gravity;
        boolean isHandled;
        boolean isOpen;
        boolean isPrepared;
        ListMenuPresenter listMenuPresenter;
        Context listPresenterContext;
        MenuBuilder menu;
        public boolean qwertyMode;
        boolean refreshDecorView = false;
        boolean refreshMenuContent;
        View shownPanelView;
        int windowAnimations;

        private static class SavedState implements Parcelable {
            public static final Creator<SavedState> CREATOR = new C02171();
            int featureId;
            boolean isOpen;
            Bundle menuState;

            /* renamed from: android.support.v7.app.AppCompatDelegateImplV9$PanelFeatureState$SavedState$1 */
            static class C02171 implements ClassLoaderCreator<SavedState> {
                C02171() {
                }

                public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.readFromParcel(parcel, classLoader);
                }

                public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                    return new SavedState[i];
                }

                public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                    return SavedState.readFromParcel(parcel, null);
                }
            }

            public int describeContents() {
                return 0;
            }

            SavedState() {
            }

            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen);
                if (this.isOpen != 0) {
                    parcel.writeBundle(this.menuState);
                }
            }

            static SavedState readFromParcel(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.isOpen = z;
                if (savedState.isOpen) {
                    savedState.menuState = parcel.readBundle(classLoader);
                }
                return savedState;
            }
        }

        PanelFeatureState(int i) {
            this.featureId = i;
        }

        public final boolean hasPanelItems() {
            if (this.shownPanelView == null) {
                return false;
            }
            if (this.createdPanelView == null && this.listMenuPresenter.getAdapter().getCount() <= 0) {
                return false;
            }
            return true;
        }

        final void setStyle(Context context) {
            TypedValue typedValue = new TypedValue();
            Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(C0859R.attr.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(C0859R.attr.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(C0859R.style.Theme.AppCompat.CompactMenu, true);
            }
            Context contextThemeWrapper = new ContextThemeWrapper(context, 0);
            contextThemeWrapper.getTheme().setTo(newTheme);
            this.listPresenterContext = contextThemeWrapper;
            context = contextThemeWrapper.obtainStyledAttributes(C0219R.styleable.AppCompatTheme);
            this.background = context.getResourceId(C0219R.styleable.AppCompatTheme_panelBackground, 0);
            this.windowAnimations = context.getResourceId(C0219R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            context.recycle();
        }

        final void setMenu(MenuBuilder menuBuilder) {
            if (menuBuilder != this.menu) {
                if (this.menu != null) {
                    this.menu.removeMenuPresenter(this.listMenuPresenter);
                }
                this.menu = menuBuilder;
                if (!(menuBuilder == null || this.listMenuPresenter == null)) {
                    menuBuilder.addMenuPresenter(this.listMenuPresenter);
                }
            }
        }

        final MenuView getListMenuView(MenuPresenter.Callback callback) {
            if (this.menu == null) {
                return null;
            }
            if (this.listMenuPresenter == null) {
                this.listMenuPresenter = new ListMenuPresenter(this.listPresenterContext);
                this.listMenuPresenter.setCallback(callback);
                this.menu.addMenuPresenter(this.listMenuPresenter);
            }
            return this.listMenuPresenter.getMenuView(this.decorView);
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImplV9$2 */
    class C09382 implements OnApplyWindowInsetsListener {
        C09382() {
        }

        public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int updateStatusGuard = AppCompatDelegateImplV9.this.updateStatusGuard(systemWindowInsetTop);
            if (systemWindowInsetTop != updateStatusGuard) {
                windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), updateStatusGuard, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            }
            return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImplV9$3 */
    class C09393 implements OnFitSystemWindowsListener {
        C09393() {
        }

        public final void onFitSystemWindows(Rect rect) {
            rect.top = AppCompatDelegateImplV9.this.updateStatusGuard(rect.top);
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImplV9$4 */
    class C09404 implements OnAttachListener {
        public final void onAttachedFromWindow() {
        }

        C09404() {
        }

        public final void onDetachedFromWindow() {
            AppCompatDelegateImplV9.this.dismissPopups();
        }
    }

    final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        ActionMenuPresenterCallback() {
        }

        public final boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callback = AppCompatDelegateImplV9.this.mWindow.getCallback();
            if (callback != null) {
                callback.onMenuOpened(108, menuBuilder);
            }
            return true;
        }

        public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            AppCompatDelegateImplV9.this.checkCloseActionMenu(menuBuilder);
        }
    }

    class ActionModeCallbackWrapperV9 implements ActionMode.Callback {
        private ActionMode.Callback mWrapped;

        /* renamed from: android.support.v7.app.AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1 */
        class C13571 extends ViewPropertyAnimatorListenerAdapter {
            C13571() {
            }

            public final void onAnimationEnd(View view) {
                AppCompatDelegateImplV9.this.mActionModeView.setVisibility(8);
                if (AppCompatDelegateImplV9.this.mActionModePopup != null) {
                    AppCompatDelegateImplV9.this.mActionModePopup.dismiss();
                } else if ((AppCompatDelegateImplV9.this.mActionModeView.getParent() instanceof View) != null) {
                    ViewCompat.requestApplyInsets((View) AppCompatDelegateImplV9.this.mActionModeView.getParent());
                }
                AppCompatDelegateImplV9.this.mActionModeView.removeAllViews();
                AppCompatDelegateImplV9.this.mFadeAnim.setListener(null);
                AppCompatDelegateImplV9.this.mFadeAnim = null;
            }
        }

        public ActionModeCallbackWrapperV9(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onCreateActionMode(actionMode, menu);
        }

        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onPrepareActionMode(actionMode, menu);
        }

        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        public final void onDestroyActionMode(ActionMode actionMode) {
            this.mWrapped.onDestroyActionMode(actionMode);
            if (AppCompatDelegateImplV9.this.mActionModePopup != null) {
                AppCompatDelegateImplV9.this.mWindow.getDecorView().removeCallbacks(AppCompatDelegateImplV9.this.mShowActionModePopup);
            }
            if (AppCompatDelegateImplV9.this.mActionModeView != null) {
                actionMode = AppCompatDelegateImplV9.this;
                if (actionMode.mFadeAnim != null) {
                    actionMode.mFadeAnim.cancel();
                }
                AppCompatDelegateImplV9.this.mFadeAnim = ViewCompat.animate(AppCompatDelegateImplV9.this.mActionModeView).alpha(BitmapDescriptorFactory.HUE_RED);
                AppCompatDelegateImplV9.this.mFadeAnim.setListener(new C13571());
            }
            if (AppCompatDelegateImplV9.this.mAppCompatCallback != null) {
                AppCompatDelegateImplV9.this.mAppCompatCallback.onSupportActionModeFinished(AppCompatDelegateImplV9.this.mActionMode);
            }
            AppCompatDelegateImplV9.this.mActionMode = null;
        }
    }

    private class ListMenuDecorView extends ContentFrameLayout {
        public ListMenuDecorView(Context context) {
            super(context);
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (!AppCompatDelegateImplV9.this.dispatchKeyEvent(keyEvent)) {
                if (super.dispatchKeyEvent(keyEvent) == null) {
                    return null;
                }
            }
            return true;
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                boolean z;
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x >= -5 && y >= -5 && x <= getWidth() + 5) {
                    if (y <= getHeight() + 5) {
                        z = false;
                        if (z) {
                            AppCompatDelegateImplV9.this.closePanel$13462e();
                            return true;
                        }
                    }
                }
                z = true;
                if (z) {
                    AppCompatDelegateImplV9.this.closePanel$13462e();
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        public void setBackgroundResource(int i) {
            setBackgroundDrawable(AppCompatResources.getDrawable(getContext(), i));
        }
    }

    final class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        PanelMenuPresenterCallback() {
        }

        public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            boolean z2 = rootMenu != menuBuilder;
            AppCompatDelegateImplV9 appCompatDelegateImplV9 = AppCompatDelegateImplV9.this;
            if (z2) {
                menuBuilder = rootMenu;
            }
            menuBuilder = appCompatDelegateImplV9.findMenuPanel(menuBuilder);
            if (menuBuilder != null) {
                if (z2) {
                    AppCompatDelegateImplV9.this.callOnPanelClosed(menuBuilder.featureId, menuBuilder, rootMenu);
                    AppCompatDelegateImplV9.this.closePanel(menuBuilder, true);
                    return;
                }
                AppCompatDelegateImplV9.this.closePanel(menuBuilder, z);
            }
        }

        public final boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null && AppCompatDelegateImplV9.this.mHasActionBar) {
                Window.Callback callback = AppCompatDelegateImplV9.this.mWindow.getCallback();
                if (!(callback == null || AppCompatDelegateImplV9.this.isDestroyed())) {
                    callback.onMenuOpened(108, menuBuilder);
                }
            }
            return true;
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImplV9$6 */
    class C13566 extends ViewPropertyAnimatorListenerAdapter {
        C13566() {
        }

        public final void onAnimationStart(View view) {
            AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
            AppCompatDelegateImplV9.this.mActionModeView.sendAccessibilityEvent(32);
            if ((AppCompatDelegateImplV9.this.mActionModeView.getParent() instanceof View) != null) {
                ViewCompat.requestApplyInsets((View) AppCompatDelegateImplV9.this.mActionModeView.getParent());
            }
        }

        public final void onAnimationEnd(View view) {
            AppCompatDelegateImplV9.this.mActionModeView.setAlpha(1.0f);
            AppCompatDelegateImplV9.this.mFadeAnim.setListener(null);
            AppCompatDelegateImplV9.this.mFadeAnim = null;
        }
    }

    AppCompatDelegateImplV9(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
    }

    public void onCreate(Bundle bundle) {
        if (!((this.mOriginalWindowCallback instanceof Activity) == null || NavUtils.getParentActivityName((Activity) this.mOriginalWindowCallback) == null)) {
            bundle = this.mActionBar;
            if (bundle == null) {
                this.mEnableDefaultActionBarUp = true;
                return;
            }
            bundle.setDefaultDisplayHomeAsUpEnabled(true);
        }
    }

    public final void onPostCreate$79e5e33f() {
        ensureSubDecor();
    }

    public final void initWindowDecorActionBar() {
        ensureSubDecor();
        if (this.mHasActionBar) {
            if (this.mActionBar == null) {
                if (this.mOriginalWindowCallback instanceof Activity) {
                    this.mActionBar = new WindowDecorActionBar((Activity) this.mOriginalWindowCallback, this.mOverlayActionBar);
                } else if (this.mOriginalWindowCallback instanceof Dialog) {
                    this.mActionBar = new WindowDecorActionBar((Dialog) this.mOriginalWindowCallback);
                }
                if (this.mActionBar != null) {
                    this.mActionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
                }
            }
        }
    }

    public final void setSupportActionBar(Toolbar toolbar) {
        if (this.mOriginalWindowCallback instanceof Activity) {
            initWindowDecorActionBar();
            ActionBar actionBar = this.mActionBar;
            if (actionBar instanceof WindowDecorActionBar) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.mMenuInflater = null;
            if (actionBar != null) {
                actionBar.onDestroy();
            }
            if (toolbar != null) {
                actionBar = new ToolbarActionBar(toolbar, ((Activity) this.mOriginalWindowCallback).getTitle(), this.mAppCompatWindowCallback);
                this.mActionBar = actionBar;
                this.mWindow.setCallback(actionBar.mWindowCallback);
            } else {
                this.mActionBar = null;
                this.mWindow.setCallback(this.mAppCompatWindowCallback);
            }
            initWindowDecorActionBar();
            toolbar = this.mActionBar;
            if (toolbar == null || toolbar.invalidateOptionsMenu() == null) {
                invalidatePanelMenu(null);
            }
        }
    }

    public final <T extends View> T findViewById(int i) {
        ensureSubDecor();
        return this.mWindow.findViewById(i);
    }

    public final void onConfigurationChanged(Configuration configuration) {
        if (this.mHasActionBar && this.mSubDecorInstalled) {
            initWindowDecorActionBar();
            ActionBar actionBar = this.mActionBar;
            if (actionBar != null) {
                actionBar.onConfigurationChanged(configuration);
            }
        }
        AppCompatDrawableManager.get().onConfigurationChanged(this.mContext);
        applyDayNight();
    }

    public final void setContentView(View view) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.mOriginalWindowCallback.onContentChanged();
    }

    public final void setContentView(int i) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i, viewGroup);
        this.mOriginalWindowCallback.onContentChanged();
    }

    public final void setContentView(View view, LayoutParams layoutParams) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.mOriginalWindowCallback.onContentChanged();
    }

    public final void addContentView(View view, LayoutParams layoutParams) {
        ensureSubDecor();
        ((ViewGroup) this.mSubDecor.findViewById(16908290)).addView(view, layoutParams);
        this.mOriginalWindowCallback.onContentChanged();
    }

    public void onDestroy() {
        if (this.mInvalidatePanelMenuPosted) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
        }
        super.onDestroy();
        if (this.mActionBar != null) {
            this.mActionBar.onDestroy();
        }
    }

    private void ensureSubDecor() {
        if (!this.mSubDecorInstalled) {
            this.mSubDecor = createSubDecor();
            CharSequence title = getTitle();
            if (!TextUtils.isEmpty(title)) {
                onTitleChanged(title);
            }
            applyFixedSizeWindow();
            this.mSubDecorInstalled = true;
            PanelFeatureState panelState$20476cf5 = getPanelState$20476cf5(0);
            if (!isDestroyed()) {
                if (panelState$20476cf5 == null || panelState$20476cf5.menu == null) {
                    invalidatePanelMenu(108);
                }
            }
        }
    }

    private ViewGroup createSubDecor() {
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(C0219R.styleable.AppCompatTheme);
        if (obtainStyledAttributes.hasValue(C0219R.styleable.AppCompatTheme_windowActionBar)) {
            View view;
            if (obtainStyledAttributes.getBoolean(C0219R.styleable.AppCompatTheme_windowNoTitle, false)) {
                requestWindowFeature(1);
            } else if (obtainStyledAttributes.getBoolean(C0219R.styleable.AppCompatTheme_windowActionBar, false)) {
                requestWindowFeature(108);
            }
            if (obtainStyledAttributes.getBoolean(C0219R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
                requestWindowFeature(109);
            }
            if (obtainStyledAttributes.getBoolean(C0219R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
                requestWindowFeature(10);
            }
            this.mIsFloating = obtainStyledAttributes.getBoolean(C0219R.styleable.AppCompatTheme_android_windowIsFloating, false);
            obtainStyledAttributes.recycle();
            this.mWindow.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.mContext);
            if (this.mWindowNoTitle) {
                if (this.mOverlayActionMode) {
                    view = (ViewGroup) from.inflate(C0859R.layout.abc_screen_simple_overlay_action_mode, null);
                } else {
                    view = (ViewGroup) from.inflate(C0859R.layout.abc_screen_simple, null);
                }
                if (VERSION.SDK_INT >= 21) {
                    ViewCompat.setOnApplyWindowInsetsListener(view, new C09382());
                } else {
                    ((FitWindowsViewGroup) view).setOnFitSystemWindowsListener(new C09393());
                }
            } else if (this.mIsFloating) {
                view = (ViewGroup) from.inflate(C0859R.layout.abc_dialog_title_material, null);
                this.mOverlayActionBar = false;
                this.mHasActionBar = false;
            } else if (this.mHasActionBar) {
                Context contextThemeWrapper;
                TypedValue typedValue = new TypedValue();
                this.mContext.getTheme().resolveAttribute(C0859R.attr.actionBarTheme, typedValue, true);
                if (typedValue.resourceId != 0) {
                    contextThemeWrapper = new ContextThemeWrapper(this.mContext, typedValue.resourceId);
                } else {
                    contextThemeWrapper = this.mContext;
                }
                view = (ViewGroup) LayoutInflater.from(contextThemeWrapper).inflate(C0859R.layout.abc_screen_toolbar, null);
                this.mDecorContentParent = (DecorContentParent) view.findViewById(C0859R.id.decor_content_parent);
                this.mDecorContentParent.setWindowCallback(this.mWindow.getCallback());
                if (this.mOverlayActionBar) {
                    this.mDecorContentParent.initFeature(109);
                }
                if (this.mFeatureProgress) {
                    this.mDecorContentParent.initFeature(2);
                }
                if (this.mFeatureIndeterminateProgress) {
                    this.mDecorContentParent.initFeature(5);
                }
            } else {
                view = null;
            }
            if (view == null) {
                StringBuilder stringBuilder = new StringBuilder("AppCompat does not support the current theme features: { windowActionBar: ");
                stringBuilder.append(this.mHasActionBar);
                stringBuilder.append(", windowActionBarOverlay: ");
                stringBuilder.append(this.mOverlayActionBar);
                stringBuilder.append(", android:windowIsFloating: ");
                stringBuilder.append(this.mIsFloating);
                stringBuilder.append(", windowActionModeOverlay: ");
                stringBuilder.append(this.mOverlayActionMode);
                stringBuilder.append(", windowNoTitle: ");
                stringBuilder.append(this.mWindowNoTitle);
                stringBuilder.append(" }");
                throw new IllegalArgumentException(stringBuilder.toString());
            }
            if (this.mDecorContentParent == null) {
                this.mTitleView = (TextView) view.findViewById(C0859R.id.title);
            }
            ViewUtils.makeOptionalFitsSystemWindows(view);
            ContentFrameLayout contentFrameLayout = (ContentFrameLayout) view.findViewById(C0859R.id.action_bar_activity_content);
            ViewGroup viewGroup = (ViewGroup) this.mWindow.findViewById(16908290);
            if (viewGroup != null) {
                while (viewGroup.getChildCount() > 0) {
                    View childAt = viewGroup.getChildAt(0);
                    viewGroup.removeViewAt(0);
                    contentFrameLayout.addView(childAt);
                }
                viewGroup.setId(-1);
                contentFrameLayout.setId(16908290);
                if (viewGroup instanceof FrameLayout) {
                    ((FrameLayout) viewGroup).setForeground(null);
                }
            }
            this.mWindow.setContentView(view);
            contentFrameLayout.setAttachListener(new C09404());
            return view;
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    private void applyFixedSizeWindow() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.mSubDecor.findViewById(16908290);
        View decorView = this.mWindow.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(C0219R.styleable.AppCompatTheme);
        obtainStyledAttributes.getValue(C0219R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(C0219R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(C0219R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(C0219R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(C0219R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(C0219R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(C0219R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(C0219R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(C0219R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(C0219R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    public final boolean requestWindowFeature(int i) {
        i = sanitizeWindowFeatureId(i);
        if (this.mWindowNoTitle && i == 108) {
            return false;
        }
        if (this.mHasActionBar && i == 1) {
            this.mHasActionBar = false;
        }
        switch (i) {
            case 1:
                if (this.mSubDecorInstalled != 0) {
                    throw new AndroidRuntimeException("Window feature must be requested before adding content");
                }
                this.mWindowNoTitle = true;
                return true;
            case 2:
                if (this.mSubDecorInstalled != 0) {
                    throw new AndroidRuntimeException("Window feature must be requested before adding content");
                }
                this.mFeatureProgress = true;
                return true;
            case 5:
                if (this.mSubDecorInstalled != 0) {
                    throw new AndroidRuntimeException("Window feature must be requested before adding content");
                }
                this.mFeatureIndeterminateProgress = true;
                return true;
            case 10:
                if (this.mSubDecorInstalled != 0) {
                    throw new AndroidRuntimeException("Window feature must be requested before adding content");
                }
                this.mOverlayActionMode = true;
                return true;
            case 108:
                if (this.mSubDecorInstalled != 0) {
                    throw new AndroidRuntimeException("Window feature must be requested before adding content");
                }
                this.mHasActionBar = true;
                return true;
            case 109:
                if (this.mSubDecorInstalled != 0) {
                    throw new AndroidRuntimeException("Window feature must be requested before adding content");
                }
                this.mOverlayActionBar = true;
                return true;
            default:
                return this.mWindow.requestFeature(i);
        }
    }

    final void onTitleChanged(CharSequence charSequence) {
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.setWindowTitle(charSequence);
        } else if (this.mActionBar != null) {
            this.mActionBar.setWindowTitle(charSequence);
        } else {
            if (this.mTitleView != null) {
                this.mTitleView.setText(charSequence);
            }
        }
    }

    public final ActionMode startSupportActionMode(ActionMode.Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        ActionMode.Callback actionModeCallbackWrapperV9 = new ActionModeCallbackWrapperV9(callback);
        initWindowDecorActionBar();
        callback = this.mActionBar;
        if (callback != null) {
            this.mActionMode = callback.startActionMode(actionModeCallbackWrapperV9);
            if (!(this.mActionMode == null || this.mAppCompatCallback == null)) {
                this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode);
            }
        }
        if (this.mActionMode == null) {
            this.mActionMode = startSupportActionModeFromWindow(actionModeCallbackWrapperV9);
        }
        return this.mActionMode;
    }

    final boolean shouldAnimateActionModeView() {
        return this.mSubDecorInstalled && this.mSubDecor != null && ViewCompat.isLaidOut(this.mSubDecor);
    }

    final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = true;
        if (keyEvent.getKeyCode() == 82 && this.mOriginalWindowCallback.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        PanelFeatureState panelState$20476cf5;
        if (keyEvent.getAction() == 0) {
            if (keyCode == 4) {
                if ((keyEvent.getFlags() & 128) == null) {
                    z = false;
                }
                this.mLongPressBackDown = z;
            } else if (keyCode == 82) {
                if (keyEvent.getRepeatCount() == 0) {
                    panelState$20476cf5 = getPanelState$20476cf5(0);
                    if (!panelState$20476cf5.isOpen) {
                        preparePanel(panelState$20476cf5, keyEvent);
                    }
                }
                return true;
            }
            return false;
        }
        if (keyCode == 4) {
            keyEvent = this.mLongPressBackDown;
            this.mLongPressBackDown = false;
            panelState$20476cf5 = getPanelState$20476cf5(0);
            if (panelState$20476cf5 == null || !panelState$20476cf5.isOpen) {
                if (this.mActionMode != null) {
                    this.mActionMode.finish();
                } else {
                    initWindowDecorActionBar();
                    keyEvent = this.mActionBar;
                    if (keyEvent == null || keyEvent.collapseActionView() == null) {
                        keyEvent = null;
                        if (keyEvent == null) {
                            return true;
                        }
                    }
                }
                keyEvent = 1;
                if (keyEvent == null) {
                    return false;
                }
                return true;
            }
            if (keyEvent == null) {
                closePanel(panelState$20476cf5, true);
            }
            return true;
        } else if (keyCode == 82) {
            if (this.mActionMode == null) {
                AudioManager audioManager;
                panelState$20476cf5 = getPanelState$20476cf5(0);
                if (this.mDecorContentParent == null || !this.mDecorContentParent.canShowOverflowMenu() || ViewConfiguration.get(this.mContext).hasPermanentMenuKey()) {
                    if (!panelState$20476cf5.isOpen) {
                        if (!panelState$20476cf5.isHandled) {
                            if (panelState$20476cf5.isPrepared) {
                                boolean preparePanel;
                                if (panelState$20476cf5.refreshMenuContent) {
                                    panelState$20476cf5.isPrepared = false;
                                    preparePanel = preparePanel(panelState$20476cf5, keyEvent);
                                } else {
                                    preparePanel = true;
                                }
                                if (preparePanel) {
                                    openPanel(panelState$20476cf5, keyEvent);
                                    keyEvent = 1;
                                    if (keyEvent != null) {
                                        audioManager = (AudioManager) this.mContext.getSystemService("audio");
                                        if (audioManager == null) {
                                            audioManager.playSoundEffect(0);
                                        } else {
                                            Log.w("AppCompatDelegate", "Couldn't get audio manager");
                                        }
                                    }
                                }
                            }
                        }
                    }
                    keyEvent = panelState$20476cf5.isOpen;
                    closePanel(panelState$20476cf5, true);
                    if (keyEvent != null) {
                        audioManager = (AudioManager) this.mContext.getSystemService("audio");
                        if (audioManager == null) {
                            Log.w("AppCompatDelegate", "Couldn't get audio manager");
                        } else {
                            audioManager.playSoundEffect(0);
                        }
                    }
                } else {
                    if (this.mDecorContentParent.isOverflowMenuShowing()) {
                        keyEvent = this.mDecorContentParent.hideOverflowMenu();
                    } else if (!(isDestroyed() || preparePanel(panelState$20476cf5, keyEvent) == null)) {
                        keyEvent = this.mDecorContentParent.showOverflowMenu();
                    }
                    if (keyEvent != null) {
                        audioManager = (AudioManager) this.mContext.getSystemService("audio");
                        if (audioManager == null) {
                            audioManager.playSoundEffect(0);
                        } else {
                            Log.w("AppCompatDelegate", "Couldn't get audio manager");
                        }
                    }
                }
                keyEvent = null;
                if (keyEvent != null) {
                    audioManager = (AudioManager) this.mContext.getSystemService("audio");
                    if (audioManager == null) {
                        Log.w("AppCompatDelegate", "Couldn't get audio manager");
                    } else {
                        audioManager.playSoundEffect(0);
                    }
                }
            }
            return true;
        }
        return false;
    }

    private View createView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z = false;
        if (this.mAppCompatViewInflater == null) {
            String string = this.mContext.obtainStyledAttributes(C0219R.styleable.AppCompatTheme).getString(C0219R.styleable.AppCompatTheme_viewInflaterClass);
            if (string != null) {
                if (!AppCompatViewInflater.class.getName().equals(string)) {
                    try {
                        this.mAppCompatViewInflater = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    } catch (Throwable th) {
                        StringBuilder stringBuilder = new StringBuilder("Failed to instantiate custom view inflater ");
                        stringBuilder.append(string);
                        stringBuilder.append(". Falling back to default.");
                        Log.i("AppCompatDelegate", stringBuilder.toString(), th);
                        this.mAppCompatViewInflater = new AppCompatViewInflater();
                    }
                }
            }
            this.mAppCompatViewInflater = new AppCompatViewInflater();
        }
        if (IS_PRE_LOLLIPOP) {
            if (!(attributeSet instanceof XmlPullParser)) {
                z = shouldInheritContext((ViewParent) view);
            } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                z = true;
            }
        }
        return this.mAppCompatViewInflater.createView$14a0a30f(view, str, context, attributeSet, z, IS_PRE_LOLLIPOP, VectorEnabledTintResources.shouldBeUsed());
    }

    private boolean shouldInheritContext(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        ViewParent decorView = this.mWindow.getDecorView();
        while (viewParent != null) {
            if (viewParent != decorView && (viewParent instanceof View)) {
                if (!ViewCompat.isAttachedToWindow((View) viewParent)) {
                    viewParent = viewParent.getParent();
                }
            }
            return false;
        }
        return true;
    }

    public final void installViewFactory() {
        LayoutInflater from = LayoutInflater.from(this.mContext);
        if (from.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(from, this);
            return;
        }
        if (!(from.getFactory2() instanceof AppCompatDelegateImplV9)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View callActivityOnCreateView$1fef4371 = callActivityOnCreateView$1fef4371(str, context, attributeSet);
        if (callActivityOnCreateView$1fef4371 != null) {
            return callActivityOnCreateView$1fef4371;
        }
        return createView(view, str, context, attributeSet);
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    View callActivityOnCreateView$1fef4371(String str, Context context, AttributeSet attributeSet) {
        if (this.mOriginalWindowCallback instanceof Factory) {
            str = ((Factory) this.mOriginalWindowCallback).onCreateView(str, context, attributeSet);
            if (str != null) {
                return str;
            }
        }
        return null;
    }

    private void openPanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (!panelFeatureState.isOpen) {
            if (!isDestroyed()) {
                if (panelFeatureState.featureId == 0) {
                    if ((this.mContext.getResources().getConfiguration().screenLayout & 15) == 4) {
                        return;
                    }
                }
                Window.Callback callback = this.mWindow.getCallback();
                if (callback == null || callback.onMenuOpened(panelFeatureState.featureId, panelFeatureState.menu)) {
                    WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
                    if (windowManager != null && preparePanel(panelFeatureState, keyEvent) != null) {
                        int i;
                        KeyEvent layoutParams;
                        if (panelFeatureState.decorView != null) {
                            if (panelFeatureState.refreshDecorView == null) {
                                if (panelFeatureState.createdPanelView != null) {
                                    keyEvent = panelFeatureState.createdPanelView.getLayoutParams();
                                    if (keyEvent != null && keyEvent.width == -1) {
                                        i = -1;
                                        panelFeatureState.isHandled = false;
                                        layoutParams = new WindowManager.LayoutParams(i, -2, 0, 0, 1002, 8519680, -3);
                                        layoutParams.gravity = panelFeatureState.gravity;
                                        layoutParams.windowAnimations = panelFeatureState.windowAnimations;
                                        windowManager.addView(panelFeatureState.decorView, layoutParams);
                                        panelFeatureState.isOpen = true;
                                        return;
                                    }
                                }
                                i = -2;
                                panelFeatureState.isHandled = false;
                                layoutParams = new WindowManager.LayoutParams(i, -2, 0, 0, 1002, 8519680, -3);
                                layoutParams.gravity = panelFeatureState.gravity;
                                layoutParams.windowAnimations = panelFeatureState.windowAnimations;
                                windowManager.addView(panelFeatureState.decorView, layoutParams);
                                panelFeatureState.isOpen = true;
                                return;
                            }
                        }
                        if (panelFeatureState.decorView == null) {
                            panelFeatureState.setStyle(getActionBarThemedContext());
                            panelFeatureState.decorView = new ListMenuDecorView(panelFeatureState.listPresenterContext);
                            panelFeatureState.gravity = 81;
                            if (panelFeatureState.decorView == null) {
                                return;
                            }
                        } else if (panelFeatureState.refreshDecorView != null && panelFeatureState.decorView.getChildCount() > null) {
                            panelFeatureState.decorView.removeAllViews();
                        }
                        if (initializePanelContent(panelFeatureState) != null) {
                            if (panelFeatureState.hasPanelItems() != null) {
                                keyEvent = panelFeatureState.shownPanelView.getLayoutParams();
                                if (keyEvent == null) {
                                    keyEvent = new LayoutParams(-2, -2);
                                }
                                panelFeatureState.decorView.setBackgroundResource(panelFeatureState.background);
                                ViewParent parent = panelFeatureState.shownPanelView.getParent();
                                if (parent != null && (parent instanceof ViewGroup)) {
                                    ((ViewGroup) parent).removeView(panelFeatureState.shownPanelView);
                                }
                                panelFeatureState.decorView.addView(panelFeatureState.shownPanelView, keyEvent);
                                if (panelFeatureState.shownPanelView.hasFocus() == null) {
                                    panelFeatureState.shownPanelView.requestFocus();
                                }
                                i = -2;
                                panelFeatureState.isHandled = false;
                                layoutParams = new WindowManager.LayoutParams(i, -2, 0, 0, 1002, 8519680, -3);
                                layoutParams.gravity = panelFeatureState.gravity;
                                layoutParams.windowAnimations = panelFeatureState.windowAnimations;
                                windowManager.addView(panelFeatureState.decorView, layoutParams);
                                panelFeatureState.isOpen = true;
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
                closePanel(panelFeatureState, true);
            }
        }
    }

    private boolean initializePanelMenu(PanelFeatureState panelFeatureState) {
        Context context = this.mContext;
        if ((panelFeatureState.featureId == 0 || panelFeatureState.featureId == 108) && this.mDecorContentParent != null) {
            TypedValue typedValue = new TypedValue();
            Theme theme = context.getTheme();
            theme.resolveAttribute(C0859R.attr.actionBarTheme, typedValue, true);
            Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(C0859R.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(C0859R.attr.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            if (theme2 != null) {
                Context contextThemeWrapper = new ContextThemeWrapper(context, 0);
                contextThemeWrapper.getTheme().setTo(theme2);
                context = contextThemeWrapper;
            }
        }
        MenuBuilder menuBuilder = new MenuBuilder(context);
        menuBuilder.setCallback(this);
        panelFeatureState.setMenu(menuBuilder);
        return true;
    }

    private boolean initializePanelContent(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.createdPanelView != null) {
            panelFeatureState.shownPanelView = panelFeatureState.createdPanelView;
            return true;
        } else if (panelFeatureState.menu == null) {
            return false;
        } else {
            if (this.mPanelMenuPresenterCallback == null) {
                this.mPanelMenuPresenterCallback = new PanelMenuPresenterCallback();
            }
            panelFeatureState.shownPanelView = (View) panelFeatureState.getListMenuView(this.mPanelMenuPresenterCallback);
            if (panelFeatureState.shownPanelView != null) {
                return true;
            }
            return false;
        }
    }

    private boolean preparePanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (isDestroyed()) {
            return false;
        }
        if (panelFeatureState.isPrepared) {
            return true;
        }
        boolean z;
        if (!(this.mPreparedPanel == null || this.mPreparedPanel == panelFeatureState)) {
            closePanel(this.mPreparedPanel, false);
        }
        Window.Callback callback = this.mWindow.getCallback();
        if (callback != null) {
            panelFeatureState.createdPanelView = callback.onCreatePanelView(panelFeatureState.featureId);
        }
        if (panelFeatureState.featureId != 0) {
            if (panelFeatureState.featureId != 108) {
                z = false;
                if (z && this.mDecorContentParent != null) {
                    this.mDecorContentParent.setMenuPrepared();
                }
                if (panelFeatureState.createdPanelView == null && !(z && (this.mActionBar instanceof ToolbarActionBar))) {
                    if (panelFeatureState.menu == null || panelFeatureState.refreshMenuContent) {
                        if (panelFeatureState.menu == null) {
                            initializePanelMenu(panelFeatureState);
                            if (panelFeatureState.menu == null) {
                                return false;
                            }
                        }
                        if (z && this.mDecorContentParent != null) {
                            if (this.mActionMenuPresenterCallback == null) {
                                this.mActionMenuPresenterCallback = new ActionMenuPresenterCallback();
                            }
                            this.mDecorContentParent.setMenu(panelFeatureState.menu, this.mActionMenuPresenterCallback);
                        }
                        panelFeatureState.menu.stopDispatchingItemsChanged();
                        if (callback.onCreatePanelMenu(panelFeatureState.featureId, panelFeatureState.menu)) {
                            panelFeatureState.setMenu(null);
                            if (z && this.mDecorContentParent != null) {
                                this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                            }
                            return false;
                        }
                        panelFeatureState.refreshMenuContent = false;
                    }
                    panelFeatureState.menu.stopDispatchingItemsChanged();
                    if (panelFeatureState.frozenActionViewState != null) {
                        panelFeatureState.menu.restoreActionViewStates(panelFeatureState.frozenActionViewState);
                        panelFeatureState.frozenActionViewState = null;
                    }
                    if (callback.onPreparePanel(0, panelFeatureState.createdPanelView, panelFeatureState.menu)) {
                        if (z && this.mDecorContentParent != null) {
                            this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                        }
                        panelFeatureState.menu.startDispatchingItemsChanged();
                        return false;
                    }
                    panelFeatureState.qwertyMode = KeyCharacterMap.load(keyEvent == null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1 ? 1 : null;
                    panelFeatureState.menu.setQwertyMode(panelFeatureState.qwertyMode);
                    panelFeatureState.menu.startDispatchingItemsChanged();
                }
                panelFeatureState.isPrepared = true;
                panelFeatureState.isHandled = false;
                this.mPreparedPanel = panelFeatureState;
                return true;
            }
        }
        z = true;
        this.mDecorContentParent.setMenuPrepared();
        if (panelFeatureState.menu == null) {
            initializePanelMenu(panelFeatureState);
            if (panelFeatureState.menu == null) {
                return false;
            }
        }
        if (this.mActionMenuPresenterCallback == null) {
            this.mActionMenuPresenterCallback = new ActionMenuPresenterCallback();
        }
        this.mDecorContentParent.setMenu(panelFeatureState.menu, this.mActionMenuPresenterCallback);
        panelFeatureState.menu.stopDispatchingItemsChanged();
        if (callback.onCreatePanelMenu(panelFeatureState.featureId, panelFeatureState.menu)) {
            panelFeatureState.refreshMenuContent = false;
            panelFeatureState.menu.stopDispatchingItemsChanged();
            if (panelFeatureState.frozenActionViewState != null) {
                panelFeatureState.menu.restoreActionViewStates(panelFeatureState.frozenActionViewState);
                panelFeatureState.frozenActionViewState = null;
            }
            if (callback.onPreparePanel(0, panelFeatureState.createdPanelView, panelFeatureState.menu)) {
                if (keyEvent == null) {
                }
                if (KeyCharacterMap.load(keyEvent == null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
                }
                panelFeatureState.qwertyMode = KeyCharacterMap.load(keyEvent == null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1 ? 1 : null;
                panelFeatureState.menu.setQwertyMode(panelFeatureState.qwertyMode);
                panelFeatureState.menu.startDispatchingItemsChanged();
                panelFeatureState.isPrepared = true;
                panelFeatureState.isHandled = false;
                this.mPreparedPanel = panelFeatureState;
                return true;
            }
            this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
            panelFeatureState.menu.startDispatchingItemsChanged();
            return false;
        }
        panelFeatureState.setMenu(null);
        this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
        return false;
    }

    final void checkCloseActionMenu(MenuBuilder menuBuilder) {
        if (!this.mClosingActionMenu) {
            this.mClosingActionMenu = true;
            this.mDecorContentParent.dismissPopups();
            Window.Callback callback = this.mWindow.getCallback();
            if (!(callback == null || isDestroyed())) {
                callback.onPanelClosed(108, menuBuilder);
            }
            this.mClosingActionMenu = null;
        }
    }

    final void closePanel$13462e() {
        closePanel(getPanelState$20476cf5(0), true);
    }

    final void closePanel(PanelFeatureState panelFeatureState, boolean z) {
        if (z && panelFeatureState.featureId == 0 && this.mDecorContentParent != null && this.mDecorContentParent.isOverflowMenuShowing()) {
            checkCloseActionMenu(panelFeatureState.menu);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (!(windowManager == null || !panelFeatureState.isOpen || panelFeatureState.decorView == null)) {
            windowManager.removeView(panelFeatureState.decorView);
            if (z) {
                callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, null);
            }
        }
        panelFeatureState.isPrepared = false;
        panelFeatureState.isHandled = false;
        panelFeatureState.isOpen = false;
        panelFeatureState.shownPanelView = null;
        panelFeatureState.refreshDecorView = true;
        if (this.mPreparedPanel == panelFeatureState) {
            this.mPreparedPanel = null;
        }
    }

    final void callOnPanelClosed(int i, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i >= 0 && i < this.mPanels.length) {
                panelFeatureState = this.mPanels[i];
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.menu;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.isOpen != null) && isDestroyed() == null) {
            this.mOriginalWindowCallback.onPanelClosed(i, menu);
        }
    }

    final PanelFeatureState findMenuPanel(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        int i = 0;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        while (i < length) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.menu == menu) {
                return panelFeatureState;
            }
            i++;
        }
        return null;
    }

    protected final PanelFeatureState getPanelState$20476cf5(int i) {
        Object obj = this.mPanels;
        if (obj == null || obj.length <= i) {
            Object obj2 = new PanelFeatureState[(i + 1)];
            if (obj != null) {
                System.arraycopy(obj, 0, obj2, 0, obj.length);
            }
            this.mPanels = obj2;
            obj = obj2;
        }
        PanelFeatureState panelFeatureState = obj[i];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        panelFeatureState = new PanelFeatureState(i);
        obj[i] = panelFeatureState;
        return panelFeatureState;
    }

    private boolean performPanelShortcut$a1883d4(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent) {
        boolean z = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.isPrepared || preparePanel(panelFeatureState, keyEvent)) && panelFeatureState.menu != null) {
            z = panelFeatureState.menu.performShortcut(i, keyEvent, 1);
        }
        return z;
    }

    private void invalidatePanelMenu(int i) {
        this.mInvalidatePanelMenuFeatures = (1 << i) | this.mInvalidatePanelMenuFeatures;
        if (this.mInvalidatePanelMenuPosted == 0) {
            ViewCompat.postOnAnimation(this.mWindow.getDecorView(), this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuPosted = true;
        }
    }

    final void doInvalidatePanelMenu(int i) {
        PanelFeatureState panelState$20476cf5 = getPanelState$20476cf5(i);
        if (panelState$20476cf5.menu != null) {
            Bundle bundle = new Bundle();
            panelState$20476cf5.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState$20476cf5.frozenActionViewState = bundle;
            }
            panelState$20476cf5.menu.stopDispatchingItemsChanged();
            panelState$20476cf5.menu.clear();
        }
        panelState$20476cf5.refreshMenuContent = true;
        panelState$20476cf5.refreshDecorView = true;
        if ((i == 108 || i == 0) && this.mDecorContentParent != 0) {
            panelState$20476cf5 = getPanelState$20476cf5(0);
            if (panelState$20476cf5 != null) {
                panelState$20476cf5.isPrepared = false;
                preparePanel(panelState$20476cf5, 0);
            }
        }
    }

    final int updateStatusGuard(int i) {
        int i2;
        int i3 = 0;
        if (this.mActionModeView == null || !(this.mActionModeView.getLayoutParams() instanceof MarginLayoutParams)) {
            i2 = 0;
        } else {
            int i4;
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.mActionModeView.getLayoutParams();
            i2 = 1;
            if (this.mActionModeView.isShown()) {
                if (this.mTempRect1 == null) {
                    this.mTempRect1 = new Rect();
                    this.mTempRect2 = new Rect();
                }
                Rect rect = this.mTempRect1;
                Rect rect2 = this.mTempRect2;
                rect.set(0, i, 0, 0);
                ViewUtils.computeFitSystemWindows(this.mSubDecor, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    if (this.mStatusGuard == null) {
                        this.mStatusGuard = new View(this.mContext);
                        this.mStatusGuard.setBackgroundColor(this.mContext.getResources().getColor(C0859R.color.abc_input_method_navigation_guard));
                        this.mSubDecor.addView(this.mStatusGuard, -1, new LayoutParams(-1, i));
                    } else {
                        LayoutParams layoutParams = this.mStatusGuard.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.mStatusGuard.setLayoutParams(layoutParams);
                        }
                    }
                    i4 = 1;
                } else {
                    i4 = 0;
                }
                if (this.mStatusGuard == null) {
                    i2 = 0;
                }
                if (!(this.mOverlayActionMode || r3 == 0)) {
                    i = 0;
                }
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                i4 = 1;
                i2 = 0;
            } else {
                i4 = 0;
                i2 = i4;
            }
            if (i4 != 0) {
                this.mActionModeView.setLayoutParams(marginLayoutParams);
            }
        }
        if (this.mStatusGuard != null) {
            View view = this.mStatusGuard;
            if (i2 == 0) {
                i3 = 8;
            }
            view.setVisibility(i3);
        }
        return i;
    }

    private static int sanitizeWindowFeatureId(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        } else if (i != 9) {
            return i;
        } else {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            return 109;
        }
    }

    final void dismissPopups() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = r2.mDecorContentParent;
        if (r0 == 0) goto L_0x0009;
    L_0x0004:
        r0 = r2.mDecorContentParent;
        r0.dismissPopups();
    L_0x0009:
        r0 = r2.mActionModePopup;
        if (r0 == 0) goto L_0x0028;
    L_0x000d:
        r0 = r2.mWindow;
        r0 = r0.getDecorView();
        r1 = r2.mShowActionModePopup;
        r0.removeCallbacks(r1);
        r0 = r2.mActionModePopup;
        r0 = r0.isShowing();
        if (r0 == 0) goto L_0x0025;
    L_0x0020:
        r0 = r2.mActionModePopup;	 Catch:{ IllegalArgumentException -> 0x0025 }
        r0.dismiss();	 Catch:{ IllegalArgumentException -> 0x0025 }
    L_0x0025:
        r0 = 0;
        r2.mActionModePopup = r0;
    L_0x0028:
        r0 = r2.mFadeAnim;
        if (r0 == 0) goto L_0x0031;
    L_0x002c:
        r0 = r2.mFadeAnim;
        r0.cancel();
    L_0x0031:
        r0 = 0;
        r0 = r2.getPanelState$20476cf5(r0);
        if (r0 == 0) goto L_0x0041;
    L_0x0038:
        r1 = r0.menu;
        if (r1 == 0) goto L_0x0041;
    L_0x003c:
        r0 = r0.menu;
        r0.close();
    L_0x0041:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatDelegateImplV9.dismissPopups():void");
    }

    public void onStop() {
        initWindowDecorActionBar();
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(false);
        }
    }

    public final void onPostResume() {
        initWindowDecorActionBar();
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(true);
        }
    }

    final void onPanelClosed$2fef5516(int i) {
        if (i == 108) {
            initWindowDecorActionBar();
            i = this.mActionBar;
            if (i != 0) {
                i.dispatchMenuVisibilityChanged(false);
            }
            return;
        }
        if (i == 0) {
            i = getPanelState$20476cf5(i);
            if (i.isOpen) {
                closePanel(i, false);
            }
        }
    }

    final boolean onMenuOpened$2fef5512(int i) {
        if (i != 108) {
            return false;
        }
        initWindowDecorActionBar();
        i = this.mActionBar;
        if (i != 0) {
            i.dispatchMenuVisibilityChanged(true);
        }
        return true;
    }

    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        Window.Callback callback = this.mWindow.getCallback();
        if (!(callback == null || isDestroyed())) {
            menuBuilder = findMenuPanel(menuBuilder.getRootMenu());
            if (menuBuilder != null) {
                return callback.onMenuItemSelected(menuBuilder.featureId, menuItem);
            }
        }
        return null;
    }

    public void onMenuModeChange(MenuBuilder menuBuilder) {
        if (this.mDecorContentParent == null || this.mDecorContentParent.canShowOverflowMenu() == null || (ViewConfiguration.get(this.mContext).hasPermanentMenuKey() != null && this.mDecorContentParent.isOverflowMenuShowPending() == null)) {
            menuBuilder = getPanelState$20476cf5(0);
            menuBuilder.refreshDecorView = true;
            closePanel(menuBuilder, false);
            openPanel(menuBuilder, null);
            return;
        }
        menuBuilder = this.mWindow.getCallback();
        if (this.mDecorContentParent.isOverflowMenuShowing()) {
            this.mDecorContentParent.hideOverflowMenu();
            if (!isDestroyed()) {
                menuBuilder.onPanelClosed(108, getPanelState$20476cf5(0).menu);
            }
        } else if (!(menuBuilder == null || isDestroyed())) {
            if (this.mInvalidatePanelMenuPosted && (1 & this.mInvalidatePanelMenuFeatures) != 0) {
                this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
                this.mInvalidatePanelMenuRunnable.run();
            }
            PanelFeatureState panelState$20476cf5 = getPanelState$20476cf5(0);
            if (!(panelState$20476cf5.menu == null || panelState$20476cf5.refreshMenuContent || !menuBuilder.onPreparePanel(0, panelState$20476cf5.createdPanelView, panelState$20476cf5.menu))) {
                menuBuilder.onMenuOpened(108, panelState$20476cf5.menu);
                this.mDecorContentParent.showOverflowMenu();
            }
        }
    }

    public final void invalidateOptionsMenu() {
        initWindowDecorActionBar();
        ActionBar actionBar = this.mActionBar;
        if (actionBar == null || !actionBar.invalidateOptionsMenu()) {
            invalidatePanelMenu(0);
        }
    }

    final android.support.v7.view.ActionMode startSupportActionModeFromWindow(android.support.v7.view.ActionMode.Callback r8) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r7 = this;
        r0 = r7.mFadeAnim;
        if (r0 == 0) goto L_0x0009;
    L_0x0004:
        r0 = r7.mFadeAnim;
        r0.cancel();
    L_0x0009:
        r0 = r7.mActionMode;
        if (r0 == 0) goto L_0x0012;
    L_0x000d:
        r0 = r7.mActionMode;
        r0.finish();
    L_0x0012:
        r0 = r7.mAppCompatCallback;
        r1 = 0;
        if (r0 == 0) goto L_0x0024;
    L_0x0017:
        r0 = r7.isDestroyed();
        if (r0 != 0) goto L_0x0024;
    L_0x001d:
        r0 = r7.mAppCompatCallback;	 Catch:{ AbstractMethodError -> 0x0024 }
        r0 = r0.onWindowStartingSupportActionMode(r8);	 Catch:{ AbstractMethodError -> 0x0024 }
        goto L_0x0025;
    L_0x0024:
        r0 = r1;
    L_0x0025:
        if (r0 == 0) goto L_0x002b;
    L_0x0027:
        r7.mActionMode = r0;
        goto L_0x0181;
    L_0x002b:
        r0 = r7.mActionModeView;
        r2 = 0;
        r3 = 1;
        if (r0 != 0) goto L_0x00dc;
    L_0x0031:
        r0 = r7.mIsFloating;
        if (r0 == 0) goto L_0x00bc;
    L_0x0035:
        r0 = new android.util.TypedValue;
        r0.<init>();
        r4 = r7.mContext;
        r4 = r4.getTheme();
        r5 = 2130968587; // 0x7f04000b float:1.7545832E38 double:1.052838371E-314;
        r4.resolveAttribute(r5, r0, r3);
        r5 = r0.resourceId;
        if (r5 == 0) goto L_0x006b;
    L_0x004a:
        r5 = r7.mContext;
        r5 = r5.getResources();
        r5 = r5.newTheme();
        r5.setTo(r4);
        r4 = r0.resourceId;
        r5.applyStyle(r4, r3);
        r4 = new android.support.v7.view.ContextThemeWrapper;
        r6 = r7.mContext;
        r4.<init>(r6, r2);
        r6 = r4.getTheme();
        r6.setTo(r5);
        goto L_0x006d;
    L_0x006b:
        r4 = r7.mContext;
    L_0x006d:
        r5 = new android.support.v7.widget.ActionBarContextView;
        r5.<init>(r4);
        r7.mActionModeView = r5;
        r5 = new android.widget.PopupWindow;
        r6 = 2130968601; // 0x7f040019 float:1.754586E38 double:1.052838378E-314;
        r5.<init>(r4, r1, r6);
        r7.mActionModePopup = r5;
        r5 = r7.mActionModePopup;
        r6 = 2;
        android.support.v4.widget.PopupWindowCompat.setWindowLayoutType(r5, r6);
        r5 = r7.mActionModePopup;
        r6 = r7.mActionModeView;
        r5.setContentView(r6);
        r5 = r7.mActionModePopup;
        r6 = -1;
        r5.setWidth(r6);
        r5 = r4.getTheme();
        r6 = 2130968581; // 0x7f040005 float:1.754582E38 double:1.052838368E-314;
        r5.resolveAttribute(r6, r0, r3);
        r0 = r0.data;
        r4 = r4.getResources();
        r4 = r4.getDisplayMetrics();
        r0 = android.util.TypedValue.complexToDimensionPixelSize(r0, r4);
        r4 = r7.mActionModeView;
        r4.setContentHeight(r0);
        r0 = r7.mActionModePopup;
        r4 = -2;
        r0.setHeight(r4);
        r0 = new android.support.v7.app.AppCompatDelegateImplV9$5;
        r0.<init>();
        r7.mShowActionModePopup = r0;
        goto L_0x00dc;
    L_0x00bc:
        r0 = r7.mSubDecor;
        r4 = 2131296291; // 0x7f090023 float:1.8210495E38 double:1.0530002785E-314;
        r0 = r0.findViewById(r4);
        r0 = (android.support.v7.widget.ViewStubCompat) r0;
        if (r0 == 0) goto L_0x00dc;
    L_0x00c9:
        r4 = r7.getActionBarThemedContext();
        r4 = android.view.LayoutInflater.from(r4);
        r0.setLayoutInflater(r4);
        r0 = r0.inflate();
        r0 = (android.support.v7.widget.ActionBarContextView) r0;
        r7.mActionModeView = r0;
    L_0x00dc:
        r0 = r7.mActionModeView;
        if (r0 == 0) goto L_0x0181;
    L_0x00e0:
        r0 = r7.mFadeAnim;
        if (r0 == 0) goto L_0x00e9;
    L_0x00e4:
        r0 = r7.mFadeAnim;
        r0.cancel();
    L_0x00e9:
        r0 = r7.mActionModeView;
        r0.killMode();
        r0 = new android.support.v7.view.StandaloneActionMode;
        r4 = r7.mActionModeView;
        r4 = r4.getContext();
        r5 = r7.mActionModeView;
        r6 = r7.mActionModePopup;
        if (r6 != 0) goto L_0x00fe;
    L_0x00fc:
        r6 = r3;
        goto L_0x00ff;
    L_0x00fe:
        r6 = r2;
    L_0x00ff:
        r0.<init>(r4, r5, r8, r6);
        r4 = r0.getMenu();
        r8 = r8.onCreateActionMode(r0, r4);
        if (r8 == 0) goto L_0x017f;
    L_0x010c:
        r0.invalidate();
        r8 = r7.mActionModeView;
        r8.initForMode(r0);
        r7.mActionMode = r0;
        r8 = r7.mSubDecorInstalled;
        if (r8 == 0) goto L_0x0127;
    L_0x011a:
        r8 = r7.mSubDecor;
        if (r8 == 0) goto L_0x0127;
    L_0x011e:
        r8 = r7.mSubDecor;
        r8 = android.support.v4.view.ViewCompat.isLaidOut(r8);
        if (r8 == 0) goto L_0x0127;
    L_0x0126:
        goto L_0x0128;
    L_0x0127:
        r3 = r2;
    L_0x0128:
        r8 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        if (r3 == 0) goto L_0x0149;
    L_0x012c:
        r0 = r7.mActionModeView;
        r1 = 0;
        r0.setAlpha(r1);
        r0 = r7.mActionModeView;
        r0 = android.support.v4.view.ViewCompat.animate(r0);
        r8 = r0.alpha(r8);
        r7.mFadeAnim = r8;
        r8 = r7.mFadeAnim;
        r0 = new android.support.v7.app.AppCompatDelegateImplV9$6;
        r0.<init>();
        r8.setListener(r0);
        goto L_0x016f;
    L_0x0149:
        r0 = r7.mActionModeView;
        r0.setAlpha(r8);
        r8 = r7.mActionModeView;
        r8.setVisibility(r2);
        r8 = r7.mActionModeView;
        r0 = 32;
        r8.sendAccessibilityEvent(r0);
        r8 = r7.mActionModeView;
        r8 = r8.getParent();
        r8 = r8 instanceof android.view.View;
        if (r8 == 0) goto L_0x016f;
    L_0x0164:
        r8 = r7.mActionModeView;
        r8 = r8.getParent();
        r8 = (android.view.View) r8;
        android.support.v4.view.ViewCompat.requestApplyInsets(r8);
    L_0x016f:
        r8 = r7.mActionModePopup;
        if (r8 == 0) goto L_0x0181;
    L_0x0173:
        r8 = r7.mWindow;
        r8 = r8.getDecorView();
        r0 = r7.mShowActionModePopup;
        r8.post(r0);
        goto L_0x0181;
    L_0x017f:
        r7.mActionMode = r1;
    L_0x0181:
        r8 = r7.mActionMode;
        if (r8 == 0) goto L_0x0190;
    L_0x0185:
        r8 = r7.mAppCompatCallback;
        if (r8 == 0) goto L_0x0190;
    L_0x0189:
        r8 = r7.mAppCompatCallback;
        r0 = r7.mActionMode;
        r8.onSupportActionModeStarted(r0);
    L_0x0190:
        r8 = r7.mActionMode;
        return r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatDelegateImplV9.startSupportActionModeFromWindow(android.support.v7.view.ActionMode$Callback):android.support.v7.view.ActionMode");
    }

    final boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        initWindowDecorActionBar();
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null && actionBar.onKeyShortcut(i, keyEvent) != 0) {
            return true;
        }
        if (this.mPreparedPanel == 0 || performPanelShortcut$a1883d4(this.mPreparedPanel, keyEvent.getKeyCode(), keyEvent) == 0) {
            if (this.mPreparedPanel == 0) {
                i = getPanelState$20476cf5(0);
                preparePanel(i, keyEvent);
                keyEvent = performPanelShortcut$a1883d4(i, keyEvent.getKeyCode(), keyEvent);
                i.isPrepared = false;
                if (keyEvent != null) {
                    return true;
                }
            }
            return false;
        }
        if (this.mPreparedPanel != 0) {
            this.mPreparedPanel.isHandled = true;
        }
        return true;
    }
}
