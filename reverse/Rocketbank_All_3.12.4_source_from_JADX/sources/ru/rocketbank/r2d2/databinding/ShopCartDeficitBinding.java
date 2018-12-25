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
import android.widget.ImageButton;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

public class ShopCartDeficitBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageButton buttonQuestion;
    private ObservableDouble mDeficit;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    public final RocketTextView textView;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.textView, 1);
        sViewsWithIds.put(C0859R.id.buttonQuestion, 2);
    }

    public ShopCartDeficitBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.buttonQuestion = (ImageButton) dataBindingComponent[2];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textView = (RocketTextView) dataBindingComponent[1];
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
        if (25 != i) {
            return false;
        }
        setDeficit((ObservableDouble) obj);
        return true;
    }

    public void setDeficit(ObservableDouble observableDouble) {
        this.mDeficit = observableDouble;
    }

    public ObservableDouble getDeficit() {
        return this.mDeficit;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDeficit((ObservableDouble) obj, i2);
    }

    private boolean onChangeDeficit(ObservableDouble observableDouble, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static ShopCartDeficitBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ShopCartDeficitBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ShopCartDeficitBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.shop_cart_deficit, viewGroup, z, dataBindingComponent);
    }

    public static ShopCartDeficitBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ShopCartDeficitBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.shop_cart_deficit, null, false), dataBindingComponent);
    }

    public static ShopCartDeficitBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ShopCartDeficitBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/shop_cart_deficit_0".equals(view.getTag())) {
            return new ShopCartDeficitBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
