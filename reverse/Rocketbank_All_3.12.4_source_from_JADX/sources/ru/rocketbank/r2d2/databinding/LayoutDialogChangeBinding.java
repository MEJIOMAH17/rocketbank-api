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
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextInputLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.change.ChangeTextDialog;
import ru.rocketbank.r2d2.data.binding.change.ChangeTextHandler;

public class LayoutDialogChangeBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView cancel;
    public final RocketTextView head;
    public final RocketTextInputLayout inputLayoutName;
    private final OnClickListener mCallback6;
    private final OnClickListener mCallback7;
    private ChangeTextDialog mData;
    private long mDirtyFlags = -1;
    private ChangeTextHandler mHandler;
    private final FrameLayout mboundView0;
    public final RocketEditText name;
    public final RocketTextView ok;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.head, 3);
        sViewsWithIds.put(C0859R.id.input_layout_name, 4);
        sViewsWithIds.put(C0859R.id.name, 5);
    }

    public LayoutDialogChangeBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.cancel = (RocketTextView) dataBindingComponent[1];
        this.cancel.setTag(null);
        this.head = (RocketTextView) dataBindingComponent[3];
        this.inputLayoutName = (RocketTextInputLayout) dataBindingComponent[4];
        this.mboundView0 = (FrameLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.name = (RocketEditText) dataBindingComponent[5];
        this.ok = (RocketTextView) dataBindingComponent[2];
        this.ok.setTag(null);
        setRootTag(view);
        this.mCallback7 = new android.databinding.generated.callback.OnClickListener(this, 2);
        this.mCallback6 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
        if (40 == i) {
            setHandler((ChangeTextHandler) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((ChangeTextDialog) obj);
        }
        return true;
    }

    public void setHandler(ChangeTextHandler changeTextHandler) {
        this.mHandler = changeTextHandler;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public ChangeTextHandler getHandler() {
        return this.mHandler;
    }

    public void setData(ChangeTextDialog changeTextDialog) {
        this.mData = changeTextDialog;
    }

    public ChangeTextDialog getData() {
        return this.mData;
    }

    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        if ((j & 4) != 0) {
            this.cancel.setOnClickListener(this.mCallback6);
            this.ok.setOnClickListener(this.mCallback7);
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
                    i.onCancelledClicked();
                    break;
                }
                break;
            case 2:
                i = this.mHandler;
                if (i != 0) {
                    view = 1;
                }
                if (view != null) {
                    i.onOkClicked();
                    return;
                }
                break;
            default:
                break;
        }
    }

    public static LayoutDialogChangeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutDialogChangeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutDialogChangeBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_dialog_change, viewGroup, z, dataBindingComponent);
    }

    public static LayoutDialogChangeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutDialogChangeBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_dialog_change, null, false), dataBindingComponent);
    }

    public static LayoutDialogChangeBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutDialogChangeBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_dialog_change_0".equals(view.getTag())) {
            return new LayoutDialogChangeBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
