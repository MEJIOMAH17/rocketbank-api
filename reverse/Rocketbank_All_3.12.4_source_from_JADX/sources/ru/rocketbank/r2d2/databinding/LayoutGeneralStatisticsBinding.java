package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticData;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticHandler;

public class LayoutGeneralStatisticsBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView action;
    private final OnClickListener mCallback24;
    private StatisticData mData;
    private long mDirtyFlags = -1;
    private StatisticHandler mHandler;
    private final LinearLayout mboundView0;
    public final LinearLayout statisticsContainer;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.statisticsContainer, 2);
    }

    public LayoutGeneralStatisticsBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.action = (RocketTextView) dataBindingComponent[1];
        this.action.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.statisticsContainer = (LinearLayout) dataBindingComponent[2];
        setRootTag(view);
        this.mCallback24 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 8;
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
        if (40 == i) {
            setHandler((StatisticHandler) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((StatisticData) obj);
        }
        return true;
    }

    public void setHandler(StatisticHandler statisticHandler) {
        this.mHandler = statisticHandler;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public StatisticHandler getHandler() {
        return this.mHandler;
    }

    public void setData(StatisticData statisticData) {
        this.mData = statisticData;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public StatisticData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDataModeName((ObservableField) obj, i2);
    }

    private boolean onChangeDataModeName(ObservableField<String> observableField, int i) {
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
        StatisticData statisticData = this.mData;
        long j2 = j & 13;
        CharSequence charSequence = null;
        if (j2 != 0) {
            Object modeName = statisticData != null ? statisticData.getModeName() : null;
            updateRegistration(0, modeName);
            if (modeName != null) {
                charSequence = (String) modeName.get();
            }
        }
        if ((j & 8) != 0) {
            this.action.setOnClickListener(this.mCallback24);
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.action, charSequence);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mHandler;
        if ((i != 0 ? true : null) != null) {
            i.onModeSwitch();
        }
    }

    public static LayoutGeneralStatisticsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutGeneralStatisticsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutGeneralStatisticsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_general_statistics, viewGroup, z, dataBindingComponent);
    }

    public static LayoutGeneralStatisticsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutGeneralStatisticsBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_general_statistics, null, false), dataBindingComponent);
    }

    public static LayoutGeneralStatisticsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutGeneralStatisticsBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_general_statistics_0".equals(view.getTag())) {
            return new LayoutGeneralStatisticsBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
