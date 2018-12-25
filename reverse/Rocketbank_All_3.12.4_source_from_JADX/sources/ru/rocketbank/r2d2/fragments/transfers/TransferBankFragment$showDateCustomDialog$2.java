package ru.rocketbank.r2d2.fragments.transfers;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Custom;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showDateCustomDialog$2 implements OnClickListener {
    final /* synthetic */ RocketEditText $editText;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showDateCustomDialog$2(TransferBankFragment transferBankFragment, RocketEditText rocketEditText) {
        this.this$0 = transferBankFragment;
        this.$editText = rocketEditText;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface = this.this$0.budgetViewModel;
        RocketEditText rocketEditText = this.$editText;
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "editText");
        dialogInterface.setTax_period_date((BudgetDate) new Custom(rocketEditText.getText().toString()));
        this.this$0.hideKeyboard((EditText) this.$editText);
    }
}
