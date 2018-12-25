package ru.rocketbank.r2d2.fragments.transfers;

import android.widget.LinearLayout;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$onResume$4<T> implements Action1<String> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$onResume$4(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void call(String str) {
        str = this.this$0;
        LinearLayout linearLayout = (LinearLayout) this.this$0.getFragmentView().findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        str.updateStatusList(linearLayout);
    }
}
