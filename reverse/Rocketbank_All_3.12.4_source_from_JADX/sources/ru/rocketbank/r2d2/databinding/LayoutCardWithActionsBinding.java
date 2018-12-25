package ru.rocketbank.r2d2.databinding;

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
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.CreditCardView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityData;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityHandler;

public class LayoutCardWithActionsBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final RocketTextView cardPhoto;
    public final LinearLayout cardRoot;
    public final CreditCardView creditCard;
    private CardAbilityData mAbility;
    private CardAbilityHandler mActions;
    private OnClickListenerImpl mActionsOnPressedPhotoAndroidViewViewOnClickListener;
    private long mDirtyFlags = -1;
    private final RocketTextView mboundView2;
    public final RocketTextView rocketTextView;

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
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.creditCard, 4);
    }

    public LayoutCardWithActionsBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 3);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.cardPhoto = (RocketTextView) dataBindingComponent[3];
        this.cardPhoto.setTag(null);
        this.cardRoot = (LinearLayout) dataBindingComponent[0];
        this.cardRoot.setTag(null);
        this.creditCard = (CreditCardView) dataBindingComponent[4];
        this.mboundView2 = (RocketTextView) dataBindingComponent[2];
        this.mboundView2.setTag(null);
        this.rocketTextView = (RocketTextView) dataBindingComponent[1];
        this.rocketTextView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 32;
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
        if (2 == i) {
            setActions((CardAbilityHandler) obj);
            return true;
        } else if (1 != i) {
            return false;
        } else {
            setAbility((CardAbilityData) obj);
            return true;
        }
    }

    public void setActions(CardAbilityHandler cardAbilityHandler) {
        this.mActions = cardAbilityHandler;
        synchronized (this) {
            this.mDirtyFlags |= 8;
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
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    public CardAbilityData getAbility() {
        return this.mAbility;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeAbilityOrVisible((ObservableInt) obj, i2);
            case 1:
                return onChangeAbilityPhotoVisible((ObservableInt) obj, i2);
            case 2:
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

    private boolean onChangeAbilityPhotoVisible(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeAbilityNfcVisible(ObservableInt observableInt, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    protected void executeBindings() {
        long j;
        OnClickListener onClickListener;
        LayoutCardWithActionsBinding layoutCardWithActionsBinding = this;
        synchronized (this) {
            try {
                j = layoutCardWithActionsBinding.mDirtyFlags;
                long j2 = 0;
                layoutCardWithActionsBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        CardAbilityHandler cardAbilityHandler = layoutCardWithActionsBinding.mActions;
        CardAbilityData cardAbilityData = layoutCardWithActionsBinding.mAbility;
        long j3 = j & 40;
        if (j3 == 0 || cardAbilityHandler == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            if (layoutCardWithActionsBinding.mActionsOnPressedPhotoAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                layoutCardWithActionsBinding.mActionsOnPressedPhotoAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = layoutCardWithActionsBinding.mActionsOnPressedPhotoAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl.setValue(cardAbilityHandler);
        }
        long j4 = 52;
        long j5 = 50;
        long j6 = 49;
        Object obj = null;
        int i;
        int i2;
        int i3;
        if ((j & 55) != 0) {
            ObservableInt photoVisible;
            Object nfcVisible;
            if ((j & 49) != 0) {
                Object orVisible = cardAbilityData != null ? cardAbilityData.getOrVisible() : null;
                updateRegistration(0, orVisible);
                if (orVisible != null) {
                    i = orVisible.get();
                    if ((j & 50) != 0) {
                        if (cardAbilityData == null) {
                            photoVisible = cardAbilityData.getPhotoVisible();
                        } else {
                            obj = null;
                        }
                        updateRegistration(1, obj);
                        if (obj != null) {
                            i2 = obj.get();
                            if ((j & j4) != j2) {
                                nfcVisible = cardAbilityData == null ? cardAbilityData.getNfcVisible() : null;
                                updateRegistration(2, nfcVisible);
                                if (nfcVisible != null) {
                                    i3 = nfcVisible.get();
                                    j5 = 50;
                                    if ((j & j5) != j2) {
                                        layoutCardWithActionsBinding.cardPhoto.setVisibility(i2);
                                    }
                                    if (j3 != j2) {
                                        layoutCardWithActionsBinding.cardPhoto.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j6) != j2) {
                                        layoutCardWithActionsBinding.mboundView2.setVisibility(i);
                                    }
                                    if ((j & j4) != j2) {
                                        layoutCardWithActionsBinding.rocketTextView.setVisibility(i3);
                                    }
                                }
                            }
                            i3 = 0;
                            j5 = 50;
                            if ((j & j5) != j2) {
                                layoutCardWithActionsBinding.cardPhoto.setVisibility(i2);
                            }
                            if (j3 != j2) {
                                layoutCardWithActionsBinding.cardPhoto.setOnClickListener(onClickListener);
                            }
                            if ((j & j6) != j2) {
                                layoutCardWithActionsBinding.mboundView2.setVisibility(i);
                            }
                            if ((j & j4) != j2) {
                                layoutCardWithActionsBinding.rocketTextView.setVisibility(i3);
                            }
                        }
                    }
                    i2 = 0;
                    if ((j & j4) != j2) {
                        if (cardAbilityData == null) {
                        }
                        updateRegistration(2, nfcVisible);
                        if (nfcVisible != null) {
                            i3 = nfcVisible.get();
                            j5 = 50;
                            if ((j & j5) != j2) {
                                layoutCardWithActionsBinding.cardPhoto.setVisibility(i2);
                            }
                            if (j3 != j2) {
                                layoutCardWithActionsBinding.cardPhoto.setOnClickListener(onClickListener);
                            }
                            if ((j & j6) != j2) {
                                layoutCardWithActionsBinding.mboundView2.setVisibility(i);
                            }
                            if ((j & j4) != j2) {
                                layoutCardWithActionsBinding.rocketTextView.setVisibility(i3);
                            }
                        }
                    }
                    i3 = 0;
                    j5 = 50;
                    if ((j & j5) != j2) {
                        layoutCardWithActionsBinding.cardPhoto.setVisibility(i2);
                    }
                    if (j3 != j2) {
                        layoutCardWithActionsBinding.cardPhoto.setOnClickListener(onClickListener);
                    }
                    if ((j & j6) != j2) {
                        layoutCardWithActionsBinding.mboundView2.setVisibility(i);
                    }
                    if ((j & j4) != j2) {
                        layoutCardWithActionsBinding.rocketTextView.setVisibility(i3);
                    }
                }
            }
            i = 0;
            if ((j & 50) != 0) {
                if (cardAbilityData == null) {
                    obj = null;
                } else {
                    photoVisible = cardAbilityData.getPhotoVisible();
                }
                updateRegistration(1, obj);
                if (obj != null) {
                    i2 = obj.get();
                    if ((j & j4) != j2) {
                        if (cardAbilityData == null) {
                        }
                        updateRegistration(2, nfcVisible);
                        if (nfcVisible != null) {
                            i3 = nfcVisible.get();
                            j5 = 50;
                            if ((j & j5) != j2) {
                                layoutCardWithActionsBinding.cardPhoto.setVisibility(i2);
                            }
                            if (j3 != j2) {
                                layoutCardWithActionsBinding.cardPhoto.setOnClickListener(onClickListener);
                            }
                            if ((j & j6) != j2) {
                                layoutCardWithActionsBinding.mboundView2.setVisibility(i);
                            }
                            if ((j & j4) != j2) {
                                layoutCardWithActionsBinding.rocketTextView.setVisibility(i3);
                            }
                        }
                    }
                    i3 = 0;
                    j5 = 50;
                    if ((j & j5) != j2) {
                        layoutCardWithActionsBinding.cardPhoto.setVisibility(i2);
                    }
                    if (j3 != j2) {
                        layoutCardWithActionsBinding.cardPhoto.setOnClickListener(onClickListener);
                    }
                    if ((j & j6) != j2) {
                        layoutCardWithActionsBinding.mboundView2.setVisibility(i);
                    }
                    if ((j & j4) != j2) {
                        layoutCardWithActionsBinding.rocketTextView.setVisibility(i3);
                    }
                }
            }
            i2 = 0;
            if ((j & j4) != j2) {
                if (cardAbilityData == null) {
                }
                updateRegistration(2, nfcVisible);
                if (nfcVisible != null) {
                    i3 = nfcVisible.get();
                    j5 = 50;
                    if ((j & j5) != j2) {
                        layoutCardWithActionsBinding.cardPhoto.setVisibility(i2);
                    }
                    if (j3 != j2) {
                        layoutCardWithActionsBinding.cardPhoto.setOnClickListener(onClickListener);
                    }
                    if ((j & j6) != j2) {
                        layoutCardWithActionsBinding.mboundView2.setVisibility(i);
                    }
                    if ((j & j4) != j2) {
                        layoutCardWithActionsBinding.rocketTextView.setVisibility(i3);
                    }
                }
            }
            i3 = 0;
            j5 = 50;
            if ((j & j5) != j2) {
                layoutCardWithActionsBinding.cardPhoto.setVisibility(i2);
            }
            if (j3 != j2) {
                layoutCardWithActionsBinding.cardPhoto.setOnClickListener(onClickListener);
            }
            if ((j & j6) != j2) {
                layoutCardWithActionsBinding.mboundView2.setVisibility(i);
            }
            if ((j & j4) != j2) {
                layoutCardWithActionsBinding.rocketTextView.setVisibility(i3);
            }
        }
        i3 = 0;
        i = 0;
        i2 = 0;
        if ((j & j5) != j2) {
            layoutCardWithActionsBinding.cardPhoto.setVisibility(i2);
        }
        if (j3 != j2) {
            layoutCardWithActionsBinding.cardPhoto.setOnClickListener(onClickListener);
        }
        if ((j & j6) != j2) {
            layoutCardWithActionsBinding.mboundView2.setVisibility(i);
        }
        if ((j & j4) != j2) {
            layoutCardWithActionsBinding.rocketTextView.setVisibility(i3);
        }
    }

    public static LayoutCardWithActionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutCardWithActionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (LayoutCardWithActionsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.layout_card_with_actions, viewGroup, z, dataBindingComponent);
    }

    public static LayoutCardWithActionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutCardWithActionsBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.layout_card_with_actions, null, false), dataBindingComponent);
    }

    public static LayoutCardWithActionsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutCardWithActionsBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/layout_card_with_actions_0".equals(view.getTag())) {
            return new LayoutCardWithActionsBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
