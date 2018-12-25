package ru.rocketbank.r2d2.root.feed.binding;

import android.databinding.ObservableField;

/* compiled from: FeedNewPassportData.kt */
public final class FeedNewPassportData {
    private final ObservableField<String> buttonText = new ObservableField();
    private final ObservableField<String> text = new ObservableField();

    public final ObservableField<String> getText() {
        return this.text;
    }

    public final ObservableField<String> getButtonText() {
        return this.buttonText;
    }
}
