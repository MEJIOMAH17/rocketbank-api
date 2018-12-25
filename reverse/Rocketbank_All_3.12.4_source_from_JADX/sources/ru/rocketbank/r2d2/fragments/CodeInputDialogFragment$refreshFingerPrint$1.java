package ru.rocketbank.r2d2.fragments;

/* compiled from: CodeInputDialogFragment.kt */
final class CodeInputDialogFragment$refreshFingerPrint$1 implements Runnable {
    final /* synthetic */ CodeInputDialogFragment this$0;

    CodeInputDialogFragment$refreshFingerPrint$1(CodeInputDialogFragment codeInputDialogFragment) {
        this.this$0 = codeInputDialogFragment;
    }

    public final void run() {
        CodeInputDialogFragment.access$getRocketSMSGroup$p(this.this$0).setOffImidiate();
        CodeInputDialogFragment.access$getFingerPrint$p(this.this$0).setVisibility(4);
    }
}
