package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.constraint.ConstraintLayout;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import ru.rocketbank.core.model.shop.Color;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.utils.BindingUtils;

public class ShopSelectedColorBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final ImageView corner;
    public final ImageView imageView;
    private Color mColor;
    private long mDirtyFlags = -1;
    private final ConstraintLayout mboundView0;
    public final RocketTextView textViewColorLabel;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.textViewColorLabel, 2);
        sViewsWithIds.put(C0859R.id.corner, 3);
    }

    public ShopSelectedColorBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.corner = (ImageView) dataBindingComponent[3];
        this.imageView = (ImageView) dataBindingComponent[1];
        this.imageView.setTag(null);
        this.mboundView0 = (ConstraintLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textViewColorLabel = (RocketTextView) dataBindingComponent[2];
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
        if (17 != i) {
            return false;
        }
        setColor((Color) obj);
        return true;
    }

    public void setColor(Color color) {
        this.mColor = color;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(17);
        super.requestRebind();
    }

    public Color getColor() {
        return this.mColor;
    }

    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        String str = null;
        Color color = this.mColor;
        long j2 = j & 3;
        if (!(j2 == 0 || color == null)) {
            str = color.getColor();
        }
        if (j2 != 0) {
            BindingUtils.colorCircle(this.imageView, str);
        }
    }

    public static ShopSelectedColorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ShopSelectedColorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ShopSelectedColorBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.shop_selected_color, viewGroup, z, dataBindingComponent);
    }

    public static ShopSelectedColorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ShopSelectedColorBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.shop_selected_color, null, false), dataBindingComponent);
    }

    public static ShopSelectedColorBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ShopSelectedColorBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/shop_selected_color_0".equals(view.getTag())) {
            return new ShopSelectedColorBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
