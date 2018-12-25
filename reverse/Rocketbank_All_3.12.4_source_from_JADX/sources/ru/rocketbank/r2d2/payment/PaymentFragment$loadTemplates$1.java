package ru.rocketbank.r2d2.payment;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.transfers.PaymentTemplates;
import ru.rocketbank.core.model.transfers.Template;
import rx.functions.Func1;

/* compiled from: PaymentFragment.kt */
final class PaymentFragment$loadTemplates$1<T, R> implements Func1<T, R> {
    public static final PaymentFragment$loadTemplates$1 INSTANCE = new PaymentFragment$loadTemplates$1();

    PaymentFragment$loadTemplates$1() {
    }

    public final ArrayList<Template> call(PaymentTemplates paymentTemplates) {
        ArrayList<Template> arrayList = new ArrayList(paymentTemplates.templates.size());
        paymentTemplates = paymentTemplates.templates;
        Intrinsics.checkExpressionValueIsNotNull(paymentTemplates, "paymentTemplates.templates");
        for (Object next : (Iterable) paymentTemplates) {
            if ((((Template) next).provider != null ? 1 : null) != null) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }
}
