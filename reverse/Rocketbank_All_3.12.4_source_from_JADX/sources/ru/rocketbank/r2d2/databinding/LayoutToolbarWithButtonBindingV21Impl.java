package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.support.design.widget.AppBarLayout;
import android.support.v7.widget.Toolbar;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;

public class LayoutToolbarWithButtonBindingV21Impl extends LayoutToolbarWithButtonBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private OnClickListenerImpl mHandlerNextPressedAndroidViewViewOnClickListener;
    private final RocketTextView mboundView1;

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
        sparseIntArray.put(C0859R.id.toolbar, 3);
    }

    public LayoutToolbarWithButtonBindingV21Impl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds));
    }

    private LayoutToolbarWithButtonBindingV21Impl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 4, (AppBarLayout) objArr[0], (RocketButton) objArr[2], (Toolbar) objArr[3]);
        this.mDirtyFlags = -1;
        this.mainAppbar.setTag(null);
        this.mboundView1 = (RocketTextView) objArr[1];
        this.mboundView1.setTag(null);
        this.next.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 64;
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
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(84);
        super.requestRebind();
    }

    public void setHandler(ToolbarWithButtonHandler toolbarWithButtonHandler) {
        this.mHandler = toolbarWithButtonHandler;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeToolbarBindingButton((ObservableField) obj, i2);
            case 1:
                return onChangeToolbarBindingTitle((ObservableField) obj, i2);
            case 2:
                return onChangeToolbarBindingButtonVisibility((ObservableInt) obj, i2);
            case 3:
                return onChangeToolbarBindingButtonEnabled((ObservableBoolean) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeToolbarBindingButton(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeToolbarBindingTitle(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeToolbarBindingButtonVisibility(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeToolbarBindingButtonEnabled(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        LayoutToolbarWithButtonBindingV21Impl layoutToolbarWithButtonBindingV21Impl = this;
        synchronized (this) {
            try {
                j = layoutToolbarWithButtonBindingV21Impl.mDirtyFlags;
                long j2 = 0;
                layoutToolbarWithButtonBindingV21Impl.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        ToolbarWithButtonData toolbarWithButtonData = layoutToolbarWithButtonBindingV21Impl.mToolbarBinding;
        ToolbarWithButtonHandler toolbarWithButtonHandler = layoutToolbarWithButtonBindingV21Impl.mHandler;
        long j3 = 84;
        long j4 = 82;
        long j5 = 81;
        Object obj = null;
        CharSequence charSequence;
        CharSequence charSequence2;
        int i;
        boolean z;
        long j6;
        OnClickListener onClickListener;
        if ((j & 95) != 0) {
            ObservableField title;
            Object buttonEnabled;
            if ((j & 81) != 0) {
                Object button = toolbarWithButtonData != null ? toolbarWithButtonData.getButton() : null;
                updateRegistration(0, button);
                if (button != null) {
                    charSequence = (String) button.get();
                    if ((j & 82) != 0) {
                        if (toolbarWithButtonData == null) {
                            title = toolbarWithButtonData.getTitle();
                        } else {
                            obj = null;
                        }
                        updateRegistration(1, obj);
                        if (obj != null) {
                            charSequence2 = (String) obj.get();
                            if ((j & j3) != j2) {
                                obj = toolbarWithButtonData == null ? toolbarWithButtonData.getButtonVisibility() : null;
                                updateRegistration(2, obj);
                                if (obj != null) {
                                    i = obj.get();
                                    if ((j & 88) != j2) {
                                        buttonEnabled = toolbarWithButtonData == null ? toolbarWithButtonData.getButtonEnabled() : null;
                                        updateRegistration(3, buttonEnabled);
                                        if (buttonEnabled != null) {
                                            z = buttonEnabled.get();
                                            j6 = j & 96;
                                            if (j6 != j2 || toolbarWithButtonHandler == null) {
                                                onClickListener = null;
                                            } else {
                                                OnClickListenerImpl onClickListenerImpl;
                                                if (layoutToolbarWithButtonBindingV21Impl.mHandlerNextPressedAndroidViewViewOnClickListener == null) {
                                                    onClickListenerImpl = new OnClickListenerImpl();
                                                    layoutToolbarWithButtonBindingV21Impl.mHandlerNextPressedAndroidViewViewOnClickListener = onClickListenerImpl;
                                                } else {
                                                    onClickListenerImpl = layoutToolbarWithButtonBindingV21Impl.mHandlerNextPressedAndroidViewViewOnClickListener;
                                                }
                                                onClickListener = onClickListenerImpl.setValue(toolbarWithButtonHandler);
                                            }
                                            if ((j & j4) != j2) {
                                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                                            }
                                            if ((j & 88) != j2) {
                                                layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                                            }
                                            if (j6 != j2) {
                                                layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                                            }
                                            if ((j & j5) != j2) {
                                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                                            }
                                            if ((j & 84) != j2) {
                                                layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                                            }
                                        }
                                    }
                                    z = false;
                                    j6 = j & 96;
                                    if (j6 != j2) {
                                    }
                                    onClickListener = null;
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                                    }
                                    if ((j & 88) != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                                    }
                                    if (j6 != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                                    }
                                    if ((j & 84) != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                                    }
                                }
                            }
                            i = 0;
                            if ((j & 88) != j2) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(3, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                    j6 = j & 96;
                                    if (j6 != j2) {
                                    }
                                    onClickListener = null;
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                                    }
                                    if ((j & 88) != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                                    }
                                    if (j6 != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                                    }
                                    if ((j & 84) != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                                    }
                                }
                            }
                            z = false;
                            j6 = j & 96;
                            if (j6 != j2) {
                            }
                            onClickListener = null;
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                            }
                            if ((j & 88) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                            }
                            if (j6 != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                            }
                            if ((j & 84) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                            }
                        }
                    }
                    charSequence2 = null;
                    if ((j & j3) != j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(2, obj);
                        if (obj != null) {
                            i = obj.get();
                            if ((j & 88) != j2) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(3, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                    j6 = j & 96;
                                    if (j6 != j2) {
                                    }
                                    onClickListener = null;
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                                    }
                                    if ((j & 88) != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                                    }
                                    if (j6 != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                                    }
                                    if ((j & 84) != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                                    }
                                }
                            }
                            z = false;
                            j6 = j & 96;
                            if (j6 != j2) {
                            }
                            onClickListener = null;
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                            }
                            if ((j & 88) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                            }
                            if (j6 != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                            }
                            if ((j & 84) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                            }
                        }
                    }
                    i = 0;
                    if ((j & 88) != j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(3, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                            j6 = j & 96;
                            if (j6 != j2) {
                            }
                            onClickListener = null;
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                            }
                            if ((j & 88) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                            }
                            if (j6 != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                            }
                            if ((j & 84) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                            }
                        }
                    }
                    z = false;
                    j6 = j & 96;
                    if (j6 != j2) {
                    }
                    onClickListener = null;
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                    }
                    if ((j & 88) != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                    }
                    if (j6 != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                    }
                    if ((j & 84) != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                    }
                }
            }
            charSequence = null;
            if ((j & 82) != 0) {
                if (toolbarWithButtonData == null) {
                    obj = null;
                } else {
                    title = toolbarWithButtonData.getTitle();
                }
                updateRegistration(1, obj);
                if (obj != null) {
                    charSequence2 = (String) obj.get();
                    if ((j & j3) != j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(2, obj);
                        if (obj != null) {
                            i = obj.get();
                            if ((j & 88) != j2) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(3, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                    j6 = j & 96;
                                    if (j6 != j2) {
                                    }
                                    onClickListener = null;
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                                    }
                                    if ((j & 88) != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                                    }
                                    if (j6 != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j5) != j2) {
                                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                                    }
                                    if ((j & 84) != j2) {
                                        layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                                    }
                                }
                            }
                            z = false;
                            j6 = j & 96;
                            if (j6 != j2) {
                            }
                            onClickListener = null;
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                            }
                            if ((j & 88) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                            }
                            if (j6 != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                            }
                            if ((j & 84) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                            }
                        }
                    }
                    i = 0;
                    if ((j & 88) != j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(3, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                            j6 = j & 96;
                            if (j6 != j2) {
                            }
                            onClickListener = null;
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                            }
                            if ((j & 88) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                            }
                            if (j6 != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                            }
                            if ((j & 84) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                            }
                        }
                    }
                    z = false;
                    j6 = j & 96;
                    if (j6 != j2) {
                    }
                    onClickListener = null;
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                    }
                    if ((j & 88) != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                    }
                    if (j6 != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                    }
                    if ((j & 84) != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                    }
                }
            }
            charSequence2 = null;
            if ((j & j3) != j2) {
                if (toolbarWithButtonData == null) {
                }
                updateRegistration(2, obj);
                if (obj != null) {
                    i = obj.get();
                    if ((j & 88) != j2) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(3, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                            j6 = j & 96;
                            if (j6 != j2) {
                            }
                            onClickListener = null;
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                            }
                            if ((j & 88) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                            }
                            if (j6 != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                            }
                            if ((j & j5) != j2) {
                                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                            }
                            if ((j & 84) != j2) {
                                layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                            }
                        }
                    }
                    z = false;
                    j6 = j & 96;
                    if (j6 != j2) {
                    }
                    onClickListener = null;
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                    }
                    if ((j & 88) != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                    }
                    if (j6 != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                    }
                    if ((j & 84) != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                    }
                }
            }
            i = 0;
            if ((j & 88) != j2) {
                if (toolbarWithButtonData == null) {
                }
                updateRegistration(3, buttonEnabled);
                if (buttonEnabled != null) {
                    z = buttonEnabled.get();
                    j6 = j & 96;
                    if (j6 != j2) {
                    }
                    onClickListener = null;
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
                    }
                    if ((j & 88) != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
                    }
                    if (j6 != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
                    }
                    if ((j & j5) != j2) {
                        TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
                    }
                    if ((j & 84) != j2) {
                        layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
                    }
                }
            }
            z = false;
            j6 = j & 96;
            if (j6 != j2) {
            }
            onClickListener = null;
            if ((j & j4) != j2) {
                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
            }
            if ((j & 88) != j2) {
                layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
            }
            if (j6 != j2) {
                layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
            }
            if ((j & j5) != j2) {
                TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
            }
            if ((j & 84) != j2) {
                layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
            }
        }
        z = false;
        charSequence = null;
        i = 0;
        charSequence2 = null;
        j6 = j & 96;
        if (j6 != j2) {
        }
        onClickListener = null;
        if ((j & j4) != j2) {
            TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.mboundView1, charSequence2);
        }
        if ((j & 88) != j2) {
            layoutToolbarWithButtonBindingV21Impl.next.setEnabled(z);
        }
        if (j6 != j2) {
            layoutToolbarWithButtonBindingV21Impl.next.setOnClickListener(onClickListener);
        }
        if ((j & j5) != j2) {
            TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingV21Impl.next, charSequence);
        }
        if ((j & 84) != j2) {
            layoutToolbarWithButtonBindingV21Impl.next.setVisibility(i);
        }
    }
}
