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
import android.widget.RelativeLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.operation.model.TotalItem;

public class LayoutStatisticsTotalItemBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView amount;
    public final RocketTextView forMonth;
    private long mDirtyFlags = -1;
    private TotalItem mItem;
    private final RelativeLayout mboundView0;
    public final RocketTextView rocketrouble;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.forMonth, 3);
    }

    public LayoutStatisticsTotalItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.amount = (RocketTextView) dataBindingComponent[2];
        this.amount.setTag(null);
        this.forMonth = (RocketTextView) dataBindingComponent[3];
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.rocketrouble = (RocketTextView) dataBindingComponent[1];
        this.rocketrouble.setTag(null);
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
        setItem((TotalItem) obj);
        return true;
    }

    public void setItem(TotalItem totalItem) {
        this.mItem = totalItem;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public TotalItem getItem() {
        return this.mItem;
    }

    protected void executeBindings() {
        long j;
        CharSequence charSequence;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        TotalItem totalItem = this.mItem;
        long j2 = j & 3;
        CharSequence charSequence2 = null;
        if (j2 == 0 || totalItem == null) {
            charSequence = null;
        } else {
            charSequence2 = totalItem.getRocketRouble();
            charSequence = totalItem.getAmount();
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.amount, charSequence);
            TextViewBindingAdapter.setText(this.rocketrouble, charSequence2);
        }
    }

    public static LayoutStatisticsTotalItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutStatisticsTotalItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutStatisticsTotalItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_statistics_total_item, viewGroup, z, dataBindingComponent);
    }

    public static LayoutStatisticsTotalItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutStatisticsTotalItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_statistics_total_item, null, false), dataBindingComponent);
    }

    public static LayoutStatisticsTotalItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutStatisticsTotalItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_statistics_total_item_0".equals(view.getTag())) {
            return new LayoutStatisticsTotalItemBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
