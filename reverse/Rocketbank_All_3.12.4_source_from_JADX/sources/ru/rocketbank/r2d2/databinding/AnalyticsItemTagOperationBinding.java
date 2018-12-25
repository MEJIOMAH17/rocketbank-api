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
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemTagOperation;
import ru.rocketbank.r2d2.utils.BindingUtils;

public class AnalyticsItemTagOperationBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final ImageView imageViewItem;
    private long mDirtyFlags = -1;
    private AnalyticsItemTagOperation mItem;
    private final RelativeLayout mboundView0;
    public final RocketTextView textViewAmount;
    public final RocketTextView textViewDate;
    public final RocketTextView textViewItem;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public AnalyticsItemTagOperationBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.imageViewItem = (ImageView) dataBindingComponent[1];
        this.imageViewItem.setTag(null);
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textViewAmount = (RocketTextView) dataBindingComponent[2];
        this.textViewAmount.setTag(null);
        this.textViewDate = (RocketTextView) dataBindingComponent[3];
        this.textViewDate.setTag(null);
        this.textViewItem = (RocketTextView) dataBindingComponent[4];
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
        setItem((AnalyticsItemTagOperation) obj);
        return true;
    }

    public void setItem(AnalyticsItemTagOperation analyticsItemTagOperation) {
        this.mItem = analyticsItemTagOperation;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public AnalyticsItemTagOperation getItem() {
        return this.mItem;
    }

    protected void executeBindings() {
        long j;
        int color;
        CharSequence amount;
        CharSequence name;
        CharSequence quantityString;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        AnalyticsItemTagOperation analyticsItemTagOperation = this.mItem;
        long j2 = j & 3;
        if (j2 != 0) {
            int count;
            if (analyticsItemTagOperation != null) {
                count = analyticsItemTagOperation.getCount();
                color = analyticsItemTagOperation.getColor();
                amount = analyticsItemTagOperation.getAmount();
                name = analyticsItemTagOperation.getName();
            } else {
                name = null;
                amount = name;
                count = 0;
                color = count;
            }
            this.textViewDate.getResources().getQuantityString(C0859R.plurals.operations, count, new Object[]{Integer.valueOf(count)});
            quantityString = this.textViewDate.getResources().getQuantityString(C0859R.plurals.operations, count, new Object[]{Integer.valueOf(count)});
        } else {
            quantityString = null;
            name = quantityString;
            amount = name;
            color = 0;
        }
        if (j2 != 0) {
            BindingUtils.setImageViewTint(this.imageViewItem, color);
            TextViewBindingAdapter.setText(this.textViewAmount, amount);
            TextViewBindingAdapter.setText(this.textViewDate, quantityString);
            TextViewBindingAdapter.setText(this.textViewItem, name);
        }
    }

    public static AnalyticsItemTagOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemTagOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (AnalyticsItemTagOperationBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.analytics_item_tag_operation, viewGroup, z, dataBindingComponent);
    }

    public static AnalyticsItemTagOperationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemTagOperationBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.analytics_item_tag_operation, null, false), dataBindingComponent);
    }

    public static AnalyticsItemTagOperationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemTagOperationBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/analytics_item_tag_operation_0".equals(view.getTag())) {
            return new AnalyticsItemTagOperationBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
