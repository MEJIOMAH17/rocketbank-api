package ru.rocketbank.r2d2.root.operation.vh;

import android.databinding.ObservableField;

/* compiled from: SourceData.kt */
public final class SourceData {
    private final ObservableField<String> imageSource = new ObservableField();
    private final ObservableField<String> sourceName = new ObservableField();

    public final ObservableField<String> getImageSource() {
        return this.imageSource;
    }

    public final ObservableField<String> getSourceName() {
        return this.sourceName;
    }
}
