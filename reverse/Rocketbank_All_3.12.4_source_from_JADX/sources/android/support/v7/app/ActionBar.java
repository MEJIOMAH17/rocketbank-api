package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.C0219R;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode.Callback;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;

public abstract class ActionBar {

    public static class LayoutParams extends MarginLayoutParams {
        public int gravity;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            context = context.obtainStyledAttributes(attributeSet, C0219R.styleable.ActionBarLayout);
            this.gravity = context.getInt(C0219R.styleable.ActionBarLayout_android_layout_gravity, 0);
            context.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = 0;
            this.gravity = 8388627;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.gravity = 0;
            this.gravity = i3;
        }

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = null;
        }
    }

    @Deprecated
    public static abstract class Tab {
        public abstract CharSequence getContentDescription();

        public abstract View getCustomView();

        public abstract Drawable getIcon();

        public abstract CharSequence getText();
    }

    @RestrictTo
    public boolean closeOptionsMenu() {
        return false;
    }

    @RestrictTo
    public boolean collapseActionView() {
        return false;
    }

    @RestrictTo
    public void dispatchMenuVisibilityChanged(boolean z) {
    }

    public abstract int getDisplayOptions();

    public abstract int getHeight();

    public Context getThemedContext() {
        return null;
    }

    @RestrictTo
    public boolean invalidateOptionsMenu() {
        return false;
    }

    @RestrictTo
    public void onConfigurationChanged(Configuration configuration) {
    }

    void onDestroy() {
    }

    @RestrictTo
    public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        return false;
    }

    @RestrictTo
    public boolean onMenuKeyEvent(KeyEvent keyEvent) {
        return false;
    }

    @RestrictTo
    public boolean openOptionsMenu() {
        return false;
    }

    public abstract void setBackgroundDrawable(Drawable drawable);

    @RestrictTo
    public void setDefaultDisplayHomeAsUpEnabled(boolean z) {
    }

    public abstract void setDisplayHomeAsUpEnabled(boolean z);

    public abstract void setDisplayShowHomeEnabled$1385ff();

    public void setElevation$133aeb() {
    }

    public void setHomeActionContentDescription(int i) {
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
    }

    public void setHomeButtonEnabled(boolean z) {
    }

    @RestrictTo
    public void setShowHideAnimationEnabled(boolean z) {
    }

    public abstract void setTitle(int i);

    public abstract void setTitle(CharSequence charSequence);

    @RestrictTo
    public void setWindowTitle(CharSequence charSequence) {
    }

    @RestrictTo
    public ActionMode startActionMode(Callback callback) {
        return null;
    }

    public void setHideOnContentScrollEnabled$1385ff() {
        throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
    }
}
