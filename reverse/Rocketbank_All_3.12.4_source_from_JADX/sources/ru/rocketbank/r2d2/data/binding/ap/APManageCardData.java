package ru.rocketbank.r2d2.data.binding.ap;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;

/* compiled from: APManageCardData.kt */
public final class APManageCardData {
    private final ObservableField<String> androidPayToken = new ObservableField();
    private final ObservableBoolean defaultEnabled = new ObservableBoolean(false);

    public final ObservableBoolean getDefaultEnabled() {
        return this.defaultEnabled;
    }

    public final ObservableField<String> getAndroidPayToken() {
        return this.androidPayToken;
    }
}
