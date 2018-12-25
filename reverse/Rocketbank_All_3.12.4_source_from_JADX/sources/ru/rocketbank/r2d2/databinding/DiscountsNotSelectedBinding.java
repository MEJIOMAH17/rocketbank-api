package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.TextViewBindingAdapter;
import android.support.v7.widget.CardView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.discount.NonSelectedDiscountsData;
import ru.rocketbank.r2d2.data.binding.discount.SelectedDiscountsListener;

public class DiscountsNotSelectedBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    public final CardView cardBody;
    public final RocketTextView confirm;
    public final RocketTextView headerText;
    private NonSelectedDiscountsData mData;
    private long mDirtyFlags = -1;
    private SelectedDiscountsListener mListener;
    private OnClickListenerImpl mListenerOnDiscountsSelectAndroidViewViewOnClickListener;
    public final LinearLayout merchantContainer;
    public final RocketTextView selectionStatus;

    public static class OnClickListenerImpl implements OnClickListener {
        private SelectedDiscountsListener value;

        public OnClickListenerImpl setValue(SelectedDiscountsListener selectedDiscountsListener) {
            this.value = selectedDiscountsListener;
            return selectedDiscountsListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.onDiscountsSelect(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(C0859R.id.merchantContainer, 4);
    }

    public DiscountsNotSelectedBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 4);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.cardBody = (CardView) dataBindingComponent[0];
        this.cardBody.setTag(null);
        this.confirm = (RocketTextView) dataBindingComponent[3];
        this.confirm.setTag(null);
        this.headerText = (RocketTextView) dataBindingComponent[1];
        this.headerText.setTag(null);
        this.merchantContainer = (LinearLayout) dataBindingComponent[4];
        this.selectionStatus = (RocketTextView) dataBindingComponent[2];
        this.selectionStatus.setTag(null);
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
        if (55 == i) {
            setListener((SelectedDiscountsListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((NonSelectedDiscountsData) obj);
        }
        return true;
    }

    public void setListener(SelectedDiscountsListener selectedDiscountsListener) {
        this.mListener = selectedDiscountsListener;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public SelectedDiscountsListener getListener() {
        return this.mListener;
    }

    public void setData(NonSelectedDiscountsData nonSelectedDiscountsData) {
        this.mData = nonSelectedDiscountsData;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public NonSelectedDiscountsData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataTitle((ObservableField) obj, i2);
            case 1:
                return onChangeDataSelectionTextVisibility((ObservableBoolean) obj, i2);
            case 2:
                return onChangeDataSelectionStatus((ObservableField) obj, i2);
            case 3:
                return onChangeDataConfirmEnabled((ObservableBoolean) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataTitle(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataSelectionTextVisibility(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeDataSelectionStatus(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeDataConfirmEnabled(ObservableBoolean observableBoolean, int i) {
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
        DiscountsNotSelectedBinding discountsNotSelectedBinding = this;
        synchronized (this) {
            try {
                j = discountsNotSelectedBinding.mDirtyFlags;
                long j2 = 0;
                discountsNotSelectedBinding.mDirtyFlags = 0;
            } finally {
                j = r0;
            }
        }
        SelectedDiscountsListener selectedDiscountsListener = discountsNotSelectedBinding.mListener;
        NonSelectedDiscountsData nonSelectedDiscountsData = discountsNotSelectedBinding.mData;
        if ((j & 80) == 0 || selectedDiscountsListener == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            if (discountsNotSelectedBinding.mListenerOnDiscountsSelectAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                discountsNotSelectedBinding.mListenerOnDiscountsSelectAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = discountsNotSelectedBinding.mListenerOnDiscountsSelectAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl.setValue(selectedDiscountsListener);
        }
        long j3 = 104;
        long j4 = 100;
        long j5 = 98;
        long j6 = 97;
        Object obj = null;
        CharSequence charSequence;
        int i;
        CharSequence charSequence2;
        boolean z;
        if ((j & 111) != 0) {
            long j7;
            ObservableBoolean selectionTextVisibility;
            boolean z2;
            Object selectionStatus;
            Object confirmEnabled;
            if ((j & 97) != 0) {
                Object title = nonSelectedDiscountsData != null ? nonSelectedDiscountsData.getTitle() : null;
                updateRegistration(0, title);
                if (title != null) {
                    charSequence = (String) title.get();
                    j7 = j & 98;
                    if (j7 == 0) {
                        if (nonSelectedDiscountsData == null) {
                            selectionTextVisibility = nonSelectedDiscountsData.getSelectionTextVisibility();
                        } else {
                            obj = null;
                        }
                        updateRegistration(1, obj);
                        if (obj == null) {
                            z2 = obj.get();
                        } else {
                            z2 = false;
                        }
                        j7 = j7 == j2 ? z2 ? j | 256 : j | 128 : j;
                        i = z2 ? 0 : 8;
                        j = j7;
                        if ((j & j4) != j2) {
                            selectionStatus = nonSelectedDiscountsData == null ? nonSelectedDiscountsData.getSelectionStatus() : null;
                            updateRegistration(2, selectionStatus);
                            if (selectionStatus != null) {
                                charSequence2 = (String) selectionStatus.get();
                                if ((j & j3) != j2) {
                                    confirmEnabled = nonSelectedDiscountsData == null ? nonSelectedDiscountsData.getConfirmEnabled() : null;
                                    updateRegistration(3, confirmEnabled);
                                    if (confirmEnabled != null) {
                                        z = confirmEnabled.get();
                                        if ((j & j3) != j2) {
                                            discountsNotSelectedBinding.confirm.setEnabled(z);
                                        }
                                        if ((j & 80) != j2) {
                                            discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                                        }
                                        if ((j & j6) != j2) {
                                            TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                                        }
                                        if ((j & j4) != j2) {
                                            TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                                        }
                                        if ((j & j5) != j2) {
                                            discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                                        }
                                    }
                                }
                                z = false;
                                if ((j & j3) != j2) {
                                    discountsNotSelectedBinding.confirm.setEnabled(z);
                                }
                                if ((j & 80) != j2) {
                                    discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                                }
                                if ((j & j6) != j2) {
                                    TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                                }
                                if ((j & j4) != j2) {
                                    TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                                }
                                if ((j & j5) != j2) {
                                    discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                                }
                            }
                        }
                        charSequence2 = null;
                        if ((j & j3) != j2) {
                            if (nonSelectedDiscountsData == null) {
                            }
                            updateRegistration(3, confirmEnabled);
                            if (confirmEnabled != null) {
                                z = confirmEnabled.get();
                                if ((j & j3) != j2) {
                                    discountsNotSelectedBinding.confirm.setEnabled(z);
                                }
                                if ((j & 80) != j2) {
                                    discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                                }
                                if ((j & j6) != j2) {
                                    TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                                }
                                if ((j & j4) != j2) {
                                    TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                                }
                                if ((j & j5) != j2) {
                                    discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                                }
                            }
                        }
                        z = false;
                        if ((j & j3) != j2) {
                            discountsNotSelectedBinding.confirm.setEnabled(z);
                        }
                        if ((j & 80) != j2) {
                            discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                        }
                        if ((j & j6) != j2) {
                            TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                        }
                        if ((j & j4) != j2) {
                            TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                        }
                        if ((j & j5) != j2) {
                            discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                        }
                    }
                    i = 0;
                    if ((j & j4) != j2) {
                        if (nonSelectedDiscountsData == null) {
                        }
                        updateRegistration(2, selectionStatus);
                        if (selectionStatus != null) {
                            charSequence2 = (String) selectionStatus.get();
                            if ((j & j3) != j2) {
                                if (nonSelectedDiscountsData == null) {
                                }
                                updateRegistration(3, confirmEnabled);
                                if (confirmEnabled != null) {
                                    z = confirmEnabled.get();
                                    if ((j & j3) != j2) {
                                        discountsNotSelectedBinding.confirm.setEnabled(z);
                                    }
                                    if ((j & 80) != j2) {
                                        discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                                    }
                                    if ((j & j6) != j2) {
                                        TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                                    }
                                    if ((j & j4) != j2) {
                                        TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                                    }
                                    if ((j & j5) != j2) {
                                        discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                                    }
                                }
                            }
                            z = false;
                            if ((j & j3) != j2) {
                                discountsNotSelectedBinding.confirm.setEnabled(z);
                            }
                            if ((j & 80) != j2) {
                                discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                            }
                            if ((j & j5) != j2) {
                                discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                            }
                        }
                    }
                    charSequence2 = null;
                    if ((j & j3) != j2) {
                        if (nonSelectedDiscountsData == null) {
                        }
                        updateRegistration(3, confirmEnabled);
                        if (confirmEnabled != null) {
                            z = confirmEnabled.get();
                            if ((j & j3) != j2) {
                                discountsNotSelectedBinding.confirm.setEnabled(z);
                            }
                            if ((j & 80) != j2) {
                                discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                            }
                            if ((j & j5) != j2) {
                                discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                            }
                        }
                    }
                    z = false;
                    if ((j & j3) != j2) {
                        discountsNotSelectedBinding.confirm.setEnabled(z);
                    }
                    if ((j & 80) != j2) {
                        discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                    }
                    if ((j & j6) != j2) {
                        TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                    }
                    if ((j & j5) != j2) {
                        discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                    }
                }
            }
            charSequence = null;
            j7 = j & 98;
            if (j7 == 0) {
                i = 0;
                if ((j & j4) != j2) {
                    if (nonSelectedDiscountsData == null) {
                    }
                    updateRegistration(2, selectionStatus);
                    if (selectionStatus != null) {
                        charSequence2 = (String) selectionStatus.get();
                        if ((j & j3) != j2) {
                            if (nonSelectedDiscountsData == null) {
                            }
                            updateRegistration(3, confirmEnabled);
                            if (confirmEnabled != null) {
                                z = confirmEnabled.get();
                                if ((j & j3) != j2) {
                                    discountsNotSelectedBinding.confirm.setEnabled(z);
                                }
                                if ((j & 80) != j2) {
                                    discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                                }
                                if ((j & j6) != j2) {
                                    TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                                }
                                if ((j & j4) != j2) {
                                    TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                                }
                                if ((j & j5) != j2) {
                                    discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                                }
                            }
                        }
                        z = false;
                        if ((j & j3) != j2) {
                            discountsNotSelectedBinding.confirm.setEnabled(z);
                        }
                        if ((j & 80) != j2) {
                            discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                        }
                        if ((j & j6) != j2) {
                            TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                        }
                        if ((j & j4) != j2) {
                            TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                        }
                        if ((j & j5) != j2) {
                            discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                        }
                    }
                }
                charSequence2 = null;
                if ((j & j3) != j2) {
                    if (nonSelectedDiscountsData == null) {
                    }
                    updateRegistration(3, confirmEnabled);
                    if (confirmEnabled != null) {
                        z = confirmEnabled.get();
                        if ((j & j3) != j2) {
                            discountsNotSelectedBinding.confirm.setEnabled(z);
                        }
                        if ((j & 80) != j2) {
                            discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                        }
                        if ((j & j6) != j2) {
                            TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                        }
                        if ((j & j4) != j2) {
                            TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                        }
                        if ((j & j5) != j2) {
                            discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                        }
                    }
                }
                z = false;
                if ((j & j3) != j2) {
                    discountsNotSelectedBinding.confirm.setEnabled(z);
                }
                if ((j & 80) != j2) {
                    discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                }
                if ((j & j6) != j2) {
                    TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                }
                if ((j & j4) != j2) {
                    TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                }
                if ((j & j5) != j2) {
                    discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                }
            }
            if (nonSelectedDiscountsData == null) {
                obj = null;
            } else {
                selectionTextVisibility = nonSelectedDiscountsData.getSelectionTextVisibility();
            }
            updateRegistration(1, obj);
            if (obj == null) {
                z2 = false;
            } else {
                z2 = obj.get();
            }
            if (j7 == j2) {
            }
            if (z2) {
            }
            j = j7;
            if ((j & j4) != j2) {
                if (nonSelectedDiscountsData == null) {
                }
                updateRegistration(2, selectionStatus);
                if (selectionStatus != null) {
                    charSequence2 = (String) selectionStatus.get();
                    if ((j & j3) != j2) {
                        if (nonSelectedDiscountsData == null) {
                        }
                        updateRegistration(3, confirmEnabled);
                        if (confirmEnabled != null) {
                            z = confirmEnabled.get();
                            if ((j & j3) != j2) {
                                discountsNotSelectedBinding.confirm.setEnabled(z);
                            }
                            if ((j & 80) != j2) {
                                discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                            }
                            if ((j & j6) != j2) {
                                TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                            }
                            if ((j & j4) != j2) {
                                TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                            }
                            if ((j & j5) != j2) {
                                discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                            }
                        }
                    }
                    z = false;
                    if ((j & j3) != j2) {
                        discountsNotSelectedBinding.confirm.setEnabled(z);
                    }
                    if ((j & 80) != j2) {
                        discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                    }
                    if ((j & j6) != j2) {
                        TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                    }
                    if ((j & j5) != j2) {
                        discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                    }
                }
            }
            charSequence2 = null;
            if ((j & j3) != j2) {
                if (nonSelectedDiscountsData == null) {
                }
                updateRegistration(3, confirmEnabled);
                if (confirmEnabled != null) {
                    z = confirmEnabled.get();
                    if ((j & j3) != j2) {
                        discountsNotSelectedBinding.confirm.setEnabled(z);
                    }
                    if ((j & 80) != j2) {
                        discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
                    }
                    if ((j & j6) != j2) {
                        TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
                    }
                    if ((j & j4) != j2) {
                        TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
                    }
                    if ((j & j5) != j2) {
                        discountsNotSelectedBinding.selectionStatus.setVisibility(i);
                    }
                }
            }
            z = false;
            if ((j & j3) != j2) {
                discountsNotSelectedBinding.confirm.setEnabled(z);
            }
            if ((j & 80) != j2) {
                discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
            }
            if ((j & j6) != j2) {
                TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
            }
            if ((j & j4) != j2) {
                TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
            }
            if ((j & j5) != j2) {
                discountsNotSelectedBinding.selectionStatus.setVisibility(i);
            }
        }
        z = false;
        charSequence2 = null;
        i = 0;
        charSequence = null;
        if ((j & j3) != j2) {
            discountsNotSelectedBinding.confirm.setEnabled(z);
        }
        if ((j & 80) != j2) {
            discountsNotSelectedBinding.confirm.setOnClickListener(onClickListener);
        }
        if ((j & j6) != j2) {
            TextViewBindingAdapter.setText(discountsNotSelectedBinding.headerText, charSequence);
        }
        if ((j & j4) != j2) {
            TextViewBindingAdapter.setText(discountsNotSelectedBinding.selectionStatus, charSequence2);
        }
        if ((j & j5) != j2) {
            discountsNotSelectedBinding.selectionStatus.setVisibility(i);
        }
    }

    public static DiscountsNotSelectedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountsNotSelectedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (DiscountsNotSelectedBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.discounts_not_selected, viewGroup, z, dataBindingComponent);
    }

    public static DiscountsNotSelectedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountsNotSelectedBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.discounts_not_selected, null, false), dataBindingComponent);
    }

    public static DiscountsNotSelectedBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static DiscountsNotSelectedBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/discounts_not_selected_0".equals(view.getTag())) {
            return new DiscountsNotSelectedBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
