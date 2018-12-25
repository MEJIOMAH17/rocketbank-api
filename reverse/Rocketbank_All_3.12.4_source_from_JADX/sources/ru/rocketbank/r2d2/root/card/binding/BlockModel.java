package ru.rocketbank.r2d2.root.card.binding;

import android.databinding.ObservableField;

/* compiled from: BlockModel.kt */
public final class BlockModel {
    private final ObservableField<String> text = new ObservableField();
    private final ObservableField<Integer> textColor = new ObservableField();

    public final ObservableField<String> getText() {
        return this.text;
    }

    public final ObservableField<Integer> getTextColor() {
        return this.textColor;
    }
}
