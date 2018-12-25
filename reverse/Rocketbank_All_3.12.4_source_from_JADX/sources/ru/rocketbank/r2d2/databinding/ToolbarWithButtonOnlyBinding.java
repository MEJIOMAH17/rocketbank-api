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
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonOnlyData;

public abstract class ToolbarWithButtonOnlyBinding extends ViewDataBinding {
    protected ToolbarWithButtonHandler mHandler;
    protected ToolbarWithButtonOnlyData mToolbarBinding;
    public final AppBarLayout mainAppbar;
    public final RocketButton next;
    public final Toolbar toolbar;

    public abstract void setHandler(ToolbarWithButtonHandler toolbarWithButtonHandler);

    public abstract void setToolbarBinding(ToolbarWithButtonOnlyData toolbarWithButtonOnlyData);

    protected ToolbarWithButtonOnlyBinding(DataBindingComponent dataBindingComponent, View view, int i, AppBarLayout appBarLayout, RocketButton rocketButton, Toolbar toolbar) {
        super(dataBindingComponent, view, i);
        this.mainAppbar = appBarLayout;
        this.next = rocketButton;
        this.toolbar = toolbar;
    }

    public ToolbarWithButtonOnlyData getToolbarBinding() {
        return this.mToolbarBinding;
    }

    public ToolbarWithButtonHandler getHandler() {
        return this.mHandler;
    }

    public static ToolbarWithButtonOnlyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ToolbarWithButtonOnlyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ToolbarWithButtonOnlyBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ToolbarWithButtonOnlyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ToolbarWithButtonOnlyBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.toolbar_with_button_only, viewGroup, z, dataBindingComponent);
    }

    public static ToolbarWithButtonOnlyBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return (ToolbarWithButtonOnlyBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.toolbar_with_button_only, null, false, dataBindingComponent);
    }

    public static ToolbarWithButtonOnlyBinding bind(View view, DataBindingComponent dataBindingComponent) {
        return (ToolbarWithButtonOnlyBinding) bind(dataBindingComponent, view, C0859R.layout.toolbar_with_button_only);
    }
}
