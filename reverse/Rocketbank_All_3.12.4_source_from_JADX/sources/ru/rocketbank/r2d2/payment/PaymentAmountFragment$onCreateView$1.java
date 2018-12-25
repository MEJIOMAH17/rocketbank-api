package ru.rocketbank.r2d2.payment;

import android.widget.EditText;
import ru.rocketbank.core.widgets.listener.AddCurrencyListener;

/* compiled from: PaymentAmountFragment.kt */
public final class PaymentAmountFragment$onCreateView$1 extends AddCurrencyListener {
    final /* synthetic */ PaymentAmountFragment this$0;

    PaymentAmountFragment$onCreateView$1(PaymentAmountFragment paymentAmountFragment, EditText editText) {
        this.this$0 = paymentAmountFragment;
        super(editText);
    }

    protected final String getCurrency() {
        String currencySymbol = this.this$0.getCurrencyManager().getCurrencySymbol("RUB");
        return currencySymbol == null ? "" : currencySymbol;
    }
}
