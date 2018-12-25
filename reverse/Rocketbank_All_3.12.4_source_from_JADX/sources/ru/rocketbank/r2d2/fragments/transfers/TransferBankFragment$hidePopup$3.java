package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$hidePopup$3 implements OnClickListener {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$hidePopup$3(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void onClick(View view) {
        view = this.this$0;
        LinearLayout linearLayout = (LinearLayout) this.this$0.getFragmentView().findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        ImageButton imageButton = (ImageButton) linearLayout.findViewById(C0859R.id.buttonInfoKbk);
        Intrinsics.checkExpressionValueIsNotNull(imageButton, "fragmentView.budgetView.buttonInfoKbk");
        view.showPopup(imageButton, C0859R.string.kbk_info_text);
    }
}
