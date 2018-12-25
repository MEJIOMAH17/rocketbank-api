package ru.rocketbank.r2d2.data.binding.ap;

import android.databinding.ObservableField;

/* compiled from: AddCardData.kt */
public final class AddCardData {
    private final ObservableField<String> cardToken = new ObservableField();
    private final ObservableField<String> pan = new ObservableField();
    private final ObservableField<String> walletId = new ObservableField();

    public final ObservableField<String> getPan() {
        return this.pan;
    }

    public final ObservableField<String> getCardToken() {
        return this.cardToken;
    }

    public final ObservableField<String> getWalletId() {
        return this.walletId;
    }
}
