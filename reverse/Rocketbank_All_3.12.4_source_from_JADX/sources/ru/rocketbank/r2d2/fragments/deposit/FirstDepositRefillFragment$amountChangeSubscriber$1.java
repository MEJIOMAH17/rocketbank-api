package ru.rocketbank.r2d2.fragments.deposit;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: FirstDepositRefillFragment.kt */
final class FirstDepositRefillFragment$amountChangeSubscriber$1<T> implements Action1<BigDecimal> {
    final /* synthetic */ FirstDepositRefillFragment this$0;

    FirstDepositRefillFragment$amountChangeSubscriber$1(FirstDepositRefillFragment firstDepositRefillFragment) {
        this.this$0 = firstDepositRefillFragment;
    }

    public final void call(BigDecimal bigDecimal) {
        FirstDepositRefillFragment firstDepositRefillFragment = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(bigDecimal, "bigDecimal");
        firstDepositRefillFragment.refreshDepositStatus(bigDecimal);
    }
}
