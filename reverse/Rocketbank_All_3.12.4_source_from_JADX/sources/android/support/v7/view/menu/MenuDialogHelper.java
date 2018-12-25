package android.support.v7.view.menu;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.support.v4.view.PointerIconCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;

final class MenuDialogHelper implements OnClickListener, OnDismissListener, OnKeyListener, Callback {
    private AlertDialog mDialog;
    private MenuBuilder mMenu;
    ListMenuPresenter mPresenter;

    public final boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        return false;
    }

    public MenuDialogHelper(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    public final void show$1cbe96a4() {
        MenuBuilder menuBuilder = this.mMenu;
        Builder builder = new Builder(menuBuilder.getContext());
        this.mPresenter = new ListMenuPresenter(builder.getContext());
        this.mPresenter.setCallback(this);
        this.mMenu.addMenuPresenter(this.mPresenter);
        ListMenuPresenter listMenuPresenter = this.mPresenter;
        if (listMenuPresenter.mAdapter == null) {
            listMenuPresenter.mAdapter = new MenuAdapter();
        }
        builder.setAdapter(listMenuPresenter.mAdapter, this);
        View headerView = menuBuilder.getHeaderView();
        if (headerView != null) {
            builder.setCustomTitle(headerView);
        } else {
            builder.setIcon(menuBuilder.getHeaderIcon()).setTitle(menuBuilder.getHeaderTitle());
        }
        builder.setOnKeyListener(this);
        this.mDialog = builder.create();
        this.mDialog.setOnDismissListener(this);
        LayoutParams attributes = this.mDialog.getWindow().getAttributes();
        attributes.type = PointerIconCompat.TYPE_HELP;
        attributes.flags |= 131072;
        this.mDialog.show();
    }

    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                dialogInterface = this.mDialog.getWindow();
                if (dialogInterface != null) {
                    dialogInterface = dialogInterface.getDecorView();
                    if (dialogInterface != null) {
                        dialogInterface = dialogInterface.getKeyDispatcherState();
                        if (dialogInterface != null) {
                            dialogInterface.startTracking(keyEvent, this);
                            return true;
                        }
                    }
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
                Window window = this.mDialog.getWindow();
                if (window != null) {
                    View decorView = window.getDecorView();
                    if (decorView != null) {
                        DispatcherState keyDispatcherState = decorView.getKeyDispatcherState();
                        if (keyDispatcherState != null && keyDispatcherState.isTracking(keyEvent)) {
                            this.mMenu.close(true);
                            dialogInterface.dismiss();
                            return true;
                        }
                    }
                }
            }
        }
        return this.mMenu.performShortcut(i, keyEvent, 0);
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        this.mPresenter.onCloseMenu(this.mMenu, true);
    }

    public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if ((z || menuBuilder == this.mMenu) && this.mDialog != null) {
            this.mDialog.dismiss();
        }
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface = this.mMenu;
        ListMenuPresenter listMenuPresenter = this.mPresenter;
        if (listMenuPresenter.mAdapter == null) {
            listMenuPresenter.mAdapter = new MenuAdapter();
        }
        dialogInterface.performItemAction((MenuItemImpl) listMenuPresenter.mAdapter.getItem(i), 0);
    }
}
