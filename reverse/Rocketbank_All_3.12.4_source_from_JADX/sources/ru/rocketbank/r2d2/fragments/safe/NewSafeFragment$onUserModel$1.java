package ru.rocketbank.r2d2.fragments.safe;

import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AvailableAccount;

/* compiled from: NewSafeFragment.kt */
public final class NewSafeFragment$onUserModel$1 implements Comparator<AvailableAccount> {
    NewSafeFragment$onUserModel$1() {
    }

    public final int compare(AvailableAccount availableAccount, AvailableAccount availableAccount2) {
        Intrinsics.checkParameterIsNotNull(availableAccount, "lhs");
        Intrinsics.checkParameterIsNotNull(availableAccount2, "rhs");
        return getWeight(availableAccount.getCurrency()) - getWeight(availableAccount2.getCurrency());
    }

    private final int getWeight(String str) {
        int i = Intrinsics.areEqual("rub", str) ? 1 : 255;
        if (Intrinsics.areEqual("usd", str)) {
            i = 2;
        }
        return Intrinsics.areEqual("eur", str) != null ? 3 : i;
    }
}
