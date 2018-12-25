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
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemMerchantOperation;

public class AnalyticsItemMerchantOperationBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final ImageView imageViewItem;
    private Float mAlpha;
    private long mDirtyFlags = -1;
    private AnalyticsItemMerchantOperation mItem;
    private final RelativeLayout mboundView0;
    public final RocketTextView textViewAmount;
    public final RocketTextView textViewDate;
    public final RocketTextView textViewItem;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public AnalyticsItemMerchantOperationBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.imageViewItem = (ImageView) dataBindingComponent[1];
        this.imageViewItem.setTag(null);
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textViewAmount = (RocketTextView) dataBindingComponent[2];
        this.textViewAmount.setTag(null);
        this.textViewDate = (RocketTextView) dataBindingComponent[4];
        this.textViewDate.setTag(null);
        this.textViewItem = (RocketTextView) dataBindingComponent[3];
        this.textViewItem.setTag(null);
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
        if (49 == i) {
            setItem((AnalyticsItemMerchantOperation) obj);
        } else if (5 != i) {
            return false;
        } else {
            setAlpha((Float) obj);
        }
        return true;
    }

    public void setItem(AnalyticsItemMerchantOperation analyticsItemMerchantOperation) {
        this.mItem = analyticsItemMerchantOperation;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    public AnalyticsItemMerchantOperation getItem() {
        return this.mItem;
    }

    public void setAlpha(Float f) {
        this.mAlpha = f;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    public Float getAlpha() {
        return this.mAlpha;
    }

    protected void executeBindings() {
        long j;
        CharSequence charSequence;
        boolean z;
        boolean z2;
        String str;
        AnalyticsItemMerchantOperationBinding analyticsItemMerchantOperationBinding = this;
        synchronized (this) {
            try {
                j = analyticsItemMerchantOperationBinding.mDirtyFlags;
                analyticsItemMerchantOperationBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        AnalyticsItemMerchantOperation analyticsItemMerchantOperation = analyticsItemMerchantOperationBinding.mItem;
        Float f = analyticsItemMerchantOperationBinding.mAlpha;
        CharSequence charSequence2 = null;
        boolean z3 = false;
        if ((j & 7) != 0) {
            boolean z4;
            String str2;
            long j2 = j & 5;
            if (j2 != 0) {
                String date;
                String text;
                String amount;
                if (analyticsItemMerchantOperation != null) {
                    date = analyticsItemMerchantOperation.getDate();
                    text = analyticsItemMerchantOperation.getText();
                    amount = analyticsItemMerchantOperation.getAmount();
                } else {
                    text = null;
                    amount = text;
                }
                Object obj = date == null ? 1 : null;
                long j3 = j2 != 0 ? obj != null ? j | 16 : j | 8 : j;
                z4 = obj != null ? true : false;
                str2 = text;
                charSequence = date;
                charSequence2 = amount;
                j = j3;
            } else {
                charSequence = null;
                str2 = charSequence;
                z4 = false;
            }
            if (analyticsItemMerchantOperation != null) {
                z3 = analyticsItemMerchantOperation.isMine();
            }
            if ((j & 7) == 0) {
                z = z3;
                z2 = z4;
                str = str2;
            } else if (z3) {
                z = z3;
                z2 = z4;
                str = str2;
                j |= 64;
            } else {
                z = z3;
                z2 = z4;
                str = str2;
                j |= 32;
            }
        } else {
            charSequence = null;
            str = charSequence;
            z = false;
            z2 = z;
        }
        int i = ((j & 32) > 0 ? 1 : ((j & 32) == 0 ? 0 : -1));
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float safeUnbox = i != 0 ? ViewDataBinding.safeUnbox(f) : BitmapDescriptorFactory.HUE_RED;
        long j4 = j & 7;
        if (j4 != 0) {
            if (z) {
                safeUnbox = 1.0f;
            }
            f2 = safeUnbox;
        }
        if (j4 != 0 && getBuildSdkInt() >= 11) {
            analyticsItemMerchantOperationBinding.imageViewItem.setAlpha(f2);
            analyticsItemMerchantOperationBinding.textViewAmount.setAlpha(f2);
            analyticsItemMerchantOperationBinding.textViewDate.setAlpha(f2);
            analyticsItemMerchantOperationBinding.textViewItem.setAlpha(f2);
        }
        if ((j & 5) != 0) {
            analyticsItemMerchantOperationBinding.mboundView0.setClickable(z);
            TextViewBindingAdapter.setText(analyticsItemMerchantOperationBinding.textViewAmount, charSequence2);
            TextViewBindingAdapter.setText(analyticsItemMerchantOperationBinding.textViewDate, charSequence);
            analyticsItemMerchantOperationBinding.textViewDate.setVisibility(z2);
            TextViewBindingAdapter.setText(analyticsItemMerchantOperationBinding.textViewItem, str);
        }
    }

    public static AnalyticsItemMerchantOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemMerchantOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (AnalyticsItemMerchantOperationBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.analytics_item_merchant_operation, viewGroup, z, dataBindingComponent);
    }

    public static AnalyticsItemMerchantOperationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemMerchantOperationBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.analytics_item_merchant_operation, null, false), dataBindingComponent);
    }

    public static AnalyticsItemMerchantOperationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static AnalyticsItemMerchantOperationBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/analytics_item_merchant_operation_0".equals(view.getTag())) {
            return new AnalyticsItemMerchantOperationBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
