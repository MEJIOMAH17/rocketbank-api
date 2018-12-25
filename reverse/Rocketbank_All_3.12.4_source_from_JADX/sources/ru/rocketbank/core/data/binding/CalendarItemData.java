package ru.rocketbank.core.data.binding;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.graphics.drawable.Drawable;

/* compiled from: CalendarItemData.kt */
public final class CalendarItemData {
    private final ObservableField<Drawable> background = new ObservableField();
    private final ObservableField<String> dayText = new ObservableField();
    private final ObservableBoolean isDelivery = new ObservableBoolean(false);
    private final ObservableBoolean isNextMonth = new ObservableBoolean(false);
    private final ObservableInt textColor = new ObservableInt();

    public final ObservableField<String> getDayText() {
        return this.dayText;
    }

    public final ObservableField<Drawable> getBackground() {
        return this.background;
    }

    public final ObservableInt getTextColor() {
        return this.textColor;
    }

    public final ObservableBoolean isDelivery() {
        return this.isDelivery;
    }

    public final ObservableBoolean isNextMonth() {
        return this.isNextMonth;
    }
}
