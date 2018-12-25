package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.generated.callback.OnClickListener.Listener;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.gms.maps.MapView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.operation.vh.MapHandler;

public class LayoutOperationMapBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final OnClickListener mCallback26;
    private final OnClickListener mCallback27;
    private long mDirtyFlags = -1;
    private MapHandler mHandler;
    public final MapView map;
    private final LinearLayout mboundView0;
    public final ImageView minus;
    public final ImageView plus;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.map, 3);
    }

    public LayoutOperationMapBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.map = (MapView) dataBindingComponent[3];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.minus = (ImageView) dataBindingComponent[2];
        this.minus.setTag(null);
        this.plus = (ImageView) dataBindingComponent[1];
        this.plus.setTag(null);
        setRootTag(view);
        this.mCallback27 = new android.databinding.generated.callback.OnClickListener(this, 2);
        this.mCallback26 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
        if (40 != i) {
            return false;
        }
        setHandler((MapHandler) obj);
        return true;
    }

    public void setHandler(MapHandler mapHandler) {
        this.mHandler = mapHandler;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public MapHandler getHandler() {
        return this.mHandler;
    }

    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        if ((j & 2) != 0) {
            this.minus.setOnClickListener(this.mCallback27);
            this.plus.setOnClickListener(this.mCallback26);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        view = null;
        switch (i) {
            case 1:
                i = this.mHandler;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.onZoomIn();
                    break;
                }
                break;
            case 2:
                i = this.mHandler;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.onZoomOut();
                    return;
                }
                break;
            default:
                break;
        }
    }

    public static LayoutOperationMapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationMapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutOperationMapBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_operation_map, viewGroup, z, dataBindingComponent);
    }

    public static LayoutOperationMapBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationMapBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_operation_map, null, false), dataBindingComponent);
    }

    public static LayoutOperationMapBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationMapBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_operation_map_0".equals(view.getTag())) {
            return new LayoutOperationMapBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
