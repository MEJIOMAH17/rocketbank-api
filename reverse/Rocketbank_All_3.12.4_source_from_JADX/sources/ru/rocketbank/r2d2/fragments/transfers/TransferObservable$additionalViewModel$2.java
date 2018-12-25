package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Func2;

/* compiled from: TransferBankFragment.kt */
final class TransferObservable$additionalViewModel$2<T1, T2, R> implements Func2<T1, T2, R> {
    public static final TransferObservable$additionalViewModel$2 INSTANCE = new TransferObservable$additionalViewModel$2();

    TransferObservable$additionalViewModel$2() {
    }

    public final boolean call(Boolean bool, Boolean bool2) {
        Intrinsics.checkExpressionValueIsNotNull(bool, "b1");
        if (bool.booleanValue() != null) {
            Intrinsics.checkExpressionValueIsNotNull(bool2, "b2");
            if (bool2.booleanValue() != null) {
                return true;
            }
        }
        return null;
    }
}
