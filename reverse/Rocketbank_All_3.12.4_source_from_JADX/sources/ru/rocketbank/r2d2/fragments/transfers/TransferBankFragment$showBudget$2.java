package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

/* compiled from: TransferBankFragment.kt */
public final class TransferBankFragment$showBudget$2 implements OnItemSelectedListener {
    final /* synthetic */ TransferBankFragment this$0;

    public final void onNothingSelected(AdapterView<?> adapterView) {
    }

    TransferBankFragment$showBudget$2(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.this$0.budgetViewModel.setSelectedTaxBasis(this.this$0.basisList[i]);
    }
}
