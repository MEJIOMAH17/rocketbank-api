package ru.rocketbank.r2d2.activities.c2c;

import android.widget.EditText;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.listener.AddCurrencyMainListener;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: BaseAmountActivity.kt */
public final class BaseAmountActivity$init$1 extends AddCurrencyMainListener {
    final /* synthetic */ RocketEditText $editAmount;

    BaseAmountActivity$init$1(RocketEditText rocketEditText, EditText editText) {
        this.$editAmount = rocketEditText;
        super(editText);
    }

    protected final String getCurrency() {
        return RocketApplication.Companion.getInjector().getCurrencyManager().getCurrencySymbolRub();
    }
}
