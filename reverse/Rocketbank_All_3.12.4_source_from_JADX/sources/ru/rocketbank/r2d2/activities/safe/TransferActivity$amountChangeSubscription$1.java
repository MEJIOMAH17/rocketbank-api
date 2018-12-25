package ru.rocketbank.r2d2.activities.safe;

import java.math.BigDecimal;
import java.math.RoundingMode;
import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: TransferActivity.kt */
final class TransferActivity$amountChangeSubscription$1<T> implements Action1<BigDecimal> {
    final /* synthetic */ TransferActivity this$0;

    TransferActivity$amountChangeSubscription$1(TransferActivity transferActivity) {
        this.this$0 = transferActivity;
    }

    public final void call(BigDecimal bigDecimal) {
        bigDecimal.setScale(2, RoundingMode.HALF_UP);
        this.this$0.currentAmount = bigDecimal;
        TransferActivity transferActivity = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(bigDecimal, "bigDecimal");
        transferActivity.validateAmount(bigDecimal);
    }
}
