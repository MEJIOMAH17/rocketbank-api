package ru.rocketbank.r2d2.root.chat.base;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.graphics.drawable.Drawable;

/* compiled from: MessageData.kt */
public class MessageData {
    private final ObservableField<Drawable> background = new ObservableField();
    private final ObservableBoolean firstMessage = new ObservableBoolean(true);
    private final ObservableBoolean progressVisible = new ObservableBoolean(false);
    private final ObservableBoolean retryVisible = new ObservableBoolean();
    private final ObservableField<String> statusText = new ObservableField();
    private final ObservableBoolean statusVisible = new ObservableBoolean(false);

    public final ObservableField<String> getStatusText() {
        return this.statusText;
    }

    public final ObservableBoolean getStatusVisible() {
        return this.statusVisible;
    }

    public final ObservableBoolean getRetryVisible() {
        return this.retryVisible;
    }

    public final ObservableBoolean getProgressVisible() {
        return this.progressVisible;
    }

    public final ObservableField<Drawable> getBackground() {
        return this.background;
    }

    public final ObservableBoolean getFirstMessage() {
        return this.firstMessage;
    }
}
