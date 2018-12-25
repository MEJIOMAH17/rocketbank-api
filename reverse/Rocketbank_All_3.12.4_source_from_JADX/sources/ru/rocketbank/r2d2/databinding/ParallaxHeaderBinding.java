package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.Converters;
import android.databinding.adapters.ViewBindingAdapter;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.parallax.HeaderData;

public class ParallaxHeaderBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private HeaderData mData;
    private long mDirtyFlags = -1;
    public final View stub;

    public ParallaxHeaderBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        this.stub = (View) mapBindings(dataBindingComponent, view, 1, sIncludes, sViewsWithIds)[0];
        this.stub.setTag(null);
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
        if (24 != i) {
            return false;
        }
        setData((HeaderData) obj);
        return true;
    }

    public void setData(HeaderData headerData) {
        this.mData = headerData;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public HeaderData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDataColor((ObservableInt) obj, i2);
    }

    private boolean onChangeDataColor(ObservableInt observableInt, int i) {
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
        Object obj = null;
        HeaderData headerData = this.mData;
        long j2 = j & 7;
        int i = 0;
        if (j2 != 0) {
            if (headerData != null) {
                obj = headerData.getColor();
            }
            updateRegistration(0, obj);
            if (obj != null) {
                i = obj.get();
            }
        }
        if (j2 != 0) {
            ViewBindingAdapter.setBackground(this.stub, Converters.convertColorToDrawable(i));
        }
    }

    public static ParallaxHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ParallaxHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ParallaxHeaderBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.parallax_header, viewGroup, z, dataBindingComponent);
    }

    public static ParallaxHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ParallaxHeaderBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.parallax_header, null, false), dataBindingComponent);
    }

    public static ParallaxHeaderBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ParallaxHeaderBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/parallax_header_0".equals(view.getTag())) {
            return new ParallaxHeaderBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
