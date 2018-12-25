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
import ru.rocketbank.core.widgets.RocketRadioButton;
import ru.rocketbank.r2d2.C0859R;

public class RadioButtonOrangeBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final RocketRadioButton button;
    private long mDirtyFlags = -1;
    private String mText;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public RadioButtonOrangeBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        this.button = (RocketRadioButton) mapBindings(dataBindingComponent, view, 1, sIncludes, sViewsWithIds)[0];
        this.button.setTag(null);
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
        if (83 != i) {
            return false;
        }
        setText((String) obj);
        return true;
    }

    public void setText(String str) {
        this.mText = str;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(83);
        super.requestRebind();
    }

    public String getText() {
        return this.mText;
    }

    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        CharSequence charSequence = this.mText;
        if ((j & 3) != 0) {
            TextViewBindingAdapter.setText(this.button, charSequence);
        }
    }

    public static RadioButtonOrangeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static RadioButtonOrangeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (RadioButtonOrangeBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.radio_button_orange, viewGroup, z, dataBindingComponent);
    }

    public static RadioButtonOrangeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static RadioButtonOrangeBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.radio_button_orange, null, false), dataBindingComponent);
    }

    public static RadioButtonOrangeBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static RadioButtonOrangeBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/radio_button_orange_0".equals(view.getTag())) {
            return new RadioButtonOrangeBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
