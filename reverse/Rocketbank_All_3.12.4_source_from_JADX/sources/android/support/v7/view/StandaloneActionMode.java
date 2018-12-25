package android.support.v7.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

@RestrictTo
public final class StandaloneActionMode extends ActionMode implements Callback {
    private ActionMode.Callback mCallback;
    private Context mContext;
    private ActionBarContextView mContextView;
    private WeakReference<View> mCustomView;
    private boolean mFinished;
    private boolean mFocusable;
    private MenuBuilder mMenu;

    public StandaloneActionMode(Context context, ActionBarContextView actionBarContextView, ActionMode.Callback callback, boolean z) {
        this.mContext = context;
        this.mContextView = actionBarContextView;
        this.mCallback = callback;
        this.mMenu = new MenuBuilder(actionBarContextView.getContext()).setDefaultShowAsAction(1);
        this.mMenu.setCallback(this);
        this.mFocusable = z;
    }

    public final void setTitle(CharSequence charSequence) {
        this.mContextView.setTitle(charSequence);
    }

    public final void setSubtitle(CharSequence charSequence) {
        this.mContextView.setSubtitle(charSequence);
    }

    public final void setTitle(int i) {
        this.mContextView.setTitle(this.mContext.getString(i));
    }

    public final void setSubtitle(int i) {
        this.mContextView.setSubtitle(this.mContext.getString(i));
    }

    public final void setTitleOptionalHint(boolean z) {
        super.setTitleOptionalHint(z);
        this.mContextView.setTitleOptional(z);
    }

    public final boolean isTitleOptional() {
        return this.mContextView.isTitleOptional();
    }

    public final void setCustomView(View view) {
        this.mContextView.setCustomView(view);
        this.mCustomView = view != null ? new WeakReference(view) : null;
    }

    public final void invalidate() {
        this.mCallback.onPrepareActionMode(this, this.mMenu);
    }

    public final void finish() {
        if (!this.mFinished) {
            this.mFinished = true;
            this.mContextView.sendAccessibilityEvent(32);
            this.mCallback.onDestroyActionMode(this);
        }
    }

    public final Menu getMenu() {
        return this.mMenu;
    }

    public final CharSequence getTitle() {
        return this.mContextView.getTitle();
    }

    public final CharSequence getSubtitle() {
        return this.mContextView.getSubtitle();
    }

    public final View getCustomView() {
        return this.mCustomView != null ? (View) this.mCustomView.get() : null;
    }

    public final MenuInflater getMenuInflater() {
        return new SupportMenuInflater(this.mContextView.getContext());
    }

    public final boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.mCallback.onActionItemClicked(this, menuItem);
    }

    public final void onMenuModeChange(MenuBuilder menuBuilder) {
        this.mCallback.onPrepareActionMode(this, this.mMenu);
        this.mContextView.showOverflowMenu();
    }
}
