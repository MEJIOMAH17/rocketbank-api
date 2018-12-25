package ru.rocketbank.r2d2.data.binding.reference;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;

/* compiled from: ReferencePdfData.kt */
public final class ReferencePdfData {
    private final ObservableBoolean buttonsToolbar = new ObservableBoolean(false);
    private final ObservableField<String> statusText = new ObservableField();

    public final ObservableBoolean getButtonsToolbar() {
        return this.buttonsToolbar;
    }

    public final ObservableField<String> getStatusText() {
        return this.statusText;
    }
}
