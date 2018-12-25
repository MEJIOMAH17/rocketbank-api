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
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.operation.vh.RequestHandler;

public class LayoutOperationOutgoingBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private final OnClickListener mCallback42;
    private long mDirtyFlags = -1;
    private RequestHandler mHandler;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView1;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public LayoutOperationOutgoingBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 2, sIncludes, sViewsWithIds);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (RocketTextView) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        setRootTag(view);
        this.mCallback42 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
        setHandler((RequestHandler) obj);
        return true;
    }

    public void setHandler(RequestHandler requestHandler) {
        this.mHandler = requestHandler;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public RequestHandler getHandler() {
        return this.mHandler;
    }

    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        if ((j & 2) != 0) {
            this.mboundView1.setOnClickListener(this.mCallback42);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mHandler;
        if ((i != 0 ? true : null) != null) {
            i.onCancel();
        }
    }

    public static LayoutOperationOutgoingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationOutgoingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutOperationOutgoingBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_operation_outgoing, viewGroup, z, dataBindingComponent);
    }

    public static LayoutOperationOutgoingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationOutgoingBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_operation_outgoing, null, false), dataBindingComponent);
    }

    public static LayoutOperationOutgoingBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationOutgoingBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_operation_outgoing_0".equals(view.getTag())) {
            return new LayoutOperationOutgoingBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
