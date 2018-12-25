package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.analytics.BigChart;

public class AnalyticsItemChartBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final BigChart chart;
    private long mDirtyFlags = -1;
    private Integer mI;
    private final RelativeLayout mboundView0;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.chart, 1);
    }

    public AnalyticsItemChartBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 2, sIncludes, sViewsWithIds);
        this.chart = (BigChart) dataBindingComponent[1];
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
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
        if (41 != i) {
            return false;
        }
        setI((Integer) obj);
        return true;
    }

    public void setI(Integer num) {
        this.mI = num;
    }

    public Integer getI() {
        return this.mI;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static AnalyticsItemChartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemChartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (AnalyticsItemChartBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.analytics_item_chart, viewGroup, z, dataBindingComponent);
    }

    public static AnalyticsItemChartBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemChartBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.analytics_item_chart, null, false), dataBindingComponent);
    }

    public static AnalyticsItemChartBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemChartBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/analytics_item_chart_0".equals(view.getTag())) {
            return new AnalyticsItemChartBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
