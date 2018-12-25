package ru.rocketbank.r2d2.fragments;

/* compiled from: CodeInputDialogFragment.kt */
final class CodeInputDialogFragment$refreshTouch$1 implements Runnable {
    final /* synthetic */ CodeInputDialogFragment this$0;

    CodeInputDialogFragment$refreshTouch$1(CodeInputDialogFragment codeInputDialogFragment) {
        this.this$0 = codeInputDialogFragment;
    }

    public final void run() {
        this.this$0.refreshFingerPrint();
    }
}
