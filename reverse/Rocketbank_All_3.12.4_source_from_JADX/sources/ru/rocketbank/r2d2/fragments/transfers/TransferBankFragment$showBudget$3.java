package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showBudget$3 implements OnClickListener {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showBudget$3(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void onClick(View view) {
        RocketEditText rocketEditText = (RocketEditText) this.this$0.getFragmentView().findViewById(C0859R.id.kbk);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "fragmentView.kbk");
        if (StringsKt.indexOf$default(rocketEditText.getText().toString(), "153", 0, false, 6, null) != null) {
            this.this$0.budgetViewModel.getTax_period().setValue("");
            this.this$0.showDateChooseDialog();
        }
    }
}
