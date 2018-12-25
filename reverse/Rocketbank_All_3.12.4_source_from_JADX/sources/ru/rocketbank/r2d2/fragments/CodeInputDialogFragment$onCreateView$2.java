package ru.rocketbank.r2d2.fragments;

import android.content.Intent;
import ru.rocketbank.core.widgets.RocketSMSGroup.OnCodeResetListener;
import ru.rocketbank.r2d2.activities.CodeResetActivity;

/* compiled from: CodeInputDialogFragment.kt */
final class CodeInputDialogFragment$onCreateView$2 implements OnCodeResetListener {
    final /* synthetic */ CodeInputDialogFragment this$0;

    CodeInputDialogFragment$onCreateView$2(CodeInputDialogFragment codeInputDialogFragment) {
        this.this$0 = codeInputDialogFragment;
    }

    public final void onCodeReset() {
        this.this$0.startActivity(new Intent(this.this$0.getActivity(), CodeResetActivity.class));
    }
}
