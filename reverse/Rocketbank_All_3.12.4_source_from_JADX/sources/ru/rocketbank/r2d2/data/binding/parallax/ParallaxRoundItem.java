package ru.rocketbank.r2d2.data.binding.parallax;

import android.databinding.ObservableField;
import android.databinding.ObservableInt;

/* compiled from: ParallaxRoundItem.kt */
public final class ParallaxRoundItem {
    private final ObservableInt imageResId = new ObservableInt();
    private final ObservableField<String> subText = new ObservableField();
    private final ObservableField<String> text = new ObservableField();

    public final ObservableInt getImageResId() {
        return this.imageResId;
    }

    public final ObservableField<String> getText() {
        return this.text;
    }

    public final ObservableField<String> getSubText() {
        return this.subText;
    }
}
