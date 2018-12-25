package com.jakewharton.rxbinding.view;

import android.view.MenuItem;

public abstract class MenuItemEvent<T extends MenuItem> {
    private final T menuItem;

    public final T menuItem() {
        return this.menuItem;
    }
}
