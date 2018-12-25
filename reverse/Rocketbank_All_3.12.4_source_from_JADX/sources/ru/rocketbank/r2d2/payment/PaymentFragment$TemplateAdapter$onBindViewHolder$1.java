package ru.rocketbank.r2d2.payment;

import rx.functions.Func1;

/* compiled from: PaymentFragment.kt */
final class PaymentFragment$TemplateAdapter$onBindViewHolder$1<T, R> implements Func1<Integer, Boolean> {
    public static final PaymentFragment$TemplateAdapter$onBindViewHolder$1 INSTANCE = new PaymentFragment$TemplateAdapter$onBindViewHolder$1();

    PaymentFragment$TemplateAdapter$onBindViewHolder$1() {
    }

    public final boolean call(Integer num) {
        if (num != null) {
            if (num.intValue() == null) {
                return true;
            }
        }
        return null;
    }
}
