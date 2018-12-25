package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.r2d2.C0859R;

public class FragmentDiscountsBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags = -1;
    private final CoordinatorLayout mboundView0;
    private final LinearLayout mboundView1;
    public final RecyclerView recyclerView;
    public final SwipeRefreshLayout swipeRefresh;
    public final IncludeToolbarBinding toolbar;

    public boolean setVariable(int i, Object obj) {
        return true;
    }

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(5);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"include_toolbar"}, new int[]{2}, new int[]{C0859R.layout.include_toolbar});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.swipe_refresh, 3);
        sViewsWithIds.put(C0859R.id.recyclerView, 4);
    }

    public FragmentDiscountsBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.mboundView0 = (CoordinatorLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (LinearLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.recyclerView = (RecyclerView) dataBindingComponent[4];
        this.swipeRefresh = (SwipeRefreshLayout) dataBindingComponent[3];
        this.toolbar = (IncludeToolbarBinding) dataBindingComponent[2];
        setContainedBinding(this.toolbar);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 2;
        }
        this.toolbar.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x0018 }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        r1 = r5.toolbar;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r0 = 0;
        return r0;
    L_0x0018:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.FragmentDiscountsBinding.hasPendingBindings():boolean");
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.toolbar.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeToolbar((IncludeToolbarBinding) obj, i2);
    }

    private boolean onChangeToolbar(IncludeToolbarBinding includeToolbarBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
        executeBindingsOn(this.toolbar);
    }

    public static FragmentDiscountsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDiscountsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentDiscountsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_discounts, viewGroup, z, dataBindingComponent);
    }

    public static FragmentDiscountsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDiscountsBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_discounts, null, false), dataBindingComponent);
    }

    public static FragmentDiscountsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDiscountsBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_discounts_0".equals(view.getTag())) {
            return new FragmentDiscountsBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
