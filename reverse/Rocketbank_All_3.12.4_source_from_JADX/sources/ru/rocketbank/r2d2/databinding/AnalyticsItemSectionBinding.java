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
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemSection;

public class AnalyticsItemSectionBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final RocketTextView imageViewItem;
    private long mDirtyFlags = -1;
    private AnalyticsItemSection mItem;
    private final RelativeLayout mboundView0;
    public final RocketTextView textViewItem;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public AnalyticsItemSectionBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.imageViewItem = (RocketTextView) dataBindingComponent[1];
        this.imageViewItem.setTag(null);
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
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
        setItem((AnalyticsItemSection) obj);
        return true;
    }

    public void setItem(AnalyticsItemSection analyticsItemSection) {
        this.mItem = analyticsItemSection;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public AnalyticsItemSection getItem() {
        return this.mItem;
    }

    protected void executeBindings() {
        long j;
        CharSequence charSequence;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        AnalyticsItemSection analyticsItemSection = this.mItem;
        int i = 0;
        long j2 = j & 3;
        CharSequence charSequence2 = null;
        if (j2 == 0 || analyticsItemSection == null) {
            charSequence = null;
        } else {
            charSequence2 = analyticsItemSection.getText();
            i = analyticsItemSection.getColor();
            charSequence = analyticsItemSection.getIcon();
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.imageViewItem, charSequence);
            this.imageViewItem.setTextColor(i);
            TextViewBindingAdapter.setText(this.textViewItem, charSequence2);
        }
    }

    public static AnalyticsItemSectionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemSectionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (AnalyticsItemSectionBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.analytics_item_section, viewGroup, z, dataBindingComponent);
    }

    public static AnalyticsItemSectionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemSectionBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.analytics_item_section, null, false), dataBindingComponent);
    }

    public static AnalyticsItemSectionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemSectionBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/analytics_item_section_0".equals(view.getTag())) {
            return new AnalyticsItemSectionBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
