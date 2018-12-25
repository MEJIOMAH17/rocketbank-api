package ru.rocketbank.core.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.Observable;
import android.databinding.ViewDataBinding;
import android.databinding.adapters.TextViewBindingAdapter;
import android.support.v7.widget.GridLayout;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.data.binding.RocketCalendarViewData;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

public final class WidgetCalendarViewBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final GridLayout calendar;
    public final RocketTextView calendarDateDisplay;
    public final LinearLayout calendarHeader;
    private RocketCalendarViewData mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.calendar_header, 2);
        sViewsWithIds.put(C0859R.id.calendar, 3);
    }

    public WidgetCalendarViewBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = ViewDataBinding.mapBindings(dataBindingComponent, view, 4, null, sViewsWithIds);
        this.calendar = (GridLayout) dataBindingComponent[3];
        this.calendarDateDisplay = (RocketTextView) dataBindingComponent[1];
        this.calendarDateDisplay.setTag(null);
        this.calendarHeader = (LinearLayout) dataBindingComponent[2];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public final void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4;
        }
        requestRebind();
    }

    public final boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return false;
        }
    }

    public final boolean setVariable(int i, Object obj) {
        if (24 != i) {
            return false;
        }
        setData((RocketCalendarViewData) obj);
        return true;
    }

    public final void setData(RocketCalendarViewData rocketCalendarViewData) {
        this.mData = rocketCalendarViewData;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    protected final boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDataMonthText$69e17aa2(i2);
    }

    private boolean onChangeDataMonthText$69e17aa2(int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    protected final void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        RocketCalendarViewData rocketCalendarViewData = this.mData;
        long j2 = j & 7;
        CharSequence charSequence = null;
        if (j2 != 0) {
            Object monthText = rocketCalendarViewData != null ? rocketCalendarViewData.getMonthText() : null;
            updateRegistration(0, (Observable) monthText);
            if (monthText != null) {
                charSequence = (String) monthText.get();
            }
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.calendarDateDisplay, charSequence);
        }
    }

    public static WidgetCalendarViewBinding inflate$336d2cb0(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return (WidgetCalendarViewBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.widget_calendar_view, viewGroup, true, DataBindingUtil.getDefaultComponent());
    }
}
