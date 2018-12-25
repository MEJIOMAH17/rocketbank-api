package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showIp$1 implements OnFocusChangeListener {
    final /* synthetic */ EditText $rep;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showIp$1(TransferBankFragment transferBankFragment, EditText editText) {
        this.this$0 = transferBankFragment;
        this.$rep = editText;
    }

    public final void onFocusChange(View view, boolean z) {
        if (!z && TransferBankFragmentKt.checkIp(this.$rep.getText().toString()) == null) {
            this.$rep.setError(this.this$0.getString(C0859R.string.ip_name_error));
        }
    }
}
