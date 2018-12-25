package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.adapters.ViewBindingAdapter;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemHeader;
import ru.rocketbank.r2d2.utils.BindingUtils;

public class AnalyticsItemHeaderBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags = -1;
    private AnalyticsItemHeader mItem;
    private OnClickListenerImpl1 mItemOnDateClickAndroidViewViewOnClickListener;
    private OnClickListenerImpl mItemOnLeftArrowClickAndroidViewViewOnClickListener;
    private OnClickListenerImpl2 mItemOnRightArrowClickAndroidViewViewOnClickListener;
    private int mOldItemAmount;
    private final RelativeLayout mboundView0;
    private final ImageButton mboundView1;
    private final ProgressBar mboundView4;
    private final ImageButton mboundView5;
    public final RocketTextView textViewHeader;
    public final RocketTextView textViewPeriodName;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private AnalyticsItemHeader value;

        public OnClickListenerImpl1 setValue(AnalyticsItemHeader analyticsItemHeader) {
            this.value = analyticsItemHeader;
            return analyticsItemHeader == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onDateClick(view);
        }
    }

    public static class OnClickListenerImpl2 implements OnClickListener {
        private AnalyticsItemHeader value;

        public OnClickListenerImpl2 setValue(AnalyticsItemHeader analyticsItemHeader) {
            this.value = analyticsItemHeader;
            return analyticsItemHeader == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onRightArrowClick(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private AnalyticsItemHeader value;

        public OnClickListenerImpl setValue(AnalyticsItemHeader analyticsItemHeader) {
            this.value = analyticsItemHeader;
            return analyticsItemHeader == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onLeftArrowClick(view);
        }
    }

    public AnalyticsItemHeaderBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (ImageButton) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.mboundView4 = (ProgressBar) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.mboundView5 = (ImageButton) dataBindingComponent[5];
        this.mboundView5.setTag(null);
        this.textViewHeader = (RocketTextView) dataBindingComponent[3];
        this.textViewHeader.setTag(null);
        this.textViewPeriodName = (RocketTextView) dataBindingComponent[2];
        this.textViewPeriodName.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4;
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
        setItem((AnalyticsItemHeader) obj);
        return true;
    }

    public void setItem(AnalyticsItemHeader analyticsItemHeader) {
        this.mItem = analyticsItemHeader;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public AnalyticsItemHeader getItem() {
        return this.mItem;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeItemInProgress((ObservableBoolean) obj, i2);
    }

    private boolean onChangeItemInProgress(ObservableBoolean observableBoolean, int i) {
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
        long j2;
        int amount;
        CharSequence charSequence;
        int i;
        OnClickListenerImpl2 onClickListenerImpl2;
        OnClickListener onClickListener;
        boolean z;
        int i2;
        int i3;
        OnClickListener onClickListener2;
        AnalyticsItemHeaderBinding analyticsItemHeaderBinding = this;
        synchronized (this) {
            try {
                j = analyticsItemHeaderBinding.mDirtyFlags;
                analyticsItemHeaderBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        AnalyticsItemHeader analyticsItemHeader = analyticsItemHeaderBinding.mItem;
        long j3 = j & 7;
        int i4 = 0;
        if (j3 != 0) {
            OnClickListenerImpl2 onClickListenerImpl22;
            OnClickListenerImpl onClickListenerImpl;
            Object obj;
            boolean z2;
            if (analyticsItemHeader != null) {
                OnClickListenerImpl onClickListenerImpl3;
                if (analyticsItemHeaderBinding.mItemOnLeftArrowClickAndroidViewViewOnClickListener == null) {
                    onClickListenerImpl3 = new OnClickListenerImpl();
                    analyticsItemHeaderBinding.mItemOnLeftArrowClickAndroidViewViewOnClickListener = onClickListenerImpl3;
                } else {
                    onClickListenerImpl3 = analyticsItemHeaderBinding.mItemOnLeftArrowClickAndroidViewViewOnClickListener;
                }
                onClickListenerImpl3 = onClickListenerImpl3.setValue(analyticsItemHeader);
                ObservableBoolean inProgress = analyticsItemHeader.getInProgress();
                if (analyticsItemHeaderBinding.mItemOnRightArrowClickAndroidViewViewOnClickListener == null) {
                    onClickListenerImpl22 = new OnClickListenerImpl2();
                    analyticsItemHeaderBinding.mItemOnRightArrowClickAndroidViewViewOnClickListener = onClickListenerImpl22;
                } else {
                    onClickListenerImpl22 = analyticsItemHeaderBinding.mItemOnRightArrowClickAndroidViewViewOnClickListener;
                }
                onClickListenerImpl22 = onClickListenerImpl22.setValue(analyticsItemHeader);
                ObservableBoolean observableBoolean = inProgress;
                onClickListenerImpl = onClickListenerImpl3;
                obj = observableBoolean;
            } else {
                obj = null;
                onClickListenerImpl22 = null;
                onClickListenerImpl = null;
            }
            updateRegistration(0, obj);
            if (obj != null) {
                z2 = obj.get();
            } else {
                z2 = false;
            }
            long j4 = j3 != 0 ? z2 ? j | 256 : j | 128 : j;
            boolean z3 = !z2;
            int i5 = z2 ? 0 : 8;
            j2 = (j4 & 7) != 0 ? z3 ? j4 | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID : j4 | 512 : j4;
            int i6 = z3 ? 0 : 8;
            j4 = j2 & 6;
            if (j4 != 0) {
                boolean prevPeriodExists;
                boolean nextPeriodExists;
                OnClickListenerImpl1 onClickListenerImpl1;
                if (analyticsItemHeader != null) {
                    OnClickListenerImpl1 onClickListenerImpl12;
                    if (analyticsItemHeaderBinding.mItemOnDateClickAndroidViewViewOnClickListener == null) {
                        onClickListenerImpl12 = new OnClickListenerImpl1();
                        analyticsItemHeaderBinding.mItemOnDateClickAndroidViewViewOnClickListener = onClickListenerImpl12;
                    } else {
                        onClickListenerImpl12 = analyticsItemHeaderBinding.mItemOnDateClickAndroidViewViewOnClickListener;
                    }
                    onClickListenerImpl12 = onClickListenerImpl12.setValue(analyticsItemHeader);
                    String period = analyticsItemHeader.getPeriod();
                    prevPeriodExists = analyticsItemHeader.getPrevPeriodExists();
                    nextPeriodExists = analyticsItemHeader.getNextPeriodExists();
                    amount = analyticsItemHeader.getAmount();
                    String str = period;
                    onClickListenerImpl1 = onClickListenerImpl12;
                    charSequence = str;
                } else {
                    amount = 0;
                    prevPeriodExists = amount;
                    nextPeriodExists = prevPeriodExists;
                    charSequence = null;
                    onClickListenerImpl1 = null;
                }
                long j5 = j4 != 0 ? prevPeriodExists ? j2 | 64 : j2 | 32 : j2;
                j2 = (j5 & 6) != 0 ? nextPeriodExists ? j5 | 16 : j5 | 8 : j5;
                int i7 = prevPeriodExists ? 0 : 8;
                if (!nextPeriodExists) {
                    i4 = 8;
                }
                i = i6;
                onClickListenerImpl2 = onClickListenerImpl22;
                onClickListener = onClickListenerImpl1;
                z = z3;
                i2 = i5;
                i3 = i4;
                onClickListener2 = onClickListenerImpl;
                i4 = i7;
            } else {
                i = i6;
                onClickListenerImpl2 = onClickListenerImpl22;
                amount = 0;
                onClickListener = null;
                charSequence = null;
                z = z3;
                i2 = i5;
                i3 = amount;
                onClickListener2 = onClickListenerImpl;
            }
        } else {
            j2 = j;
            i3 = 0;
            amount = i3;
            z = amount;
            i2 = z;
            i = i2;
            onClickListener = null;
            onClickListener2 = null;
            charSequence = null;
            onClickListenerImpl2 = null;
        }
        long j6 = j2 & 6;
        if (j6 != 0) {
            analyticsItemHeaderBinding.mboundView1.setVisibility(i4);
            analyticsItemHeaderBinding.mboundView5.setVisibility(i3);
            BindingUtils.textAmount(analyticsItemHeaderBinding.textViewHeader, analyticsItemHeaderBinding.mOldItemAmount, amount);
            analyticsItemHeaderBinding.textViewPeriodName.setOnClickListener(onClickListener);
            TextViewBindingAdapter.setText(analyticsItemHeaderBinding.textViewPeriodName, charSequence);
        }
        if ((j2 & 7) != 0) {
            ViewBindingAdapter.setOnClick(analyticsItemHeaderBinding.mboundView1, onClickListener2, z);
            analyticsItemHeaderBinding.mboundView4.setVisibility(i2);
            ViewBindingAdapter.setOnClick(analyticsItemHeaderBinding.mboundView5, onClickListenerImpl2, z);
            analyticsItemHeaderBinding.textViewHeader.setVisibility(i);
        }
        if (j6 != 0) {
            analyticsItemHeaderBinding.mOldItemAmount = amount;
        }
    }

    public static AnalyticsItemHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (AnalyticsItemHeaderBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.analytics_item_header, viewGroup, z, dataBindingComponent);
    }

    public static AnalyticsItemHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemHeaderBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.analytics_item_header, null, false), dataBindingComponent);
    }

    public static AnalyticsItemHeaderBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemHeaderBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/analytics_item_header_0".equals(view.getTag())) {
            return new AnalyticsItemHeaderBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
