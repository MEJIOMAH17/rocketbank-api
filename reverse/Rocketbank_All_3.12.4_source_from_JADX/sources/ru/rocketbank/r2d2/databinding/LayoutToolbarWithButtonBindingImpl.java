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

public class LayoutToolbarWithButtonBindingImpl extends LayoutToolbarWithButtonBinding {
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

    public LayoutToolbarWithButtonBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds));
    }

    private LayoutToolbarWithButtonBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 5, (AppBarLayout) objArr[0], (RocketButton) objArr[2], (Toolbar) objArr[3]);
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
            this.mDirtyFlags = 128;
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
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(84);
        super.requestRebind();
    }

    public void setHandler(ToolbarWithButtonHandler toolbarWithButtonHandler) {
        this.mHandler = toolbarWithButtonHandler;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
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
                return onChangeToolbarBindingButtonVisibility((ObservableInt) obj, i2);
            case 4:
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

    private boolean onChangeToolbarBindingButtonVisibility(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeToolbarBindingButtonEnabled(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
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
        OnClickListener onClickListener;
        LayoutToolbarWithButtonBindingImpl layoutToolbarWithButtonBindingImpl = this;
        synchronized (this) {
            try {
                j = layoutToolbarWithButtonBindingImpl.mDirtyFlags;
                layoutToolbarWithButtonBindingImpl.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        ToolbarWithButtonData toolbarWithButtonData = layoutToolbarWithButtonBindingImpl.mToolbarBinding;
        ToolbarWithButtonHandler toolbarWithButtonHandler = layoutToolbarWithButtonBindingImpl.mHandler;
        if ((j & 191) != 0) {
            Object button;
            Object buttonVisibility;
            Object buttonEnabled;
            j2 = j & 161;
            if (j2 != 0) {
                boolean z2;
                Object toolbarVisible = toolbarWithButtonData != null ? toolbarWithButtonData.getToolbarVisible() : null;
                updateRegistration(0, toolbarVisible);
                if (toolbarVisible != null) {
                    z2 = toolbarVisible.get();
                } else {
                    z2 = false;
                }
                if (j2 != 0) {
                    j = z2 ? j | 512 : j | 256;
                }
                if (!z2) {
                    i = 8;
                    if ((j & 162) != 0) {
                        button = toolbarWithButtonData == null ? toolbarWithButtonData.getButton() : null;
                        updateRegistration(1, button);
                        if (button != null) {
                            charSequence = (String) button.get();
                            if ((j & 164) != 0) {
                                button = toolbarWithButtonData == null ? toolbarWithButtonData.getTitle() : null;
                                updateRegistration(2, button);
                                if (button != null) {
                                    charSequence2 = (String) button.get();
                                    if ((j & 168) != 0) {
                                        buttonVisibility = toolbarWithButtonData == null ? toolbarWithButtonData.getButtonVisibility() : null;
                                        updateRegistration(3, buttonVisibility);
                                        if (buttonVisibility != null) {
                                            i2 = buttonVisibility.get();
                                            if ((j & 176) != 0) {
                                                buttonEnabled = toolbarWithButtonData == null ? toolbarWithButtonData.getButtonEnabled() : null;
                                                updateRegistration(4, buttonEnabled);
                                                if (buttonEnabled != null) {
                                                    z = buttonEnabled.get();
                                                }
                                            }
                                            z = false;
                                        }
                                    }
                                    i2 = 0;
                                    if ((j & 176) != 0) {
                                        if (toolbarWithButtonData == null) {
                                        }
                                        updateRegistration(4, buttonEnabled);
                                        if (buttonEnabled != null) {
                                            z = buttonEnabled.get();
                                        }
                                    }
                                    z = false;
                                }
                            }
                            charSequence2 = null;
                            if ((j & 168) != 0) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(3, buttonVisibility);
                                if (buttonVisibility != null) {
                                    i2 = buttonVisibility.get();
                                    if ((j & 176) != 0) {
                                        if (toolbarWithButtonData == null) {
                                        }
                                        updateRegistration(4, buttonEnabled);
                                        if (buttonEnabled != null) {
                                            z = buttonEnabled.get();
                                        }
                                    }
                                    z = false;
                                }
                            }
                            i2 = 0;
                            if ((j & 176) != 0) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(4, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                }
                            }
                            z = false;
                        }
                    }
                    charSequence = null;
                    if ((j & 164) != 0) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(2, button);
                        if (button != null) {
                            charSequence2 = (String) button.get();
                            if ((j & 168) != 0) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(3, buttonVisibility);
                                if (buttonVisibility != null) {
                                    i2 = buttonVisibility.get();
                                    if ((j & 176) != 0) {
                                        if (toolbarWithButtonData == null) {
                                        }
                                        updateRegistration(4, buttonEnabled);
                                        if (buttonEnabled != null) {
                                            z = buttonEnabled.get();
                                        }
                                    }
                                    z = false;
                                }
                            }
                            i2 = 0;
                            if ((j & 176) != 0) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(4, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                }
                            }
                            z = false;
                        }
                    }
                    charSequence2 = null;
                    if ((j & 168) != 0) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(3, buttonVisibility);
                        if (buttonVisibility != null) {
                            i2 = buttonVisibility.get();
                            if ((j & 176) != 0) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(4, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                }
                            }
                            z = false;
                        }
                    }
                    i2 = 0;
                    if ((j & 176) != 0) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(4, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                        }
                    }
                    z = false;
                }
            }
            i = 0;
            if ((j & 162) != 0) {
                if (toolbarWithButtonData == null) {
                }
                updateRegistration(1, button);
                if (button != null) {
                    charSequence = (String) button.get();
                    if ((j & 164) != 0) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(2, button);
                        if (button != null) {
                            charSequence2 = (String) button.get();
                            if ((j & 168) != 0) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(3, buttonVisibility);
                                if (buttonVisibility != null) {
                                    i2 = buttonVisibility.get();
                                    if ((j & 176) != 0) {
                                        if (toolbarWithButtonData == null) {
                                        }
                                        updateRegistration(4, buttonEnabled);
                                        if (buttonEnabled != null) {
                                            z = buttonEnabled.get();
                                        }
                                    }
                                    z = false;
                                }
                            }
                            i2 = 0;
                            if ((j & 176) != 0) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(4, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                }
                            }
                            z = false;
                        }
                    }
                    charSequence2 = null;
                    if ((j & 168) != 0) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(3, buttonVisibility);
                        if (buttonVisibility != null) {
                            i2 = buttonVisibility.get();
                            if ((j & 176) != 0) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(4, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                }
                            }
                            z = false;
                        }
                    }
                    i2 = 0;
                    if ((j & 176) != 0) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(4, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                        }
                    }
                    z = false;
                }
            }
            charSequence = null;
            if ((j & 164) != 0) {
                if (toolbarWithButtonData == null) {
                }
                updateRegistration(2, button);
                if (button != null) {
                    charSequence2 = (String) button.get();
                    if ((j & 168) != 0) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(3, buttonVisibility);
                        if (buttonVisibility != null) {
                            i2 = buttonVisibility.get();
                            if ((j & 176) != 0) {
                                if (toolbarWithButtonData == null) {
                                }
                                updateRegistration(4, buttonEnabled);
                                if (buttonEnabled != null) {
                                    z = buttonEnabled.get();
                                }
                            }
                            z = false;
                        }
                    }
                    i2 = 0;
                    if ((j & 176) != 0) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(4, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                        }
                    }
                    z = false;
                }
            }
            charSequence2 = null;
            if ((j & 168) != 0) {
                if (toolbarWithButtonData == null) {
                }
                updateRegistration(3, buttonVisibility);
                if (buttonVisibility != null) {
                    i2 = buttonVisibility.get();
                    if ((j & 176) != 0) {
                        if (toolbarWithButtonData == null) {
                        }
                        updateRegistration(4, buttonEnabled);
                        if (buttonEnabled != null) {
                            z = buttonEnabled.get();
                        }
                    }
                    z = false;
                }
            }
            i2 = 0;
            if ((j & 176) != 0) {
                if (toolbarWithButtonData == null) {
                }
                updateRegistration(4, buttonEnabled);
                if (buttonEnabled != null) {
                    z = buttonEnabled.get();
                }
            }
            z = false;
        } else {
            z = false;
            i = 0;
            charSequence2 = null;
            charSequence = null;
            i2 = 0;
        }
        j2 = j & 192;
        if (j2 == 0 || toolbarWithButtonHandler == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            if (layoutToolbarWithButtonBindingImpl.mHandlerNextPressedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                layoutToolbarWithButtonBindingImpl.mHandlerNextPressedAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = layoutToolbarWithButtonBindingImpl.mHandlerNextPressedAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl.setValue(toolbarWithButtonHandler);
        }
        if ((j & 161) != 0) {
            layoutToolbarWithButtonBindingImpl.mainAppbar.setVisibility(i);
        }
        if ((j & 164) != 0) {
            TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingImpl.mboundView1, charSequence2);
        }
        if ((j & 176) != 0) {
            layoutToolbarWithButtonBindingImpl.next.setEnabled(z);
        }
        if (j2 != 0) {
            layoutToolbarWithButtonBindingImpl.next.setOnClickListener(onClickListener);
        }
        if ((j & 162) != 0) {
            TextViewBindingAdapter.setText(layoutToolbarWithButtonBindingImpl.next, charSequence);
        }
        if ((j & 168) != 0) {
            layoutToolbarWithButtonBindingImpl.next.setVisibility(i2);
        }
    }
}
