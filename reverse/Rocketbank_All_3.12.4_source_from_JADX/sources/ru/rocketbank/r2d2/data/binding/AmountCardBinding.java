package ru.rocketbank.r2d2.data.binding;

import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AmountCardBinding.kt */
public final class AmountCardBinding {
    private final ObservableField<String> amountTargetText;
    private final ObservableField<String> cardName;
    private final ObservableField<String> cardNumber;
    private final ObservableField<String> comment = new ObservableField("");
    private final ObservableInt commentVisibility;
    private final ObservableField<String> commission;

    public AmountCardBinding(String str) {
        Intrinsics.checkParameterIsNotNull(str, "targetText");
        this.amountTargetText = new ObservableField(str);
        this.commission = new ObservableField("");
        this.commentVisibility = new ObservableInt(8);
        this.cardNumber = new ObservableField("");
        this.cardName = new ObservableField("");
    }

    public final ObservableField<String> getComment() {
        return this.comment;
    }

    public final ObservableField<String> getAmountTargetText() {
        return this.amountTargetText;
    }

    public final ObservableField<String> getCommission() {
        return this.commission;
    }

    public final ObservableInt getCommentVisibility() {
        return this.commentVisibility;
    }

    public final ObservableField<String> getCardNumber() {
        return this.cardNumber;
    }

    public final ObservableField<String> getCardName() {
        return this.cardName;
    }
}
