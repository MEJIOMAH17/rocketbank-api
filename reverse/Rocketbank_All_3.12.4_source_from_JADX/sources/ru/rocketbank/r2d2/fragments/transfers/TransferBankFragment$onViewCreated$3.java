package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$onViewCreated$3 implements OnFocusChangeListener {
    final /* synthetic */ RocketEditText $oktmo;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$onViewCreated$3(TransferBankFragment transferBankFragment, RocketEditText rocketEditText) {
        this.this$0 = transferBankFragment;
        this.$oktmo = rocketEditText;
    }

    public final void onFocusChange(View view, boolean z) {
        if (!z) {
            view = this.$oktmo;
            Intrinsics.checkExpressionValueIsNotNull(view, "oktmo");
            if (StringsKt.replace$default(view.getText().toString(), " ", "", false, 4, null).length() != true) {
                this.$oktmo.post((Runnable) new Runnable() {
                    public final void run() {
                        RocketEditText rocketEditText = this.$oktmo;
                        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "oktmo");
                        rocketEditText.setError(this.this$0.getString(C0859R.string.help_oktmo));
                    }
                });
            }
        }
    }
}
