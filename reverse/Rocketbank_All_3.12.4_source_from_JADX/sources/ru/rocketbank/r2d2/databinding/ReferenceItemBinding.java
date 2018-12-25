package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import ru.rocketbank.core.model.references.Reference;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.reference.ReferenceClickListener;
import ru.rocketbank.r2d2.data.binding.reference.ReferenceData;

public class ReferenceItemBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final RocketTextView lang;
    private final OnClickListener mCallback13;
    private ReferenceData mData;
    private long mDirtyFlags = -1;
    private ReferenceClickListener mListener;
    private Reference mReference;
    private final RelativeLayout mboundView0;
    public final RocketTextView title;

    public ReferenceItemBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.lang = (RocketTextView) dataBindingComponent[2];
        this.lang.setTag(null);
        this.mboundView0 = (RelativeLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.title = (RocketTextView) dataBindingComponent[1];
        this.title.setTag(null);
        setRootTag(view);
        this.mCallback13 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 32;
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
            setListener((ReferenceClickListener) obj);
        } else if (24 == i) {
            setData((ReferenceData) obj);
        } else if (71 != i) {
            return false;
        } else {
            setReference((Reference) obj);
        }
        return true;
    }

    public void setListener(ReferenceClickListener referenceClickListener) {
        this.mListener = referenceClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public ReferenceClickListener getListener() {
        return this.mListener;
    }

    public void setData(ReferenceData referenceData) {
        this.mData = referenceData;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public ReferenceData getData() {
        return this.mData;
    }

    public void setReference(Reference reference) {
        this.mReference = reference;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(71);
        super.requestRebind();
    }

    public Reference getReference() {
        return this.mReference;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataTitle((ObservableField) obj, i2);
            case 1:
                return onChangeDataLng((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataTitle(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataLng(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    protected void executeBindings() {
        CharSequence charSequence;
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        ReferenceData referenceData = this.mData;
        CharSequence charSequence2 = null;
        if ((j & 43) != 0) {
            Object lng;
            if ((j & 41) != 0) {
                Object title = referenceData != null ? referenceData.getTitle() : null;
                updateRegistration(0, title);
                if (title != null) {
                    charSequence = (String) title.get();
                    if ((j & 42) != 0) {
                        lng = referenceData == null ? referenceData.getLng() : null;
                        updateRegistration(1, lng);
                        if (lng != null) {
                            charSequence2 = (String) lng.get();
                        }
                    }
                }
            }
            charSequence = null;
            if ((j & 42) != 0) {
                if (referenceData == null) {
                }
                updateRegistration(1, lng);
                if (lng != null) {
                    charSequence2 = (String) lng.get();
                }
            }
        } else {
            charSequence = null;
        }
        if ((j & 42) != 0) {
            TextViewBindingAdapter.setText(this.lang, charSequence2);
        }
        if ((j & 32) != 0) {
            this.mboundView0.setOnClickListener(this.mCallback13);
        }
        if ((j & 41) != 0) {
            TextViewBindingAdapter.setText(this.title, charSequence);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mReference;
        ReferenceClickListener referenceClickListener = this.mListener;
        if ((referenceClickListener != null ? 1 : null) != null) {
            referenceClickListener.onReferenceClicked(view, i);
        }
    }

    public static ReferenceItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ReferenceItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ReferenceItemBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.reference_item, viewGroup, z, dataBindingComponent);
    }

    public static ReferenceItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ReferenceItemBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.reference_item, null, false), dataBindingComponent);
    }

    public static ReferenceItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ReferenceItemBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/reference_item_0".equals(view.getTag())) {
            return new ReferenceItemBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
