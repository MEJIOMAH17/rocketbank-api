package ru.rocketbank.r2d2.data.binding.reference;

import android.databinding.ObservableField;

/* compiled from: ReferenceData.kt */
public final class ReferenceData {
    private final ObservableField<String> lng = new ObservableField();
    private final ObservableField<String> title = new ObservableField();

    public final ObservableField<String> getTitle() {
        return this.title;
    }

    public final ObservableField<String> getLng() {
        return this.lng;
    }
}
