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
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.gms.maps.MapView;
import de.hdodenhof.circleimageview.CircleImageView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryScheduledData;

public class FragmentDeliveryScheduledBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final LinearLayout contentLayout;
    private DeliveryScheduledData mData;
    private long mDirtyFlags = -1;
    public final MapView mapView;
    public final ImageView markerImg;
    private final FrameLayout mboundView0;
    public final RocketTextView text;
    public final CircleImageView userPic;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.map_view, 2);
        sViewsWithIds.put(C0859R.id.content_layout, 3);
        sViewsWithIds.put(C0859R.id.marker_img, 4);
        sViewsWithIds.put(C0859R.id.user_pic, 5);
    }

    public FragmentDeliveryScheduledBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.contentLayout = (LinearLayout) dataBindingComponent[3];
        this.mapView = (MapView) dataBindingComponent[2];
        this.markerImg = (ImageView) dataBindingComponent[4];
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.text = (RocketTextView) dataBindingComponent[1];
        this.text.setTag(null);
        this.userPic = (CircleImageView) dataBindingComponent[5];
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
        setData((DeliveryScheduledData) obj);
        return true;
    }

    public void setData(DeliveryScheduledData deliveryScheduledData) {
        this.mData = deliveryScheduledData;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public DeliveryScheduledData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeDataText((ObservableField) obj, i2);
    }

    private boolean onChangeDataText(ObservableField<String> observableField, int i) {
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
        DeliveryScheduledData deliveryScheduledData = this.mData;
        long j2 = j & 7;
        CharSequence charSequence = null;
        if (j2 != 0) {
            Object text = deliveryScheduledData != null ? deliveryScheduledData.getText() : null;
            updateRegistration(0, text);
            if (text != null) {
                charSequence = (String) text.get();
            }
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.text, charSequence);
        }
    }

    public static FragmentDeliveryScheduledBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDeliveryScheduledBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentDeliveryScheduledBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_delivery_scheduled, viewGroup, z, dataBindingComponent);
    }

    public static FragmentDeliveryScheduledBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDeliveryScheduledBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_delivery_scheduled, null, false), dataBindingComponent);
    }

    public static FragmentDeliveryScheduledBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDeliveryScheduledBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_delivery_scheduled_0".equals(view.getTag())) {
            return new FragmentDeliveryScheduledBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
