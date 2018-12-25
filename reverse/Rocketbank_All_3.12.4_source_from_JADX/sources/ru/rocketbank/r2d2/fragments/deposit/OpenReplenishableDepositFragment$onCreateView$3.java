package ru.rocketbank.r2d2.fragments.deposit;

import android.widget.EditText;
import ru.rocketbank.core.utils.rx.TextObserverToDecimal;
import ru.rocketbank.core.widgets.listener.AddCurrencyListener;

/* compiled from: OpenReplenishableDepositFragment.kt */
public final class OpenReplenishableDepositFragment$onCreateView$3 extends AddCurrencyListener {
    final /* synthetic */ OpenReplenishableDepositFragment this$0;

    OpenReplenishableDepositFragment$onCreateView$3(OpenReplenishableDepositFragment openReplenishableDepositFragment, EditText editText) {
        this.this$0 = openReplenishableDepositFragment;
        super(editText);
    }

    protected final String getCurrency() {
        return OpenReplenishableDepositFragment.access$getDeposit$p(this.this$0).getCurrency();
    }

    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        charSequence = this.this$0.currentDeposit;
        charSequence = charSequence != null ? charSequence.getMinAmount() : null;
        i = TextObserverToDecimal.convertTextToBigDecimal(OpenReplenishableDepositFragment.access$getMoneyEditText$p(this.this$0).getText().toString()).doubleValue();
        if (charSequence != null) {
            double doubleValue = ((Number) charSequence).doubleValue();
            charSequence = this.this$0.nextButton;
            if (charSequence != null) {
                charSequence.setEnabled(i >= doubleValue ? 1 : 0);
            }
        }
    }
}
