package ru.rocketbank.r2d2.fragments.transfers;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import ru.rocketbank.core.widgets.RocketEditText;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showDateCustomDialog$1 implements OnDismissListener {
    final /* synthetic */ RocketEditText $editText;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showDateCustomDialog$1(TransferBankFragment transferBankFragment, RocketEditText rocketEditText) {
        this.this$0 = transferBankFragment;
        this.$editText = rocketEditText;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        this.this$0.hideKeyboard(this.$editText);
    }
}
