package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.transfers.card.Card2CardTransferResponseData;

/* compiled from: CardTransferProcessActivity.kt */
final class CardTransferProcessActivity$startCall$3 extends Lambda implements Function2<CardTransferProcessActivity, Card2CardTransferResponseData, Unit> {
    public static final CardTransferProcessActivity$startCall$3 INSTANCE = new CardTransferProcessActivity$startCall$3();

    CardTransferProcessActivity$startCall$3() {
        super(2);
    }

    public final void invoke(CardTransferProcessActivity cardTransferProcessActivity, Card2CardTransferResponseData card2CardTransferResponseData) {
        Intrinsics.checkParameterIsNotNull(cardTransferProcessActivity, "instance");
        Intrinsics.checkParameterIsNotNull(card2CardTransferResponseData, "response");
        cardTransferProcessActivity.onRestore(card2CardTransferResponseData);
    }
}
