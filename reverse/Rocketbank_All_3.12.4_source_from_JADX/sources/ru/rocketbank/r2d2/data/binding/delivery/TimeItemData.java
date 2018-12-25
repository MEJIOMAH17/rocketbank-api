package ru.rocketbank.r2d2.data.binding.delivery;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;

/* compiled from: TimeItemData.kt */
public final class TimeItemData {
    private final ObservableField<String> intervalKey = new ObservableField();
    private final ObservableField<String> intervalText = new ObservableField();
    private final ObservableBoolean isSelected = new ObservableBoolean(false);

    public final ObservableBoolean isSelected() {
        return this.isSelected;
    }

    public final ObservableField<String> getIntervalText() {
        return this.intervalText;
    }

    public final ObservableField<String> getIntervalKey() {
        return this.intervalKey;
    }
}
