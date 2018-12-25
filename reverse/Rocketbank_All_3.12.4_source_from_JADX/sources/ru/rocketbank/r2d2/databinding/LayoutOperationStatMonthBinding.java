package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.operation.model.StatModel;

public class LayoutOperationStatMonthBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags = -1;
    private StatModel mStat;
    public final LinearLayout root;
    public final LinearLayout statisticsContainer;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.statisticsContainer, 1);
    }

    public LayoutOperationStatMonthBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 2, sIncludes, sViewsWithIds);
        this.root = (LinearLayout) dataBindingComponent[0];
        this.root.setTag(null);
        this.statisticsContainer = (LinearLayout) dataBindingComponent[1];
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
        if (74 != i) {
            return false;
        }
        setStat((StatModel) obj);
        return true;
    }

    public void setStat(StatModel statModel) {
        this.mStat = statModel;
    }

    public StatModel getStat() {
        return this.mStat;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static LayoutOperationStatMonthBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationStatMonthBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutOperationStatMonthBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_operation_stat_month, viewGroup, z, dataBindingComponent);
    }

    public static LayoutOperationStatMonthBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationStatMonthBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_operation_stat_month, null, false), dataBindingComponent);
    }

    public static LayoutOperationStatMonthBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationStatMonthBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_operation_stat_month_0".equals(view.getTag())) {
            return new LayoutOperationStatMonthBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
