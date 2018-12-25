package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.transfers.card.Card2CardTransferResponseData;

/* compiled from: CardTransferProcessActivity.kt */
final class CardTransferProcessActivity$startCall$1 extends Lambda implements Function2<CardTransferProcessActivity, Card2CardTransferResponseData, Unit> {
    public static final CardTransferProcessActivity$startCall$1 INSTANCE = new CardTransferProcessActivity$startCall$1();

    CardTransferProcessActivity$startCall$1() {
        super(2);
    }

    public final void invoke(CardTransferProcessActivity cardTransferProcessActivity, Card2CardTransferResponseData card2CardTransferResponseData) {
        Intrinsics.checkParameterIsNotNull(cardTransferProcessActivity, "instance");
        Intrinsics.checkParameterIsNotNull(card2CardTransferResponseData, "response");
        cardTransferProcessActivity.onSuccess(card2CardTransferResponseData);
    }
}
