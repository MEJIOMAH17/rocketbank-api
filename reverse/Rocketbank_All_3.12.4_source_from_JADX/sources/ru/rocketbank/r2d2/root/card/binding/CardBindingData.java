package ru.rocketbank.r2d2.root.card.binding;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.graphics.drawable.Drawable;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxData;

/* compiled from: CardBindingData.kt */
public final class CardBindingData extends ParallaxData {
    private final ObservableField<String> balance = new ObservableField();
    private final ObservableField<String> cardNumber = new ObservableField();
    private final ObservableBoolean isRoubleCard = new ObservableBoolean();
    private final ObservableField<String> titleBalance = new ObservableField();
    private final ObservableField<String> titleName = new ObservableField();
    private final ObservableField<Drawable> toolbarBackDrawable = new ObservableField();
    private final ObservableField<Drawable> toolbarWhiteBackDrawable = new ObservableField();

    public final ObservableField<Drawable> getToolbarWhiteBackDrawable() {
        return this.toolbarWhiteBackDrawable;
    }

    public final ObservableField<Drawable> getToolbarBackDrawable() {
        return this.toolbarBackDrawable;
    }

    public final ObservableField<String> getTitleName() {
        return this.titleName;
    }

    public final ObservableField<String> getTitleBalance() {
        return this.titleBalance;
    }

    public final ObservableField<String> getBalance() {
        return this.balance;
    }

    public final ObservableField<String> getCardNumber() {
        return this.cardNumber;
    }

    public final ObservableBoolean isRoubleCard() {
        return this.isRoubleCard;
    }
}
