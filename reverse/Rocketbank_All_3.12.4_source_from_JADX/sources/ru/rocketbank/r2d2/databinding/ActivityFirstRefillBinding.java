package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.FirstRefillHandler;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityData;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityHandler;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;

public class ActivityFirstRefillBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final LayoutCardWithActionsBinding cardAction;
    public final CardView cash;
    private CardAbilityData mAbility;
    private CardAbilityHandler mActions;
    private long mDirtyFlags = -1;
    private FirstRefillHandler mHandler;
    private OnClickListenerImpl mHandlerOnCashPressedAndroidViewViewOnClickListener;
    private OnClickListenerImpl2 mHandlerOnReqPressedAndroidViewViewOnClickListener;
    private OnClickListenerImpl1 mHandlerOnSupportPressedAndroidViewViewOnClickListener;
    private ToolbarWithButtonData mToolbarBinding;
    private final CoordinatorLayout mboundView0;
    private final LinearLayout mboundView1;
    private final CardView mboundView4;
    public final CardView req;
    public final NestedScrollView scroll;
    public final RocketTextView support;
    public final LayoutToolbarWithButtonBinding toolbarBlock;

    public static class OnClickListenerImpl1 implements OnClickListener {
        private FirstRefillHandler value;

        public OnClickListenerImpl1 setValue(FirstRefillHandler firstRefillHandler) {
            this.value = firstRefillHandler;
            return firstRefillHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onSupportPressed(view);
        }
    }

    public static class OnClickListenerImpl2 implements OnClickListener {
        private FirstRefillHandler value;

        public OnClickListenerImpl2 setValue(FirstRefillHandler firstRefillHandler) {
            this.value = firstRefillHandler;
            return firstRefillHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onReqPressed(view);
        }
    }

    public static class OnClickListenerImpl implements OnClickListener {
        private FirstRefillHandler value;

        public OnClickListenerImpl setValue(FirstRefillHandler firstRefillHandler) {
            this.value = firstRefillHandler;
            return firstRefillHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onCashPressed(view);
        }
    }

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(9);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"layout_card_with_actions"}, new int[]{6}, new int[]{C0859R.layout.layout_card_with_actions});
        sIncludes.setIncludes(0, new String[]{"layout_toolbar_with_button"}, new int[]{5}, new int[]{C0859R.layout.layout_toolbar_with_button});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.scroll, 7);
        sViewsWithIds.put(C0859R.id.support, 8);
    }

    public ActivityFirstRefillBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds);
        this.cardAction = (LayoutCardWithActionsBinding) dataBindingComponent[6];
        setContainedBinding(this.cardAction);
        this.cash = (CardView) dataBindingComponent[2];
        this.cash.setTag(null);
        this.mboundView0 = (CoordinatorLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (LinearLayout) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.mboundView4 = (CardView) dataBindingComponent[4];
        this.mboundView4.setTag(null);
        this.req = (CardView) dataBindingComponent[3];
        this.req.setTag(null);
        this.scroll = (NestedScrollView) dataBindingComponent[7];
        this.support = (RocketTextView) dataBindingComponent[8];
        this.toolbarBlock = (LayoutToolbarWithButtonBinding) dataBindingComponent[5];
        setContainedBinding(this.toolbarBlock);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 64;
        }
        this.toolbarBlock.invalidateAll();
        this.cardAction.invalidateAll();
        requestRebind();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean hasPendingBindings() {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.mDirtyFlags;	 Catch:{ all -> 0x0021 }
        r2 = 0;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r0 = 1;
        if (r4 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r5);	 Catch:{ all -> 0x0021 }
        return r0;
    L_0x000c:
        monitor-exit(r5);	 Catch:{ all -> 0x0021 }
        r1 = r5.toolbarBlock;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return r0;
    L_0x0016:
        r1 = r5.cardAction;
        r1 = r1.hasPendingBindings();
        if (r1 == 0) goto L_0x001f;
    L_0x001e:
        return r0;
    L_0x001f:
        r0 = 0;
        return r0;
    L_0x0021:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0021 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.ActivityFirstRefillBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (84 == i) {
            setToolbarBinding((ToolbarWithButtonData) obj);
            return true;
        } else if (40 == i) {
            setHandler((FirstRefillHandler) obj);
            return true;
        } else if (2 == i) {
            setActions((CardAbilityHandler) obj);
            return true;
        } else if (1 != i) {
            return false;
        } else {
            setAbility((CardAbilityData) obj);
            return true;
        }
    }

    public void setToolbarBinding(ToolbarWithButtonData toolbarWithButtonData) {
        this.mToolbarBinding = toolbarWithButtonData;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(84);
        super.requestRebind();
    }

    public ToolbarWithButtonData getToolbarBinding() {
        return this.mToolbarBinding;
    }

    public void setHandler(FirstRefillHandler firstRefillHandler) {
        this.mHandler = firstRefillHandler;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public FirstRefillHandler getHandler() {
        return this.mHandler;
    }

    public void setActions(CardAbilityHandler cardAbilityHandler) {
        this.mActions = cardAbilityHandler;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(2);
        super.requestRebind();
    }

    public CardAbilityHandler getActions() {
        return this.mActions;
    }

    public void setAbility(CardAbilityData cardAbilityData) {
        this.mAbility = cardAbilityData;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    public CardAbilityData getAbility() {
        return this.mAbility;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.toolbarBlock.setLifecycleOwner(lifecycleOwner);
        this.cardAction.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeCardAction((LayoutCardWithActionsBinding) obj, i2);
            case 1:
                return onChangeToolbarBlock((LayoutToolbarWithButtonBinding) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeCardAction(LayoutCardWithActionsBinding layoutCardWithActionsBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeToolbarBlock(LayoutToolbarWithButtonBinding layoutToolbarWithButtonBinding, int i) {
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
        OnClickListener onClickListener;
        OnClickListener onClickListener2;
        ActivityFirstRefillBinding activityFirstRefillBinding = this;
        synchronized (this) {
            try {
                j = activityFirstRefillBinding.mDirtyFlags;
                activityFirstRefillBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        ToolbarWithButtonData toolbarWithButtonData = activityFirstRefillBinding.mToolbarBinding;
        ToolbarWithButtonHandler toolbarWithButtonHandler = activityFirstRefillBinding.mHandler;
        CardAbilityHandler cardAbilityHandler = activityFirstRefillBinding.mActions;
        CardAbilityData cardAbilityData = activityFirstRefillBinding.mAbility;
        long j2 = j & 72;
        OnClickListener onClickListener3 = null;
        if (j2 == 0 || toolbarWithButtonHandler == null) {
            onClickListener = null;
            onClickListener2 = onClickListener;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            OnClickListenerImpl1 onClickListenerImpl1;
            OnClickListenerImpl2 onClickListenerImpl2;
            if (activityFirstRefillBinding.mHandlerOnCashPressedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                activityFirstRefillBinding.mHandlerOnCashPressedAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = activityFirstRefillBinding.mHandlerOnCashPressedAndroidViewViewOnClickListener;
            }
            onClickListener3 = onClickListenerImpl.setValue(toolbarWithButtonHandler);
            if (activityFirstRefillBinding.mHandlerOnSupportPressedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl1 = new OnClickListenerImpl1();
                activityFirstRefillBinding.mHandlerOnSupportPressedAndroidViewViewOnClickListener = onClickListenerImpl1;
            } else {
                onClickListenerImpl1 = activityFirstRefillBinding.mHandlerOnSupportPressedAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl1.setValue(toolbarWithButtonHandler);
            if (activityFirstRefillBinding.mHandlerOnReqPressedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl2 = new OnClickListenerImpl2();
                activityFirstRefillBinding.mHandlerOnReqPressedAndroidViewViewOnClickListener = onClickListenerImpl2;
            } else {
                onClickListenerImpl2 = activityFirstRefillBinding.mHandlerOnReqPressedAndroidViewViewOnClickListener;
            }
            onClickListener2 = onClickListenerImpl2.setValue(toolbarWithButtonHandler);
        }
        if ((j & 96) != 0) {
            activityFirstRefillBinding.cardAction.setAbility(cardAbilityData);
        }
        if ((j & 80) != 0) {
            activityFirstRefillBinding.cardAction.setActions(cardAbilityHandler);
        }
        if (j2 != 0) {
            activityFirstRefillBinding.cash.setOnClickListener(onClickListener3);
            activityFirstRefillBinding.mboundView4.setOnClickListener(onClickListener);
            activityFirstRefillBinding.req.setOnClickListener(onClickListener2);
            activityFirstRefillBinding.toolbarBlock.setHandler(toolbarWithButtonHandler);
        }
        if ((j & 68) != 0) {
            activityFirstRefillBinding.toolbarBlock.setToolbarBinding(toolbarWithButtonData);
        }
        executeBindingsOn(activityFirstRefillBinding.toolbarBlock);
        executeBindingsOn(activityFirstRefillBinding.cardAction);
    }

    public static ActivityFirstRefillBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityFirstRefillBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (ActivityFirstRefillBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.activity_first_refill, viewGroup, z, dataBindingComponent);
    }

    public static ActivityFirstRefillBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityFirstRefillBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.activity_first_refill, null, false), dataBindingComponent);
    }

    public static ActivityFirstRefillBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityFirstRefillBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/activity_first_refill_0".equals(view.getTag())) {
            return new ActivityFirstRefillBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
