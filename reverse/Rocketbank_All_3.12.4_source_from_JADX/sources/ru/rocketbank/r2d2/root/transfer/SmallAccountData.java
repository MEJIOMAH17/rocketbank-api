package ru.rocketbank.r2d2.root.transfer;

import android.databinding.ObservableField;
import android.graphics.drawable.Drawable;

/* compiled from: SmallAccountData.kt */
public final class SmallAccountData {
    private final ObservableField<String> amount = new ObservableField();
    private final ObservableField<Drawable> image = new ObservableField();
    private final ObservableField<String> name = new ObservableField();

    public final ObservableField<String> getName() {
        return this.name;
    }

    public final ObservableField<String> getAmount() {
        return this.amount;
    }

    public final ObservableField<Drawable> getImage() {
        return this.image;
    }
}
