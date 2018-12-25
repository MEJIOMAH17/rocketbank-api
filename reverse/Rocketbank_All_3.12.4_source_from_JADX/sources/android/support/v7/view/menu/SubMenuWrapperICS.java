package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportSubMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

@RestrictTo
final class SubMenuWrapperICS extends MenuWrapperICS implements SubMenu {
    SubMenuWrapperICS(Context context, SupportSubMenu supportSubMenu) {
        super(context, supportSubMenu);
    }

    public final SubMenu setHeaderTitle(int i) {
        ((SupportSubMenu) this.mWrappedObject).setHeaderTitle(i);
        return this;
    }

    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        ((SupportSubMenu) this.mWrappedObject).setHeaderTitle(charSequence);
        return this;
    }

    public final SubMenu setHeaderIcon(int i) {
        ((SupportSubMenu) this.mWrappedObject).setHeaderIcon(i);
        return this;
    }

    public final SubMenu setHeaderIcon(Drawable drawable) {
        ((SupportSubMenu) this.mWrappedObject).setHeaderIcon(drawable);
        return this;
    }

    public final SubMenu setHeaderView(View view) {
        ((SupportSubMenu) this.mWrappedObject).setHeaderView(view);
        return this;
    }

    public final void clearHeader() {
        ((SupportSubMenu) this.mWrappedObject).clearHeader();
    }

    public final SubMenu setIcon(int i) {
        ((SupportSubMenu) this.mWrappedObject).setIcon(i);
        return this;
    }

    public final SubMenu setIcon(Drawable drawable) {
        ((SupportSubMenu) this.mWrappedObject).setIcon(drawable);
        return this;
    }

    public final MenuItem getItem() {
        return getMenuItemWrapper(((SupportSubMenu) this.mWrappedObject).getItem());
    }
}
