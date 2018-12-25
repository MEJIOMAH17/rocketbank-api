package ru.rocketbank.r2d2.payment;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.List;

/* compiled from: PaymentDetailsFragment.kt */
final class PaymentDetailsFragment$onActivityResult$1$1$1 implements OnClickListener {
    final /* synthetic */ IPaymentFieldWidget $fieldWidget;
    final /* synthetic */ List $phones;

    PaymentDetailsFragment$onActivityResult$1$1$1(IPaymentFieldWidget iPaymentFieldWidget, List list) {
        this.$fieldWidget = iPaymentFieldWidget;
        this.$phones = list;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface = this.$fieldWidget;
        if (dialogInterface != null) {
            dialogInterface.setValue((String) this.$phones.get(i));
        }
    }
}
