package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.core.model.shop.Color;
import ru.rocketbank.core.widgets.RocketRadioButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.utils.BindingUtils;

public class RadioButtonColorBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketRadioButton button;
    public final ImageView corner;
    public final ImageView imageView;
    private Color mColor;
    private long mDirtyFlags = -1;
    private final FrameLayout mboundView0;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.corner, 3);
    }

    public RadioButtonColorBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.button = (RocketRadioButton) dataBindingComponent[2];
        this.button.setTag(null);
        this.corner = (ImageView) dataBindingComponent[3];
        this.imageView = (ImageView) dataBindingComponent[1];
        this.imageView.setTag(null);
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
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
        boolean z = false;
        float f = BitmapDescriptorFactory.HUE_RED;
        String str = null;
        Color color = this.mColor;
        long j2 = j & 3;
        if (j2 != 0) {
            if (color != null) {
                z = color.getAvailable();
                str = color.getColor();
            }
            if (j2 != 0) {
                j = z ? j | 8 : j | 4;
            }
            f = z ? 1.0f : 0.15f;
        }
        if ((j & 3) != 0) {
            this.button.setEnabled(z);
            BindingUtils.colorCircle(this.imageView, str);
            if (getBuildSdkInt() >= 11) {
                this.imageView.setAlpha(f);
            }
        }
    }

    public static RadioButtonColorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static RadioButtonColorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (RadioButtonColorBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.radio_button_color, viewGroup, z, dataBindingComponent);
    }

    public static RadioButtonColorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static RadioButtonColorBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.radio_button_color, null, false), dataBindingComponent);
    }

    public static RadioButtonColorBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static RadioButtonColorBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/radio_button_color_0".equals(view.getTag())) {
            return new RadioButtonColorBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
