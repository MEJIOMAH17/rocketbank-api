package ru.rocketbank.r2d2.fragments;

/* compiled from: CodeInputDialogFragment.kt */
final class CodeInputDialogFragment$resetTouch$1 implements Runnable {
    final /* synthetic */ CodeInputDialogFragment this$0;

    CodeInputDialogFragment$resetTouch$1(CodeInputDialogFragment codeInputDialogFragment) {
        this.this$0 = codeInputDialogFragment;
    }

    public final void run() {
        CodeInputDialogFragment.access$getRocketSMSGroup$p(this.this$0).setTouchWaiting();
    }
}
