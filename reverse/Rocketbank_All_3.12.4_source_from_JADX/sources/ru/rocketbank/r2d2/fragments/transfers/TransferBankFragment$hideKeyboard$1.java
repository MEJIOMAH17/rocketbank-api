package ru.rocketbank.r2d2.fragments.transfers;

import android.widget.EditText;
import ru.rocketbank.r2d2.helpers.KeyboardHelper;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$hideKeyboard$1 implements Runnable {
    final /* synthetic */ EditText $editText;

    TransferBankFragment$hideKeyboard$1(EditText editText) {
        this.$editText = editText;
    }

    public final void run() {
        KeyboardHelper.hide(this.$editText);
    }
}
