package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.widget.RecyclerView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.FabHandler;

public class FriendsFragmentBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView cat;
    public final FloatingActionButton fab;
    private long mDirtyFlags = -1;
    private FabHandler mHandler;
    private OnClickListenerImpl mHandlerOnFabClickedAndroidViewViewOnClickListener;
    private final CoordinatorLayout mboundView0;
    private final LinearLayout mboundView1;
    public final FrameLayout nothingFound;
    public final RocketTextView nothingFoundText;
    public final ProgressBar progressBar;
    public final RecyclerView recyclerView;
    public final IncludeToolbarBinding toolbarInclude;

    public static class OnClickListenerImpl implements OnClickListener {
        private FabHandler value;

        public OnClickListenerImpl setValue(FabHandler fabHandler) {
            this.value = fabHandler;
            return fabHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onFabClicked(view);
        }
    }

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(9);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"include_toolbar"}, new int[]{3}, new int[]{C0859R.layout.include_toolbar});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.progressBar, 4);
        sViewsWithIds.put(C0859R.id.recyclerView, 5);
        sViewsWithIds.put(C0859R.id.nothingFound, 6);
        sViewsWithIds.put(C0859R.id.cat, 7);
        sViewsWithIds.put(C0859R.id.nothingFoundText, 8);
    }

    public FriendsFragmentBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds);
        this.cat = (ImageView) dataBindingComponent[7];
        this.fab = (FloatingActionButton) dataBindingComponent[2];
        this.fab.setTag(null);
        this.mboundView0 = (CoordinatorLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (LinearLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.nothingFound = (FrameLayout) dataBindingComponent[6];
        this.nothingFoundText = (RocketTextView) dataBindingComponent[8];
        this.progressBar = (ProgressBar) dataBindingComponent[4];
        this.recyclerView = (RecyclerView) dataBindingComponent[5];
        this.toolbarInclude = (IncludeToolbarBinding) dataBindingComponent[3];
        setContainedBinding(this.toolbarInclude);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4;
        }
        this.toolbarInclude.invalidateAll();
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
        r1 = r5.toolbarInclude;
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
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.FriendsFragmentBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (40 != i) {
            return false;
        }
        setHandler((FabHandler) obj);
        return true;
    }

    public void setHandler(FabHandler fabHandler) {
        this.mHandler = fabHandler;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public FabHandler getHandler() {
        return this.mHandler;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.toolbarInclude.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeToolbarInclude((IncludeToolbarBinding) obj, i2);
    }

    private boolean onChangeToolbarInclude(IncludeToolbarBinding includeToolbarBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        OnClickListener onClickListener = null;
        FabHandler fabHandler = this.mHandler;
        long j2 = j & 6;
        if (!(j2 == 0 || fabHandler == null)) {
            OnClickListenerImpl onClickListenerImpl;
            if (this.mHandlerOnFabClickedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                this.mHandlerOnFabClickedAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = this.mHandlerOnFabClickedAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl.setValue(fabHandler);
        }
        if (j2 != 0) {
            this.fab.setOnClickListener(onClickListener);
        }
        executeBindingsOn(this.toolbarInclude);
    }

    public static FriendsFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FriendsFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FriendsFragmentBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.friends_fragment, viewGroup, z, dataBindingComponent);
    }

    public static FriendsFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FriendsFragmentBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.friends_fragment, null, false), dataBindingComponent);
    }

    public static FriendsFragmentBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FriendsFragmentBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/friends_fragment_0".equals(view.getTag())) {
            return new FriendsFragmentBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
