package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.ObservableBoolean;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketCalendarView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryDateTimeData;

public class FragmentDeliveryDateBindingImpl extends FragmentDeliveryDateBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private OnClickListenerImpl mListenerOnClickAndroidViewViewOnClickListener;
    private final RelativeLayout mboundView0;

    public static class OnClickListenerImpl implements OnClickListener {
        private OnClickListener value;

        public OnClickListenerImpl setValue(OnClickListener onClickListener) {
            this.value = onClickListener;
            return onClickListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onClick(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.rocker_calendar, 2);
        sViewsWithIds.put(C0859R.id.separator, 3);
        sViewsWithIds.put(C0859R.id.static_text, 4);
        sViewsWithIds.put(C0859R.id.intervals_view, 5);
    }

    public FragmentDeliveryDateBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds));
    }

    private FragmentDeliveryDateBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (LinearLayout) objArr[5], (RocketButton) objArr[1], (RocketCalendarView) objArr[2], (View) objArr[3], (RocketTextView) objArr[4]);
        this.mDirtyFlags = -1;
        this.mboundView0 = (RelativeLayout) objArr[null];
        this.mboundView0.setTag(null);
        this.nextButton.setTag(null);
        setRootTag(view);
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
        if (55 == i) {
            setListener((OnClickListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((DeliveryDateTimeData) obj);
        }
        return true;
    }

    public void setListener(OnClickListener onClickListener) {
        this.mListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public void setData(DeliveryDateTimeData deliveryDateTimeData) {
        this.mData = deliveryDateTimeData;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDataNextButtonEnabled((ObservableBoolean) obj, i2);
    }

    private boolean onChangeDataNextButtonEnabled(ObservableBoolean observableBoolean, int i) {
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
        OnClickListener onClickListener = this.mListener;
        DeliveryDateTimeData deliveryDateTimeData = this.mData;
        long j2 = j & 10;
        Object obj = null;
        if (j2 == 0 || onClickListener == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            if (this.mListenerOnClickAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                this.mListenerOnClickAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = this.mListenerOnClickAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl.setValue(onClickListener);
        }
        long j3 = j & 13;
        boolean z = false;
        if (j3 != 0) {
            if (deliveryDateTimeData != null) {
                obj = deliveryDateTimeData.getNextButtonEnabled();
            }
            updateRegistration(0, obj);
            if (obj != null) {
                z = obj.get();
            }
        }
        if (j3 != 0) {
            this.nextButton.setEnabled(z);
        }
        if (j2 != 0) {
            this.nextButton.setOnClickListener(onClickListener);
        }
    }
}
