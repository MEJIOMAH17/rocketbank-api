package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.databinding.ViewDataBinding;
import android.databinding.ViewDataBinding.IncludedLayouts;
import android.databinding.adapters.RadioGroupBindingAdapter;
import android.databinding.adapters.TextViewBindingAdapter;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.dialogs.NotificationDialogData;
import ru.rocketbank.r2d2.data.binding.dialogs.NotificationSelectListener;

public class DialogNotificationViewBinding extends ViewDataBinding {
    private static final IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private NotificationDialogData mData;
    private long mDirtyFlags = -1;
    private NotificationSelectListener mListener;
    private OnClickListenerImpl mListenerRadioButtonPressedAndroidViewViewOnClickListener;
    private final LinearLayout mboundView0;
    private final RadioGroup mboundView1;
    public final RadioButton pushRadioButton;
    public final RadioButton smsRadioButton;
    public final RocketTextView tvInfo;

    public static class OnClickListenerImpl implements OnClickListener {
        private NotificationSelectListener value;

        public OnClickListenerImpl setValue(NotificationSelectListener notificationSelectListener) {
            this.value = notificationSelectListener;
            return notificationSelectListener == null ? null : this;
        }

        public void onClick(View view) {
            this.value.radioButtonPressed(view);
        }
    }

    public DialogNotificationViewBinding(DataBindingComponent dataBindingComponent, View view) {
        super(dataBindingComponent, view, 2);
        dataBindingComponent = mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds);
        this.mboundView0 = (LinearLayout) dataBindingComponent[0];
        this.mboundView0.setTag(null);
        this.mboundView1 = (RadioGroup) dataBindingComponent[1];
        this.mboundView1.setTag(null);
        this.pushRadioButton = (RadioButton) dataBindingComponent[2];
        this.pushRadioButton.setTag(null);
        this.smsRadioButton = (RadioButton) dataBindingComponent[3];
        this.smsRadioButton.setTag(null);
        this.tvInfo = (RocketTextView) dataBindingComponent[4];
        this.tvInfo.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 16;
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
            setListener((NotificationSelectListener) obj);
        } else if (24 != i) {
            return false;
        } else {
            setData((NotificationDialogData) obj);
        }
        return true;
    }

    public void setListener(NotificationSelectListener notificationSelectListener) {
        this.mListener = notificationSelectListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    public NotificationSelectListener getListener() {
        return this.mListener;
    }

    public void setData(NotificationDialogData notificationDialogData) {
        this.mData = notificationDialogData;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    public NotificationDialogData getData() {
        return this.mData;
    }

    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeDataTextInfo((ObservableField) obj, i2);
            case 1:
                return onChangeDataCheckedItem((ObservableInt) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeDataTextInfo(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return null;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeDataCheckedItem(ObservableInt observableInt, int i) {
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
        int i;
        DialogNotificationViewBinding dialogNotificationViewBinding = this;
        synchronized (this) {
            try {
                j = dialogNotificationViewBinding.mDirtyFlags;
                dialogNotificationViewBinding.mDirtyFlags = 0;
            } catch (Throwable th) {
                while (true) {
                    Throwable th2 = th;
                }
            }
        }
        NotificationSelectListener notificationSelectListener = dialogNotificationViewBinding.mListener;
        NotificationDialogData notificationDialogData = dialogNotificationViewBinding.mData;
        long j2 = j & 20;
        if (j2 == 0 || notificationSelectListener == null) {
            onClickListener = null;
        } else {
            OnClickListenerImpl onClickListenerImpl;
            if (dialogNotificationViewBinding.mListenerRadioButtonPressedAndroidViewViewOnClickListener == null) {
                onClickListenerImpl = new OnClickListenerImpl();
                dialogNotificationViewBinding.mListenerRadioButtonPressedAndroidViewViewOnClickListener = onClickListenerImpl;
            } else {
                onClickListenerImpl = dialogNotificationViewBinding.mListenerRadioButtonPressedAndroidViewViewOnClickListener;
            }
            onClickListener = onClickListenerImpl.setValue(notificationSelectListener);
        }
        CharSequence charSequence;
        if ((j & 27) != 0) {
            Object checkedItem;
            if ((j & 25) != 0) {
                Object textInfo = notificationDialogData != null ? notificationDialogData.getTextInfo() : null;
                updateRegistration(0, textInfo);
                if (textInfo != null) {
                    charSequence = (String) textInfo.get();
                    if ((j & 26) != 0) {
                        checkedItem = notificationDialogData == null ? notificationDialogData.getCheckedItem() : null;
                        updateRegistration(1, checkedItem);
                        if (checkedItem != null) {
                            i = checkedItem.get();
                            if ((j & 26) != 0) {
                                RadioGroupBindingAdapter.setCheckedButton(dialogNotificationViewBinding.mboundView1, i);
                            }
                            if (j2 != 0) {
                                dialogNotificationViewBinding.pushRadioButton.setOnClickListener(onClickListener);
                                dialogNotificationViewBinding.smsRadioButton.setOnClickListener(onClickListener);
                            }
                            if ((j & 25) == 0) {
                                TextViewBindingAdapter.setText(dialogNotificationViewBinding.tvInfo, charSequence);
                            }
                        }
                    }
                }
            }
            charSequence = null;
            if ((j & 26) != 0) {
                if (notificationDialogData == null) {
                }
                updateRegistration(1, checkedItem);
                if (checkedItem != null) {
                    i = checkedItem.get();
                    if ((j & 26) != 0) {
                        RadioGroupBindingAdapter.setCheckedButton(dialogNotificationViewBinding.mboundView1, i);
                    }
                    if (j2 != 0) {
                        dialogNotificationViewBinding.pushRadioButton.setOnClickListener(onClickListener);
                        dialogNotificationViewBinding.smsRadioButton.setOnClickListener(onClickListener);
                    }
                    if ((j & 25) == 0) {
                        TextViewBindingAdapter.setText(dialogNotificationViewBinding.tvInfo, charSequence);
                    }
                }
            }
        }
        charSequence = null;
        i = 0;
        if ((j & 26) != 0) {
            RadioGroupBindingAdapter.setCheckedButton(dialogNotificationViewBinding.mboundView1, i);
        }
        if (j2 != 0) {
            dialogNotificationViewBinding.pushRadioButton.setOnClickListener(onClickListener);
            dialogNotificationViewBinding.smsRadioButton.setOnClickListener(onClickListener);
        }
        if ((j & 25) == 0) {
            TextViewBindingAdapter.setText(dialogNotificationViewBinding.tvInfo, charSequence);
        }
    }

    public static DialogNotificationViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static DialogNotificationViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (DialogNotificationViewBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.dialog_notification_view, viewGroup, z, dataBindingComponent);
    }

    public static DialogNotificationViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static DialogNotificationViewBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return bind(layoutInflater.inflate(C0859R.layout.dialog_notification_view, null, false), dataBindingComponent);
    }

    public static DialogNotificationViewBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static DialogNotificationViewBinding bind(View view, DataBindingComponent dataBindingComponent) {
        if ("layout/dialog_notification_view_0".equals(view.getTag())) {
            return new DialogNotificationViewBinding(dataBindingComponent, view);
        }
        StringBuilder stringBuilder = new StringBuilder("view tag isn't correct on view:");
        stringBuilder.append(view.getTag());
        throw new RuntimeException(stringBuilder.toString());
    }
}
