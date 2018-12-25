package ru.rocketbank.r2d2.fragments.card;

import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AvailableCardModel;

/* compiled from: NewCardFragment.kt */
public final class NewCardFragment$onUserModel$1 implements Comparator<AvailableCardModel> {
    NewCardFragment$onUserModel$1() {
    }

    public final int compare(AvailableCardModel availableCardModel, AvailableCardModel availableCardModel2) {
        Intrinsics.checkParameterIsNotNull(availableCardModel, "lhs");
        Intrinsics.checkParameterIsNotNull(availableCardModel2, "rhs");
        availableCardModel = availableCardModel.getCurrency().toString();
        Intrinsics.checkExpressionValueIsNotNull(availableCardModel, "lhs.currency.toString()");
        availableCardModel = getWeight(availableCardModel);
        availableCardModel2 = availableCardModel2.getCurrency().toString();
        Intrinsics.checkExpressionValueIsNotNull(availableCardModel2, "rhs.currency.toString()");
        return availableCardModel - getWeight(availableCardModel2);
    }

    private final int getWeight(String str) {
        int i = Intrinsics.areEqual("rub", str) ? 1 : 255;
        if (Intrinsics.areEqual("usd", str)) {
            i = 2;
        }
        return Intrinsics.areEqual("eur", str) != null ? 3 : i;
    }
}
