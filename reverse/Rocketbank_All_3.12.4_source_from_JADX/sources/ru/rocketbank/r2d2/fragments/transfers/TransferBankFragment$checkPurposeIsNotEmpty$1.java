package ru.rocketbank.r2d2.fragments.transfers;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$checkPurposeIsNotEmpty$1 implements OnFocusChangeListener {
    final /* synthetic */ EditText $editText;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$checkPurposeIsNotEmpty$1(TransferBankFragment transferBankFragment, EditText editText) {
        this.this$0 = transferBankFragment;
        this.$editText = editText;
    }

    public final void onFocusChange(View view, boolean z) {
        if (!z) {
            if ((((CharSequence) this.$editText.getText().toString()).length() == null ? true : null) != null) {
                this.$editText.post((Runnable) new Runnable() {
                    public final void run() {
                        FragmentActivity activity = this.this$0.getActivity();
                        if (activity != null) {
                            View currentFocus = activity.getCurrentFocus();
                            if (currentFocus != null) {
                                currentFocus.clearFocus();
                            }
                            this.$editText.requestFocus();
                            this.$editText.setError(activity.getString(C0859R.string.transfers_bank_receiver_purpose_error));
                        }
                    }
                });
            }
        }
    }
}
