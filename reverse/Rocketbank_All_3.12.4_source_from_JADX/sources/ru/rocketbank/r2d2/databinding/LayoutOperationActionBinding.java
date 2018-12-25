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
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.operation.vh.ActionsHandler;

public class LayoutOperationActionBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private final OnClickListener mCallback44;
    private final OnClickListener mCallback45;
    private long mDirtyFlags = -1;
    private ActionsHandler mHandler;
    private final LinearLayout mboundView0;
    public final FrameLayout receipt;
    public final FrameLayout support;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public LayoutOperationActionBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.receipt = (FrameLayout) dataBindingComponent[2];
        this.receipt.setTag(null);
        this.support = (FrameLayout) dataBindingComponent[1];
        this.support.setTag(null);
        setRootTag(view);
        this.mCallback44 = new android.databinding.generated.callback.OnClickListener(this, 1);
        this.mCallback45 = new android.databinding.generated.callback.OnClickListener(this, 2);
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
        setHandler((ActionsHandler) obj);
        return true;
    }

    public void setHandler(ActionsHandler actionsHandler) {
        this.mHandler = actionsHandler;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public ActionsHandler getHandler() {
        return this.mHandler;
    }

    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        if ((j & 2) != 0) {
            this.receipt.setOnClickListener(this.mCallback45);
            this.support.setOnClickListener(this.mCallback44);
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
                    i.onSupport();
                    return;
                }
                break;
            case 2:
                i = this.mHandler;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.onReceipt();
                    break;
                }
                break;
            default:
                break;
        }
    }

    public static LayoutOperationActionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationActionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutOperationActionBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_operation_action, viewGroup, z, dataBindingComponent);
    }

    public static LayoutOperationActionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationActionBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_operation_action, null, false), dataBindingComponent);
    }

    public static LayoutOperationActionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOperationActionBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_operation_action_0".equals(view.getTag())) {
            return new LayoutOperationActionBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
