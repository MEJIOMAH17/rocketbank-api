package ru.rocketbank.r2d2.data.binding.dialogs;

import android.databinding.ObservableField;
import android.databinding.ObservableInt;

/* compiled from: NotificationDialogData.kt */
public final class NotificationDialogData {
    private final ObservableInt checkedItem = new ObservableInt();
    private final ObservableField<String> textInfo = new ObservableField();

    public final ObservableField<String> getTextInfo() {
        return this.textInfo;
    }

    public final ObservableInt getCheckedItem() {
        return this.checkedItem;
    }
}
