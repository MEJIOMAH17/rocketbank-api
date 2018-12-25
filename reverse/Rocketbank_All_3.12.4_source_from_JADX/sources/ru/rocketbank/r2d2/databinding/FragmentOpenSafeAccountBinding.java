package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.OpenSafeAccount;

public class FragmentOpenSafeAccountBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView description;
    public final RocketTextView details;
    private OpenSafeAccount mData;
    private long mDirtyFlags = -1;
    private final LinearLayout mboundView0;
    public final RocketEditText name;
    public final RocketTextView open;

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.name, 1);
        sViewsWithIds.put(C0859R.id.description, 2);
        sViewsWithIds.put(C0859R.id.details, 3);
        sViewsWithIds.put(C0859R.id.open, 4);
    }

    public FragmentOpenSafeAccountBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 0);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.description = (RocketTextView) dataBindingComponent[2];
        this.details = (RocketTextView) dataBindingComponent[3];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.name = (RocketEditText) dataBindingComponent[1];
        this.open = (RocketTextView) dataBindingComponent[4];
        setRootTag(view);
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
        if (24 != i) {
            return false;
        }
        setData((OpenSafeAccount) obj);
        return true;
    }

    public void setData(OpenSafeAccount openSafeAccount) {
        this.mData = openSafeAccount;
    }

    public OpenSafeAccount getData() {
        return this.mData;
    }

    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0;
        }
    }

    public static FragmentOpenSafeAccountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentOpenSafeAccountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentOpenSafeAccountBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_open_safe_account, viewGroup, z, dataBindingComponent);
    }

    public static FragmentOpenSafeAccountBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentOpenSafeAccountBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_open_safe_account, null, false), dataBindingComponent);
    }

    public static FragmentOpenSafeAccountBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentOpenSafeAccountBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_open_safe_account_0".equals(view.getTag())) {
            return new FragmentOpenSafeAccountBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
