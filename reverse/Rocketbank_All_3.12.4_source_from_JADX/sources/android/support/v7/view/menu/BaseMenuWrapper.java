package android.support.v7.view.menu;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.internal.view.SupportSubMenu;
import android.support.v4.util.ArrayMap;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;

abstract class BaseMenuWrapper<T> extends MenuWrapperFactory<T> {
    final Context mContext;
    private Map<SupportMenuItem, MenuItem> mMenuItems;
    private Map<SupportSubMenu, SubMenu> mSubMenus;

    BaseMenuWrapper(Context context, T t) {
        super(t);
        this.mContext = context;
    }

    final MenuItem getMenuItemWrapper(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        if (this.mMenuItems == null) {
            this.mMenuItems = new ArrayMap();
        }
        menuItem = (MenuItem) this.mMenuItems.get(menuItem);
        if (menuItem == null) {
            MenuItemWrapperJB menuItemWrapperJB;
            menuItem = this.mContext;
            if (VERSION.SDK_INT >= 16) {
                menuItemWrapperJB = new MenuItemWrapperJB(menuItem, supportMenuItem);
            } else {
                menuItemWrapperJB = new MenuItemWrapperICS(menuItem, supportMenuItem);
            }
            menuItem = menuItemWrapperJB;
            this.mMenuItems.put(supportMenuItem, menuItem);
        }
        return menuItem;
    }

    final SubMenu getSubMenuWrapper(SubMenu subMenu) {
        if (!(subMenu instanceof SupportSubMenu)) {
            return subMenu;
        }
        SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
        if (this.mSubMenus == null) {
            this.mSubMenus = new ArrayMap();
        }
        SubMenu subMenu2 = (SubMenu) this.mSubMenus.get(supportSubMenu);
        if (subMenu2 == null) {
            SubMenuWrapperICS subMenuWrapperICS = new SubMenuWrapperICS(this.mContext, supportSubMenu);
            this.mSubMenus.put(supportSubMenu, subMenuWrapperICS);
            subMenu2 = subMenuWrapperICS;
        }
        return subMenu2;
    }

    final void internalClear() {
        if (this.mMenuItems != null) {
            this.mMenuItems.clear();
        }
        if (this.mSubMenus != null) {
            this.mSubMenus.clear();
        }
    }

    final void internalRemoveGroup(int i) {
        if (this.mMenuItems != null) {
            Iterator it = this.mMenuItems.keySet().iterator();
            while (it.hasNext()) {
                if (i == ((MenuItem) it.next()).getGroupId()) {
                    it.remove();
                }
            }
        }
    }

    final void internalRemoveItem(int i) {
        if (this.mMenuItems != null) {
            Iterator it = this.mMenuItems.keySet().iterator();
            while (it.hasNext()) {
                if (i == ((MenuItem) it.next()).getItemId()) {
                    it.remove();
                    break;
                }
            }
        }
    }
}
