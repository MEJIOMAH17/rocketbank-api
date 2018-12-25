package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryActivityData;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryToolbarData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;

public class ActivityDeliveryBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final FrameLayout container;
    public final DeliveryToolbarBinding include;
    private DeliveryActivityData mData;
    private long mDirtyFlags = -1;
    private ToolbarWithButtonHandler mHandler;
    private OnClickListener mOnClickListener;
    private OnClickListenerImpl mOnClickListenerOnClickAndroidViewViewOnClickListener;
    private DeliveryToolbarData mToolbarData;
    private final LinearLayout mboundView0;
    public final RocketButton repeatButton;

    public static class OnClickListenerImpl implements OnClickListener {
        private OnClickListener value;

        public OnClickListenerImpl setValue(OnClickListener onClickListener) {
            this.value = onClickListener;
            return onClickListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onClick(view);
        }
    }

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(4);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"delivery_toolbar"}, new int[]{2}, new int[]{C0859R.layout.delivery_toolbar});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.container, 3);
    }

    public ActivityDeliveryBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds);
        this.container = (FrameLayout) dataBindingComponent[3];
        this.include = (DeliveryToolbarBinding) dataBindingComponent[2];
        setContainedBinding(this.include);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.repeatButton = (RocketButton) dataBindingComponent[1];
        this.repeatButton.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 64;
        }
        this.include.invalidateAll();
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
        r1 = r5.include;
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
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.ActivityDeliveryBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (60 == i) {
            setOnClickListener((OnClickListener) obj);
        } else if (40 == i) {
            setHandler((ToolbarWithButtonHandler) obj);
        } else if (85 == i) {
            setToolbarData((DeliveryToolbarData) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((DeliveryActivityData) obj);
        }
        return true;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(60);
        super.requestRebind();
    }

    public OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public void setHandler(ToolbarWithButtonHandler toolbarWithButtonHandler) {
        this.mHandler = toolbarWithButtonHandler;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public ToolbarWithButtonHandler getHandler() {
        return this.mHandler;
    }

    public void setToolbarData(DeliveryToolbarData deliveryToolbarData) {
        this.mToolbarData = deliveryToolbarData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(85);
        super.requestRebind();
    }

    public DeliveryToolbarData getToolbarData() {
        return this.mToolbarData;
    }

    public void setData(DeliveryActivityData deliveryActivityData) {
        this.mData = deliveryActivityData;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public DeliveryActivityData getData() {
        return this.mData;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.include.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataRepeatButtonVisible((ObservableBoolean) obj, i2);
            case 1:
                return onChangeInclude((DeliveryToolbarBinding) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataRepeatButtonVisible(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeInclude(DeliveryToolbarBinding deliveryToolbarBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        ActivityDeliveryBinding activityDeliveryBinding = this;
        synchronized (this) {
            try {
                j = activityDeliveryBinding.mDirtyFlags;
                activityDeliveryBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        OnClickListener onClickListener = activityDeliveryBinding.mOnClickListener;
        ToolbarWithButtonHandler toolbarWithButtonHandler = activityDeliveryBinding.mHandler;
        DeliveryToolbarData deliveryToolbarData = activityDeliveryBinding.mToolbarData;
        DeliveryActivityData deliveryActivityData = activityDeliveryBinding.mData;
        if ((j & 68) == 0 || onClickListener == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            if (activityDeliveryBinding.mOnClickListenerOnClickAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                activityDeliveryBinding.mOnClickListenerOnClickAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = activityDeliveryBinding.mOnClickListenerOnClickAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl.setValue(onClickListener);
        }
        long j2 = j & 97;
        int i = 0;
        if (j2 != 0) {
            boolean z;
            Object repeatButtonVisible = deliveryActivityData != null ? deliveryActivityData.getRepeatButtonVisible() : null;
            updateRegistration(0, repeatButtonVisible);
            if (repeatButtonVisible != null) {
                z = repeatButtonVisible.get();
            } else {
                z = false;
            }
            if (j2 != 0) {
                j = z ? j | 256 : j | 128;
            }
            if (!z) {
                i = 8;
            }
        }
        if ((j & 72) != 0) {
            activityDeliveryBinding.include.setHandler(toolbarWithButtonHandler);
        }
        if ((j & 80) != 0) {
            activityDeliveryBinding.include.setToolbarBinding(deliveryToolbarData);
        }
        if ((j & 68) != 0) {
            activityDeliveryBinding.repeatButton.setOnClickListener(onClickListener);
        }
        if ((j & 97) != 0) {
            activityDeliveryBinding.repeatButton.setVisibility(i);
        }
        executeBindingsOn(activityDeliveryBinding.include);
    }

    public static ActivityDeliveryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityDeliveryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityDeliveryBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_delivery, viewGroup, z, dataBindingComponent);
    }

    public static ActivityDeliveryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityDeliveryBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_delivery, null, false), dataBindingComponent);
    }

    public static ActivityDeliveryBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityDeliveryBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_delivery_0".equals(view.getTag())) {
            return new ActivityDeliveryBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
