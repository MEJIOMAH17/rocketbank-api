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
import ru.rocketbank.r2d2.activities.operation.model.StatItem;

public class LayoutStatisticsItemBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView amount;
    public final RocketTextView forMonth;
    private long mDirtyFlags = -1;
    private StatItem mItem;
    public final RocketTextView rocketrouble;
    public final RelativeLayout root;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.rocketrouble, 3);
    }

    public LayoutStatisticsItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.amount = (RocketTextView) dataBindingComponent[2];
        this.amount.setTag(null);
        this.forMonth = (RocketTextView) dataBindingComponent[1];
        this.forMonth.setTag(null);
        this.rocketrouble = (RocketTextView) dataBindingComponent[3];
        this.root = (RelativeLayout) dataBindingComponent[0];
        this.root.setTag(null);
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
        setItem((StatItem) obj);
        return true;
    }

    public void setItem(StatItem statItem) {
        this.mItem = statItem;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public StatItem getItem() {
        return this.mItem;
    }

    protected void executeBindings() {
        long j;
        CharSequence charSequence;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        StatItem statItem = this.mItem;
        long j2 = j & 3;
        CharSequence charSequence2 = null;
        if (j2 == 0 || statItem == null) {
            charSequence = null;
        } else {
            charSequence2 = statItem.getMonth();
            charSequence = statItem.getAmount();
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.amount, charSequence);
            TextViewBindingAdapter.setText(this.forMonth, charSequence2);
        }
    }

    public static LayoutStatisticsItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutStatisticsItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutStatisticsItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_statistics_item, viewGroup, z, dataBindingComponent);
    }

    public static LayoutStatisticsItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutStatisticsItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_statistics_item, null, false), dataBindingComponent);
    }

    public static LayoutStatisticsItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutStatisticsItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_statistics_item_0".equals(view.getTag())) {
            return new LayoutStatisticsItemBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
