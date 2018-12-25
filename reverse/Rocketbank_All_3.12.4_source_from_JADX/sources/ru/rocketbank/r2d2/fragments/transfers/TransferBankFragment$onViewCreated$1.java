package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketEditText;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$onViewCreated$1 implements OnFocusChangeListener {
    final /* synthetic */ RocketEditText $uinEditText;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$onViewCreated$1(TransferBankFragment transferBankFragment, RocketEditText rocketEditText) {
        this.this$0 = transferBankFragment;
        this.$uinEditText = rocketEditText;
    }

    public final void onFocusChange(View view, boolean z) {
        if (!z) {
            view = this.this$0;
            z = this.$uinEditText;
            Intrinsics.checkExpressionValueIsNotNull(z, "uinEditText");
            view.checkUinAndShowError((EditText) z);
        }
    }
}
