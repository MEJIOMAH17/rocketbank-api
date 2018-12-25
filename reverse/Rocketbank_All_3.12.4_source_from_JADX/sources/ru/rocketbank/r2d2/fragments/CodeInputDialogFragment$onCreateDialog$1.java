package ru.rocketbank.r2d2.fragments;

import android.app.Dialog;
import android.content.Context;
import ru.rocketbank.r2d2.helpers.UIHelper;

/* compiled from: CodeInputDialogFragment.kt */
public final class CodeInputDialogFragment$onCreateDialog$1 extends Dialog {
    final /* synthetic */ CodeInputDialogFragment this$0;

    CodeInputDialogFragment$onCreateDialog$1(CodeInputDialogFragment codeInputDialogFragment, Context context, int i) {
        this.this$0 = codeInputDialogFragment;
        super(context, i);
    }

    public final void onBackPressed() {
        UIHelper.goToHome(this.this$0.getActivity());
    }
}
