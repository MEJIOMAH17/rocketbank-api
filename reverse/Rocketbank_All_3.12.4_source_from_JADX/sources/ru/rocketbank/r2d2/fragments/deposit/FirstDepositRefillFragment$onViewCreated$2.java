package ru.rocketbank.r2d2.fragments.deposit;

import android.widget.EditText;
import ru.rocketbank.core.widgets.listener.AddCurrencyListener;

/* compiled from: FirstDepositRefillFragment.kt */
public final class FirstDepositRefillFragment$onViewCreated$2 extends AddCurrencyListener {
    final /* synthetic */ FirstDepositRefillFragment this$0;

    FirstDepositRefillFragment$onViewCreated$2(FirstDepositRefillFragment firstDepositRefillFragment, EditText editText) {
        this.this$0 = firstDepositRefillFragment;
        super(editText);
    }

    protected final String getCurrency() {
        return FirstDepositRefillFragment.access$getCurrentCurrency$p(this.this$0);
    }
}
