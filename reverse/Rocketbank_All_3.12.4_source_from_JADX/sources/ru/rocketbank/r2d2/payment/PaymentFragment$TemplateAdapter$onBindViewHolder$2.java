package ru.rocketbank.r2d2.payment;

import ru.rocketbank.r2d2.payment.PaymentFragment.TemplateAdapter;
import rx.functions.Func1;

/* compiled from: PaymentFragment.kt */
final class PaymentFragment$TemplateAdapter$onBindViewHolder$2<T, R> implements Func1<Integer, Boolean> {
    final /* synthetic */ TemplateAdapter this$0;

    PaymentFragment$TemplateAdapter$onBindViewHolder$2(TemplateAdapter templateAdapter) {
        this.this$0 = templateAdapter;
    }

    public final boolean call(Integer num) {
        int itemCount = this.this$0.getItemCount() - 1;
        if (num != null) {
            if (num.intValue() == itemCount) {
                return true;
            }
        }
        return null;
    }
}
