package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
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
import ru.rocketbank.core.widgets.RocketEditTextPhone;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;

public class FragmentInputPhoneNumberBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final RocketEditText countryCode;
    public final LinearLayout layoutPhoneNumber;
    private long mDirtyFlags = -1;
    private ToolbarWithButtonHandler mHandler;
    private ToolbarWithButtonData mToolbarBinding;
    private final LinearLayout mboundView0;
    public final RocketEditTextPhone phone;
    public final RocketTextView textViewHintBottom;
    public final LayoutToolbarWithButtonBinding toolbarInclude;

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(6);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"layout_toolbar_with_button"}, new int[]{1}, new int[]{C0859R.layout.layout_toolbar_with_button});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.textViewHintBottom, 2);
        sViewsWithIds.put(C0859R.id.layout_phone_number, 3);
        sViewsWithIds.put(C0859R.id.country_code, 4);
        sViewsWithIds.put(C0859R.id.phone, 5);
    }

    public FragmentInputPhoneNumberBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 1);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds);
        this.countryCode = (RocketEditText) dataBindingComponent[4];
        this.layoutPhoneNumber = (LinearLayout) dataBindingComponent[3];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.phone = (RocketEditTextPhone) dataBindingComponent[5];
        this.textViewHintBottom = (RocketTextView) dataBindingComponent[2];
        this.toolbarInclude = (LayoutToolbarWithButtonBinding) dataBindingComponent[1];
        setContainedBinding(this.toolbarInclude);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 8;
        }
        this.toolbarInclude.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x0018 }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        r1 = r5.toolbarInclude;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r0 = 0;
        return r0;
    L_0x0018:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0018 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.FragmentInputPhoneNumberBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (84 == i) {
            setToolbarBinding((ToolbarWithButtonData) obj);
        } else if (40 != i) {
            return false;
        } else {
            setHandler((ToolbarWithButtonHandler) obj);
        }
        return true;
    }

    public void setToolbarBinding(ToolbarWithButtonData toolbarWithButtonData) {
        this.mToolbarBinding = toolbarWithButtonData;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(84);
        super.requestRebind();
    }

    public ToolbarWithButtonData getToolbarBinding() {
        return this.mToolbarBinding;
    }

    public void setHandler(ToolbarWithButtonHandler toolbarWithButtonHandler) {
        this.mHandler = toolbarWithButtonHandler;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public ToolbarWithButtonHandler getHandler() {
        return this.mHandler;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.toolbarInclude.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        return i != 0 ? false : onChangeToolbarInclude((LayoutToolbarWithButtonBinding) obj, i2);
    }

    private boolean onChangeToolbarInclude(LayoutToolbarWithButtonBinding layoutToolbarWithButtonBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0;
        }
        ToolbarWithButtonData toolbarWithButtonData = this.mToolbarBinding;
        ToolbarWithButtonHandler toolbarWithButtonHandler = this.mHandler;
        if ((j & 12) != 0) {
            this.toolbarInclude.setHandler(toolbarWithButtonHandler);
        }
        if ((j & 10) != 0) {
            this.toolbarInclude.setToolbarBinding(toolbarWithButtonData);
        }
        executeBindingsOn(this.toolbarInclude);
    }

    public static FragmentInputPhoneNumberBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentInputPhoneNumberBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentInputPhoneNumberBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_input_phone_number, viewGroup, z, dataBindingComponent);
    }

    public static FragmentInputPhoneNumberBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentInputPhoneNumberBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_input_phone_number, null, false), dataBindingComponent);
    }

    public static FragmentInputPhoneNumberBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentInputPhoneNumberBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_input_phone_number_0".equals(view.getTag())) {
            return new FragmentInputPhoneNumberBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
