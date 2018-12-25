package ru.rocketbank.r2d2.data.binding.sound;

import android.databinding.ObservableBoolean;

/* compiled from: SchemeItemData.kt */
public final class SchemeItemData {
    private final ObservableBoolean isActive = new ObservableBoolean(false);
    private final ObservableBoolean isCurrent = new ObservableBoolean(false);
    private int sound;

    public final ObservableBoolean isActive() {
        return this.isActive;
    }

    public final ObservableBoolean isCurrent() {
        return this.isCurrent;
    }

    public final int getSound() {
        return this.sound;
    }

    public final void setSound(int i) {
        this.sound = i;
    }
}
