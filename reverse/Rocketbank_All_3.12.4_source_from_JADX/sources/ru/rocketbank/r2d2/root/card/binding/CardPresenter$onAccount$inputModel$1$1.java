package ru.rocketbank.r2d2.root.card.binding;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.MatchResult;

/* compiled from: CardPresenter.kt */
final class CardPresenter$onAccount$inputModel$1$1 extends Lambda implements Function1<MatchResult, String> {
    public static final CardPresenter$onAccount$inputModel$1$1 INSTANCE = new CardPresenter$onAccount$inputModel$1$1();

    CardPresenter$onAccount$inputModel$1$1() {
        super(1);
    }

    public final String invoke(MatchResult matchResult) {
        Intrinsics.checkParameterIsNotNull(matchResult, "it");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(matchResult.getValue());
        stringBuilder.append(" ");
        return stringBuilder.toString();
    }
}
