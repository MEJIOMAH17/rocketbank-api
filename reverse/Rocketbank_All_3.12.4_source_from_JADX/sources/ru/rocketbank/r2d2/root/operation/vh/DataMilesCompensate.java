package ru.rocketbank.r2d2.root.operation.vh;

import android.databinding.ObservableField;
import android.text.SpannableString;

/* compiled from: DataMilesCompensate.kt */
public final class DataMilesCompensate {
    private final ObservableField<String> amount = new ObservableField();
    private final ObservableField<SpannableString> description = new ObservableField();
    private final ObservableField<String> rocketText = new ObservableField();

    public final ObservableField<String> getAmount() {
        return this.amount;
    }

    public final ObservableField<String> getRocketText() {
        return this.rocketText;
    }

    public final ObservableField<SpannableString> getDescription() {
        return this.description;
    }
}
