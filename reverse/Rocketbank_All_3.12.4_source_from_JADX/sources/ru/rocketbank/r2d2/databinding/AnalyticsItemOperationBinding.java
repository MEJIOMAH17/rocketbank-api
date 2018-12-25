package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemOperation;

public class AnalyticsItemOperationBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView arrow;
    public final RocketTextView imageViewItem;
    private long mDirtyFlags = -1;
    private AnalyticsItemOperation mItem;
    private final RelativeLayout mboundView0;
    public final RocketTextView textViewAmount;
    public final RocketTextView textViewItem;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.arrow, 4);
    }

    public AnalyticsItemOperationBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.arrow = (ImageView) dataBindingComponent[4];
        this.imageViewItem = (RocketTextView) dataBindingComponent[1];
        this.imageViewItem.setTag(null);
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textViewAmount = (RocketTextView) dataBindingComponent[3];
        this.textViewAmount.setTag(null);
        this.textViewItem = (RocketTextView) dataBindingComponent[2];
        this.textViewItem.setTag(null);
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
        if (49 != i) {
            return false;
        }
        setItem((AnalyticsItemOperation) obj);
        return true;
    }

    public void setItem(AnalyticsItemOperation analyticsItemOperation) {
        this.mItem = analyticsItemOperation;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public AnalyticsItemOperation getItem() {
        return this.mItem;
    }

    protected void executeBindings() {
        long j;
        AnalyticsItemOperationBinding analyticsItemOperationBinding = this;
        synchronized (this) {
            try {
                j = analyticsItemOperationBinding.mDirtyFlags;
                long j2 = 0;
                analyticsItemOperationBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        AnalyticsItemOperation analyticsItemOperation = analyticsItemOperationBinding.mItem;
        long j3 = 3;
        long j4 = j & 3;
        CharSequence charSequence = null;
        int i = 0;
        CharSequence text;
        CharSequence amount;
        int i2;
        if (j4 != 0) {
            String icon;
            int i3;
            if (analyticsItemOperation != null) {
                text = analyticsItemOperation.getText();
                int color = analyticsItemOperation.getColor();
                amount = analyticsItemOperation.getAmount();
                icon = analyticsItemOperation.getIcon();
                i3 = color;
                charSequence = icon;
            } else {
                text = null;
                amount = text;
                icon = null;
            }
            int i4 = charSequence == null ? 1 : i;
            if (j4 != j2) {
                j = i4 != 0 ? j | 8 : j | 4;
            }
            if (i4 != 0) {
                i = 8;
            }
            i3 = i;
            i = icon;
            i2 = i3;
            if ((j & j3) != j2) {
                TextViewBindingAdapter.setText(analyticsItemOperationBinding.imageViewItem, charSequence);
                analyticsItemOperationBinding.imageViewItem.setTextColor(i);
                analyticsItemOperationBinding.imageViewItem.setVisibility(i2);
                TextViewBindingAdapter.setText(analyticsItemOperationBinding.textViewAmount, amount);
                TextViewBindingAdapter.setText(analyticsItemOperationBinding.textViewItem, text);
            }
        }
        text = null;
        amount = text;
        i2 = 0;
        if ((j & j3) != j2) {
            TextViewBindingAdapter.setText(analyticsItemOperationBinding.imageViewItem, charSequence);
            analyticsItemOperationBinding.imageViewItem.setTextColor(i);
            analyticsItemOperationBinding.imageViewItem.setVisibility(i2);
            TextViewBindingAdapter.setText(analyticsItemOperationBinding.textViewAmount, amount);
            TextViewBindingAdapter.setText(analyticsItemOperationBinding.textViewItem, text);
        }
    }

    public static AnalyticsItemOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (AnalyticsItemOperationBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.analytics_item_operation, viewGroup, z, dataBindingComponent);
    }

    public static AnalyticsItemOperationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemOperationBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.analytics_item_operation, null, false), dataBindingComponent);
    }

    public static AnalyticsItemOperationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemOperationBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/analytics_item_operation_0".equals(view.getTag())) {
            return new AnalyticsItemOperationBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
