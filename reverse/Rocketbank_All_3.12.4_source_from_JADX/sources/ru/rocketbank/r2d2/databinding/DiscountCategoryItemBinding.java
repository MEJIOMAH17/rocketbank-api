package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.support.v7.widget.AppCompatImageView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import ru.rocketbank.core.model.discounts.Discount;
import ru.rocketbank.core.widgets.SquareLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.discount.OnDiscountClickListener;

public class DiscountCategoryItemBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final SquareLayout discountPicture;
    public final AppCompatImageView imageView;
    private final OnClickListener mCallback15;
    private long mDirtyFlags = -1;
    private Discount mDiscount;
    private OnDiscountClickListener mListener;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public DiscountCategoryItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 2, sIncludes, sViewsWithIds);
        this.discountPicture = (SquareLayout) dataBindingComponent[0];
        this.discountPicture.setTag(null);
        this.imageView = (AppCompatImageView) dataBindingComponent[1];
        this.imageView.setTag(null);
        setRootTag(view);
        this.mCallback15 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
        if (55 == i) {
            setListener((OnDiscountClickListener) obj);
        } else if (27 != i) {
            return false;
        } else {
            setDiscount((Discount) obj);
        }
        return true;
    }

    public void setListener(OnDiscountClickListener onDiscountClickListener) {
        this.mListener = onDiscountClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public OnDiscountClickListener getListener() {
        return this.mListener;
    }

    public void setDiscount(Discount discount) {
        this.mDiscount = discount;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    public Discount getDiscount() {
        return this.mDiscount;
    }

    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        if ((j & 4) != 0) {
            this.imageView.setOnClickListener(this.mCallback15);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mDiscount;
        OnDiscountClickListener onDiscountClickListener = this.mListener;
        if ((onDiscountClickListener != null ? 1 : null) != null) {
            onDiscountClickListener.onDiscountClick(view, i);
        }
    }

    public static DiscountCategoryItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountCategoryItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (DiscountCategoryItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.discount_category_item, viewGroup, z, dataBindingComponent);
    }

    public static DiscountCategoryItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountCategoryItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.discount_category_item, null, false), dataBindingComponent);
    }

    public static DiscountCategoryItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountCategoryItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/discount_category_item_0".equals(view.getTag())) {
            return new DiscountCategoryItemBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
