package android.support.v7.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.graphics.drawable.TintAwareDrawable;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

@RestrictTo
public final class ActionMenuItem implements SupportMenuItem {
    private final int mCategoryOrder;
    private OnMenuItemClickListener mClickListener;
    private CharSequence mContentDescription;
    private Context mContext;
    private int mFlags = 16;
    private final int mGroup;
    private boolean mHasIconTint = false;
    private boolean mHasIconTintMode = false;
    private Drawable mIconDrawable;
    private int mIconResId = 0;
    private ColorStateList mIconTintList = null;
    private Mode mIconTintMode = null;
    private final int mId;
    private Intent mIntent;
    private final int mOrdering;
    private char mShortcutAlphabeticChar;
    private int mShortcutAlphabeticModifiers = 4096;
    private char mShortcutNumericChar;
    private int mShortcutNumericModifiers = 4096;
    private CharSequence mTitle;
    private CharSequence mTitleCondensed;
    private CharSequence mTooltipText;

    public final boolean collapseActionView() {
        return false;
    }

    public final boolean expandActionView() {
        return false;
    }

    public final View getActionView() {
        return null;
    }

    public final int getGroupId() {
        return 0;
    }

    public final int getItemId() {
        return 16908332;
    }

    public final ContextMenuInfo getMenuInfo() {
        return null;
    }

    public final int getOrder() {
        return 0;
    }

    public final SubMenu getSubMenu() {
        return null;
    }

    public final ActionProvider getSupportActionProvider() {
        return null;
    }

    public final boolean hasSubMenu() {
        return false;
    }

    public final boolean isActionViewExpanded() {
        return false;
    }

    public final void setShowAsAction(int i) {
    }

    public ActionMenuItem(Context context, CharSequence charSequence) {
        this.mContext = context;
        this.mId = 16908332;
        this.mGroup = 0;
        this.mCategoryOrder = 0;
        this.mOrdering = 0;
        this.mTitle = charSequence;
    }

    public final char getAlphabeticShortcut() {
        return this.mShortcutAlphabeticChar;
    }

    public final int getAlphabeticModifiers() {
        return this.mShortcutAlphabeticModifiers;
    }

    public final Drawable getIcon() {
        return this.mIconDrawable;
    }

    public final Intent getIntent() {
        return this.mIntent;
    }

    public final char getNumericShortcut() {
        return this.mShortcutNumericChar;
    }

    public final int getNumericModifiers() {
        return this.mShortcutNumericModifiers;
    }

    public final CharSequence getTitle() {
        return this.mTitle;
    }

    public final CharSequence getTitleCondensed() {
        return this.mTitleCondensed != null ? this.mTitleCondensed : this.mTitle;
    }

    public final boolean isCheckable() {
        return (this.mFlags & 1) != 0;
    }

    public final boolean isChecked() {
        return (this.mFlags & 2) != 0;
    }

    public final boolean isEnabled() {
        return (this.mFlags & 16) != 0;
    }

    public final boolean isVisible() {
        return (this.mFlags & 8) == 0;
    }

    public final MenuItem setAlphabeticShortcut(char c) {
        this.mShortcutAlphabeticChar = Character.toLowerCase(c);
        return this;
    }

    public final MenuItem setAlphabeticShortcut(char c, int i) {
        this.mShortcutAlphabeticChar = Character.toLowerCase(c);
        this.mShortcutAlphabeticModifiers = KeyEvent.normalizeMetaState(i);
        return this;
    }

    public final MenuItem setCheckable(boolean z) {
        this.mFlags = z | (this.mFlags & -2);
        return this;
    }

    public final MenuItem setChecked(boolean z) {
        this.mFlags = (z ? true : false) | (this.mFlags & -3);
        return this;
    }

    public final MenuItem setEnabled(boolean z) {
        this.mFlags = (z ? true : false) | (this.mFlags & -17);
        return this;
    }

    public final MenuItem setIcon(Drawable drawable) {
        this.mIconDrawable = drawable;
        this.mIconResId = null;
        applyIconTint();
        return this;
    }

    public final MenuItem setIcon(int i) {
        this.mIconResId = i;
        this.mIconDrawable = ContextCompat.getDrawable(this.mContext, i);
        applyIconTint();
        return this;
    }

    public final MenuItem setIntent(Intent intent) {
        this.mIntent = intent;
        return this;
    }

    public final MenuItem setNumericShortcut(char c) {
        this.mShortcutNumericChar = c;
        return this;
    }

    public final MenuItem setNumericShortcut(char c, int i) {
        this.mShortcutNumericChar = c;
        this.mShortcutNumericModifiers = KeyEvent.normalizeMetaState(i);
        return this;
    }

    public final MenuItem setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mClickListener = onMenuItemClickListener;
        return this;
    }

    public final MenuItem setShortcut(char c, char c2) {
        this.mShortcutNumericChar = c;
        this.mShortcutAlphabeticChar = Character.toLowerCase(c2);
        return this;
    }

    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.mShortcutNumericChar = c;
        this.mShortcutNumericModifiers = KeyEvent.normalizeMetaState(i);
        this.mShortcutAlphabeticChar = Character.toLowerCase(c2);
        this.mShortcutAlphabeticModifiers = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    public final MenuItem setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        return this;
    }

    public final MenuItem setTitle(int i) {
        this.mTitle = this.mContext.getResources().getString(i);
        return this;
    }

    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.mTitleCondensed = charSequence;
        return this;
    }

    public final MenuItem setVisible(boolean z) {
        int i = 8;
        int i2 = this.mFlags & 8;
        if (z) {
            i = 0;
        }
        this.mFlags = i2 | i;
        return this;
    }

    public final MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    public final android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    public final SupportMenuItem setSupportActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    public final MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    public final SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.mContentDescription = charSequence;
        return this;
    }

    public final CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    public final SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.mTooltipText = charSequence;
        return this;
    }

    public final CharSequence getTooltipText() {
        return this.mTooltipText;
    }

    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.mIconTintList = colorStateList;
        this.mHasIconTint = true;
        applyIconTint();
        return this;
    }

    public final ColorStateList getIconTintList() {
        return this.mIconTintList;
    }

    public final MenuItem setIconTintMode(Mode mode) {
        this.mIconTintMode = mode;
        this.mHasIconTintMode = true;
        applyIconTint();
        return this;
    }

    public final Mode getIconTintMode() {
        return this.mIconTintMode;
    }

    private void applyIconTint() {
        if (this.mIconDrawable != null && (this.mHasIconTint || this.mHasIconTintMode)) {
            Drawable drawable;
            this.mIconDrawable = DrawableCompat.wrap(this.mIconDrawable);
            this.mIconDrawable = this.mIconDrawable.mutate();
            if (this.mHasIconTint) {
                drawable = this.mIconDrawable;
                ColorStateList colorStateList = this.mIconTintList;
                if (VERSION.SDK_INT >= 21) {
                    drawable.setTintList(colorStateList);
                } else if (drawable instanceof TintAwareDrawable) {
                    ((TintAwareDrawable) drawable).setTintList(colorStateList);
                }
            }
            if (this.mHasIconTintMode) {
                drawable = this.mIconDrawable;
                Mode mode = this.mIconTintMode;
                if (VERSION.SDK_INT >= 21) {
                    drawable.setTintMode(mode);
                } else if (drawable instanceof TintAwareDrawable) {
                    ((TintAwareDrawable) drawable).setTintMode(mode);
                }
            }
        }
    }

    public final /* bridge */ /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }
}
