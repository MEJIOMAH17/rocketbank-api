package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.support.design.widget.AppBarLayout;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;

public abstract class LayoutToolbarWithButtonBinding extends ViewDataBinding {
    protected ToolbarWithButtonHandler mHandler;
    protected ToolbarWithButtonData mToolbarBinding;
    public final AppBarLayout mainAppbar;
    public final RocketButton next;
    public final Toolbar toolbar;

    public abstract void setHandler(ToolbarWithButtonHandler toolbarWithButtonHandler);

    public abstract void setToolbarBinding(ToolbarWithButtonData toolbarWithButtonData);

    protected LayoutToolbarWithButtonBinding(DataBindingComponent dataBindingComponent, View view, int i, AppBarLayout appBarLayout, RocketButton rocketButton, Toolbar toolbar) {
        super(dataBindingComponent, view, i);
        this.mainAppbar = appBarLayout;
        this.next = rocketButton;
        this.toolbar = toolbar;
    }

    public ToolbarWithButtonData getToolbarBinding() {
        return this.mToolbarBinding;
    }

    public ToolbarWithButtonHandler getHandler() {
        return this.mHandler;
    }

    public static LayoutToolbarWithButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutToolbarWithButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutToolbarWithButtonBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutToolbarWithButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutToolbarWithButtonBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_toolbar_with_button, viewGroup, z, dataBindingComponent);
    }

    public static LayoutToolbarWithButtonBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return (LayoutToolbarWithButtonBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_toolbar_with_button, null, false, dataBindingComponent);
    }

    public static LayoutToolbarWithButtonBinding bind(View view, DataBindingComponent dataBindingComponent) {
        return (LayoutToolbarWithButtonBinding) bind(dataBindingComponent, view, C0859R.layout.layout_toolbar_with_button);
    }
}
