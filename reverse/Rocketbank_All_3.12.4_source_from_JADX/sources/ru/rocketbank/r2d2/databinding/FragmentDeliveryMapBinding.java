package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.ImageViewBindingAdapter;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.google.android.gms.maps.MapView;
import ru.rocketbank.core.widgets.RocketAddressView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryMapData;
import ru.rocketbank.r2d2.data.binding.delivery.MapLocationListener;

public class FragmentDeliveryMapBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketAddressView addressView;
    public final CardView addresses;
    public final ObservableRecyclerView addressesList;
    public final Button buttonLocation;
    private final OnClickListener mCallback3;
    private DeliveryMapData mData;
    private long mDirtyFlags = -1;
    private MapLocationListener mListener;
    public final MapView mapView;
    public final ImageView markerImg;
    private final LinearLayout mboundView0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.map_view, 3);
        sViewsWithIds.put(C0859R.id.address_view, 4);
        sViewsWithIds.put(C0859R.id.addresses, 5);
        sViewsWithIds.put(C0859R.id.addresses_list, 6);
    }

    public FragmentDeliveryMapBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 7, sIncludes, sViewsWithIds);
        this.addressView = (RocketAddressView) dataBindingComponent[4];
        this.addresses = (CardView) dataBindingComponent[5];
        this.addressesList = (ObservableRecyclerView) dataBindingComponent[6];
        this.buttonLocation = (Button) dataBindingComponent[2];
        this.buttonLocation.setTag(null);
        this.mapView = (MapView) dataBindingComponent[3];
        this.markerImg = (ImageView) dataBindingComponent[1];
        this.markerImg.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        setRootTag(view);
        this.mCallback3 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
            setListener((MapLocationListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((DeliveryMapData) obj);
        }
        return true;
    }

    public void setListener(MapLocationListener mapLocationListener) {
        this.mListener = mapLocationListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public MapLocationListener getListener() {
        return this.mListener;
    }

    public void setData(DeliveryMapData deliveryMapData) {
        this.mData = deliveryMapData;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public DeliveryMapData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataMyLocationHidden((ObservableBoolean) obj, i2);
            case 1:
                return onChangeDataIsUserLead((ObservableBoolean) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataMyLocationHidden(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataIsUserLead(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    protected void executeBindings() {
        int i;
        FragmentDeliveryMapBinding fragmentDeliveryMapBinding = this;
        synchronized (this) {
            try {
                long j = fragmentDeliveryMapBinding.mDirtyFlags;
                fragmentDeliveryMapBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        DeliveryMapData deliveryMapData = fragmentDeliveryMapBinding.mData;
        Drawable drawable = null;
        int i2 = 0;
        if ((j & 27) != 0) {
            Object isUserLead;
            View view;
            int i3;
            long j2 = j & 25;
            if (j2 != 0) {
                boolean z;
                Object myLocationHidden = deliveryMapData != null ? deliveryMapData.getMyLocationHidden() : null;
                updateRegistration(0, myLocationHidden);
                if (myLocationHidden != null) {
                    z = myLocationHidden.get();
                } else {
                    z = false;
                }
                if (j2 != 0) {
                    j = z ? j | 64 : j | 32;
                }
                if (z) {
                    i = 8;
                    j2 = j & 26;
                    if (j2 != 0) {
                        if (deliveryMapData != null) {
                            isUserLead = deliveryMapData.isUserLead();
                        }
                        updateRegistration(1, isUserLead);
                        if (isUserLead != null) {
                            i2 = isUserLead.get();
                        }
                        if (j2 != 0) {
                            j = i2 == 0 ? j | 256 : j | 128;
                        }
                        if (i2 == 0) {
                            view = fragmentDeliveryMapBinding.markerImg;
                            i3 = C0859R.drawable.pin_map_default;
                        } else {
                            view = fragmentDeliveryMapBinding.markerImg;
                            i3 = C0859R.drawable.pin_map_ground;
                        }
                        drawable = getDrawableFromResource(view, i3);
                    }
                }
            }
            i = 0;
            j2 = j & 26;
            if (j2 != 0) {
                if (deliveryMapData != null) {
                    isUserLead = deliveryMapData.isUserLead();
                }
                updateRegistration(1, isUserLead);
                if (isUserLead != null) {
                    i2 = isUserLead.get();
                }
                if (j2 != 0) {
                    if (i2 == 0) {
                    }
                    j = i2 == 0 ? j | 256 : j | 128;
                }
                if (i2 == 0) {
                    view = fragmentDeliveryMapBinding.markerImg;
                    i3 = C0859R.drawable.pin_map_ground;
                } else {
                    view = fragmentDeliveryMapBinding.markerImg;
                    i3 = C0859R.drawable.pin_map_default;
                }
                drawable = getDrawableFromResource(view, i3);
            }
        } else {
            i = 0;
        }
        if ((j & 25) != 0) {
            fragmentDeliveryMapBinding.buttonLocation.setVisibility(i);
        }
        if ((j & 16) != 0) {
            fragmentDeliveryMapBinding.buttonLocation.setOnClickListener(fragmentDeliveryMapBinding.mCallback3);
        }
        if ((j & 26) != 0) {
            ImageViewBindingAdapter.setImageDrawable(fragmentDeliveryMapBinding.markerImg, drawable);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mListener;
        if ((i != 0 ? true : null) != null) {
            i.onMyLocationButtonClicked();
        }
    }

    public static FragmentDeliveryMapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDeliveryMapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentDeliveryMapBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_delivery_map, viewGroup, z, dataBindingComponent);
    }

    public static FragmentDeliveryMapBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDeliveryMapBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_delivery_map, null, false), dataBindingComponent);
    }

    public static FragmentDeliveryMapBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDeliveryMapBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_delivery_map_0".equals(view.getTag())) {
            return new FragmentDeliveryMapBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
