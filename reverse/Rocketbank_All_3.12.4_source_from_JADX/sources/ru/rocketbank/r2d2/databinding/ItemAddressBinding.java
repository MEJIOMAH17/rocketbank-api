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
import android.widget.LinearLayout;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.adapters.delivery.AddressItemData;
import ru.rocketbank.r2d2.data.binding.delivery.AddressClickListener;

public class ItemAddressBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private final OnClickListener mCallback1;
    private AddressItemData mData;
    private long mDirtyFlags = -1;
    private GeoObject mGeoObject;
    private AddressClickListener mListener;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView1;

    public ItemAddressBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 2, sIncludes, sViewsWithIds);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (RocketTextView) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        setRootTag(view);
        this.mCallback1 = new android.databinding.generated.callback.OnClickListener(this, 1);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 16;
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
            setListener((AddressClickListener) obj);
        } else if (24 == i) {
            setData((AddressItemData) obj);
        } else if (33 != i) {
            return false;
        } else {
            setGeoObject((GeoObject) obj);
        }
        return true;
    }

    public void setListener(AddressClickListener addressClickListener) {
        this.mListener = addressClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public AddressClickListener getListener() {
        return this.mListener;
    }

    public void setData(AddressItemData addressItemData) {
        this.mData = addressItemData;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public AddressItemData getData() {
        return this.mData;
    }

    public void setGeoObject(GeoObject geoObject) {
        this.mGeoObject = geoObject;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(33);
        super.requestRebind();
    }

    public GeoObject getGeoObject() {
        return this.mGeoObject;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDataAddresstext((ObservableField) obj, i2);
    }

    private boolean onChangeDataAddresstext(ObservableField<String> observableField, int i) {
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
        AddressItemData addressItemData = this.mData;
        long j2 = j & 21;
        CharSequence charSequence = null;
        if (j2 != 0) {
            Object addresstext = addressItemData != null ? addressItemData.getAddresstext() : null;
            updateRegistration(0, addresstext);
            if (addresstext != null) {
                charSequence = (String) addresstext.get();
            }
        }
        if ((j & 16) != 0) {
            this.mboundView0.setOnClickListener(this.mCallback1);
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.mboundView1, charSequence);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mGeoObject;
        view = this.mListener;
        if ((view != null ? 1 : null) != null) {
            view.onAddressClicked(i);
        }
    }

    public static ItemAddressBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ItemAddressBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ItemAddressBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.item_address, viewGroup, z, dataBindingComponent);
    }

    public static ItemAddressBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ItemAddressBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.item_address, null, false), dataBindingComponent);
    }

    public static ItemAddressBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ItemAddressBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/item_address_0".equals(view.getTag())) {
            return new ItemAddressBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
