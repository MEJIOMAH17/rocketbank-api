package ru.rocketbank.r2d2.data.binding;

import android.databinding.ObservableField;

/* compiled from: LimitData.kt */
public final class LimitData {
    private final ObservableField<String> limit = new ObservableField();
    private final ObservableField<String> name = new ObservableField();

    public final ObservableField<String> getName() {
        return this.name;
    }

    public final ObservableField<String> getLimit() {
        return this.limit;
    }
}
