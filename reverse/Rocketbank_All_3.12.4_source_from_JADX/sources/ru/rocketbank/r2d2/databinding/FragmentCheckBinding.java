package ru.rocketbank.r2d2.databinding;

import android.arch.lifecycle.LifecycleOwner;
import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import ru.rocketbank.core.widgets.CreditCardView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityData;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityHandler;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;

public class FragmentCheckBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView cardPhoto;
    public final CreditCardView creditCard;
    private CardAbilityData mAbility;
    private CardAbilityHandler mActions;
    private OnClickListenerImpl mActionsOnPressedPhotoAndroidViewViewOnClickListener;
    private long mDirtyFlags = -1;
    private ToolbarWithButtonHandler mHandler;
    private ToolbarWithButtonData mToolbarBinding;
    private final LinearLayout mboundView0;
    private final RocketTextView mboundView2;
    public final ScrollView nestedScrollView;
    public final Button newNext;
    public final RocketTextView rocketTextView;
    public final RocketTextView textViewInputCardDigitsHint;
    public final LayoutToolbarWithButtonBinding toolbarInclude;

    public static class OnClickListenerImpl implements OnClickListener {
        private CardAbilityHandler value;

        public OnClickListenerImpl setValue(CardAbilityHandler cardAbilityHandler) {
            this.value = cardAbilityHandler;
            return cardAbilityHandler == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onPressedPhoto(view);
        }
    }

    static {
        IncludedLayouts includedLayouts = new IncludedLayouts(9);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"layout_toolbar_with_button"}, new int[]{4}, new int[]{C0859R.layout.layout_toolbar_with_button});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.nestedScrollView, 5);
        sViewsWithIds.put(C0859R.id.textViewInputCardDigitsHint, 6);
        sViewsWithIds.put(C0859R.id.creditCard, 7);
        sViewsWithIds.put(C0859R.id.newNext, 8);
    }

    public FragmentCheckBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 4);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds);
        this.cardPhoto = (RocketTextView) dataBindingComponent[3];
        this.cardPhoto.setTag(null);
        this.creditCard = (CreditCardView) dataBindingComponent[7];
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.nestedScrollView = (ScrollView) dataBindingComponent[5];
        this.newNext = (Button) dataBindingComponent[8];
        this.rocketTextView = (RocketTextView) dataBindingComponent[1];
        this.rocketTextView.setTag(null);
        this.textViewInputCardDigitsHint = (RocketTextView) dataBindingComponent[6];
        this.toolbarInclude = (LayoutToolbarWithButtonBinding) dataBindingComponent[4];
        setContainedBinding(this.toolbarInclude);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 256;
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
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.databinding.FragmentCheckBinding.hasPendingBindings():boolean");
    }

    public boolean setVariable(int i, Object obj) {
        if (84 == i) {
            setToolbarBinding((ToolbarWithButtonData) obj);
            return true;
        } else if (2 == i) {
            setActions((CardAbilityHandler) obj);
            return true;
        } else if (40 == i) {
            setHandler((ToolbarWithButtonHandler) obj);
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
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(84);
        super.requestRebind();
    }

    public ToolbarWithButtonData getToolbarBinding() {
        return this.mToolbarBinding;
    }

    public void setActions(CardAbilityHandler cardAbilityHandler) {
        this.mActions = cardAbilityHandler;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(2);
        super.requestRebind();
    }

    public CardAbilityHandler getActions() {
        return this.mActions;
    }

    public void setHandler(ToolbarWithButtonHandler toolbarWithButtonHandler) {
        this.mHandler = toolbarWithButtonHandler;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    public ToolbarWithButtonHandler getHandler() {
        return this.mHandler;
    }

    public void setAbility(CardAbilityData cardAbilityData) {
        this.mAbility = cardAbilityData;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    public CardAbilityData getAbility() {
        return this.mAbility;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.toolbarInclude.setLifecycleOwner(lifecycleOwner);
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeAbilityOrVisible((ObservableInt) obj, i2);
            case 1:
                return onChangeToolbarInclude((LayoutToolbarWithButtonBinding) obj, i2);
            case 2:
                return onChangeAbilityPhotoVisible((ObservableInt) obj, i2);
            case 3:
                return onChangeAbilityNfcVisible((ObservableInt) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeAbilityOrVisible(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeToolbarInclude(LayoutToolbarWithButtonBinding layoutToolbarWithButtonBinding, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeAbilityPhotoVisible(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeAbilityNfcVisible(ObservableInt observableInt, int i) {
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
        FragmentCheckBinding fragmentCheckBinding = this;
        synchronized (this) {
            try {
                j = fragmentCheckBinding.mDirtyFlags;
                fragmentCheckBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        ToolbarWithButtonData toolbarWithButtonData = fragmentCheckBinding.mToolbarBinding;
        CardAbilityHandler cardAbilityHandler = fragmentCheckBinding.mActions;
        ToolbarWithButtonHandler toolbarWithButtonHandler = fragmentCheckBinding.mHandler;
        CardAbilityData cardAbilityData = fragmentCheckBinding.mAbility;
        long j2 = j & 288;
        if (j2 == 0 || cardAbilityHandler == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            if (fragmentCheckBinding.mActionsOnPressedPhotoAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                fragmentCheckBinding.mActionsOnPressedPhotoAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = fragmentCheckBinding.mActionsOnPressedPhotoAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl.setValue(cardAbilityHandler);
        }
        long j3 = 392;
        long j4 = 388;
        long j5 = 385;
        Object obj = null;
        int i;
        int i2;
        int i3;
        long j6;
        if ((j & 397) != 0) {
            ObservableInt photoVisible;
            Object nfcVisible;
            if ((j & 385) != 0) {
                Object orVisible = cardAbilityData != null ? cardAbilityData.getOrVisible() : null;
                updateRegistration(0, orVisible);
                if (orVisible != null) {
                    i = orVisible.get();
                    if ((j & 388) != 0) {
                        if (cardAbilityData == null) {
                            photoVisible = cardAbilityData.getPhotoVisible();
                        } else {
                            obj = null;
                        }
                        updateRegistration(2, obj);
                        if (obj != null) {
                            i2 = obj.get();
                            if ((j & j3) != 0) {
                                nfcVisible = cardAbilityData == null ? cardAbilityData.getNfcVisible() : null;
                                updateRegistration(3, nfcVisible);
                                if (nfcVisible != null) {
                                    i3 = nfcVisible.get();
                                    j6 = 0;
                                    if (j2 != j6) {
                                        fragmentCheckBinding.cardPhoto.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j4) != j6) {
                                        fragmentCheckBinding.cardPhoto.setVisibility(i2);
                                    }
                                    if ((j & j5) != j6) {
                                        fragmentCheckBinding.mboundView2.setVisibility(i);
                                    }
                                    if ((j & j3) != j6) {
                                        fragmentCheckBinding.rocketTextView.setVisibility(i3);
                                    }
                                    if ((j & 320) != j6) {
                                        fragmentCheckBinding.toolbarInclude.setHandler(toolbarWithButtonHandler);
                                    }
                                    if ((j & 272) != j6) {
                                        fragmentCheckBinding.toolbarInclude.setToolbarBinding(toolbarWithButtonData);
                                    }
                                    executeBindingsOn(fragmentCheckBinding.toolbarInclude);
                                }
                            }
                            i3 = 0;
                            j6 = 0;
                            if (j2 != j6) {
                                fragmentCheckBinding.cardPhoto.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != j6) {
                                fragmentCheckBinding.cardPhoto.setVisibility(i2);
                            }
                            if ((j & j5) != j6) {
                                fragmentCheckBinding.mboundView2.setVisibility(i);
                            }
                            if ((j & j3) != j6) {
                                fragmentCheckBinding.rocketTextView.setVisibility(i3);
                            }
                            if ((j & 320) != j6) {
                                fragmentCheckBinding.toolbarInclude.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 272) != j6) {
                                fragmentCheckBinding.toolbarInclude.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(fragmentCheckBinding.toolbarInclude);
                        }
                    }
                    i2 = 0;
                    if ((j & j3) != 0) {
                        if (cardAbilityData == null) {
                        }
                        updateRegistration(3, nfcVisible);
                        if (nfcVisible != null) {
                            i3 = nfcVisible.get();
                            j6 = 0;
                            if (j2 != j6) {
                                fragmentCheckBinding.cardPhoto.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != j6) {
                                fragmentCheckBinding.cardPhoto.setVisibility(i2);
                            }
                            if ((j & j5) != j6) {
                                fragmentCheckBinding.mboundView2.setVisibility(i);
                            }
                            if ((j & j3) != j6) {
                                fragmentCheckBinding.rocketTextView.setVisibility(i3);
                            }
                            if ((j & 320) != j6) {
                                fragmentCheckBinding.toolbarInclude.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 272) != j6) {
                                fragmentCheckBinding.toolbarInclude.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(fragmentCheckBinding.toolbarInclude);
                        }
                    }
                    i3 = 0;
                    j6 = 0;
                    if (j2 != j6) {
                        fragmentCheckBinding.cardPhoto.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != j6) {
                        fragmentCheckBinding.cardPhoto.setVisibility(i2);
                    }
                    if ((j & j5) != j6) {
                        fragmentCheckBinding.mboundView2.setVisibility(i);
                    }
                    if ((j & j3) != j6) {
                        fragmentCheckBinding.rocketTextView.setVisibility(i3);
                    }
                    if ((j & 320) != j6) {
                        fragmentCheckBinding.toolbarInclude.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 272) != j6) {
                        fragmentCheckBinding.toolbarInclude.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(fragmentCheckBinding.toolbarInclude);
                }
            }
            i = 0;
            if ((j & 388) != 0) {
                if (cardAbilityData == null) {
                    obj = null;
                } else {
                    photoVisible = cardAbilityData.getPhotoVisible();
                }
                updateRegistration(2, obj);
                if (obj != null) {
                    i2 = obj.get();
                    if ((j & j3) != 0) {
                        if (cardAbilityData == null) {
                        }
                        updateRegistration(3, nfcVisible);
                        if (nfcVisible != null) {
                            i3 = nfcVisible.get();
                            j6 = 0;
                            if (j2 != j6) {
                                fragmentCheckBinding.cardPhoto.setOnClickListener(onClickListener);
                            }
                            if ((j & j4) != j6) {
                                fragmentCheckBinding.cardPhoto.setVisibility(i2);
                            }
                            if ((j & j5) != j6) {
                                fragmentCheckBinding.mboundView2.setVisibility(i);
                            }
                            if ((j & j3) != j6) {
                                fragmentCheckBinding.rocketTextView.setVisibility(i3);
                            }
                            if ((j & 320) != j6) {
                                fragmentCheckBinding.toolbarInclude.setHandler(toolbarWithButtonHandler);
                            }
                            if ((j & 272) != j6) {
                                fragmentCheckBinding.toolbarInclude.setToolbarBinding(toolbarWithButtonData);
                            }
                            executeBindingsOn(fragmentCheckBinding.toolbarInclude);
                        }
                    }
                    i3 = 0;
                    j6 = 0;
                    if (j2 != j6) {
                        fragmentCheckBinding.cardPhoto.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != j6) {
                        fragmentCheckBinding.cardPhoto.setVisibility(i2);
                    }
                    if ((j & j5) != j6) {
                        fragmentCheckBinding.mboundView2.setVisibility(i);
                    }
                    if ((j & j3) != j6) {
                        fragmentCheckBinding.rocketTextView.setVisibility(i3);
                    }
                    if ((j & 320) != j6) {
                        fragmentCheckBinding.toolbarInclude.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 272) != j6) {
                        fragmentCheckBinding.toolbarInclude.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(fragmentCheckBinding.toolbarInclude);
                }
            }
            i2 = 0;
            if ((j & j3) != 0) {
                if (cardAbilityData == null) {
                }
                updateRegistration(3, nfcVisible);
                if (nfcVisible != null) {
                    i3 = nfcVisible.get();
                    j6 = 0;
                    if (j2 != j6) {
                        fragmentCheckBinding.cardPhoto.setOnClickListener(onClickListener);
                    }
                    if ((j & j4) != j6) {
                        fragmentCheckBinding.cardPhoto.setVisibility(i2);
                    }
                    if ((j & j5) != j6) {
                        fragmentCheckBinding.mboundView2.setVisibility(i);
                    }
                    if ((j & j3) != j6) {
                        fragmentCheckBinding.rocketTextView.setVisibility(i3);
                    }
                    if ((j & 320) != j6) {
                        fragmentCheckBinding.toolbarInclude.setHandler(toolbarWithButtonHandler);
                    }
                    if ((j & 272) != j6) {
                        fragmentCheckBinding.toolbarInclude.setToolbarBinding(toolbarWithButtonData);
                    }
                    executeBindingsOn(fragmentCheckBinding.toolbarInclude);
                }
            }
            i3 = 0;
            j6 = 0;
            if (j2 != j6) {
                fragmentCheckBinding.cardPhoto.setOnClickListener(onClickListener);
            }
            if ((j & j4) != j6) {
                fragmentCheckBinding.cardPhoto.setVisibility(i2);
            }
            if ((j & j5) != j6) {
                fragmentCheckBinding.mboundView2.setVisibility(i);
            }
            if ((j & j3) != j6) {
                fragmentCheckBinding.rocketTextView.setVisibility(i3);
            }
            if ((j & 320) != j6) {
                fragmentCheckBinding.toolbarInclude.setHandler(toolbarWithButtonHandler);
            }
            if ((j & 272) != j6) {
                fragmentCheckBinding.toolbarInclude.setToolbarBinding(toolbarWithButtonData);
            }
            executeBindingsOn(fragmentCheckBinding.toolbarInclude);
        }
        j6 = 0;
        i3 = 0;
        i = 0;
        i2 = 0;
        if (j2 != j6) {
            fragmentCheckBinding.cardPhoto.setOnClickListener(onClickListener);
        }
        if ((j & j4) != j6) {
            fragmentCheckBinding.cardPhoto.setVisibility(i2);
        }
        if ((j & j5) != j6) {
            fragmentCheckBinding.mboundView2.setVisibility(i);
        }
        if ((j & j3) != j6) {
            fragmentCheckBinding.rocketTextView.setVisibility(i3);
        }
        if ((j & 320) != j6) {
            fragmentCheckBinding.toolbarInclude.setHandler(toolbarWithButtonHandler);
        }
        if ((j & 272) != j6) {
            fragmentCheckBinding.toolbarInclude.setToolbarBinding(toolbarWithButtonData);
        }
        executeBindingsOn(fragmentCheckBinding.toolbarInclude);
    }

    public static FragmentCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentCheckBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_check, viewGroup, z, dataBindingComponent);
    }

    public static FragmentCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentCheckBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.fragment_check, null, false), dataBindingComponent);
    }

    public static FragmentCheckBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentCheckBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/fragment_check_0".equals(view.getTag())) {
            return new FragmentCheckBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
