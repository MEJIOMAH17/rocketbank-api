package ru.rocketbank.r2d2.data.binding.delivery;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;

/* compiled from: DeliveryTimeData.kt */
public final class DeliveryTimeData {
    private final ObservableField<String> currentDate = new ObservableField();
    private final ObservableBoolean nextButtonEnabled = new ObservableBoolean(false);

    public final ObservableField<String> getCurrentDate() {
        return this.currentDate;
    }

    public final ObservableBoolean getNextButtonEnabled() {
        return this.nextButtonEnabled;
    }
}
