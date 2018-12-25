package ru.rocketbank.r2d2.data.binding.toolbar;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;

/* compiled from: ToolbarWithButtonOnlyData.kt */
public final class ToolbarWithButtonOnlyData {
    private final ObservableBoolean isEnabled = new ObservableBoolean();
    private final ObservableField<String> title = new ObservableField();

    public final ObservableField<String> getTitle() {
        return this.title;
    }

    public final ObservableBoolean isEnabled() {
        return this.isEnabled;
    }
}
