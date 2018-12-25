package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: CardRefillActivity.kt */
final class CardRefillActivity$startCall$2 extends Lambda implements Function2<CardRefillActivity, Throwable, Unit> {
    public static final CardRefillActivity$startCall$2 INSTANCE = new CardRefillActivity$startCall$2();

    CardRefillActivity$startCall$2() {
        super(2);
    }

    public final void invoke(CardRefillActivity cardRefillActivity, Throwable th) {
        Intrinsics.checkParameterIsNotNull(cardRefillActivity, "instance");
        Intrinsics.checkParameterIsNotNull(th, "response");
        cardRefillActivity.onError(th);
    }
}
