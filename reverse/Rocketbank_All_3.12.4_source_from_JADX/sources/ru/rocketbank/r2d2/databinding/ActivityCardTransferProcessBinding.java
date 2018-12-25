package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.CoordinatorLayout;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.ProcessActivityData;
import ru.rocketbank.r2d2.data.binding.ProcessHandler;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;

public class ActivityCardTransferProcessBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final CardView finishButton;
    public final LayoutToolbarWithButtonBinding include;
    public final RocketLoader loader;
    private long mDirtyFlags = -1;
    private ToolbarWithButtonHandler mHandler;
    private ProcessActivityData mProcessData;
    private ProcessHandler mProcessHandler;
    private OnClickListenerImpl mProcessHandlerOnClosePressedAndroidViewViewOnClickListener;
    private OnClickListenerImpl1 mProcessHandlerOnRetryPressedAndroidViewViewOnClickListener;
    private ToolbarWithButtonData mToolbarBinding;
    private final CoordinatorLayout mboundView0;
    private final LinearLayout mboundView1;
    public final RocketTextView message;
    public final RocketTextView ready;
    public final RocketTextView repeat;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private ProcessHandler value;

        public OnClickListenerImpl1 setValue(ProcessHandler processHandler) {
            this.value = processHandler;
            return processHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onRetryPressed(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private ProcessHandler value;

        public OnClickListenerImpl setValue(ProcessHandler processHandler) {
            this.value = processHandler;
            return processHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onClosePressed(view);
        }
    }

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(8);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"layout_toolbar_with_button"}, new int[]{5}, new int[]{C0859R.layout.layout_toolbar_with_button});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.finishButton, 6);
        sViewsWithIds.put(C0859R.id.loader, 7);
    }

    public ActivityCardTransferProcessBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 4);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds);
        this.finishButton = (CardView) dataBindingComponent[6];
        this.include = (LayoutToolbarWithButtonBinding) dataBindingComponent[5];
        setContainedBinding(this.include);
        this.loader = (RocketLoader) dataBindingComponent[7];
        this.mboundView0 = (CoordinatorLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (LinearLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.message = (RocketTextView) dataBindingComponent[4];
        this.message.setTag(null);
        this.ready = (RocketTextView) dataBindingComponent[2];
        this.ready.setTag(null);
        this.repeat = (RocketTextView) dataBindingComponent[3];
        this.repeat.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 256;
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
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.ActivityCardTransferProcessBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (84 == i) {
            setToolbarBinding((ToolbarWithButtonData) obj);
        } else if (40 == i) {
            setHandler((ToolbarWithButtonHandler) obj);
        } else if (66 == i) {
            setProcessHandler((ProcessHandler) obj);
        } else if (65 != i) {
            return false;
        } else {
            setProcessData((ProcessActivityData) obj);
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

    public ToolbarWithButtonData getToolbarBinding() {
        return this.mToolbarBinding;
    }

    public void setHandler(ToolbarWithButtonHandler toolbarWithButtonHandler) {
        this.mHandler = toolbarWithButtonHandler;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public ToolbarWithButtonHandler getHandler() {
        return this.mHandler;
    }

    public void setProcessHandler(ProcessHandler processHandler) {
        this.mProcessHandler = processHandler;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(66);
        super.requestRebind();
    }

    public ProcessHandler getProcessHandler() {
        return this.mProcessHandler;
    }

    public void setProcessData(ProcessActivityData processActivityData) {
        this.mProcessData = processActivityData;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(65);
        super.requestRebind();
    }

    public ProcessActivityData getProcessData() {
        return this.mProcessData;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.include.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeProcessDataMessageText((ObservableField) obj, i2);
            case 1:
                return onChangeProcessDataRetryVisible((ObservableInt) obj, i2);
            case 2:
                return onChangeInclude((LayoutToolbarWithButtonBinding) obj, i2);
            case 3:
                return onChangeProcessDataButtonsVisible((ObservableInt) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeProcessDataMessageText(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeProcessDataRetryVisible(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeInclude(LayoutToolbarWithButtonBinding layoutToolbarWithButtonBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeProcessDataButtonsVisible(ObservableInt observableInt, int i) {
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
        OnClickListener onClickListener;
        OnClickListener onClickListener2;
        ActivityCardTransferProcessBinding activityCardTransferProcessBinding = this;
        synchronized (this) {
            try {
                j = activityCardTransferProcessBinding.mDirtyFlags;
                activityCardTransferProcessBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        ToolbarWithButtonData toolbarWithButtonData = activityCardTransferProcessBinding.mToolbarBinding;
        ToolbarWithButtonHandler toolbarWithButtonHandler = activityCardTransferProcessBinding.mHandler;
        ProcessHandler processHandler = activityCardTransferProcessBinding.mProcessHandler;
        ProcessActivityData processActivityData = activityCardTransferProcessBinding.mProcessData;
        long j2 = j & 320;
        if (j2 == 0 || processHandler == null) {
            onClickListener = null;
            onClickListener2 = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            OnClickListenerImpl1 onClickListenerImpl1;
            if (activityCardTransferProcessBinding.mProcessHandlerOnClosePressedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                activityCardTransferProcessBinding.mProcessHandlerOnClosePressedAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = activityCardTransferProcessBinding.mProcessHandlerOnClosePressedAndroidViewViewOnClickListener;
            }
            onClickListener2 = onClickListenerImpl.setValue(processHandler);
            if (activityCardTransferProcessBinding.mProcessHandlerOnRetryPressedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl1 = new OnClickListenerImpl1();
                activityCardTransferProcessBinding.mProcessHandlerOnRetryPressedAndroidViewViewOnClickListener = onClickListenerImpl1;
            } else {
                onClickListenerImpl1 = activityCardTransferProcessBinding.mProcessHandlerOnRetryPressedAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl1.setValue(processHandler);
        }
        long j3 = 392;
        long j4 = 386;
        long j5 = 385;
        Object obj = null;
        CharSequence charSequence;
        int i;
        int i2;
        if ((j & 395) != 0) {
            ObservableInt retryVisible;
            Object buttonsVisible;
            if ((j & 385) != 0) {
                Object messageText = processActivityData != null ? processActivityData.getMessageText() : null;
                updateRegistration(0, messageText);
                if (messageText != null) {
                    charSequence = (String) messageText.get();
                    if ((j & 386) != 0) {
                        if (processActivityData == null) {
                            retryVisible = processActivityData.getRetryVisible();
                        } else {
                            obj = null;
                        }
                        updateRegistration(1, obj);
                        if (obj != null) {
                            i = obj.get();
                            if ((j & j3) != 0) {
                                buttonsVisible = processActivityData == null ? processActivityData.getButtonsVisible() : null;
                                updateRegistration(3, buttonsVisible);
                                if (buttonsVisible != null) {
                                    i2 = buttonsVisible.get();
                                    if ((j & 288) != 0) {
                                        activityCardTransferProcessBinding.include.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 272) != 0) {
                                        activityCardTransferProcessBinding.include.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    if ((j & j3) != 0) {
                                        activityCardTransferProcessBinding.mboundView1.setVisibility(i2);
                                    }
                                    if ((j & j5) != 0) {
                                        activityCardTransferProcessBinding.message.setText(charSequence);
                                    }
                                    if (j2 != 0) {
                                        activityCardTransferProcessBinding.ready.setOnClickListener(onClickListener2);
                                        activityCardTransferProcessBinding.repeat.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != 0) {
                                        activityCardTransferProcessBinding.repeat.setVisibility(i);
                                    }
                                    executeBindingsOn(activityCardTransferProcessBinding.include);
                                }
                            }
                            i2 = 0;
                            if ((j & 288) != 0) {
                                activityCardTransferProcessBinding.include.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 272) != 0) {
                                activityCardTransferProcessBinding.include.setToolbarBinding(toolbarWithButtonData);
                            }
                            if ((j & j3) != 0) {
                                activityCardTransferProcessBinding.mboundView1.setVisibility(i2);
                            }
                            if ((j & j5) != 0) {
                                activityCardTransferProcessBinding.message.setText(charSequence);
                            }
                            if (j2 != 0) {
                                activityCardTransferProcessBinding.ready.setOnClickListener(onClickListener2);
                                activityCardTransferProcessBinding.repeat.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                activityCardTransferProcessBinding.repeat.setVisibility(i);
                            }
                            executeBindingsOn(activityCardTransferProcessBinding.include);
                        }
                    }
                    i = 0;
                    if ((j & j3) != 0) {
                        if (processActivityData == null) {
                        }
                        updateRegistration(3, buttonsVisible);
                        if (buttonsVisible != null) {
                            i2 = buttonsVisible.get();
                            if ((j & 288) != 0) {
                                activityCardTransferProcessBinding.include.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 272) != 0) {
                                activityCardTransferProcessBinding.include.setToolbarBinding(toolbarWithButtonData);
                            }
                            if ((j & j3) != 0) {
                                activityCardTransferProcessBinding.mboundView1.setVisibility(i2);
                            }
                            if ((j & j5) != 0) {
                                activityCardTransferProcessBinding.message.setText(charSequence);
                            }
                            if (j2 != 0) {
                                activityCardTransferProcessBinding.ready.setOnClickListener(onClickListener2);
                                activityCardTransferProcessBinding.repeat.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                activityCardTransferProcessBinding.repeat.setVisibility(i);
                            }
                            executeBindingsOn(activityCardTransferProcessBinding.include);
                        }
                    }
                    i2 = 0;
                    if ((j & 288) != 0) {
                        activityCardTransferProcessBinding.include.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 272) != 0) {
                        activityCardTransferProcessBinding.include.setToolbarBinding(toolbarWithButtonData);
                    }
                    if ((j & j3) != 0) {
                        activityCardTransferProcessBinding.mboundView1.setVisibility(i2);
                    }
                    if ((j & j5) != 0) {
                        activityCardTransferProcessBinding.message.setText(charSequence);
                    }
                    if (j2 != 0) {
                        activityCardTransferProcessBinding.ready.setOnClickListener(onClickListener2);
                        activityCardTransferProcessBinding.repeat.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != 0) {
                        activityCardTransferProcessBinding.repeat.setVisibility(i);
                    }
                    executeBindingsOn(activityCardTransferProcessBinding.include);
                }
            }
            charSequence = null;
            if ((j & 386) != 0) {
                if (processActivityData == null) {
                    obj = null;
                } else {
                    retryVisible = processActivityData.getRetryVisible();
                }
                updateRegistration(1, obj);
                if (obj != null) {
                    i = obj.get();
                    if ((j & j3) != 0) {
                        if (processActivityData == null) {
                        }
                        updateRegistration(3, buttonsVisible);
                        if (buttonsVisible != null) {
                            i2 = buttonsVisible.get();
                            if ((j & 288) != 0) {
                                activityCardTransferProcessBinding.include.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 272) != 0) {
                                activityCardTransferProcessBinding.include.setToolbarBinding(toolbarWithButtonData);
                            }
                            if ((j & j3) != 0) {
                                activityCardTransferProcessBinding.mboundView1.setVisibility(i2);
                            }
                            if ((j & j5) != 0) {
                                activityCardTransferProcessBinding.message.setText(charSequence);
                            }
                            if (j2 != 0) {
                                activityCardTransferProcessBinding.ready.setOnClickListener(onClickListener2);
                                activityCardTransferProcessBinding.repeat.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != 0) {
                                activityCardTransferProcessBinding.repeat.setVisibility(i);
                            }
                            executeBindingsOn(activityCardTransferProcessBinding.include);
                        }
                    }
                    i2 = 0;
                    if ((j & 288) != 0) {
                        activityCardTransferProcessBinding.include.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 272) != 0) {
                        activityCardTransferProcessBinding.include.setToolbarBinding(toolbarWithButtonData);
                    }
                    if ((j & j3) != 0) {
                        activityCardTransferProcessBinding.mboundView1.setVisibility(i2);
                    }
                    if ((j & j5) != 0) {
                        activityCardTransferProcessBinding.message.setText(charSequence);
                    }
                    if (j2 != 0) {
                        activityCardTransferProcessBinding.ready.setOnClickListener(onClickListener2);
                        activityCardTransferProcessBinding.repeat.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != 0) {
                        activityCardTransferProcessBinding.repeat.setVisibility(i);
                    }
                    executeBindingsOn(activityCardTransferProcessBinding.include);
                }
            }
            i = 0;
            if ((j & j3) != 0) {
                if (processActivityData == null) {
                }
                updateRegistration(3, buttonsVisible);
                if (buttonsVisible != null) {
                    i2 = buttonsVisible.get();
                    if ((j & 288) != 0) {
                        activityCardTransferProcessBinding.include.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 272) != 0) {
                        activityCardTransferProcessBinding.include.setToolbarBinding(toolbarWithButtonData);
                    }
                    if ((j & j3) != 0) {
                        activityCardTransferProcessBinding.mboundView1.setVisibility(i2);
                    }
                    if ((j & j5) != 0) {
                        activityCardTransferProcessBinding.message.setText(charSequence);
                    }
                    if (j2 != 0) {
                        activityCardTransferProcessBinding.ready.setOnClickListener(onClickListener2);
                        activityCardTransferProcessBinding.repeat.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != 0) {
                        activityCardTransferProcessBinding.repeat.setVisibility(i);
                    }
                    executeBindingsOn(activityCardTransferProcessBinding.include);
                }
            }
            i2 = 0;
            if ((j & 288) != 0) {
                activityCardTransferProcessBinding.include.setHandler(toolbarWithButtonHandler);
            }
            if ((j & 272) != 0) {
                activityCardTransferProcessBinding.include.setToolbarBinding(toolbarWithButtonData);
            }
            if ((j & j3) != 0) {
                activityCardTransferProcessBinding.mboundView1.setVisibility(i2);
            }
            if ((j & j5) != 0) {
                activityCardTransferProcessBinding.message.setText(charSequence);
            }
            if (j2 != 0) {
                activityCardTransferProcessBinding.ready.setOnClickListener(onClickListener2);
                activityCardTransferProcessBinding.repeat.setOnClickListener(onClickListener);
            }
            if ((j & j4) != 0) {
                activityCardTransferProcessBinding.repeat.setVisibility(i);
            }
            executeBindingsOn(activityCardTransferProcessBinding.include);
        }
        i2 = 0;
        i = 0;
        charSequence = null;
        if ((j & 288) != 0) {
            activityCardTransferProcessBinding.include.setHandler(toolbarWithButtonHandler);
        }
        if ((j & 272) != 0) {
            activityCardTransferProcessBinding.include.setToolbarBinding(toolbarWithButtonData);
        }
        if ((j & j3) != 0) {
            activityCardTransferProcessBinding.mboundView1.setVisibility(i2);
        }
        if ((j & j5) != 0) {
            activityCardTransferProcessBinding.message.setText(charSequence);
        }
        if (j2 != 0) {
            activityCardTransferProcessBinding.ready.setOnClickListener(onClickListener2);
            activityCardTransferProcessBinding.repeat.setOnClickListener(onClickListener);
        }
        if ((j & j4) != 0) {
            activityCardTransferProcessBinding.repeat.setVisibility(i);
        }
        executeBindingsOn(activityCardTransferProcessBinding.include);
    }

    public static ActivityCardTransferProcessBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityCardTransferProcessBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityCardTransferProcessBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_card_transfer_process, viewGroup, z, dataBindingComponent);
    }

    public static ActivityCardTransferProcessBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityCardTransferProcessBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_card_transfer_process, null, false), dataBindingComponent);
    }

    public static ActivityCardTransferProcessBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityCardTransferProcessBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_card_transfer_process_0".equals(view.getTag())) {
            return new ActivityCardTransferProcessBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
