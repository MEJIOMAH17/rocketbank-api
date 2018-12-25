package com.jakewharton.rxbinding.view;

import android.view.View;

public abstract class ViewEvent<T extends View> {
    private final T view;

    protected ViewEvent(T t) {
        this.view = t;
    }

    public final T view() {
        return this.view;
    }
}
