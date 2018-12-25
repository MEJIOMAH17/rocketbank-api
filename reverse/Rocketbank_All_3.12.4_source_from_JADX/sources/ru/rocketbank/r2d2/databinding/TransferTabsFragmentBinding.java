package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.v4.view.ViewPager;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.r2d2.C0859R;

public class TransferTabsFragmentBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final IncludeTabBinding includeTab;
    public final LayoutToolbarWithButtonBinding includeToolbar;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    public final ViewPager pager;

    public boolean setVariable(int i, Object obj) {
        return true;
    }

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(4);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"layout_toolbar_with_button", "include_tab"}, new int[]{1, 2}, new int[]{C0859R.layout.layout_toolbar_with_button, C0859R.layout.include_tab});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.pager, 3);
    }

    public TransferTabsFragmentBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.includeTab = (IncludeTabBinding) dataBindingComponent[2];
        setContainedBinding(this.includeTab);
        this.includeToolbar = (LayoutToolbarWithButtonBinding) dataBindingComponent[1];
        setContainedBinding(this.includeToolbar);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.pager = (ViewPager) dataBindingComponent[3];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4;
        }
        this.includeToolbar.invalidateAll();
        this.includeTab.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x0021 }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x0021 }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x0021 }
        r1 = r5.includeToolbar;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r1 = r5.includeTab;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x001f;
    L_0x001e:
        return r0;
    L_0x001f:
        r0 = 0;
        return r0;
    L_0x0021:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0021 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.TransferTabsFragmentBinding.hasPendingBindings():boolean");
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.includeToolbar.setLifecycleOwner(lifecycleOwner);
        this.includeTab.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeIncludeToolbar((LayoutToolbarWithButtonBinding) obj, i2);
            case 1:
                return onChangeIncludeTab((IncludeTabBinding) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeIncludeToolbar(LayoutToolbarWithButtonBinding layoutToolbarWithButtonBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeIncludeTab(IncludeTabBinding includeTabBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
        executeBindingsOn(this.includeToolbar);
        executeBindingsOn(this.includeTab);
    }

    public static TransferTabsFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static TransferTabsFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (TransferTabsFragmentBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.transfer_tabs_fragment, viewGroup, z, dataBindingComponent);
    }

    public static TransferTabsFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static TransferTabsFragmentBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.transfer_tabs_fragment, null, false), dataBindingComponent);
    }

    public static TransferTabsFragmentBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static TransferTabsFragmentBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/transfer_tabs_fragment_0".equals(view.getTag())) {
            return new TransferTabsFragmentBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
