package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.support.design.widget.AppBarLayout;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryToolbarData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.registration.fragment.ProgressRegistrationView;

public class DeliveryToolbarBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final AppBarLayout deliveryAppbar;
    private long mDirtyFlags = -1;
    private ToolbarWithButtonHandler mHandler;
    private OnClickListenerImpl mHandlerNextPressedAndroidViewViewOnClickListener;
    private DeliveryToolbarData mToolbarBinding;
    private final RocketTextView mboundView1;
    public final RocketButton next;
    public final ProgressRegistrationView registrationProgressView;
    public final Toolbar toolbar;

    public static class OnClickListenerImpl implements OnClickListener {
        private ToolbarWithButtonHandler value;

        public OnClickListenerImpl setValue(ToolbarWithButtonHandler toolbarWithButtonHandler) {
            this.value = toolbarWithButtonHandler;
            return toolbarWithButtonHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.nextPressed(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.toolbar, 4);
    }

    public DeliveryToolbarBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 6);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.deliveryAppbar = (AppBarLayout) dataBindingComponent[0];
        this.deliveryAppbar.setTag(null);
        this.mboundView1 = (RocketTextView) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.next = (RocketButton) dataBindingComponent[2];
        this.next.setTag(null);
        this.registrationProgressView = (ProgressRegistrationView) dataBindingComponent[3];
        this.registrationProgressView.setTag(null);
        this.toolbar = (Toolbar) dataBindingComponent[4];
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 256;
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
        if (84 == i) {
            setToolbarBinding((DeliveryToolbarData) obj);
        } else if (40 != i) {
            return false;
        } else {
            setHandler((ToolbarWithButtonHandler) obj);
        }
        return true;
    }

    public void setToolbarBinding(DeliveryToolbarData deliveryToolbarData) {
        this.mToolbarBinding = deliveryToolbarData;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(84);
        super.requestRebind();
    }

    public DeliveryToolbarData getToolbarBinding() {
        return this.mToolbarBinding;
    }

    public void setHandler(ToolbarWithButtonHandler toolbarWithButtonHandler) {
        this.mHandler = toolbarWithButtonHandler;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public ToolbarWithButtonHandler getHandler() {
        return this.mHandler;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeToolbarBindingToolbarVisible((ObservableBoolean) obj, i2);
            case 1:
                return onChangeToolbarBindingButton((ObservableField) obj, i2);
            case 2:
                return onChangeToolbarBindingTitle((ObservableField) obj, i2);
            case 3:
                return onChangeToolbarBindingIsUserLead((ObservableBoolean) obj, i2);
            case 4:
                return onChangeToolbarBindingButtonVisibility((ObservableInt) obj, i2);
            case 5:
                return onChangeToolbarBindingButtonEnabled((ObservableBoolean) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeToolbarBindingToolbarVisible(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeToolbarBindingButton(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeToolbarBindingTitle(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeToolbarBindingIsUserLead(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeToolbarBindingButtonVisibility(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeToolbarBindingButtonEnabled(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        long j2;
        int i;
        CharSequence charSequence;
        CharSequence charSequence2;
        int i2;
        boolean z;
        int i3;
        OnClickListener onClickListener;
        DeliveryToolbarBinding deliveryToolbarBinding = this;
        synchronized (this) {
            try {
                j = deliveryToolbarBinding.mDirtyFlags;
                deliveryToolbarBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        DeliveryToolbarData deliveryToolbarData = deliveryToolbarBinding.mToolbarBinding;
        ToolbarWithButtonHandler toolbarWithButtonHandler = deliveryToolbarBinding.mHandler;
        if ((j & 383) != 0) {
            Object button;
            long j3;
            Object isUserLead;
            boolean z2;
            Object buttonEnabled;
            j2 = j & 321;
            int i4 = 8;
            if (j2 != 0) {
                boolean z3;
                Object toolbarVisible = deliveryToolbarData != null ? deliveryToolbarData.getToolbarVisible() : null;
                updateRegistration(0, toolbarVisible);
                if (toolbarVisible != null) {
                    z3 = toolbarVisible.get();
                } else {
                    z3 = false;
                }
                if (j2 != 0) {
                    j = z3 ? j | PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID : j | 512;
                }
                if (!z3) {
                    i = 8;
                    if ((j & 322) != 0) {
                        button = deliveryToolbarData == null ? deliveryToolbarData.getButton() : null;
                        updateRegistration(1, button);
                        if (button != null) {
                            charSequence = (String) button.get();
                            if ((j & 324) != 0) {
                                button = deliveryToolbarData == null ? deliveryToolbarData.getTitle() : null;
                                updateRegistration(2, button);
                                if (button != null) {
                                    charSequence2 = (String) button.get();
                                    j3 = j & 328;
                                    if (j3 == 0) {
                                        isUserLead = deliveryToolbarData == null ? deliveryToolbarData.isUserLead() : null;
                                        updateRegistration(3, isUserLead);
                                        if (isUserLead == null) {
                                            z2 = isUserLead.get();
                                        } else {
                                            z2 = false;
                                        }
                                        j2 = j3 == 0 ? z2 ? j | PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : j | PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH : j;
                                        if (z2) {
                                            i4 = 0;
                                        }
                                        j = j2;
                                    } else {
                                        i4 = 0;
                                    }
                                    if ((j & 336) != 0) {
                                        isUserLead = deliveryToolbarData == null ? deliveryToolbarData.getButtonVisibility() : null;
                                        updateRegistration(4, isUserLead);
                                        if (isUserLead != null) {
                                            i2 = isUserLead.get();
                                            if ((j & 352) != 0) {
                                                buttonEnabled = deliveryToolbarData == null ? deliveryToolbarData.getButtonEnabled() : null;
                                                updateRegistration(5, buttonEnabled);
                                                if (buttonEnabled != null) {
                                                    z = buttonEnabled.get();
                                                    i3 = i4;
                                                }
                                            }
                                            i3 = i4;
                                            z = false;
                                        }
                                    }
                                    i2 = 0;
                                    if ((j & 352) != 0) {
                                        if (deliveryToolbarData == null) {
                                        }
                                        updateRegistration(5, buttonEnabled);
                                        if (buttonEnabled != null) {
                                            z = buttonEnabled.get();
                                            i3 = i4;
                                        }
                                    }
                                    i3 = i4;
                                    z = false;
                                }
                            }
                            charSequence2 = null;
                            j3 = j & 328;
                            if (j3 == 0) {
                                i4 = 0;
                            } else {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(3, isUserLead);
                                if (isUserLead == null) {
                                    z2 = false;
                                } else {
                                    z2 = isUserLead.get();
                                }
                                if (j3 == 0) {
                                }
                                if (z2) {
                                    i4 = 0;
                                }
                                j = j2;
                            }
                            if ((j & 336) != 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(4, isUserLead);
                                if (isUserLead != null) {
                                    i2 = isUserLead.get();
                                    if ((j & 352) != 0) {
                                        if (deliveryToolbarData == null) {
                                        }
                                        updateRegistration(5, buttonEnabled);
                                        if (buttonEnabled != null) {
                                            z = buttonEnabled.get();
                                            i3 = i4;
                                        }
                                    }
                                    i3 = i4;
                                    z = false;
                                }
                            }
                            i2 = 0;
                            if ((j & 352) != 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(5, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                    i3 = i4;
                                }
                            }
                            i3 = i4;
                            z = false;
                        }
                    }
                    charSequence = null;
                    if ((j & 324) != 0) {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(2, button);
                        if (button != null) {
                            charSequence2 = (String) button.get();
                            j3 = j & 328;
                            if (j3 == 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(3, isUserLead);
                                if (isUserLead == null) {
                                    z2 = isUserLead.get();
                                } else {
                                    z2 = false;
                                }
                                if (j3 == 0) {
                                    if (z2) {
                                    }
                                }
                                if (z2) {
                                    i4 = 0;
                                }
                                j = j2;
                            } else {
                                i4 = 0;
                            }
                            if ((j & 336) != 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(4, isUserLead);
                                if (isUserLead != null) {
                                    i2 = isUserLead.get();
                                    if ((j & 352) != 0) {
                                        if (deliveryToolbarData == null) {
                                        }
                                        updateRegistration(5, buttonEnabled);
                                        if (buttonEnabled != null) {
                                            z = buttonEnabled.get();
                                            i3 = i4;
                                        }
                                    }
                                    i3 = i4;
                                    z = false;
                                }
                            }
                            i2 = 0;
                            if ((j & 352) != 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(5, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                    i3 = i4;
                                }
                            }
                            i3 = i4;
                            z = false;
                        }
                    }
                    charSequence2 = null;
                    j3 = j & 328;
                    if (j3 == 0) {
                        i4 = 0;
                    } else {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(3, isUserLead);
                        if (isUserLead == null) {
                            z2 = false;
                        } else {
                            z2 = isUserLead.get();
                        }
                        if (j3 == 0) {
                        }
                        if (z2) {
                            i4 = 0;
                        }
                        j = j2;
                    }
                    if ((j & 336) != 0) {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(4, isUserLead);
                        if (isUserLead != null) {
                            i2 = isUserLead.get();
                            if ((j & 352) != 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(5, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                    i3 = i4;
                                }
                            }
                            i3 = i4;
                            z = false;
                        }
                    }
                    i2 = 0;
                    if ((j & 352) != 0) {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(5, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                            i3 = i4;
                        }
                    }
                    i3 = i4;
                    z = false;
                }
            }
            i = 0;
            if ((j & 322) != 0) {
                if (deliveryToolbarData == null) {
                }
                updateRegistration(1, button);
                if (button != null) {
                    charSequence = (String) button.get();
                    if ((j & 324) != 0) {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(2, button);
                        if (button != null) {
                            charSequence2 = (String) button.get();
                            j3 = j & 328;
                            if (j3 == 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(3, isUserLead);
                                if (isUserLead == null) {
                                    z2 = isUserLead.get();
                                } else {
                                    z2 = false;
                                }
                                if (j3 == 0) {
                                    if (z2) {
                                    }
                                }
                                if (z2) {
                                    i4 = 0;
                                }
                                j = j2;
                            } else {
                                i4 = 0;
                            }
                            if ((j & 336) != 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(4, isUserLead);
                                if (isUserLead != null) {
                                    i2 = isUserLead.get();
                                    if ((j & 352) != 0) {
                                        if (deliveryToolbarData == null) {
                                        }
                                        updateRegistration(5, buttonEnabled);
                                        if (buttonEnabled != null) {
                                            z = buttonEnabled.get();
                                            i3 = i4;
                                        }
                                    }
                                    i3 = i4;
                                    z = false;
                                }
                            }
                            i2 = 0;
                            if ((j & 352) != 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(5, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                    i3 = i4;
                                }
                            }
                            i3 = i4;
                            z = false;
                        }
                    }
                    charSequence2 = null;
                    j3 = j & 328;
                    if (j3 == 0) {
                        i4 = 0;
                    } else {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(3, isUserLead);
                        if (isUserLead == null) {
                            z2 = false;
                        } else {
                            z2 = isUserLead.get();
                        }
                        if (j3 == 0) {
                        }
                        if (z2) {
                            i4 = 0;
                        }
                        j = j2;
                    }
                    if ((j & 336) != 0) {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(4, isUserLead);
                        if (isUserLead != null) {
                            i2 = isUserLead.get();
                            if ((j & 352) != 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(5, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                    i3 = i4;
                                }
                            }
                            i3 = i4;
                            z = false;
                        }
                    }
                    i2 = 0;
                    if ((j & 352) != 0) {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(5, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                            i3 = i4;
                        }
                    }
                    i3 = i4;
                    z = false;
                }
            }
            charSequence = null;
            if ((j & 324) != 0) {
                if (deliveryToolbarData == null) {
                }
                updateRegistration(2, button);
                if (button != null) {
                    charSequence2 = (String) button.get();
                    j3 = j & 328;
                    if (j3 == 0) {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(3, isUserLead);
                        if (isUserLead == null) {
                            z2 = isUserLead.get();
                        } else {
                            z2 = false;
                        }
                        if (j3 == 0) {
                            if (z2) {
                            }
                        }
                        if (z2) {
                            i4 = 0;
                        }
                        j = j2;
                    } else {
                        i4 = 0;
                    }
                    if ((j & 336) != 0) {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(4, isUserLead);
                        if (isUserLead != null) {
                            i2 = isUserLead.get();
                            if ((j & 352) != 0) {
                                if (deliveryToolbarData == null) {
                                }
                                updateRegistration(5, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                    i3 = i4;
                                }
                            }
                            i3 = i4;
                            z = false;
                        }
                    }
                    i2 = 0;
                    if ((j & 352) != 0) {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(5, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                            i3 = i4;
                        }
                    }
                    i3 = i4;
                    z = false;
                }
            }
            charSequence2 = null;
            j3 = j & 328;
            if (j3 == 0) {
                i4 = 0;
            } else {
                if (deliveryToolbarData == null) {
                }
                updateRegistration(3, isUserLead);
                if (isUserLead == null) {
                    z2 = false;
                } else {
                    z2 = isUserLead.get();
                }
                if (j3 == 0) {
                }
                if (z2) {
                    i4 = 0;
                }
                j = j2;
            }
            if ((j & 336) != 0) {
                if (deliveryToolbarData == null) {
                }
                updateRegistration(4, isUserLead);
                if (isUserLead != null) {
                    i2 = isUserLead.get();
                    if ((j & 352) != 0) {
                        if (deliveryToolbarData == null) {
                        }
                        updateRegistration(5, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                            i3 = i4;
                        }
                    }
                    i3 = i4;
                    z = false;
                }
            }
            i2 = 0;
            if ((j & 352) != 0) {
                if (deliveryToolbarData == null) {
                }
                updateRegistration(5, buttonEnabled);
                if (buttonEnabled != null) {
                    z = buttonEnabled.get();
                    i3 = i4;
                }
            }
            i3 = i4;
            z = false;
        } else {
            z = false;
            i = 0;
            charSequence2 = null;
            charSequence = null;
            i2 = 0;
            i3 = 0;
        }
        j2 = j & 384;
        if (j2 == 0 || toolbarWithButtonHandler == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            if (deliveryToolbarBinding.mHandlerNextPressedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                deliveryToolbarBinding.mHandlerNextPressedAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = deliveryToolbarBinding.mHandlerNextPressedAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl.setValue(toolbarWithButtonHandler);
        }
        if ((j & 321) != 0) {
            deliveryToolbarBinding.deliveryAppbar.setVisibility(i);
        }
        if ((j & 324) != 0) {
            TextViewBindingAdapter.setText(deliveryToolbarBinding.mboundView1, charSequence2);
        }
        if ((j & 352) != 0) {
            deliveryToolbarBinding.next.setEnabled(z);
        }
        if (j2 != 0) {
            deliveryToolbarBinding.next.setOnClickListener(onClickListener);
        }
        if ((j & 322) != 0) {
            TextViewBindingAdapter.setText(deliveryToolbarBinding.next, charSequence);
        }
        if ((j & 336) != 0) {
            deliveryToolbarBinding.next.setVisibility(i2);
        }
        if ((j & 328) != 0) {
            deliveryToolbarBinding.registrationProgressView.setVisibility(i3);
        }
    }

    public static DeliveryToolbarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static DeliveryToolbarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (DeliveryToolbarBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.delivery_toolbar, viewGroup, z, dataBindingComponent);
    }

    public static DeliveryToolbarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static DeliveryToolbarBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.delivery_toolbar, null, false), dataBindingComponent);
    }

    public static DeliveryToolbarBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static DeliveryToolbarBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/delivery_toolbar_0".equals(view.getTag())) {
            return new DeliveryToolbarBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
