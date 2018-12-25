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
import android.widget.LinearLayout;
import de.hdodenhof.circleimageview.CircleImageView;
import ru.rocketbank.core.model.dto.operations.Merchant;
import ru.rocketbank.core.model.dto.operations.MonthlyMerchant;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

public class DiscountsItemSelectedBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView discountPercent;
    public final CircleImageView discountPicture;
    public final RocketTextView discountProvider;
    private MonthlyMerchant mCashback;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.discount_picture, 3);
    }

    public DiscountsItemSelectedBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.discountPercent = (RocketTextView) dataBindingComponent[2];
        this.discountPercent.setTag(null);
        this.discountPicture = (CircleImageView) dataBindingComponent[3];
        this.discountProvider = (RocketTextView) dataBindingComponent[1];
        this.discountProvider.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
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
        if (14 != i) {
            return false;
        }
        setCashback((MonthlyMerchant) obj);
        return true;
    }

    public void setCashback(MonthlyMerchant monthlyMerchant) {
        this.mCashback = monthlyMerchant;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(14);
        super.requestRebind();
    }

    public MonthlyMerchant getCashback() {
        return this.mCashback;
    }

    protected void executeBindings() {
        long j;
        CharSequence stringBuilder;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        MonthlyMerchant monthlyMerchant = this.mCashback;
        int i = 0;
        long j2 = j & 3;
        CharSequence charSequence = null;
        if (j2 != 0) {
            Merchant merchant;
            if (monthlyMerchant != null) {
                merchant = monthlyMerchant.getMerchant();
                i = monthlyMerchant.getPercent();
            } else {
                merchant = null;
            }
            if (merchant != null) {
                charSequence = merchant.getName();
            }
            String valueOf = String.valueOf(i);
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(valueOf);
            stringBuilder2.append('%');
            stringBuilder = stringBuilder2.toString();
        } else {
            stringBuilder = null;
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.discountPercent, stringBuilder);
            TextViewBindingAdapter.setText(this.discountProvider, charSequence);
        }
    }

    public static DiscountsItemSelectedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountsItemSelectedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (DiscountsItemSelectedBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.discounts_item_selected, viewGroup, z, dataBindingComponent);
    }

    public static DiscountsItemSelectedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountsItemSelectedBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.discounts_item_selected, null, false), dataBindingComponent);
    }

    public static DiscountsItemSelectedBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountsItemSelectedBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/discounts_item_selected_0".equals(view.getTag())) {
            return new DiscountsItemSelectedBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
