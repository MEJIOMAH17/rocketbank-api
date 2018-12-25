package ru.rocketbank.r2d2.fragments.transfers;

import android.widget.ImageButton;
import android.widget.LinearLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$helpButtons$2 extends Lambda implements Function0<ImageButton[]> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$helpButtons$2(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
        super(0);
    }

    public final ImageButton[] invoke() {
        ImageButton[] imageButtonArr = new ImageButton[2];
        LinearLayout linearLayout = (LinearLayout) this.this$0.getFragmentView().findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        imageButtonArr[0] = (ImageButton) linearLayout.findViewById(C0859R.id.buttonInfoUin);
        linearLayout = (LinearLayout) this.this$0.getFragmentView().findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        imageButtonArr[1] = (ImageButton) linearLayout.findViewById(C0859R.id.buttonInfoKbk);
        return imageButtonArr;
    }
}
