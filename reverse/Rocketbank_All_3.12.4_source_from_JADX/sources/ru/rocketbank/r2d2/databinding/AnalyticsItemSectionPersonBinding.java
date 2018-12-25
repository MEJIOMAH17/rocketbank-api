package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.graphics.Bitmap;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemPerson;
import ru.rocketbank.r2d2.utils.BindingUtils;

public class AnalyticsItemSectionPersonBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final ImageView imageView;
    private long mDirtyFlags = -1;
    private AnalyticsItemPerson mItem;
    private final RelativeLayout mboundView0;
    public final RocketTextView textViewTitle;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public AnalyticsItemSectionPersonBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.imageView = (ImageView) dataBindingComponent[2];
        this.imageView.setTag(null);
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textViewTitle = (RocketTextView) dataBindingComponent[1];
        this.textViewTitle.setTag(null);
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
        setItem((AnalyticsItemPerson) obj);
        return true;
    }

    public void setItem(AnalyticsItemPerson analyticsItemPerson) {
        this.mItem = analyticsItemPerson;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public AnalyticsItemPerson getItem() {
        return this.mItem;
    }

    protected void executeBindings() {
        long j;
        Bitmap bitmap;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        AnalyticsItemPerson analyticsItemPerson = this.mItem;
        long j2 = j & 3;
        CharSequence charSequence = null;
        if (j2 == 0 || analyticsItemPerson == null) {
            bitmap = null;
        } else {
            charSequence = analyticsItemPerson.getText();
            bitmap = analyticsItemPerson.getIcon();
        }
        if (j2 != 0) {
            BindingUtils.bitmap(this.imageView, bitmap);
            TextViewBindingAdapter.setText(this.textViewTitle, charSequence);
        }
    }

    public static AnalyticsItemSectionPersonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemSectionPersonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (AnalyticsItemSectionPersonBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.analytics_item_section_person, viewGroup, z, dataBindingComponent);
    }

    public static AnalyticsItemSectionPersonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemSectionPersonBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.analytics_item_section_person, null, false), dataBindingComponent);
    }

    public static AnalyticsItemSectionPersonBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemSectionPersonBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/analytics_item_section_person_0".equals(view.getTag())) {
            return new AnalyticsItemSectionPersonBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
