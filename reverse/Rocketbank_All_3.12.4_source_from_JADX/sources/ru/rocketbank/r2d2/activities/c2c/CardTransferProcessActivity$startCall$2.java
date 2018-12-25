package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: CardTransferProcessActivity.kt */
final class CardTransferProcessActivity$startCall$2 extends Lambda implements Function2<CardTransferProcessActivity, Throwable, Unit> {
    public static final CardTransferProcessActivity$startCall$2 INSTANCE = new CardTransferProcessActivity$startCall$2();

    CardTransferProcessActivity$startCall$2() {
        super(2);
    }

    public final void invoke(CardTransferProcessActivity cardTransferProcessActivity, Throwable th) {
        Intrinsics.checkParameterIsNotNull(cardTransferProcessActivity, "instance");
        Intrinsics.checkParameterIsNotNull(th, "response");
        cardTransferProcessActivity.onError(th);
    }
}
