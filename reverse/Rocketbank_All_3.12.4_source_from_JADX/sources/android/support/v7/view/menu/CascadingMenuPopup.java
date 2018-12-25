package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.widget.MenuItemHoverListener;
import android.support.v7.widget.MenuPopupWindow;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import ru.rocketbank.r2d2.C0859R;

final class CascadingMenuPopup extends MenuPopup implements MenuPresenter, OnKeyListener, OnDismissListener {
    private View mAnchorView;
    private final OnAttachStateChangeListener mAttachStateChangeListener = new C02242();
    private final Context mContext;
    private int mDropDownGravity = 0;
    private boolean mForceShowIcon;
    private final OnGlobalLayoutListener mGlobalLayoutListener = new C02231();
    private boolean mHasXOffset;
    private boolean mHasYOffset;
    private int mLastPosition;
    private final MenuItemHoverListener mMenuItemHoverListener = new C09463();
    private final int mMenuMaxWidth;
    private OnDismissListener mOnDismissListener;
    private final boolean mOverflowOnly;
    private final List<MenuBuilder> mPendingMenus = new ArrayList();
    private final int mPopupStyleAttr;
    private final int mPopupStyleRes;
    private Callback mPresenterCallback;
    private int mRawDropDownGravity = 0;
    boolean mShouldCloseImmediately;
    private boolean mShowTitle;
    final List<CascadingMenuInfo> mShowingMenus = new ArrayList();
    View mShownAnchorView;
    final Handler mSubMenuHoverHandler;
    private ViewTreeObserver mTreeObserver;
    private int mXOffset;
    private int mYOffset;

    /* renamed from: android.support.v7.view.menu.CascadingMenuPopup$1 */
    class C02231 implements OnGlobalLayoutListener {
        C02231() {
        }

        public final void onGlobalLayout() {
            if (CascadingMenuPopup.this.isShowing() && CascadingMenuPopup.this.mShowingMenus.size() > 0 && !((CascadingMenuInfo) CascadingMenuPopup.this.mShowingMenus.get(0)).window.isModal()) {
                View view = CascadingMenuPopup.this.mShownAnchorView;
                if (view != null) {
                    if (view.isShown()) {
                        for (CascadingMenuInfo cascadingMenuInfo : CascadingMenuPopup.this.mShowingMenus) {
                            cascadingMenuInfo.window.show();
                        }
                    }
                }
                CascadingMenuPopup.this.dismiss();
            }
        }
    }

    /* renamed from: android.support.v7.view.menu.CascadingMenuPopup$2 */
    class C02242 implements OnAttachStateChangeListener {
        public final void onViewAttachedToWindow(View view) {
        }

        C02242() {
        }

        public final void onViewDetachedFromWindow(View view) {
            if (CascadingMenuPopup.this.mTreeObserver != null) {
                if (!CascadingMenuPopup.this.mTreeObserver.isAlive()) {
                    CascadingMenuPopup.this.mTreeObserver = view.getViewTreeObserver();
                }
                CascadingMenuPopup.this.mTreeObserver.removeGlobalOnLayoutListener(CascadingMenuPopup.this.mGlobalLayoutListener);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    static class CascadingMenuInfo {
        public final MenuBuilder menu;
        public final int position;
        public final MenuPopupWindow window;

        public CascadingMenuInfo(MenuPopupWindow menuPopupWindow, MenuBuilder menuBuilder, int i) {
            this.window = menuPopupWindow;
            this.menu = menuBuilder;
            this.position = i;
        }
    }

    /* renamed from: android.support.v7.view.menu.CascadingMenuPopup$3 */
    class C09463 implements MenuItemHoverListener {
        C09463() {
        }

        public final void onItemHoverExit(MenuBuilder menuBuilder, MenuItem menuItem) {
            CascadingMenuPopup.this.mSubMenuHoverHandler.removeCallbacksAndMessages(menuBuilder);
        }

        public final void onItemHoverEnter(final MenuBuilder menuBuilder, final MenuItem menuItem) {
            CascadingMenuInfo cascadingMenuInfo = null;
            CascadingMenuPopup.this.mSubMenuHoverHandler.removeCallbacksAndMessages(null);
            int size = CascadingMenuPopup.this.mShowingMenus.size();
            int i = 0;
            while (i < size) {
                if (menuBuilder == ((CascadingMenuInfo) CascadingMenuPopup.this.mShowingMenus.get(i)).menu) {
                    break;
                }
                i++;
            }
            i = -1;
            if (i != -1) {
                i++;
                if (i < CascadingMenuPopup.this.mShowingMenus.size()) {
                    cascadingMenuInfo = (CascadingMenuInfo) CascadingMenuPopup.this.mShowingMenus.get(i);
                }
                CascadingMenuPopup.this.mSubMenuHoverHandler.postAtTime(new Runnable() {
                    public final void run() {
                        if (cascadingMenuInfo != null) {
                            CascadingMenuPopup.this.mShouldCloseImmediately = true;
                            cascadingMenuInfo.menu.close(false);
                            CascadingMenuPopup.this.mShouldCloseImmediately = false;
                        }
                        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                            menuBuilder.performItemAction(menuItem, 4);
                        }
                    }
                }, menuBuilder, SystemClock.uptimeMillis() + 200);
            }
        }
    }

    protected final boolean closeMenuOnSubMenuOpened() {
        return false;
    }

    public final boolean flagActionItems() {
        return false;
    }

    public final void onRestoreInstanceState(Parcelable parcelable) {
    }

    public final Parcelable onSaveInstanceState() {
        return null;
    }

    public CascadingMenuPopup(Context context, View view, int i, int i2, boolean z) {
        this.mContext = context;
        this.mAnchorView = view;
        this.mPopupStyleAttr = i;
        this.mPopupStyleRes = i2;
        this.mOverflowOnly = z;
        this.mForceShowIcon = false;
        i = 1;
        if (ViewCompat.getLayoutDirection(this.mAnchorView) == 1) {
            i = 0;
        }
        this.mLastPosition = i;
        context = context.getResources();
        this.mMenuMaxWidth = Math.max(context.getDisplayMetrics().widthPixels / 2, context.getDimensionPixelSize(C0859R.dimen.abc_config_prefDialogWidth));
        this.mSubMenuHoverHandler = new Handler();
    }

    public final void setForceShowIcon(boolean z) {
        this.mForceShowIcon = z;
    }

    private MenuPopupWindow createPopupWindow() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.mContext, null, this.mPopupStyleAttr, this.mPopupStyleRes);
        menuPopupWindow.setHoverListener(this.mMenuItemHoverListener);
        menuPopupWindow.setOnItemClickListener(this);
        menuPopupWindow.setOnDismissListener(this);
        menuPopupWindow.setAnchorView(this.mAnchorView);
        menuPopupWindow.setDropDownGravity(this.mDropDownGravity);
        menuPopupWindow.setModal(true);
        menuPopupWindow.setInputMethodMode(2);
        return menuPopupWindow;
    }

    public final void show() {
        if (!isShowing()) {
            for (MenuBuilder showMenu : this.mPendingMenus) {
                showMenu(showMenu);
            }
            this.mPendingMenus.clear();
            this.mShownAnchorView = this.mAnchorView;
            if (this.mShownAnchorView != null) {
                Object obj = this.mTreeObserver == null ? 1 : null;
                this.mTreeObserver = this.mShownAnchorView.getViewTreeObserver();
                if (obj != null) {
                    this.mTreeObserver.addOnGlobalLayoutListener(this.mGlobalLayoutListener);
                }
                this.mShownAnchorView.addOnAttachStateChangeListener(this.mAttachStateChangeListener);
            }
        }
    }

    public final void dismiss() {
        int size = this.mShowingMenus.size();
        if (size > 0) {
            CascadingMenuInfo[] cascadingMenuInfoArr = (CascadingMenuInfo[]) this.mShowingMenus.toArray(new CascadingMenuInfo[size]);
            for (size--; size >= 0; size--) {
                CascadingMenuInfo cascadingMenuInfo = cascadingMenuInfoArr[size];
                if (cascadingMenuInfo.window.isShowing()) {
                    cascadingMenuInfo.window.dismiss();
                }
            }
        }
    }

    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return null;
        }
        dismiss();
        return true;
    }

    private int getNextMenuPosition(int i) {
        ListView listView = ((CascadingMenuInfo) this.mShowingMenus.get(this.mShowingMenus.size() - 1)).window.getListView();
        int[] iArr = new int[2];
        listView.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.mShownAnchorView.getWindowVisibleDisplayFrame(rect);
        if (this.mLastPosition == 1) {
            if ((iArr[0] + listView.getWidth()) + i > rect.right) {
                return 0;
            }
            return 1;
        } else if (iArr[0] - i < 0) {
            return 1;
        } else {
            return 0;
        }
    }

    public final void addMenu(MenuBuilder menuBuilder) {
        menuBuilder.addMenuPresenter(this, this.mContext);
        if (isShowing()) {
            showMenu(menuBuilder);
        } else {
            this.mPendingMenus.add(menuBuilder);
        }
    }

    private void showMenu(MenuBuilder menuBuilder) {
        CascadingMenuInfo cascadingMenuInfo;
        View findParentViewForSubmenu;
        LayoutInflater from = LayoutInflater.from(this.mContext);
        ListAdapter menuAdapter = new MenuAdapter(menuBuilder, from, this.mOverflowOnly);
        if (!isShowing() && this.mForceShowIcon) {
            menuAdapter.setForceShowIcon(true);
        } else if (isShowing()) {
            menuAdapter.setForceShowIcon(MenuPopup.shouldPreserveIconSpacing(menuBuilder));
        }
        int measureIndividualMenuWidth = MenuPopup.measureIndividualMenuWidth(menuAdapter, null, this.mContext, this.mMenuMaxWidth);
        MenuPopupWindow createPopupWindow = createPopupWindow();
        createPopupWindow.setAdapter(menuAdapter);
        createPopupWindow.setContentWidth(measureIndividualMenuWidth);
        createPopupWindow.setDropDownGravity(this.mDropDownGravity);
        if (this.mShowingMenus.size() > 0) {
            cascadingMenuInfo = (CascadingMenuInfo) this.mShowingMenus.get(this.mShowingMenus.size() - 1);
            findParentViewForSubmenu = findParentViewForSubmenu(cascadingMenuInfo, menuBuilder);
        } else {
            cascadingMenuInfo = null;
            findParentViewForSubmenu = cascadingMenuInfo;
        }
        if (findParentViewForSubmenu != null) {
            int i;
            createPopupWindow.setTouchModal(false);
            createPopupWindow.setEnterTransition(null);
            int nextMenuPosition = getNextMenuPosition(measureIndividualMenuWidth);
            boolean z = nextMenuPosition == 1;
            this.mLastPosition = nextMenuPosition;
            if (VERSION.SDK_INT >= 26) {
                createPopupWindow.setAnchorView(findParentViewForSubmenu);
                nextMenuPosition = 0;
                i = nextMenuPosition;
            } else {
                int[] iArr = new int[2];
                this.mAnchorView.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                findParentViewForSubmenu.getLocationOnScreen(iArr2);
                if ((this.mDropDownGravity & 7) == 5) {
                    iArr[0] = iArr[0] + this.mAnchorView.getWidth();
                    iArr2[0] = iArr2[0] + findParentViewForSubmenu.getWidth();
                }
                i = iArr2[0] - iArr[0];
                nextMenuPosition = iArr2[1] - iArr[1];
            }
            i = (this.mDropDownGravity & 5) == 5 ? z ? i + measureIndividualMenuWidth : i - findParentViewForSubmenu.getWidth() : z ? i + findParentViewForSubmenu.getWidth() : i - measureIndividualMenuWidth;
            createPopupWindow.setHorizontalOffset(i);
            createPopupWindow.setOverlapAnchor(true);
            createPopupWindow.setVerticalOffset(nextMenuPosition);
        } else {
            if (this.mHasXOffset) {
                createPopupWindow.setHorizontalOffset(this.mXOffset);
            }
            if (this.mHasYOffset) {
                createPopupWindow.setVerticalOffset(this.mYOffset);
            }
            createPopupWindow.setEpicenterBounds(getEpicenterBounds());
        }
        this.mShowingMenus.add(new CascadingMenuInfo(createPopupWindow, menuBuilder, this.mLastPosition));
        createPopupWindow.show();
        ViewGroup listView = createPopupWindow.getListView();
        listView.setOnKeyListener(this);
        if (cascadingMenuInfo == null && this.mShowTitle && menuBuilder.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(C0859R.layout.abc_popup_menu_header_item_layout, listView, false);
            TextView textView = (TextView) frameLayout.findViewById(16908310);
            frameLayout.setEnabled(false);
            textView.setText(menuBuilder.getHeaderTitle());
            listView.addHeaderView(frameLayout, null, false);
            createPopupWindow.show();
        }
    }

    private static MenuItem findMenuItemForSubmenu(MenuBuilder menuBuilder, MenuBuilder menuBuilder2) {
        int size = menuBuilder.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menuBuilder.getItem(i);
            if (item.hasSubMenu() && menuBuilder2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private static View findParentViewForSubmenu(CascadingMenuInfo cascadingMenuInfo, MenuBuilder menuBuilder) {
        menuBuilder = findMenuItemForSubmenu(cascadingMenuInfo.menu, menuBuilder);
        if (menuBuilder == null) {
            return null;
        }
        int headersCount;
        MenuAdapter menuAdapter;
        cascadingMenuInfo = cascadingMenuInfo.window.getListView();
        ListAdapter adapter = cascadingMenuInfo.getAdapter();
        int i = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
        } else {
            menuAdapter = (MenuAdapter) adapter;
            headersCount = 0;
        }
        int count = menuAdapter.getCount();
        while (i < count) {
            if (menuBuilder == menuAdapter.getItem(i)) {
                break;
            }
            i++;
        }
        i = -1;
        if (i == -1) {
            return null;
        }
        i = (i + headersCount) - cascadingMenuInfo.getFirstVisiblePosition();
        if (i >= 0) {
            if (i < cascadingMenuInfo.getChildCount()) {
                return cascadingMenuInfo.getChildAt(i);
            }
        }
        return null;
    }

    public final boolean isShowing() {
        return this.mShowingMenus.size() > 0 && ((CascadingMenuInfo) this.mShowingMenus.get(0)).window.isShowing();
    }

    public final void onDismiss() {
        CascadingMenuInfo cascadingMenuInfo;
        int size = this.mShowingMenus.size();
        for (int i = 0; i < size; i++) {
            cascadingMenuInfo = (CascadingMenuInfo) this.mShowingMenus.get(i);
            if (!cascadingMenuInfo.window.isShowing()) {
                break;
            }
        }
        cascadingMenuInfo = null;
        if (cascadingMenuInfo != null) {
            cascadingMenuInfo.menu.close(false);
        }
    }

    public final void updateMenuView(boolean z) {
        for (CascadingMenuInfo cascadingMenuInfo : this.mShowingMenus) {
            MenuAdapter menuAdapter;
            ListAdapter adapter = cascadingMenuInfo.window.getListView().getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                menuAdapter = (MenuAdapter) ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            } else {
                menuAdapter = (MenuAdapter) adapter;
            }
            menuAdapter.notifyDataSetChanged();
        }
    }

    public final void setCallback(Callback callback) {
        this.mPresenterCallback = callback;
    }

    public final boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        for (CascadingMenuInfo cascadingMenuInfo : this.mShowingMenus) {
            if (subMenuBuilder == cascadingMenuInfo.menu) {
                cascadingMenuInfo.window.getListView().requestFocus();
                return true;
            }
        }
        if (!subMenuBuilder.hasVisibleItems()) {
            return null;
        }
        addMenu(subMenuBuilder);
        if (this.mPresenterCallback != null) {
            this.mPresenterCallback.onOpenSubMenu(subMenuBuilder);
        }
        return true;
    }

    public final void setGravity(int i) {
        if (this.mRawDropDownGravity != i) {
            this.mRawDropDownGravity = i;
            this.mDropDownGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this.mAnchorView));
        }
    }

    public final void setAnchorView(View view) {
        if (this.mAnchorView != view) {
            this.mAnchorView = view;
            this.mDropDownGravity = GravityCompat.getAbsoluteGravity(this.mRawDropDownGravity, ViewCompat.getLayoutDirection(this.mAnchorView));
        }
    }

    public final void setOnDismissListener(OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    public final ListView getListView() {
        if (this.mShowingMenus.isEmpty()) {
            return null;
        }
        return ((CascadingMenuInfo) this.mShowingMenus.get(this.mShowingMenus.size() - 1)).window.getListView();
    }

    public final void setHorizontalOffset(int i) {
        this.mHasXOffset = true;
        this.mXOffset = i;
    }

    public final void setVerticalOffset(int i) {
        this.mHasYOffset = true;
        this.mYOffset = i;
    }

    public final void setShowTitle(boolean z) {
        this.mShowTitle = z;
    }

    public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        int size = this.mShowingMenus.size();
        int i = 0;
        while (i < size) {
            if (menuBuilder == ((CascadingMenuInfo) this.mShowingMenus.get(i)).menu) {
                break;
            }
            i++;
        }
        i = -1;
        if (i >= 0) {
            size = i + 1;
            if (size < this.mShowingMenus.size()) {
                ((CascadingMenuInfo) this.mShowingMenus.get(size)).menu.close(false);
            }
            CascadingMenuInfo cascadingMenuInfo = (CascadingMenuInfo) this.mShowingMenus.remove(i);
            cascadingMenuInfo.menu.removeMenuPresenter(this);
            if (this.mShouldCloseImmediately) {
                cascadingMenuInfo.window.setExitTransition(null);
                cascadingMenuInfo.window.setAnimationStyle(0);
            }
            cascadingMenuInfo.window.dismiss();
            size = this.mShowingMenus.size();
            int i2 = size > 0 ? ((CascadingMenuInfo) this.mShowingMenus.get(size - 1)).position : ViewCompat.getLayoutDirection(this.mAnchorView) == 1 ? 0 : 1;
            this.mLastPosition = i2;
            if (size == 0) {
                dismiss();
                if (this.mPresenterCallback) {
                    this.mPresenterCallback.onCloseMenu(menuBuilder, true);
                }
                if (this.mTreeObserver != null) {
                    if (this.mTreeObserver.isAlive() != null) {
                        this.mTreeObserver.removeGlobalOnLayoutListener(this.mGlobalLayoutListener);
                    }
                    this.mTreeObserver = null;
                }
                this.mShownAnchorView.removeOnAttachStateChangeListener(this.mAttachStateChangeListener);
                this.mOnDismissListener.onDismiss();
                return;
            }
            if (z) {
                ((CascadingMenuInfo) this.mShowingMenus.get(0)).menu.close(false);
            }
        }
    }
}
