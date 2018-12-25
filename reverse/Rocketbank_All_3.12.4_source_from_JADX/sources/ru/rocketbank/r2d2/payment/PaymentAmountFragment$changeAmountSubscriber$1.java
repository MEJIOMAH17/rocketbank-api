package ru.rocketbank.r2d2.payment;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.transfers.Template;
import rx.functions.Action1;

/* compiled from: PaymentAmountFragment.kt */
final class PaymentAmountFragment$changeAmountSubscriber$1<T> implements Action1<Double> {
    final /* synthetic */ PaymentAmountFragment this$0;

    PaymentAmountFragment$changeAmountSubscriber$1(PaymentAmountFragment paymentAmountFragment) {
        this.this$0 = paymentAmountFragment;
    }

    public final void call(Double d) {
        Template access$getTemplate$p = this.this$0.template;
        if (access$getTemplate$p == null) {
            Intrinsics.throwNpe();
        }
        if (d == null) {
            Intrinsics.throwNpe();
        }
        access$getTemplate$p.amount = d.doubleValue();
        this.this$0.unsubscribe(this.this$0.commissionSubscription);
        this.this$0.commissionSubscription = null;
        this.this$0.updateEditText(d);
    }
}
