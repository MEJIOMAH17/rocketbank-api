package ru.rocketbank.core.widgets;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.MatchResult;

/* compiled from: CreditCardView.kt */
final class CreditCardView$setCardNumber$formattedCardNumber$1 extends Lambda implements Function1<MatchResult, String> {
    public static final CreditCardView$setCardNumber$formattedCardNumber$1 INSTANCE = new CreditCardView$setCardNumber$formattedCardNumber$1();

    CreditCardView$setCardNumber$formattedCardNumber$1() {
        super(1);
    }

    public final String invoke(MatchResult matchResult) {
        Intrinsics.checkParameterIsNotNull(matchResult, "result");
        matchResult = matchResult.getGroupValues().subList(1, matchResult.getGroupValues().size()).iterator();
        if (matchResult.hasNext()) {
            Object next = matchResult.next();
            while (matchResult.hasNext()) {
                String str = (String) matchResult.next();
                String str2 = (String) next;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str2);
                stringBuilder.append(" ");
                stringBuilder.append(str);
                next = stringBuilder.toString();
            }
            return (String) next;
        }
        throw ((Throwable) new UnsupportedOperationException("Empty collection can't be reduced."));
    }
}
