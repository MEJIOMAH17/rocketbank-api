package ru.rocketbank.r2d2.data.binding.tariff;

import android.databinding.ObservableField;
import android.graphics.drawable.ColorDrawable;

/* compiled from: TariffItemData.kt */
public final class TariffItemData {
    private final ObservableField<ColorDrawable> color = new ObservableField();
    private final ObservableField<String> text = new ObservableField();
    private final ObservableField<String> textColor = new ObservableField();

    public final ObservableField<ColorDrawable> getColor() {
        return this.color;
    }

    public final ObservableField<String> getTextColor() {
        return this.textColor;
    }

    public final ObservableField<String> getText() {
        return this.text;
    }
}
