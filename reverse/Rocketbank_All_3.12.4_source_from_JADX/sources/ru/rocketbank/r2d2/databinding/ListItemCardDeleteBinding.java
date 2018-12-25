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
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.card.binding.BlockHandler;
import ru.rocketbank.r2d2.root.card.binding.BlockModel;

public class ListItemCardDeleteBinding extends ViewDataBinding implements Listener {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    public final RocketButton blockButton;
    private final OnClickListener mCallback29;
    private BlockModel mData;
    private long mDirtyFlags = -1;
    private BlockHandler mHandler;
    private final LinearLayout mboundView0;

    public ListItemCardDeleteBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 2, sIncludes, sViewsWithIds);
        this.blockButton = (RocketButton) dataBindingComponent[1];
        this.blockButton.setTag(null);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        setRootTag(view);
        this.mCallback29 = new android.databinding.generated.callback.OnClickListener(this, 1);
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
        if (40 == i) {
            setHandler((BlockHandler) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((BlockModel) obj);
        }
        return true;
    }

    public void setHandler(BlockHandler blockHandler) {
        this.mHandler = blockHandler;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public BlockHandler getHandler() {
        return this.mHandler;
    }

    public void setData(BlockModel blockModel) {
        this.mData = blockModel;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public BlockModel getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataTextColor((ObservableField) obj, i2);
            case 1:
                return onChangeDataText((ObservableField) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataTextColor(ObservableField<Integer> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        BlockModel blockModel = this.mData;
        int i = 0;
        CharSequence charSequence = null;
        if ((j & 27) != 0) {
            if ((j & 25) != 0) {
                Object textColor = blockModel != null ? blockModel.getTextColor() : null;
                updateRegistration(0, textColor);
                i = ViewDataBinding.safeUnbox(textColor != null ? (Integer) textColor.get() : null);
            }
            if ((j & 26) != 0) {
                Object text = blockModel != null ? blockModel.getText() : null;
                updateRegistration(1, text);
                if (text != null) {
                    charSequence = (String) text.get();
                }
            }
        }
        if ((j & 26) != 0) {
            TextViewBindingAdapter.setText(this.blockButton, charSequence);
        }
        if ((j & 16) != 0) {
            this.blockButton.setOnClickListener(this.mCallback29);
        }
        if ((j & 25) != 0) {
            this.blockButton.setTextColor(i);
        }
    }

    public final void _internalCallbackOnClick(int i, View view) {
        i = this.mHandler;
        if ((i != 0 ? true : null) != null) {
            i.onClickBlock();
        }
    }

    public static ListItemCardDeleteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ListItemCardDeleteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ListItemCardDeleteBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.list_item_card_delete, viewGroup, z, dataBindingComponent);
    }

    public static ListItemCardDeleteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ListItemCardDeleteBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.list_item_card_delete, null, false), dataBindingComponent);
    }

    public static ListItemCardDeleteBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ListItemCardDeleteBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/list_item_card_delete_0".equals(view.getTag())) {
            return new ListItemCardDeleteBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
