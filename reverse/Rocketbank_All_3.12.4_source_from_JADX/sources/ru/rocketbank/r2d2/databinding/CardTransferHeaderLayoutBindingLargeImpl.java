package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.CreditCardView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityData;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityHandler;

public class CardTransferHeaderLayoutBindingLargeImpl extends CardTransferHeaderLayoutBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private OnClickListenerImpl mActionsOnPressedPhotoAndroidViewViewOnClickListener;
    private long mDirtyFlags;
    private final RocketTextView mboundView2;

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

    public CardTransferHeaderLayoutBindingLargeImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds));
    }

    private CardTransferHeaderLayoutBindingLargeImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (RocketTextView) objArr[3], (LinearLayout) objArr[0], (CreditCardView) objArr[4], (RocketTextView) objArr[1]);
        this.mDirtyFlags = -1;
        this.cardPhoto.setTag(null);
        this.cardRoot.setTag(null);
        this.mboundView2 = (RocketTextView) objArr[2];
        this.mboundView2.setTag(null);
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

    public void setAbility(CardAbilityData cardAbilityData) {
        this.mAbility = cardAbilityData;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
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
        CardTransferHeaderLayoutBindingLargeImpl cardTransferHeaderLayoutBindingLargeImpl = this;
        synchronized (this) {
            try {
                j = cardTransferHeaderLayoutBindingLargeImpl.mDirtyFlags;
                long j2 = 0;
                cardTransferHeaderLayoutBindingLargeImpl.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        CardAbilityHandler cardAbilityHandler = cardTransferHeaderLayoutBindingLargeImpl.mActions;
        CardAbilityData cardAbilityData = cardTransferHeaderLayoutBindingLargeImpl.mAbility;
        long j3 = j & 40;
        if (j3 == 0 || cardAbilityHandler == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            if (cardTransferHeaderLayoutBindingLargeImpl.mActionsOnPressedPhotoAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                cardTransferHeaderLayoutBindingLargeImpl.mActionsOnPressedPhotoAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = cardTransferHeaderLayoutBindingLargeImpl.mActionsOnPressedPhotoAndroidViewViewOnClickListener;
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
                                        cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setVisibility(i2);
                                    }
                                    if (j3 != j2) {
                                        cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j6) != j2) {
                                        cardTransferHeaderLayoutBindingLargeImpl.mboundView2.setVisibility(i);
                                    }
                                    if ((j & j4) != j2) {
                                        cardTransferHeaderLayoutBindingLargeImpl.rocketTextView.setVisibility(i3);
                                    }
                                }
                            }
                            i3 = 0;
                            j5 = 50;
                            if ((j & j5) != j2) {
                                cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setVisibility(i2);
                            }
                            if (j3 != j2) {
                                cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setOnClickListener(onClickListener);
                            }
                            if ((j & j6) != j2) {
                                cardTransferHeaderLayoutBindingLargeImpl.mboundView2.setVisibility(i);
                            }
                            if ((j & j4) != j2) {
                                cardTransferHeaderLayoutBindingLargeImpl.rocketTextView.setVisibility(i3);
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
                                cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setVisibility(i2);
                            }
                            if (j3 != j2) {
                                cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setOnClickListener(onClickListener);
                            }
                            if ((j & j6) != j2) {
                                cardTransferHeaderLayoutBindingLargeImpl.mboundView2.setVisibility(i);
                            }
                            if ((j & j4) != j2) {
                                cardTransferHeaderLayoutBindingLargeImpl.rocketTextView.setVisibility(i3);
                            }
                        }
                    }
                    i3 = 0;
                    j5 = 50;
                    if ((j & j5) != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setVisibility(i2);
                    }
                    if (j3 != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setOnClickListener(onClickListener);
                    }
                    if ((j & j6) != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.mboundView2.setVisibility(i);
                    }
                    if ((j & j4) != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.rocketTextView.setVisibility(i3);
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
                                cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setVisibility(i2);
                            }
                            if (j3 != j2) {
                                cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setOnClickListener(onClickListener);
                            }
                            if ((j & j6) != j2) {
                                cardTransferHeaderLayoutBindingLargeImpl.mboundView2.setVisibility(i);
                            }
                            if ((j & j4) != j2) {
                                cardTransferHeaderLayoutBindingLargeImpl.rocketTextView.setVisibility(i3);
                            }
                        }
                    }
                    i3 = 0;
                    j5 = 50;
                    if ((j & j5) != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setVisibility(i2);
                    }
                    if (j3 != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setOnClickListener(onClickListener);
                    }
                    if ((j & j6) != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.mboundView2.setVisibility(i);
                    }
                    if ((j & j4) != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.rocketTextView.setVisibility(i3);
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
                        cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setVisibility(i2);
                    }
                    if (j3 != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setOnClickListener(onClickListener);
                    }
                    if ((j & j6) != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.mboundView2.setVisibility(i);
                    }
                    if ((j & j4) != j2) {
                        cardTransferHeaderLayoutBindingLargeImpl.rocketTextView.setVisibility(i3);
                    }
                }
            }
            i3 = 0;
            j5 = 50;
            if ((j & j5) != j2) {
                cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setVisibility(i2);
            }
            if (j3 != j2) {
                cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setOnClickListener(onClickListener);
            }
            if ((j & j6) != j2) {
                cardTransferHeaderLayoutBindingLargeImpl.mboundView2.setVisibility(i);
            }
            if ((j & j4) != j2) {
                cardTransferHeaderLayoutBindingLargeImpl.rocketTextView.setVisibility(i3);
            }
        }
        i3 = 0;
        i = 0;
        i2 = 0;
        if ((j & j5) != j2) {
            cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setVisibility(i2);
        }
        if (j3 != j2) {
            cardTransferHeaderLayoutBindingLargeImpl.cardPhoto.setOnClickListener(onClickListener);
        }
        if ((j & j6) != j2) {
            cardTransferHeaderLayoutBindingLargeImpl.mboundView2.setVisibility(i);
        }
        if ((j & j4) != j2) {
            cardTransferHeaderLayoutBindingLargeImpl.rocketTextView.setVisibility(i3);
        }
    }
}
