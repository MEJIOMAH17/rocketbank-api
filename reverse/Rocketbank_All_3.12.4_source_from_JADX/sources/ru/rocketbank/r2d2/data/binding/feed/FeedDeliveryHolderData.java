package ru.rocketbank.r2d2.data.binding.feed;

import android.databinding.ObservableField;

/* compiled from: FeedDeliveryHolderData.kt */
public final class FeedDeliveryHolderData {
    private final ObservableField<String> buttonText = new ObservableField();
    private final ObservableField<String> description = new ObservableField();
    private final ObservableField<String> title = new ObservableField();
    private final ObservableField<String> token = new ObservableField();

    public final ObservableField<String> getTitle() {
        return this.title;
    }

    public final ObservableField<String> getDescription() {
        return this.description;
    }

    public final ObservableField<String> getButtonText() {
        return this.buttonText;
    }

    public final ObservableField<String> getToken() {
        return this.token;
    }
}
