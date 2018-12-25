package ru.rocketbank.r2d2.databinding;

import android.content.res.Resources;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.CunningCat;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

public class AnalyticsEmptyBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final CunningCat cunningCat;
    private long mDirtyFlags = -1;
    private Boolean mIsJointAnalytics;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView1;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.cunningCat, 2);
    }

    public AnalyticsEmptyBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.cunningCat = (CunningCat) dataBindingComponent[2];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (RocketTextView) dataBindingComponent[1];
        this.mboundView1.setTag(null);
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
        if (48 != i) {
            return false;
        }
        setIsJointAnalytics((Boolean) obj);
        return true;
    }

    public void setIsJointAnalytics(Boolean bool) {
        this.mIsJointAnalytics = bool;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(48);
        super.requestRebind();
    }

    public Boolean getIsJointAnalytics() {
        return this.mIsJointAnalytics;
    }

    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        CharSequence charSequence = null;
        Boolean bool = this.mIsJointAnalytics;
        long j2 = j & 3;
        if (j2 != 0) {
            Resources resources;
            int i;
            boolean safeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j2 != 0) {
                j = safeUnbox ? j | 8 : j | 4;
            }
            if (safeUnbox) {
                resources = this.mboundView1.getResources();
                i = C0859R.string.fine_fellows;
            } else {
                resources = this.mboundView1.getResources();
                i = C0859R.string.fine_fellow;
            }
            String string = resources.getString(i);
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.mboundView1.getResources().getString(C0859R.string.kopeechka_month));
            stringBuilder.append(string);
            charSequence = stringBuilder.toString();
        }
        if ((j & 3) != 0) {
            TextViewBindingAdapter.setText(this.mboundView1, charSequence);
        }
    }

    public static AnalyticsEmptyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsEmptyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (AnalyticsEmptyBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.analytics_empty, viewGroup, z, dataBindingComponent);
    }

    public static AnalyticsEmptyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsEmptyBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.analytics_empty, null, false), dataBindingComponent);
    }

    public static AnalyticsEmptyBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsEmptyBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/analytics_empty_0".equals(view.getTag())) {
            return new AnalyticsEmptyBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
