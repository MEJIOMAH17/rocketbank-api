package ru.rocketbank.r2d2.fragments;

import kotlin.Unit;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.widgets.RocketSMSInput.OnCodeInputListener;

/* compiled from: CodeInputDialogFragment.kt */
final class CodeInputDialogFragment$onCreateView$1 implements OnCodeInputListener {
    final /* synthetic */ CodeInputDialogFragment this$0;

    CodeInputDialogFragment$onCreateView$1(CodeInputDialogFragment codeInputDialogFragment) {
        this.this$0 = codeInputDialogFragment;
    }

    public final void onCode(String str) {
        this.this$0.getActivity();
        try {
            Boolean.valueOf(this.this$0.requestLogin(null, str));
        } catch (String str2) {
            AnalyticsManager.logException(str2);
            str2 = Unit.INSTANCE;
        }
    }
}
