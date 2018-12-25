package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.WindowCallbackWrapper;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.widget.DecorToolbar;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.Toolbar.OnMenuItemClickListener;
import android.support.v7.widget.ToolbarWidgetWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window.Callback;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

final class ToolbarActionBar extends ActionBar {
    DecorToolbar mDecorToolbar;
    private boolean mLastMenuVisibility;
    private boolean mMenuCallbackSet;
    private final OnMenuItemClickListener mMenuClicker = new C09412();
    private final Runnable mMenuInvalidator = new C02181();
    private ArrayList<Object> mMenuVisibilityListeners = new ArrayList();
    boolean mToolbarMenuPrepared;
    Callback mWindowCallback;

    /* renamed from: android.support.v7.app.ToolbarActionBar$1 */
    class C02181 implements Runnable {
        C02181() {
        }

        public final void run() {
            ToolbarActionBar.this.populateOptionsMenu();
        }
    }

    /* renamed from: android.support.v7.app.ToolbarActionBar$2 */
    class C09412 implements OnMenuItemClickListener {
        C09412() {
        }

        public final boolean onMenuItemClick(MenuItem menuItem) {
            return ToolbarActionBar.this.mWindowCallback.onMenuItemSelected(0, menuItem);
        }
    }

    final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        private boolean mClosingActionMenu;

        ActionMenuPresenterCallback() {
        }

        public final boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (ToolbarActionBar.this.mWindowCallback == null) {
                return null;
            }
            ToolbarActionBar.this.mWindowCallback.onMenuOpened(108, menuBuilder);
            return true;
        }

        public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            if (!this.mClosingActionMenu) {
                this.mClosingActionMenu = true;
                ToolbarActionBar.this.mDecorToolbar.dismissPopupMenus();
                if (ToolbarActionBar.this.mWindowCallback) {
                    ToolbarActionBar.this.mWindowCallback.onPanelClosed(108, menuBuilder);
                }
                this.mClosingActionMenu = null;
            }
        }
    }

    final class MenuBuilderCallback implements MenuBuilder.Callback {
        public final boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            return false;
        }

        MenuBuilderCallback() {
        }

        public final void onMenuModeChange(MenuBuilder menuBuilder) {
            if (ToolbarActionBar.this.mWindowCallback != null) {
                if (ToolbarActionBar.this.mDecorToolbar.isOverflowMenuShowing()) {
                    ToolbarActionBar.this.mWindowCallback.onPanelClosed(108, menuBuilder);
                } else if (ToolbarActionBar.this.mWindowCallback.onPreparePanel(0, null, menuBuilder)) {
                    ToolbarActionBar.this.mWindowCallback.onMenuOpened(108, menuBuilder);
                }
            }
        }
    }

    class ToolbarCallbackWrapper extends WindowCallbackWrapper {
        public ToolbarCallbackWrapper(Callback callback) {
            super(callback);
        }

        public final boolean onPreparePanel(int i, View view, Menu menu) {
            i = super.onPreparePanel(i, view, menu);
            if (i != 0 && ToolbarActionBar.this.mToolbarMenuPrepared == null) {
                ToolbarActionBar.this.mDecorToolbar.setMenuPrepared();
                ToolbarActionBar.this.mToolbarMenuPrepared = true;
            }
            return i;
        }

        public final View onCreatePanelView(int i) {
            if (i == 0) {
                return new View(ToolbarActionBar.this.mDecorToolbar.getContext());
            }
            return super.onCreatePanelView(i);
        }
    }

    final void populateOptionsMenu() {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find block by offset: 0x0030 in list [B:13:0x002c]
	at jadx.core.utils.BlockUtils.getBlockByOffset(BlockUtils.java:43)
	at jadx.core.dex.instructions.IfNode.initBlocks(IfNode.java:60)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.initBlocksInIfNodes(BlockFinish.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.visit(BlockFinish.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r5 = this;
        r0 = r5.getMenu();
        r1 = r0 instanceof android.support.v7.view.menu.MenuBuilder;
        r2 = 0;
        if (r1 == 0) goto L_0x000d;
    L_0x0009:
        r1 = r0;
        r1 = (android.support.v7.view.menu.MenuBuilder) r1;
        goto L_0x000e;
    L_0x000d:
        r1 = r2;
    L_0x000e:
        if (r1 == 0) goto L_0x0013;
    L_0x0010:
        r1.stopDispatchingItemsChanged();
    L_0x0013:
        r0.clear();	 Catch:{ all -> 0x0031 }
        r3 = r5.mWindowCallback;	 Catch:{ all -> 0x0031 }
        r4 = 0;	 Catch:{ all -> 0x0031 }
        r3 = r3.onCreatePanelMenu(r4, r0);	 Catch:{ all -> 0x0031 }
        if (r3 == 0) goto L_0x0027;	 Catch:{ all -> 0x0031 }
    L_0x001f:
        r3 = r5.mWindowCallback;	 Catch:{ all -> 0x0031 }
        r2 = r3.onPreparePanel(r4, r2, r0);	 Catch:{ all -> 0x0031 }
        if (r2 != 0) goto L_0x002a;	 Catch:{ all -> 0x0031 }
    L_0x0027:
        r0.clear();	 Catch:{ all -> 0x0031 }
    L_0x002a:
        if (r1 == 0) goto L_0x0030;
    L_0x002c:
        r1.startDispatchingItemsChanged();
        return;
    L_0x0030:
        return;
    L_0x0031:
        r0 = move-exception;
        if (r1 == 0) goto L_0x0037;
    L_0x0034:
        r1.startDispatchingItemsChanged();
    L_0x0037:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.ToolbarActionBar.populateOptionsMenu():void");
    }

    public final void setDefaultDisplayHomeAsUpEnabled(boolean z) {
    }

    public final void setHomeButtonEnabled(boolean z) {
    }

    public final void setShowHideAnimationEnabled(boolean z) {
    }

    ToolbarActionBar(Toolbar toolbar, CharSequence charSequence, Callback callback) {
        this.mDecorToolbar = new ToolbarWidgetWrapper(toolbar, false);
        this.mWindowCallback = new ToolbarCallbackWrapper(callback);
        this.mDecorToolbar.setWindowCallback(this.mWindowCallback);
        toolbar.setOnMenuItemClickListener(this.mMenuClicker);
        this.mDecorToolbar.setWindowTitle(charSequence);
    }

    public final void setElevation$133aeb() {
        ViewCompat.setElevation(this.mDecorToolbar.getViewGroup(), BitmapDescriptorFactory.HUE_RED);
    }

    public final Context getThemedContext() {
        return this.mDecorToolbar.getContext();
    }

    public final void setHomeAsUpIndicator(Drawable drawable) {
        this.mDecorToolbar.setNavigationIcon(drawable);
    }

    public final void setHomeActionContentDescription(int i) {
        this.mDecorToolbar.setNavigationContentDescription(i);
    }

    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public final void setTitle(CharSequence charSequence) {
        this.mDecorToolbar.setTitle(charSequence);
    }

    public final void setTitle(int i) {
        this.mDecorToolbar.setTitle(i != 0 ? this.mDecorToolbar.getContext().getText(i) : 0);
    }

    public final void setWindowTitle(CharSequence charSequence) {
        this.mDecorToolbar.setWindowTitle(charSequence);
    }

    public final void setBackgroundDrawable(Drawable drawable) {
        this.mDecorToolbar.setBackgroundDrawable(drawable);
    }

    public final int getDisplayOptions() {
        return this.mDecorToolbar.getDisplayOptions();
    }

    public final int getHeight() {
        return this.mDecorToolbar.getHeight();
    }

    public final boolean openOptionsMenu() {
        return this.mDecorToolbar.showOverflowMenu();
    }

    public final boolean closeOptionsMenu() {
        return this.mDecorToolbar.hideOverflowMenu();
    }

    public final boolean invalidateOptionsMenu() {
        this.mDecorToolbar.getViewGroup().removeCallbacks(this.mMenuInvalidator);
        ViewCompat.postOnAnimation(this.mDecorToolbar.getViewGroup(), this.mMenuInvalidator);
        return true;
    }

    public final boolean collapseActionView() {
        if (!this.mDecorToolbar.hasExpandedActionView()) {
            return false;
        }
        this.mDecorToolbar.collapseActionView();
        return true;
    }

    public final boolean onMenuKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            this.mDecorToolbar.showOverflowMenu();
        }
        return true;
    }

    public final boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        Menu menu = getMenu();
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

    final void onDestroy() {
        this.mDecorToolbar.getViewGroup().removeCallbacks(this.mMenuInvalidator);
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

    private Menu getMenu() {
        if (!this.mMenuCallbackSet) {
            this.mDecorToolbar.setMenuCallbacks(new ActionMenuPresenterCallback(), new MenuBuilderCallback());
            this.mMenuCallbackSet = true;
        }
        return this.mDecorToolbar.getMenu();
    }

    public final void setDisplayShowHomeEnabled$1385ff() {
        this.mDecorToolbar.setDisplayOptions((this.mDecorToolbar.getDisplayOptions() & -3) | 2);
    }

    public final void setDisplayHomeAsUpEnabled(boolean z) {
        this.mDecorToolbar.setDisplayOptions(((z ? true : false) & true) | (this.mDecorToolbar.getDisplayOptions() & -5));
    }
}
