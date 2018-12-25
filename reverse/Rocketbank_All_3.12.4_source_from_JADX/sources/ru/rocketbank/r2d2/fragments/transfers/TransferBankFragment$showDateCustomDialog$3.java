package ru.rocketbank.r2d2.fragments.transfers;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import ru.rocketbank.core.widgets.RocketEditText;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showDateCustomDialog$3 implements OnClickListener {
    final /* synthetic */ RocketEditText $editText;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showDateCustomDialog$3(TransferBankFragment transferBankFragment, RocketEditText rocketEditText) {
        this.this$0 = transferBankFragment;
        this.$editText = rocketEditText;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.this$0.hideKeyboard((EditText) this.$editText);
    }
}
