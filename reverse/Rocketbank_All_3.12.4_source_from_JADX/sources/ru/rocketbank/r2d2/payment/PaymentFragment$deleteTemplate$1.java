package ru.rocketbank.r2d2.payment;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.transfers.Template;
import rx.Subscriber;

/* compiled from: PaymentFragment.kt */
public final class PaymentFragment$deleteTemplate$1 extends Subscriber<GenericRequestResponseData> {
    final /* synthetic */ Template $template;
    final /* synthetic */ PaymentFragment this$0;

    public final void onCompleted() {
    }

    PaymentFragment$deleteTemplate$1(PaymentFragment paymentFragment, Template template) {
        this.this$0 = paymentFragment;
        this.$template = template;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        th = PaymentFragment.TAG;
        StringBuilder stringBuilder = new StringBuilder("Failed to send delete template ");
        stringBuilder.append(this.$template.id);
        Log.e(th, stringBuilder.toString());
        this.this$0.hideSpinner();
    }

    public final void onNext(GenericRequestResponseData genericRequestResponseData) {
        Intrinsics.checkParameterIsNotNull(genericRequestResponseData, "genericRequestResponseData");
        genericRequestResponseData = this.this$0.templateAdapter;
        if (genericRequestResponseData == null) {
            Intrinsics.throwNpe();
        }
        genericRequestResponseData.remove(this.$template);
        this.this$0.hideSpinner();
    }
}
