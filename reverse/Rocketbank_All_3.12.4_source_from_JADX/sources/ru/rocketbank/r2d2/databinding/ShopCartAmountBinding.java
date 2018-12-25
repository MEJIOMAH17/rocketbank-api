package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableDouble;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.utils.BindingUtils;

public class ShopCartAmountBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags = -1;
    private double mOldPriceGet;
    private ObservableDouble mPrice;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView1;

    public ShopCartAmountBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 2, sIncludes, sViewsWithIds);
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
        if (64 != i) {
            return false;
        }
        setPrice((ObservableDouble) obj);
        return true;
    }

    public void setPrice(ObservableDouble observableDouble) {
        updateRegistration(0, observableDouble);
        this.mPrice = observableDouble;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(64);
        super.requestRebind();
    }

    public ObservableDouble getPrice() {
        return this.mPrice;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangePrice((ObservableDouble) obj, i2);
    }

    private boolean onChangePrice(ObservableDouble observableDouble, int i) {
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
        ObservableDouble observableDouble = this.mPrice;
        double d = 0.0d;
        long j2 = j & 3;
        if (!(j2 == 0 || observableDouble == null)) {
            d = observableDouble.get();
        }
        if (j2 != 0) {
            BindingUtils.textAmountRocket(this.mboundView1, this.mOldPriceGet, d);
        }
        if (j2 != 0) {
            this.mOldPriceGet = d;
        }
    }

    public static ShopCartAmountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ShopCartAmountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ShopCartAmountBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.shop_cart_amount, viewGroup, z, dataBindingComponent);
    }

    public static ShopCartAmountBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ShopCartAmountBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.shop_cart_amount, null, false), dataBindingComponent);
    }

    public static ShopCartAmountBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ShopCartAmountBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/shop_cart_amount_0".equals(view.getTag())) {
            return new ShopCartAmountBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
