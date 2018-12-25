package ru.rocketbank.r2d2.data.binding.webauth;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;

/* compiled from: WebAuthData.kt */
public final class WebAuthData {
    private final ObservableBoolean buttonsEnabled = new ObservableBoolean(true);
    private final ObservableField<String> text = new ObservableField();
    private final ObservableField<String> ttl = new ObservableField();

    public final ObservableField<String> getText() {
        return this.text;
    }

    public final ObservableField<String> getTtl() {
        return this.ttl;
    }

    public final ObservableBoolean getButtonsEnabled() {
        return this.buttonsEnabled;
    }
}
