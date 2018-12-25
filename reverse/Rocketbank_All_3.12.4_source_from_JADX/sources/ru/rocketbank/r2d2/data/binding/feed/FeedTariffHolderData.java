package ru.rocketbank.r2d2.data.binding.feed;

import android.databinding.ObservableField;

/* compiled from: FeedTariffHolderData.kt */
public final class FeedTariffHolderData {
    private final ObservableField<String> buttonText = new ObservableField();
    private final ObservableField<String> tariffDescription = new ObservableField();
    private final ObservableField<String> tariffText = new ObservableField();

    public final ObservableField<String> getTariffText() {
        return this.tariffText;
    }

    public final ObservableField<String> getTariffDescription() {
        return this.tariffDescription;
    }

    public final ObservableField<String> getButtonText() {
        return this.buttonText;
    }
}
