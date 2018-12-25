package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: TransferBankFragment.kt */
public final class TransferBankFragmentKt {
    public static final boolean checkIp(String str) {
        Intrinsics.checkParameterIsNotNull(str, "ipName");
        CharSequence charSequence = str;
        if (charSequence.length() == 0) {
            return false;
        }
        if (StringsKt.indexOf$default(charSequence, "ип", 0, true, 2, null) != 0) {
            if (StringsKt.contains(charSequence, "индивидуальный предприниматель", true) == null) {
                return false;
            }
        }
        return true;
    }
}
