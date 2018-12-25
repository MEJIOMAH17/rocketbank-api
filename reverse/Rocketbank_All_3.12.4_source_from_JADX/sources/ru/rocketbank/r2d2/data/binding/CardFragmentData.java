package ru.rocketbank.r2d2.data.binding;

import android.databinding.ObservableField;

/* compiled from: CardFragmentData.kt */
public final class CardFragmentData {
    private final ObservableField<String> money = new ObservableField("");
    private final ObservableField<String> title = new ObservableField("");
    private final ObservableField<String> titleName = new ObservableField("");

    public final ObservableField<String> getTitleName() {
        return this.titleName;
    }

    public final ObservableField<String> getTitle() {
        return this.title;
    }

    public final ObservableField<String> getMoney() {
        return this.money;
    }
}
