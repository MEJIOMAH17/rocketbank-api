package ru.rocketbank.r2d2.fragments.transfers;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showBudget$7 implements OnCheckedChangeListener {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showBudget$7(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.this$0.budgetViewModel.setTax(z);
    }
}
