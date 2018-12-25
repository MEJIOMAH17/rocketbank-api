package ru.rocketbank.r2d2.fragments.transfers;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showDateChooseDialog$1 implements OnClickListener {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showDateChooseDialog$1(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case 0:
                this.this$0.showDatePeriodChooseDialog();
                return;
            case 1:
                this.this$0.showDatePickerDialog();
                break;
            default:
                break;
        }
    }
}
