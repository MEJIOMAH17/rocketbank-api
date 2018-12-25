package ru.rocketbank.r2d2.data.binding.card;

import android.databinding.ObservableInt;

/* compiled from: CardAbilityData.kt */
public final class CardAbilityData {
    private final ObservableInt nfcVisible = new ObservableInt(8);
    private final ObservableInt orVisible = new ObservableInt(8);
    private final ObservableInt photoVisible = new ObservableInt(8);

    public final ObservableInt getNfcVisible() {
        return this.nfcVisible;
    }

    public final ObservableInt getPhotoVisible() {
        return this.photoVisible;
    }

    public final ObservableInt getOrVisible() {
        return this.orVisible;
    }

    public final void updateAbility(boolean z, boolean z2) {
        int i = 8;
        if (z && z2) {
            this.orVisible.set(0);
        } else {
            this.orVisible.set(8);
        }
        this.nfcVisible.set(z ? false : true);
        z = this.photoVisible;
        if (z2) {
            i = 0;
        }
        z.set(i);
    }
}
