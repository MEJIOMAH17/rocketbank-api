package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import de.hdodenhof.circleimageview.CircleImageView;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.operation.vh.SourceData;
import ru.rocketbank.r2d2.utils.BindingUtils;

public class LayoutOperationSourceBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final CircleImageView image;
    private SourceData mData;
    private long mDirtyFlags = -1;
    private final FrameLayout mboundView0;
    private final RocketAutofitTextView mboundView2;

    public LayoutOperationSourceBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.image = (CircleImageView) dataBindingComponent[1];
        this.image.setTag(null);
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (RocketAutofitTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 8;
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
        setData((SourceData) obj);
        return true;
    }

    public void setData(SourceData sourceData) {
        this.mData = sourceData;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public SourceData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataImageSource((ObservableField) obj, i2);
            case 1:
                return onChangeDataSourceName((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataImageSource(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataSourceName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    protected void executeBindings() {
        String str;
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        SourceData sourceData = this.mData;
        CharSequence charSequence = null;
        if ((j & 15) != 0) {
            Object sourceName;
            if ((j & 13) != 0) {
                Object imageSource = sourceData != null ? sourceData.getImageSource() : null;
                updateRegistration(0, imageSource);
                if (imageSource != null) {
                    str = (String) imageSource.get();
                    if ((j & 14) != 0) {
                        sourceName = sourceData == null ? sourceData.getSourceName() : null;
                        updateRegistration(1, sourceName);
                        if (sourceName != null) {
                            charSequence = (String) sourceName.get();
                        }
                    }
                }
            }
            str = null;
            if ((j & 14) != 0) {
                if (sourceData == null) {
                }
                updateRegistration(1, sourceName);
                if (sourceName != null) {
                    charSequence = (String) sourceName.get();
                }
            }
        } else {
            str = null;
        }
        if ((j & 13) != 0) {
            BindingUtils.url(this.image, str);
        }
        if ((j & 14) != 0) {
            TextViewBindingAdapter.setText(this.mboundView2, charSequence);
        }
    }

    public static LayoutOperationSourceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationSourceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutOperationSourceBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_operation_source, viewGroup, z, dataBindingComponent);
    }

    public static LayoutOperationSourceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationSourceBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_operation_source, null, false), dataBindingComponent);
    }

    public static LayoutOperationSourceBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationSourceBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_operation_source_0".equals(view.getTag())) {
            return new LayoutOperationSourceBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
