package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TransferBankFragment.kt */
public final class TransferBankFragment$showIndividual$1 implements OnItemSelectedListener {
    final /* synthetic */ TransferBankFragment this$0;

    public final void onNothingSelected(AdapterView<?> adapterView) {
    }

    TransferBankFragment$showIndividual$1(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        adapterView = this.this$0.individualViewModel;
        view = this.this$0.materialAssistanceList[i];
        Intrinsics.checkExpressionValueIsNotNull(view, "materialAssistanceList[position]");
        adapterView.setMaterialAssistanceType(view);
    }
}
