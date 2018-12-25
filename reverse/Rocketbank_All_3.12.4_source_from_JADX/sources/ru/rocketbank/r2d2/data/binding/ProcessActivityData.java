package ru.rocketbank.r2d2.data.binding;

import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ProcessActivityData.kt */
public final class ProcessActivityData {
    private ObservableInt buttonsVisible;
    private ObservableField<String> messageText = new ObservableField("");
    private ObservableInt retryVisible;

    public ProcessActivityData(int i, int i2) {
        this.buttonsVisible = new ObservableInt(i);
        this.retryVisible = new ObservableInt(i2);
    }

    public final ObservableInt getButtonsVisible() {
        return this.buttonsVisible;
    }

    public final void setButtonsVisible(ObservableInt observableInt) {
        Intrinsics.checkParameterIsNotNull(observableInt, "<set-?>");
        this.buttonsVisible = observableInt;
    }

    public final ObservableInt getRetryVisible() {
        return this.retryVisible;
    }

    public final void setRetryVisible(ObservableInt observableInt) {
        Intrinsics.checkParameterIsNotNull(observableInt, "<set-?>");
        this.retryVisible = observableInt;
    }

    public final ObservableField<String> getMessageText() {
        return this.messageText;
    }

    public final void setMessageText(ObservableField<String> observableField) {
        Intrinsics.checkParameterIsNotNull(observableField, "<set-?>");
        this.messageText = observableField;
    }
}
