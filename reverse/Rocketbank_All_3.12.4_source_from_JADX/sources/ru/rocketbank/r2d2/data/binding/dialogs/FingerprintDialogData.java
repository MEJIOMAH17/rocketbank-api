package ru.rocketbank.r2d2.data.binding.dialogs;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;

/* compiled from: FingerprintDialogData.kt */
public final class FingerprintDialogData {
    private final ObservableField<String> helperText = new ObservableField();
    private final ObservableBoolean isError = new ObservableBoolean(false);
    private final ObservableBoolean isLoading = new ObservableBoolean(false);
    private final ObservableField<String> statusText = new ObservableField();

    public final ObservableField<String> getStatusText() {
        return this.statusText;
    }

    public final ObservableField<String> getHelperText() {
        return this.helperText;
    }

    public final ObservableBoolean isLoading() {
        return this.isLoading;
    }

    public final ObservableBoolean isError() {
        return this.isError;
    }
}
