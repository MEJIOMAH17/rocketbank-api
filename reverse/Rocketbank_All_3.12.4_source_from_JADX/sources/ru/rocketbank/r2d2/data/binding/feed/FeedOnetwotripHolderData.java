package ru.rocketbank.r2d2.data.binding.feed;

import android.databinding.ObservableField;

/* compiled from: FeedOnetwotripHolderData.kt */
public final class FeedOnetwotripHolderData {
    private final ObservableField<String> buttonText = new ObservableField();
    private final ObservableField<String> tariffDescription = new ObservableField();
    private final ObservableField<String> tariffText = new ObservableField();
    private final ObservableField<String> uid = new ObservableField();

    public final ObservableField<String> getTariffText() {
        return this.tariffText;
    }

    public final ObservableField<String> getTariffDescription() {
        return this.tariffDescription;
    }

    public final ObservableField<String> getButtonText() {
        return this.buttonText;
    }

    public final ObservableField<String> getUid() {
        return this.uid;
    }
}
