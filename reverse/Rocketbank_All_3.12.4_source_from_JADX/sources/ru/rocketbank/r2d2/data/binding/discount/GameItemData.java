package ru.rocketbank.r2d2.data.binding.discount;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableInt;
import kotlin.jvm.internal.Ref;

/* compiled from: GameItemData.kt */
public final class GameItemData {
    private final ObservableBoolean isYellow;
    private final ObservableInt percent;

    public GameItemData(int i, boolean z) {
        this.percent = new ObservableInt(i);
        this.isYellow = new ObservableBoolean(z);
    }

    public /* synthetic */ GameItemData(int i, boolean z, int i2, Ref ref) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        this(i, z);
    }

    public final ObservableInt getPercent() {
        return this.percent;
    }

    public final ObservableBoolean isYellow() {
        return this.isYellow;
    }
}
