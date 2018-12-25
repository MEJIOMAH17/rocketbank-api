package ru.rocketbank.r2d2.fragments.transfers;

import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.helpers.KeyboardHelper;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showDateCustomDialog$4 implements Runnable {
    final /* synthetic */ RocketEditText $editText;

    TransferBankFragment$showDateCustomDialog$4(RocketEditText rocketEditText) {
        this.$editText = rocketEditText;
    }

    public final void run() {
        KeyboardHelper.show(this.$editText);
    }
}
