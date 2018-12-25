package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import kotlin.text.StringsKt;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$onViewCreated$2 implements OnFocusChangeListener {
    final /* synthetic */ EditText $kbkEditText;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$onViewCreated$2(TransferBankFragment transferBankFragment, EditText editText) {
        this.this$0 = transferBankFragment;
        this.$kbkEditText = editText;
    }

    public final void onFocusChange(View view, boolean z) {
        if (!z) {
            this.this$0.addZerosIfNeed(this.$kbkEditText, 20);
            CharSequence obj = this.$kbkEditText.getText().toString();
            if (StringsKt.indexOf$default(obj, "153", 0, false, 6, null)) {
                if (StringsKt.indexOf$default(obj, "182", 0, false, 6, null) == null) {
                    this.this$0.budgetViewModel.isCustom().set(false);
                    this.this$0.budgetViewModel.getTax_period().setValue("");
                    this.this$0.budgetViewModel.getShowTax().set(true);
                    TransferBankFragment.access$getSpinnerStatus$p(this.this$0).setSelection(0);
                    this.this$0.changeTaxPeriod(true);
                    return;
                }
                this.this$0.budgetViewModel.isCustom().set(false);
                this.this$0.budgetViewModel.getTax_period().setValue("");
                this.this$0.budgetViewModel.setTax(false);
                TransferBankFragment.access$getSpinnerStatus$p(this.this$0).setSelection(2);
                this.this$0.budgetViewModel.getShowTax().set(false);
                this.this$0.changeTaxPeriod(true);
            } else {
                this.this$0.budgetViewModel.isCustom().set(true);
                this.this$0.budgetViewModel.setTax(false);
                this.this$0.changeTaxPeriod(false);
                TransferBankFragment.access$getSpinnerStatus$p(this.this$0).setSelection(2);
                this.this$0.budgetViewModel.getShowTax().set(false);
            }
        }
    }
}
