package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ru.rocketbank.r2d2.C0859R;

public class FragmentNewCardBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final AppBarLayout appBar;
    private long mDirtyFlags = -1;
    private final CoordinatorLayout mboundView0;
    public final TabLayout slidingTabs;
    public final Toolbar toolbar;
    public final ViewPager viewpager;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public boolean setVariable(int i, Object obj) {
        return true;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.app_bar, 1);
        sViewsWithIds.put(C0859R.id.toolbar, 2);
        sViewsWithIds.put(C0859R.id.sliding_tabs, 3);
        sViewsWithIds.put(C0859R.id.viewpager, 4);
    }

    public FragmentNewCardBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.appBar = (AppBarLayout) dataBindingComponent[1];
        this.mboundView0 = (CoordinatorLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.slidingTabs = (TabLayout) dataBindingComponent[3];
        this.toolbar = (Toolbar) dataBindingComponent[2];
        this.viewpager = (ViewPager) dataBindingComponent[4];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 1;
        }
        requestRebind();
    }

    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return false;
        }
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static FragmentNewCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentNewCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentNewCardBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_new_card, viewGroup, z, dataBindingComponent);
    }

    public static FragmentNewCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentNewCardBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_new_card, null, false), dataBindingComponent);
    }

    public static FragmentNewCardBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentNewCardBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_new_card_0".equals(view.getTag())) {
            return new FragmentNewCardBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
