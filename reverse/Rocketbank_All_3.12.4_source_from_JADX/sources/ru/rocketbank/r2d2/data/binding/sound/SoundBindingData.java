package ru.rocketbank.r2d2.data.binding.sound;

import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.support.v4.view.ViewCompat;

/* compiled from: SoundBindingData.kt */
public final class SoundBindingData {
    private final ObservableInt backgroundColor = new ObservableInt(-1);
    private final ObservableField<String> soundName = new ObservableField("");
    private final ObservableInt subTextColor = new ObservableInt(ViewCompat.MEASURED_STATE_MASK);
    private final ObservableInt textColor = new ObservableInt(ViewCompat.MEASURED_STATE_MASK);

    public final ObservableField<String> getSoundName() {
        return this.soundName;
    }

    public final ObservableInt getBackgroundColor() {
        return this.backgroundColor;
    }

    public final ObservableInt getTextColor() {
        return this.textColor;
    }

    public final ObservableInt getSubTextColor() {
        return this.subTextColor;
    }
}
