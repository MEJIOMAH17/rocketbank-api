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
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.LimitData;

public class ListItemCardLimitBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private LimitData mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    public final RocketTextView textviewName;
    public final RocketTextView textviewValue;

    public ListItemCardLimitBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.textviewName = (RocketTextView) dataBindingComponent[1];
        this.textviewName.setTag(null);
        this.textviewValue = (RocketTextView) dataBindingComponent[2];
        this.textviewValue.setTag(null);
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
        setData((LimitData) obj);
        return true;
    }

    public void setData(LimitData limitData) {
        this.mData = limitData;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public LimitData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataName((ObservableField) obj, i2);
            case 1:
                return onChangeDataLimit((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataName(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataLimit(ObservableField<String> observableField, int i) {
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
        LimitData limitData = this.mData;
        CharSequence charSequence2 = null;
        if ((j & 15) != 0) {
            Object limit;
            if ((j & 13) != 0) {
                Object name = limitData != null ? limitData.getName() : null;
                updateRegistration(0, name);
                if (name != null) {
                    charSequence = (String) name.get();
                    if ((j & 14) != 0) {
                        limit = limitData == null ? limitData.getLimit() : null;
                        updateRegistration(1, limit);
                        if (limit != null) {
                            charSequence2 = (String) limit.get();
                        }
                    }
                }
            }
            charSequence = null;
            if ((j & 14) != 0) {
                if (limitData == null) {
                }
                updateRegistration(1, limit);
                if (limit != null) {
                    charSequence2 = (String) limit.get();
                }
            }
        } else {
            charSequence = null;
        }
        if ((j & 13) != 0) {
            TextViewBindingAdapter.setText(this.textviewName, charSequence);
        }
        if ((j & 14) != 0) {
            TextViewBindingAdapter.setText(this.textviewValue, charSequence2);
        }
    }

    public static ListItemCardLimitBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ListItemCardLimitBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ListItemCardLimitBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.list_item_card_limit, viewGroup, z, dataBindingComponent);
    }

    public static ListItemCardLimitBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ListItemCardLimitBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.list_item_card_limit, null, false), dataBindingComponent);
    }

    public static ListItemCardLimitBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ListItemCardLimitBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/list_item_card_limit_0".equals(view.getTag())) {
            return new ListItemCardLimitBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
