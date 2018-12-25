package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.NewSafeFragment;

public class FragmentNewSafeBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final AppBarLayout appBar;
    private NewSafeFragment mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    public final TabLayout slidingTabs;
    public final Toolbar toolbar;
    public final ViewPager viewpager;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.app_bar, 1);
        sViewsWithIds.put(C0859R.id.toolbar, 2);
        sViewsWithIds.put(C0859R.id.sliding_tabs, 3);
        sViewsWithIds.put(C0859R.id.viewpager, 4);
    }

    public FragmentNewSafeBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.appBar = (AppBarLayout) dataBindingComponent[1];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.slidingTabs = (TabLayout) dataBindingComponent[3];
        this.toolbar = (Toolbar) dataBindingComponent[2];
        this.viewpager = (ViewPager) dataBindingComponent[4];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 2;
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

    public boolean setVariable(int i, Object obj) {
        if (24 != i) {
            return false;
        }
        setData((NewSafeFragment) obj);
        return true;
    }

    public void setData(NewSafeFragment newSafeFragment) {
        this.mData = newSafeFragment;
    }

    public NewSafeFragment getData() {
        return this.mData;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static FragmentNewSafeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentNewSafeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentNewSafeBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_new_safe, viewGroup, z, dataBindingComponent);
    }

    public static FragmentNewSafeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentNewSafeBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_new_safe, null, false), dataBindingComponent);
    }

    public static FragmentNewSafeBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentNewSafeBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_new_safe_0".equals(view.getTag())) {
            return new FragmentNewSafeBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
