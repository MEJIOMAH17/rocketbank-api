package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.List;
import ru.rocketbank.core.model.dto.operations.MonthlyMerchant;
import ru.rocketbank.r2d2.C0859R;

public class DiscountsSelectedBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds = null;
    public final DiscountsItemSelectedBinding discountSelect1;
    public final DiscountsItemSelectedBinding discountSelect2;
    public final DiscountsItemSelectedBinding discountSelect3;
    private long mDirtyFlags = -1;
    private List<MonthlyMerchant> mList;
    private final LinearLayout mboundView0;
    private final LinearLayout mboundView1;

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(5);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"discounts_item_selected", "discounts_item_selected", "discounts_item_selected"}, new int[]{2, 3, 4}, new int[]{C0859R.layout.discounts_item_selected, C0859R.layout.discounts_item_selected, C0859R.layout.discounts_item_selected});
    }

    public DiscountsSelectedBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.discountSelect1 = (DiscountsItemSelectedBinding) dataBindingComponent[2];
        setContainedBinding(this.discountSelect1);
        this.discountSelect2 = (DiscountsItemSelectedBinding) dataBindingComponent[3];
        setContainedBinding(this.discountSelect2);
        this.discountSelect3 = (DiscountsItemSelectedBinding) dataBindingComponent[4];
        setContainedBinding(this.discountSelect3);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (LinearLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 16;
        }
        this.discountSelect1.invalidateAll();
        this.discountSelect2.invalidateAll();
        this.discountSelect3.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x002a }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x002a }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x002a }
        r1 = r5.discountSelect1;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r1 = r5.discountSelect2;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x001f;
    L_0x001e:
        return r0;
    L_0x001f:
        r1 = r5.discountSelect3;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0028;
    L_0x0027:
        return r0;
    L_0x0028:
        r0 = 0;
        return r0;
    L_0x002a:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x002a }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.DiscountsSelectedBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (54 != i) {
            return false;
        }
        setList((List) obj);
        return true;
    }

    public void setList(List<MonthlyMerchant> list) {
        this.mList = list;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    public List<MonthlyMerchant> getList() {
        return this.mList;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.discountSelect1.setLifecycleOwner(lifecycleOwner);
        this.discountSelect2.setLifecycleOwner(lifecycleOwner);
        this.discountSelect3.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDiscountSelect1((DiscountsItemSelectedBinding) obj, i2);
            case 1:
                return onChangeDiscountSelect3((DiscountsItemSelectedBinding) obj, i2);
            case 2:
                return onChangeDiscountSelect2((DiscountsItemSelectedBinding) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDiscountSelect1(DiscountsItemSelectedBinding discountsItemSelectedBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDiscountSelect3(DiscountsItemSelectedBinding discountsItemSelectedBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDiscountSelect2(DiscountsItemSelectedBinding discountsItemSelectedBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        MonthlyMerchant monthlyMerchant;
        MonthlyMerchant monthlyMerchant2;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        List list = this.mList;
        long j2 = j & 24;
        MonthlyMerchant monthlyMerchant3 = null;
        if (j2 == 0 || list == null) {
            monthlyMerchant = null;
            monthlyMerchant2 = monthlyMerchant;
        } else {
            monthlyMerchant3 = (MonthlyMerchant) getFromList(list, 1);
            monthlyMerchant = (MonthlyMerchant) getFromList(list, 0);
            monthlyMerchant2 = (MonthlyMerchant) getFromList(list, 2);
        }
        if (j2 != 0) {
            this.discountSelect1.setCashback(monthlyMerchant);
            this.discountSelect2.setCashback(monthlyMerchant3);
            this.discountSelect3.setCashback(monthlyMerchant2);
        }
        executeBindingsOn(this.discountSelect1);
        executeBindingsOn(this.discountSelect2);
        executeBindingsOn(this.discountSelect3);
    }

    public static DiscountsSelectedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountsSelectedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (DiscountsSelectedBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.discounts_selected, viewGroup, z, dataBindingComponent);
    }

    public static DiscountsSelectedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountsSelectedBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.discounts_selected, null, false), dataBindingComponent);
    }

    public static DiscountsSelectedBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountsSelectedBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/discounts_selected_0".equals(view.getTag())) {
            return new DiscountsSelectedBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
