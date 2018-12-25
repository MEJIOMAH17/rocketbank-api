package ru.rocketbank.r2d2.data.binding.tariff;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.graphics.drawable.Drawable;

/* compiled from: TariffData.kt */
public final class TariffData {
    private final ObservableField<Drawable> buttonColor = new ObservableField();
    private final ObservableField<String> buttonText = new ObservableField();
    private final ObservableBoolean isButtonActivate = new ObservableBoolean();
    private final ObservableBoolean isSalary = new ObservableBoolean(false);
    private final ObservableField<String> name = new ObservableField();
    private final ObservableField<String> priceLabel = new ObservableField();

    public final ObservableField<String> getName() {
        return this.name;
    }

    public final ObservableField<String> getPriceLabel() {
        return this.priceLabel;
    }

    public final ObservableBoolean isButtonActivate() {
        return this.isButtonActivate;
    }

    public final ObservableField<String> getButtonText() {
        return this.buttonText;
    }

    public final ObservableField<Drawable> getButtonColor() {
        return this.buttonColor;
    }

    public final ObservableBoolean isSalary() {
        return this.isSalary;
    }
}
