package ru.rocketbank.r2d2.data.binding.feed;

import android.databinding.ObservableField;

/* compiled from: FeedTransferToSaveData.kt */
public final class FeedTransferToSaveData {
    private final ObservableField<String> goButtonText = new ObservableField();
    private final ObservableField<String> infoButtonText = new ObservableField();
    private final ObservableField<String> text = new ObservableField();

    public final ObservableField<String> getInfoButtonText() {
        return this.infoButtonText;
    }

    public final ObservableField<String> getGoButtonText() {
        return this.goButtonText;
    }

    public final ObservableField<String> getText() {
        return this.text;
    }
}
