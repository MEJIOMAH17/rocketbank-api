package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

public class ActivityOperationModernTagReceiptBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketAutofitTextView amount;
    public final FrameLayout appBar;
    public final View cardOverlay;
    public final FrameLayout header;
    public final View headerOverlay;
    public final TextureView headerView;
    public final RocketTextView inThisMonth;
    private long mDirtyFlags = -1;
    private final FrameLayout mboundView0;
    public final ObservableRecyclerView operation;
    public final View overlay;
    public final RocketTextView realToolbarTitle;
    public final SwipeRefreshLayout swipeRefresh;
    public final Toolbar toolbar;
    public final Toolbar toolbarReal;
    public final FrameLayout toolbarWrapper;

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
        sViewsWithIds.put(C0859R.id.header, 2);
        sViewsWithIds.put(C0859R.id.headerView, 3);
        sViewsWithIds.put(C0859R.id.overlay, 4);
        sViewsWithIds.put(C0859R.id.in_this_month, 5);
        sViewsWithIds.put(C0859R.id.amount, 6);
        sViewsWithIds.put(C0859R.id.toolbar, 7);
        sViewsWithIds.put(C0859R.id.header_overlay, 8);
        sViewsWithIds.put(C0859R.id.card_overlay, 9);
        sViewsWithIds.put(C0859R.id.swipeRefresh, 10);
        sViewsWithIds.put(C0859R.id.operation, 11);
        sViewsWithIds.put(C0859R.id.toolbarWrapper, 12);
        sViewsWithIds.put(C0859R.id.toolbarReal, 13);
        sViewsWithIds.put(C0859R.id.real_toolbar_title, 14);
    }

    public ActivityOperationModernTagReceiptBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 15, sIncludes, sViewsWithIds);
        this.amount = (RocketAutofitTextView) dataBindingComponent[6];
        this.appBar = (FrameLayout) dataBindingComponent[1];
        this.cardOverlay = (View) dataBindingComponent[9];
        this.header = (FrameLayout) dataBindingComponent[2];
        this.headerOverlay = (View) dataBindingComponent[8];
        this.headerView = (TextureView) dataBindingComponent[3];
        this.inThisMonth = (RocketTextView) dataBindingComponent[5];
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.operation = (ObservableRecyclerView) dataBindingComponent[11];
        this.overlay = (View) dataBindingComponent[4];
        this.realToolbarTitle = (RocketTextView) dataBindingComponent[14];
        this.swipeRefresh = (SwipeRefreshLayout) dataBindingComponent[10];
        this.toolbar = (Toolbar) dataBindingComponent[7];
        this.toolbarReal = (Toolbar) dataBindingComponent[13];
        this.toolbarWrapper = (FrameLayout) dataBindingComponent[12];
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

    public static ActivityOperationModernTagReceiptBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityOperationModernTagReceiptBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityOperationModernTagReceiptBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_operation_modern_tag_receipt, viewGroup, z, dataBindingComponent);
    }

    public static ActivityOperationModernTagReceiptBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityOperationModernTagReceiptBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_operation_modern_tag_receipt, null, false), dataBindingComponent);
    }

    public static ActivityOperationModernTagReceiptBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityOperationModernTagReceiptBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_operation_modern_tag_receipt_0".equals(view.getTag())) {
            return new ActivityOperationModernTagReceiptBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
