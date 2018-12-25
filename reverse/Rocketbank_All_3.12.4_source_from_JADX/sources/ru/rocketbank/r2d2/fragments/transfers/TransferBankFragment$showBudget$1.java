package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.Spinner;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: TransferBankFragment.kt */
public final class TransferBankFragment$showBudget$1 implements OnItemSelectedListener {
    final /* synthetic */ TransferBankFragment this$0;

    public final void onNothingSelected(AdapterView<?> adapterView) {
    }

    TransferBankFragment$showBudget$1(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        LinearLayout linearLayout = (LinearLayout) this.this$0.getFragmentView().findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        Spinner spinner = (Spinner) linearLayout.findViewById(C0859R.id.spinnerStatus);
        if (spinner != null) {
            adapterView = spinner.getAdapter();
            if (adapterView != null) {
                adapterView = adapterView.getItem(i);
                if (adapterView != null) {
                    view = this.this$0.budgetViewModel;
                    if (adapterView == null) {
                        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.transfers.CodeNameOption");
                    }
                    view.setSelectedStatus((CodeNameOption) adapterView);
                }
            }
        }
    }
}
