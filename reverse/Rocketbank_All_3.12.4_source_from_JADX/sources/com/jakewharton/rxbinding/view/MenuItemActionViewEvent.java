package com.jakewharton.rxbinding.view;

import android.view.MenuItem;

public final class MenuItemActionViewEvent extends MenuItemEvent<MenuItem> {
    private final Kind kind;

    public enum Kind {
        EXPAND,
        COLLAPSE
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                MenuItemActionViewEvent menuItemActionViewEvent = (MenuItemActionViewEvent) obj;
                return menuItem().equals(menuItemActionViewEvent.menuItem()) && this.kind == menuItemActionViewEvent.kind;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (menuItem().hashCode() * 31) + this.kind.hashCode();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("MenuItemActionViewEvent{menuItem=");
        stringBuilder.append(menuItem());
        stringBuilder.append(", kind=");
        stringBuilder.append(this.kind);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
