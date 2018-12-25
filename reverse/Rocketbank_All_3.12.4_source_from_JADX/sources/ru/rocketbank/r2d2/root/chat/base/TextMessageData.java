package ru.rocketbank.r2d2.root.chat.base;

import android.databinding.ObservableField;

/* compiled from: TextMessageData.kt */
public final class TextMessageData extends MessageData {
    private final ObservableField<String> message = new ObservableField();

    public final ObservableField<String> getMessage() {
        return this.message;
    }
}
