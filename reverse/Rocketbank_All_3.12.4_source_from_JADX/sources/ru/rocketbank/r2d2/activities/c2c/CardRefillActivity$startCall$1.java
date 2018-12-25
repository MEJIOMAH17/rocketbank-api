package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.card.Card2CardRefillResponseData;

/* compiled from: CardRefillActivity.kt */
final class CardRefillActivity$startCall$1 extends Lambda implements Function2<CardRefillActivity, Card2CardRefillResponseData, Unit> {
    public static final CardRefillActivity$startCall$1 INSTANCE = new CardRefillActivity$startCall$1();

    CardRefillActivity$startCall$1() {
        super(2);
    }

    public final void invoke(CardRefillActivity cardRefillActivity, Card2CardRefillResponseData card2CardRefillResponseData) {
        Intrinsics.checkParameterIsNotNull(cardRefillActivity, "instance");
        Intrinsics.checkParameterIsNotNull(card2CardRefillResponseData, "response");
        cardRefillActivity.onSuccess(card2CardRefillResponseData);
    }
}
